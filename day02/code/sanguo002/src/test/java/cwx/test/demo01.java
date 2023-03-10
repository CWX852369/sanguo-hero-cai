package cwx.test;

import java.io.IOException;
import java.io.InputStream;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import org.junit.Test;

import com.cwx.mapper.BrandMapper;
import com.cwx.pojo.Brand;

public class demo01 {
	  @Test
	    public void testSelectAll() throws IOException {
	        //1. 获取SqlSessionFactory
	        String resource = "mybatis-config.xml";
	        InputStream inputStream = Resources.getResourceAsStream(resource);
	        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(inputStream);

	        //2. 获取SqlSession对象
	        SqlSession sqlSession = sqlSessionFactory.openSession();

	        //3. 获取Mapper接口的代理对象
	        BrandMapper brandMapper = sqlSession.getMapper(BrandMapper.class);

	        //4. 执行方法
	        List<Brand> brands = brandMapper.selectAll();
	        System.out.println(brands);

	        //5. 释放资源
	        sqlSession.close();
	  }
}
