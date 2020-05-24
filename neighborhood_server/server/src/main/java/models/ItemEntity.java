package models;

import javax.persistence.*;
import javax.validation.constraints.*;
import java.util.*;


@Entity
@Table(name = "NB_ITEMS")
public class ItemEntity {

    @Id
    @Column(name = "ID")
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long Id;

    @Column(name = "NAME", unique = true)
    @NotNull
    private String name;

    @ManyToMany(mappedBy = "items", cascade = CascadeType.PERSIST, fetch = FetchType.EAGER)
    private Set<UserEntity> users = new HashSet<>();

    public ItemEntity(String name) {
        this.name = name;
    }

    public ItemEntity() {

    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Set<UserEntity> getUsers() {
        return users;
    }

    public void addUser(UserEntity user) {
        users.add(user);
        user.getItems().add(this);
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        ItemEntity that = (ItemEntity) o;
        return name.equals(that.name);
    }

    @Override
    public int hashCode() {
        return Objects.hash(name);
    }
}
