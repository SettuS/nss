
package com.nss.controllers;

import com.dao.dbconnect;
import com.nss.services.User;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "SignUp", urlPatterns = {"/SignUp"})
public class SignUp extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         PrintWriter out = response.getWriter();
       try{
           User newuser = new User();
            newuser.setUsername(request.getParameter("username"));
            newuser.setPassword(request.getParameter("password"));
            newuser.setRePassword(request.getParameter("repassword"));
            newuser.setEmail(request.getParameter("email"));
            newuser.setPhno(Long.parseLong(request.getParameter("phno")));
             if(newuser.getPassword().equals(newuser.getRePassword())){
                if(newuser.save()){
                    out.println("<script>alert('New User Created'); window.location='index.html' </script>");
                }else{
                    out.println("<script>alert('InValid User Data  : '"+newuser.getError()+"' '); window.location='index.html' </script>");
                }
             }else{
                 out.println("<script>alert('Password Doesnot Match !'); window.location='index.html' </script>");
             }
            
       }catch(Exception ex){
           System.out.println(ex);
       }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
