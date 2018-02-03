package com.team03.test;

import com.team03.domain.Test01;
import com.team03.mapper.Test01Dao;
import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;


public class Test01Test {

    private ApplicationContext context;
    private Test01Dao test01Dao;

    @Before
    public void init(){
        context = new ClassPathXmlApplicationContext("classpath*:spring-*.xml");
        test01Dao = context.getBean(Test01Dao.class);
    }

    @Test
    public void test01(){

        List<Test01> test01List = test01Dao.selectTest01List();

        System.out.println(test01List);

    }

}
