import com.nicklaus.dao.*;
import com.nicklaus.pojo.User;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:application.xml")
public class TestMappers {

    @Autowired
    private CaseHistoryMapper caseHistoryMapper;

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private DepartmentMapper departmentMapper;

    @Autowired
    private DoctorMapper doctorMapper;


    @Test
    public void testFindByUsernameAndPassword(){
        User user = new User();
        user.setUsername("toller");
        user.setPassword("123456");
        System.out.println(userMapper.findByUsernameAndPassword(user));
    }

    @Test
    public void testFindMaxChId(){
        System.out.println(caseHistoryMapper.findMaxChId());
    }

    @Test
    public void testFindDeptNames(){
        System.out.println(departmentMapper.findDeptNames());
    }

    @Test
    public void testFindByDeptId(){
        System.out.println(doctorMapper.findByDeptId(1));
    }


}
