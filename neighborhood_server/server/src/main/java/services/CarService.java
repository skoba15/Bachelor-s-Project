package services;

import models.*;

public interface CarService {
    CarEntity getCarByPlateNumber(String plateNumber);
}
