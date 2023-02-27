package servlet.admin;


import java.io.BufferedReader;  
import java.io.DataInputStream;  
import java.io.IOException;  
import java.io.InputStreamReader;  
/**
 * 数据库备份
 * @author Forever_mx
 */
public class Command {
	public static void main(String[] args) {
		   Command com = new Command();  
com.backupDatebase("localhost","root","123456","library","D:/library.sql");//输出到控制台  
	}
	//执行dos命令 
	public String execCmd(String cmd) {
		StringBuffer sb = new StringBuffer("");
		StringBuffer str = new StringBuffer();
		str.append(" cmd.exe /c \"").append(cmd).append("\"");
		System.out.println(str); // 打印执行的命令
		Process ls_proc;
		try {
			ls_proc = Runtime.getRuntime().exec(str.toString());
			BufferedReader in = new BufferedReader(new InputStreamReader(
					new DataInputStream(ls_proc.getInputStream())));
			String ss = "";
			while ((ss = in.readLine()) != null) {
				sb.append(ss).append("\n");
			}
			in.close();
		} catch (IOException e) {
			e.printStackTrace();
		}
		return sb.toString();
	}
	//执行mysql数据库备份
	public boolean backupDatebase(String ip, String username, String password,String datebaseName, String filePath) {  
	     String strCommand = "mysqldump -h "+ip+" -u" + username + " -p" + password + " " + datebaseName + " > " + filePath;  	 
	     String result = execCmd(strCommand);
	     System.out.println(result);
	     return true;
	}
	//根据返回结果验证是否成功	
	public boolean check(String result){
		return true;
	}
}
