package models;

import javax.persistence.*;
import javax.validation.constraints.*;

@Entity
@Table(name = "NB_CARS")
public class CarEntity {


    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long id;

    @Column(name = "PLATENUMBER", unique = true)
    @NotNull
    @Pattern(regexp = "[A-Z]{2}-[0-9]{3}-[A-Z]{2}")
    private String plateNumber;

    @OneToOne(mappedBy = "car")
    private UserEntity user;

    public CarEntity(String plateNumber) {
        this.plateNumber = plateNumber;
    }

    public UserEntity getUser() {
        return user;
    }

    public CarEntity() {

    }

    public String getPlateNumber() {
        return plateNumber;
    }

    public void setPlateNumber(String plateNumber) {
        this.plateNumber = plateNumber;
    }
}
