package pl.rasti003.javaee.dao;


import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.jdbc.core.namedparam.SqlParameterSource;
import pl.rasti003.javaee.model.User;
import pl.rasti003.javaee.util.ConnectionProvider;


import java.util.List;

public class MysqlUserDAO implements UserDAO {

    private final static String CREATE = "INSERT INTO user(pesel, firstname, lastname) VALUES(:pesel, :firstname, :lastname);";
    private final static String READ = "SELECT pesel, firstname, lastname FROM user WHERE pesel = :pesel;";
    private final static String UPDATE = "UPDATE user SET pesel=:pesel, firstname=:firstname, lastname=:lastname WHERE pesel = :pesel;";
    private final static String DELETE = "DELETE FROM user WHERE pesel=:pesel;";

    private NamedParameterJdbcTemplate template;

    public MysqlUserDAO() {
        template = new NamedParameterJdbcTemplate(ConnectionProvider.getDSInstance());
    }

    @Override
    public boolean create(User user) {
        BeanPropertySqlParameterSource beanParamSource = new BeanPropertySqlParameterSource(user);
        int rowsAffected = template.update(CREATE, beanParamSource);
        boolean result = false;
        if (rowsAffected > 0) {
            result = true;
        }
        return result;
    }

    @Override
    public User read(String pesel) {
        User resultUser = null;
        SqlParameterSource namedParameters = new MapSqlParameterSource("pesel", pesel);
        List<User> userList = template.query(READ, namedParameters, BeanPropertyRowMapper.newInstance(User.class));
        if (userList.get(0) != null) {
            resultUser = userList.get(0);
        }
        return resultUser;
    }

    @Override
    public boolean update(User user) {
        BeanPropertySqlParameterSource beanParamSource = new BeanPropertySqlParameterSource(user);
        int rowsAffected = template.update(UPDATE, beanParamSource);
        boolean result = false;
        if (rowsAffected > 0) {
            result = true;
        }
        return result;
    }

    @Override
    public boolean delete(User user) {
        SqlParameterSource namedParameter = new MapSqlParameterSource("pesel", user.getPesel());
        int rowsAffected = template.update(DELETE, namedParameter);
        boolean result = false;
        if (rowsAffected > 0) {
            result = true;
        }
        return result;
    }
}