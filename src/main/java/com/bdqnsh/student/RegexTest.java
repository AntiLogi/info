package com.bdqnsh.student;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by Administrator on 2017/4/25.
 */
@Component
public class RegexTest {
    private static final String content = "缴费金额：3232332533";
    private static final String regex = "\\d+.?\\d+";
    public String x = "good";

    public void run(){
        Matcher matcher = Pattern.compile(regex).matcher(content);
        while (matcher.find()){
            System.out.println(matcher.group());
        }

    }

    public void ex(){

    }


    public static void main(String[] args) {
        ApplicationContext context = new ClassPathXmlApplicationContext("conf/spring/spring.xml");
        RegexTest bean = context.getBean(RegexTest.class);
        bean.run();




    }
}
