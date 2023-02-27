package servlet.admin;

import java.io.IOException;

/**
 * 数据库恢复/还原数据库
 * @author Forever_mx
 */
public class Recover {
public boolean load(){
	String filepath = "d:\\test.sql";//备份的路径
	//新建数据库
	String stmt1 = "mysqladmin -u root -proot create newtest"; 
	String stmt2 = "mysql -u root -proot newtest < " + filepath;  
	String[] cmd = { "cmd", "/c", stmt2 };   
	try{
		Runtime.getRuntime().exec(stmt1);   
		 Runtime.getRuntime().exec(cmd);
		 System.out.println("数据已从 " + filepath + " 导入到数据库中");   
	}catch (IOException e) {   
		e.printStackTrace();
	}
	return true;
}
}
