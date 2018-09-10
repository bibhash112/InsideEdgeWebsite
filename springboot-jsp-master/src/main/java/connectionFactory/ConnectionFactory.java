package connectionFactory;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ArrayList;

import com.InsideEdge.Pojo.odipojo;



public class ConnectionFactory {
                
                private static ArrayList<odipojo> list=new ArrayList<odipojo>();
                
                public static ArrayList<odipojo> getConnection()
                {
                                return list;

                }
                public static Connection getConnectionver1() throws ClassNotFoundException, SQLException
                {
                                Class.forName("com.mysql.jdbc.Driver");  
                                 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sanu1","root","password");
                                System.out.println("Connection successful");
                                return con;
                                
                }
/* private static ArrayList<playerpojo> list1=new ArrayList<playerpojo>();
                
                public static ArrayList<playerpojo> getConnection2()
                {
                                return list1;

                }
                public static Connection getConnectionver2() throws ClassNotFoundException, SQLException
                {
                                Class.forName("com.mysql.jdbc.Driver");  
                                 Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","sneha123");
                                System.out.println("Connection successful");
                                return con1;
                                
                }
 private static ArrayList<teampojo> list2=new ArrayList<teampojo>();
                
                public static ArrayList<teampojo> getConnection3()
                {
                                return list2;

                }
                public static Connection getConnectionver3() throws ClassNotFoundException, SQLException
                {
                                Class.forName("com.mysql.jdbc.Driver");  
                                 Connection con2=DriverManager.getConnection("jdbc:mysql://localhost:3306/test","root","sneha123");
                                System.out.println("Connection successful");
                                return con2;
                                
                }*/
                
       

}

