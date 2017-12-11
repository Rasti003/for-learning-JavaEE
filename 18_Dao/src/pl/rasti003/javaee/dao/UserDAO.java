package pl.rasti003.javaee.dao;

import pl.rasti003.javaee.model.User;

public interface UserDAO {
    public  boolean create(User user);
    public User read(String pesel);
    public boolean update(User user);
    public boolean delete(User user);
}
