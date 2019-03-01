package com.nss.controllers;


import com.nss.services.Student;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = {"/StudentRegister"})
public class StudentRegister extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      
        PrintWriter out = response.getWriter();
          Student student = new Student();
          
    student.setName(request.getParameter("name"));
    student.setDept(request.getParameter("dept"));
    student.setShift(request.getParameter("shift"));
    student.setRollno(request.getParameter("rollno"));
    student.setDob(request.getParameter("dob"));
    student.setGender(request.getParameter("gender"));
    student.setCommunity(request.getParameter("community"));
    student.setAadharno(new Long(request.getParameter("aadharno"))); 
    student.setParentname(request.getParameter("parentname"));
    student.setContactaddress(request.getParameter("contactaddress"));
    student.setPermanentaddress(request.getParameter("permanentaddress"));
    student.setWhatsappno(new Long(request.getParameter("whatsapp")));
    student.setMobileno(new Long(request.getParameter("mobile")));
    student.setBloodgroup(request.getParameter("bloodgroup"));
    student.setTalent(request.getParameter("talent"));
    student.setAoi(request.getParameter("aoi"));
    student.setEos(request.getParameter("eos"));
    student.setParticipate(request.getParameter("participate"));
    student.setCollegehostel(request.getParameter("collegehostel"));
      
    
    if(student.save()){
        out.println("<script>alert('Student Record Saved'); window.location='studregistration.jsp' </script>");
    }else{
        out.println("<script>alert('Not Saved UnSuccessful')</script>");
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
