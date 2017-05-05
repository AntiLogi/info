package com.bdqnsh.student;

import com.bdqnsh.student.dao.StudentMapper;
import com.bdqnsh.student.model.Student;
import org.apache.poi.hwpf.HWPFDocument;
import org.apache.poi.hwpf.model.FieldsDocumentPart;
import org.apache.poi.hwpf.usermodel.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;
import org.springframework.stereotype.Component;

import java.io.*;
import java.math.BigDecimal;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.*;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

/**
 * Created by Administrator on 2017/4/20.
 */
@Component
public class ReadWord {
    // 正则 截取出缴费金额
    private static final String REGEX_GET_COST = "\\d+.?\\d+";

    private SimpleDateFormat format;
    @Autowired
    private StudentMapper studentMapper;


    public void read(String filePath) {
        FileInputStream in = null;
        try {
            in = new FileInputStream(filePath);

        } catch (FileNotFoundException e) {
            e.printStackTrace();
        }
        HWPFDocument hdt = null;
        try {
            hdt = new HWPFDocument(in);
        } catch (IOException e) {
            e.printStackTrace();
        }
        Fields fields = hdt.getFields();
        Iterator<Field> it = fields.getFields(FieldsDocumentPart.MAIN)
                .iterator();

       /* while (it.hasNext())
        {
            System.out.println(it.next().getType());
        }
*/

        //读取word文本内容
        Range range = hdt.getRange();
     /*   for (int i = 0; i < range.numSections(); i++) {
            Section section = range.getSection(i);
            for (int j = 0; j < section.numParagraphs(); j++) {
                Paragraph paragraph = section.getParagraph(j);
                System.out.println("i=" + i + "     j=" + j + "............" + paragraph.text());
            }
        }*/


        TableIterator tableIt = new TableIterator(range);
        //迭代文档中的表格

        ArrayList<String> list = new ArrayList<String>();
        int ii = 0;
        while (tableIt.hasNext()) {
            Table tb = (Table) tableIt.next();
            ii++;
            if (ii > 1 && ii < 7) {
                continue;
            }
            System.out.println("第" + ii + "个表格数据...................");
            //迭代行，默认从0开始
            for (int i = 0; i < tb.numRows(); i++) {
                TableRow tr = tb.getRow(i);
                //只读前8行，标题部分

                //迭代列，默认从0开始
                for (int j = 0; j < tr.numCells(); j++) {
                    TableCell td = tr.getCell(j);//取得单元格
                    //取得单元格的内容
                    for (int k = 0; k < td.numParagraphs(); k++) {
                        Paragraph para = td.getParagraph(k);
                        String s = para.text();
                        //   System.out.println("i=" + i + ".....j=" + j + ".....k=" + k + "      " + s);
                        list.add(s);
                    } //end for
                }   //end for
            }   //end for


        } //end while


        System.out.println("list.size =  " + list.size());
        for (int i = 0; i < list.size(); i++) {
            System.out.println(i + "     " + list.get(i));
        }
        save(list);

    }

    public void save(List<String> list) {
        format = new SimpleDateFormat("yyyy-MM-dd");
        Map<Integer, String> map = new HashMap<Integer, String>();
        mapInitialize(map);
        Student student = new Student();
        try {
            String date;
            if ((date = list.get(1)) != null && !date.trim().equals(""))
               // student.setClassBegin(format.parse(date));
            if ((date = list.get(20)) != null && !date.trim().equals(""))
                student.setBirthday(format.parse(date));
            if ((date = list.get(30)) != null && !date.trim().equals(""))
                student.setFatherBirthday(format.parse(date));
          /*  if ((date = list.get(32)) != null && !date.trim().equals(""))
                student.setMatherBirthday(format.parse(date));*/

        } catch (ParseException e) {
            e.printStackTrace();
        }
      //  student.setClassType(list.get(3).trim());
       // student.setClassTeacher(list.get(5).trim());
        BigDecimal bigDecimal = doRegex(list.get(6).trim(), REGEX_GET_COST);
        if (bigDecimal != null) {
            student.setPayment(bigDecimal);
        }
        student.setName(list.get(16).trim());
        if (list.get(18) != null) {
            student.setGender(list.get(18).trim().equals("男") ? true : false);
        }
        student.setBloodType(list.get(23).trim());
        student.setConstellation(list.get(25).trim());
        student.setBelief(list.get(27).trim());
        student.setTelephone(list.get(35).trim());
        student.setMobile(list.get(37).trim());
        student.setInfoSource(list.get(40).trim());
        student.setEmergencyContact(list.get(43).trim());
        student.setEmergencyContactPhone(list.get(45).trim());
        student.setQq(list.get(47).trim());
        student.setEmail(list.get(50).trim());
        student.setWechat(list.get(52).trim());
        student.setIdentityCard(list.get(54).trim());
        student.setAncestralHome(list.get(56).trim());
        student.setVehicle(list.get(58).trim());
        student.setAddress(list.get(60).trim());
        student.setPostCode(list.get(62).trim());
        student.setHasPc(list.get(64).trim());
        student.setLearningTime(list.get(68).trim());
        student.setFamilySupport(list.get(70).trim());
        student.setMentalPreparation(list.get(72).trim());
        student.setRemark(list.get(74).trim());
        student.setHighestDegree(list.get(76).trim());
        student.setMajor(list.get(78).trim());
        student.setSchool(list.get(80).trim());
        student.setCompony(list.get(84).trim());
        student.setInSchoolName(list.get(93).trim());
        student.setGrade(list.get(95).trim());
        student.setHobby(list.get(111).trim());

        String check;
        for (int i = 120; i <= 123; i++) {
            if ((check = list.get(i)) != null && !check.trim().equals("")) {
                if (check.trim().length() % 2 == 1) {
                    student.setCostSource(map.get(i));
                    break;
                }
            }

        }
        for (int i = 124; i <= 125; i++) {
            if ((check = list.get(i)) != null && !check.trim().equals("")) {
                if (check.trim().length() % 2 == 1) {
                    student.setWorkType(map.get(i));
                    break;
                }
            }
        }
        StringBuffer buffer = new StringBuffer();
        for (int i = 126; i <= 133; i++) {

            if ((check = list.get(i)) != null && !check.trim().equals("")) {
                if (check.trim().length() % 2 == 1) {
                    buffer.append(map.get(i) + ",");
                }

            }
        }
        if (buffer.length()>0)
        student.setExpectation(buffer.toString().substring(0, buffer.length() - 1));


        buffer = new StringBuffer();
        for (int i = 134; i <= 136; i++) {

            if ((check = list.get(i)) != null && !check.trim().equals("")) {
                if (check.trim().length() % 2 == 1) {
                    buffer.append(map.get(i) + ",");
                }
            }
        }
        if (buffer.length()>0)
        student.setEmploymentCondition(buffer.toString().substring(0, buffer.length() - 1));

        buffer = new StringBuffer();
        for (int i = 137; i <= 140; i++) {
            if ((check = list.get(i)) != null && !check.trim().equals("")) {
                if (check.trim().length() % 2 == 1) {
                    buffer.append(map.get(i) + ",");
                }
            }
        }
        if (buffer.length()>0)
        student.setLanguageSkill(buffer.toString().substring(0, buffer.length() - 1));
        for (int i = 141; i <= 143; i++) {
            if ((check = list.get(i)) != null && !check.trim().equals("")) {
                if (check.trim().length() % 2 == 1) {
                    student.setComputerBasis(map.get(i));
                    break;
                }
            }
        }
        for (int i = 144; i <= 146; i++) {
            if ((check = list.get(i)) != null && !check.trim().equals("")) {
                if (check.trim().length() % 2 == 1) {
                    student.setSoftBasis(map.get(i));
                    break;
                }
            }
        }
        for (int i = 147; i <= 149; i++) {
            if ((check = list.get(i)) != null && !check.trim().equals("")) {
                if (check.trim().length() % 2 == 1) {
                    student.setComputerOperate(map.get(i));
                    break;
                }
            }

        }


        student.setCreateTime(new Date());
        student.setDelState(false);
        student.setCreateName("张三");

        studentMapper.insert(student);


    }

    public BigDecimal doRegex(String content, String regex) {
        if (content == null || regex == null) {
            return null;
        }
        Matcher matcher = Pattern.compile(regex).matcher(content);
        if (matcher.find()) {
            return new BigDecimal(matcher.group());
        }
        return null;
    }

    public void mapInitialize(Map<Integer, String> map) {
        map.put(120, "家人支持");
        map.put(121, "自费");
        map.put(122, "公费");
        map.put(123, "其他");
        map.put(124, "全职");
        map.put(125, "兼职");
        map.put(126, "就业");
        map.put(127, "充电");
        map.put(128, "家人要求");
        map.put(129, "增加就业实力");
        map.put(130, "个人兴趣");
        map.put(131, "转行");
        map.put(132, "提升技能");
        map.put(133, "其他");
        map.put(134, "千分制满700分");
        map.put(135, "通过各阶段考试");
        map.put(136, "通过项目答辩");
        map.put(137, "英语");
        map.put(138, "日语");
        map.put(139, "德语");
        map.put(140, "其他");
        map.put(141, "不了解");
        map.put(142, "一般");
        map.put(143, "熟练");
        map.put(144, "不了解");
        map.put(145, "一般");
        map.put(146, "熟练");
        map.put(147, "不上");
        map.put(148, "偶尔");
        map.put(149, "常上");
    }


    public static void main(String[] args) {
        ApplicationContext c = new ClassPathXmlApplicationContext("conf/spring/spring.xml");
        ReadWord bean = c.getBean(ReadWord.class);
        bean.read("D:\\北大青鸟\\RICHARD_JAVA.doc");
    }
}
