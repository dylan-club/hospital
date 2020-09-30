package test;

import com.nicklaus.pojo.User;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

public class MybatisTest {

    @Test
    public void test1() throws IOException {
        //加载核心配置文件
        InputStream inputStream = Resources.getResourceAsStream("SQLMapConfig.xml");
        //获得工厂对象
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession session = sqlSessionFactory.openSession();

        User user = session.selectOne("userMapper.findById", 7);
        System.out.println(user);
        session.close();
    }

    @Test
    public void test2() throws IOException {
        //新增一个用户信息
        User user = new User();
        user.setUsername("bianque");
        user.setPassword("123456");
        user.setUserType(2);
        user.setRealName("扁鹊");
        user.setDoctorId(1);
        user.setDeptId(1);

        //加载核心配置文件
        InputStream inputStream = Resources.getResourceAsStream("SQLMapConfig.xml");
        //获得工厂对象
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession session = sqlSessionFactory.openSession();
        //插入语句
        session.insert("userMapper.save",user);
        session.commit();
        session.close();
    }

    @Test
    public void test3() throws IOException {
        User user = new User();
        user.setId(4);
        user.setUsername("doctor1");
        user.setPassword("1234567");

        //加载核心配置文件
        InputStream inputStream = Resources.getResourceAsStream("SQLMapConfig.xml");
        //获得工厂对象
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession session = sqlSessionFactory.openSession();

        session.update("userMapper.update",user);
        session.commit();
        session.close();
    }

    @Test
    public void test4() throws IOException {

        //加载核心配置文件
        InputStream inputStream = Resources.getResourceAsStream("SQLMapConfig.xml");
        //获得工厂对象
        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);
        SqlSession session = sqlSessionFactory.openSession();

        session.delete("userMapper.delete",4);
        session.commit();
        session.close();
    }
}
