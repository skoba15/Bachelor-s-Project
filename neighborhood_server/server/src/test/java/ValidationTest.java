import models.*;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.Test;

import static org.junit.Assert.*;

import javax.validation.*;
import javax.validation.constraints.*;
import java.sql.*;
import java.util.*;
import java.util.Date;

public class ValidationTest {


    private static Validator validator;

    @BeforeClass
    public static void Setup() {
        ValidatorFactory factory = Validation.buildDefaultValidatorFactory();
        validator = factory.getValidator();
    }

    @Test
    public void EverythingIsOk() {
        UserEntity user = new UserEntity("shota", "12345678", "shota", "kobakhidze", "598701543", new Timestamp(new Date().getTime()));

        Set<ConstraintViolation<UserEntity>> constraintViolations =
                validator.validate(user);
        assertEquals(constraintViolations.size(), 0);
    }


    @Test
    public void TwoNullValues() {
        UserEntity user = new UserEntity(null, "12345678", null, "kobakhidze", "598701543", new Timestamp(new Date().getTime()));

        Set<ConstraintViolation<UserEntity>> constraintViolations =
                validator.validate(user);
        assertEquals(constraintViolations.size(), 2);
    }

    @Test
    public void MalformedPhoneNumber() {
        UserEntity user = new UserEntity("shota", "12345678", "shota", "kobakhidze", "59870154a", new Timestamp(new Date().getTime()));

        Set<ConstraintViolation<UserEntity>> constraintViolations =
                validator.validate(user);
        assertEquals(constraintViolations.size(), 1);
    }


    @Test
    public void ShortPassword() {
        UserEntity user = new UserEntity("shota", "12sad", "shota", "kobakhidze", "598701543", new Timestamp(new Date().getTime()));

        Set<ConstraintViolation<UserEntity>> constraintViolations =
                validator.validate(user);
        assertEquals(constraintViolations.size(), 1);
    }


    @Test
    public void CorrectCarPlateNumber() {
        CarEntity car = new CarEntity("AA-080-AA");

        Set<ConstraintViolation<CarEntity>> constraintViolations =
                validator.validate(car);
        assertEquals(constraintViolations.size(), 0);
    }


    @Test
    public void WrongCarPlateNumber() {
        CarEntity car = new CarEntity("A1-080-AA");

        Set<ConstraintViolation<CarEntity>> constraintViolations =
                validator.validate(car);
        assertEquals(constraintViolations.size(), 1);
    }
}
