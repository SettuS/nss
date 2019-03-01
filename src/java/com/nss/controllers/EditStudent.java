
package com.nss.controllers;

import com.dao.dbconnect;
import com.nss.services.Student;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet(name = "EditStudent", urlPatterns = {"/EditStudent"})
public class EditStudent extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try{
             String rollno = request.getParameter("rollno");
             Statement st = dbconnect.getConnection();
             ResultSet rs = st.executeQuery("select s.rollno,s.name,s.department,s.gender,s.dob,s.shift,sd.aadharno,sd.community,sd.parentname,sd.contactaddress,sd.permanentaddress,sd.whatsappno,sd.mobileno,sd.bloodgroup,sd.talent,sd.aoi,sd.eos,sd.participate,sd.collegehostel from student s,student_details sd WHERE s.rollno='"+rollno+"' AND sd.rollno='"+rollno+"' ");
             if(rs.next()){
                 Student student = new Student();
                 student.setRollno(rs.getString(1)); student.setName(rs.getString(2)); student.setDept(rs.getString(3)); 
                 student.setGender(rs.getString(4)); student.setDob(rs.getString(5));  student.setShift(rs.getString(6));
                 student.setAadharno(Long.parseLong(rs.getString(7))); student.setCommunity(rs.getString(8)); 
                 student.setParentname(rs.getString(9)); student.setContactaddress(rs.getString(10)); student.setPermanentaddress(rs.getString(11));
                 student.setWhatsappno(Long.parseLong(rs.getString(12))); student.setMobileno(Long.parseLong(rs.getString(13)));
                 student.setBloodgroup(rs.getString(14)); student.setTalent(rs.getString(15)); student.setAoi(rs.getString(16));
                 student.setEos(rs.getString(17)); student.setParticipate(rs.getString(18)); student.setCollegehostel(rs.getString(19));
                 
                 HttpSession session = request.getSession();
                 session.setAttribute("student", student);
                 response.sendRedirect("editstudent.jsp");
                 
             }
             
        }catch(Exception e){
            System.out.println(e);
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
