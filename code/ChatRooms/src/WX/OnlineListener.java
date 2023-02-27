package WX;




import javax.servlet.ServletContext;
import javax.servlet.annotation.WebListener;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

@WebListener
public class OnlineListener implements HttpSessionListener{
    
    public void sessionCreated(HttpSessionEvent arg0) {
           ServletContext context = arg0.getSession().getServletContext();     
           Integer count = (Integer) context.getAttribute("peopleOnline");
           if (count == null) {
               count = 1;
           } else {
               count++;
           }
           context.setAttribute("peopleOnline", count);
        }    
        public void sessionDestroyed(HttpSessionEvent arg0) {
           ServletContext context = arg0.getSession().getServletContext();
           Integer count = (Integer) context.getAttribute("peopleOnline");     
           count--;
           context.setAttribute("peopleOnline", count);
        }

}