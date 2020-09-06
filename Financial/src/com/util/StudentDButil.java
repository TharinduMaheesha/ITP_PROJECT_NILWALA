package com.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import com.cart.cart;

public class StudentDButil {

private static boolean isSuccess;
private static Connection con = null;
private static Statement stmt = null;
private static ResultSet rs = null;

public static List<cart> validate(String subject_code){
ArrayList<cart> ma = new ArrayList<>();

try {
con = DBconnect.getConnection();
stmt = con.createStatement();

String sql = "select* from cart where subject_code = '"+subject_code+"'";

rs = stmt.executeQuery(sql);

while(rs.next())
{
int student_id = rs.getInt(1);
String subjectcode = rs.getString(2);
String name = rs.getString(3);
String level = rs.getString(4);
System.out.println("test : " + name);

cart m = new cart(student_id , subjectcode , name ,level);
ma.add(m);
}
}catch(Exception e){

e.printStackTrace();
}
return ma;
}
}