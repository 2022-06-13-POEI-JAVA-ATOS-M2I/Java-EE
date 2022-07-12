package fr.m2i.jee;

import javax.servlet.ServletContextAttributeEvent;
import javax.servlet.ServletContextAttributeListener;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSessionAttributeListener;
import javax.servlet.http.HttpSessionBindingEvent;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 * Web application lifecycle listener.
 */

public class MyFirstListener implements ServletContextListener, ServletContextAttributeListener, HttpSessionListener,
        HttpSessionAttributeListener {

    @Override
    public void contextInitialized(ServletContextEvent sce) {
        String methodName = "contextInitialized";
        System.out.println("************* Je passe dans la methode " + methodName + " de la classe " + this.getClass().getName() + "*************"); 
    } 
    
    @Override
    public void contextDestroyed(ServletContextEvent sce) {
        String methodName = "contextDestroyed";
        System.out.println("************* Je passe dans la methode " + methodName + " de la classe " + this.getClass().getName() + " *************"); 
    }
    
    @Override
    public void attributeAdded(ServletContextAttributeEvent event) {
        String methodName = "attributeAdded";
        System.out.println("************* Je passe dans la methode " + methodName + " de la classe " + this.getClass().getName() + " *************"); 
    }
    
    
    @Override
    public void attributeRemoved(ServletContextAttributeEvent event) {
        String methodName = "attributeRemoved";
        System.out.println("************* Je passe dans la methode " + methodName + " de la classe " + this.getClass().getName() + " *************"); 
    }
    
    @Override
    public void attributeReplaced(ServletContextAttributeEvent arg0) {
        String methodName = "attributeReplaced";
        System.out.println("************* Je passe dans la methode " + methodName + " de la classe " + this.getClass().getName() + " *************"); 
    }
    
    @Override
    public void sessionCreated(HttpSessionEvent se) {
        String methodName = "sessionCreated";
        System.out.println("************* Je passe dans la methode " + methodName + " de la classe " + this.getClass().getName() + " *************");
    }

    @Override
    public void sessionDestroyed(HttpSessionEvent se) {
        String methodName = "sessionDestroyed";
        System.out.println("************* Je passe dans la methode " + methodName + " de la classe " + this.getClass().getName() + " *************");
    }

    @Override
    public void attributeAdded(HttpSessionBindingEvent event) {
        String methodName = "attributeAdded";
        System.out.println("************* Je passe dans la methode " + methodName + " de la classe " + this.getClass().getName() + " *************");
    }

    @Override
    public void attributeRemoved(HttpSessionBindingEvent event) {
        String methodName = "attributeRemoved";
        System.out.println("************* Je passe dans la methode " + methodName + " de la classe " + this.getClass().getName() + " *************");
    }

    @Override
    public void attributeReplaced(HttpSessionBindingEvent event) {
        String methodName = "attributeReplaced";
        System.out.println("************* Je passe dans la methode " + methodName + " de la classe " + this.getClass().getName() + " *************");
    }
}
