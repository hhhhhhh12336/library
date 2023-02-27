package WX;


import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "InputInformation",urlPatterns = {"/InputInformation"})
public class InputInformation extends HttpServlet {
    public String chat_record = "";  //���������¼�������˴�Ϊȫ�ֱ���



 
  
    public void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        doPost(request,response);
    }

   
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        //response.setContentType("text/html;charset=utf-8"); 
        //�˳�ע������Ϊʹ��CodeFilter���������Servlet��ת������
        //request.setCharacterEncoding("utf-8");
        String input_textarea = request.getParameter("input_textarea");
        Date now = new Date();    //�������ڶ��󣬼�ϵͳ��ǰʱ��
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");//�������ڸ�ʽ
        String time = dateFormat.format( now ); //���ո��������ڸ�ʽ��ȡϵͳ��ǰʱ��
        String t = (String)request.getSession().getAttribute("nameSession");  //��ȡ��½ҳ���û���
        chat_record += t+"  "+input_textarea+"  "+time+"\n";   //�����¼�洢
        request.setAttribute("input_textarea",chat_record); //����ǰ�����������ݴ洢
        request.getRequestDispatcher("main.jsp").forward(request,response);  //��ת����ǰ����������棬�����沼�ֲ���
    }

   

}