
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    </head>
    <body>
        
        <div class="container mt-3 mb-5"> 
            <h1>OD GENERATOR</h1> 
        </div>        
        
        <div class="container">
            <h3 class="text-danger">Student Details</h3>
            <form action="" method="post">
            <div class="row">
                <div class="col-md-6">
                    <div class="form-group ">
                        <label for="">Name of the Student</label>
                        <input type="text" class="form-control" name="name" value="${student.getName()}" placeholder="IN BLOCK LETTERS">
                    </div>
                    
                    <div class="form-group">
                        <label for="">Department</label>
                            <select class="form-control"  id="" name="dept">
                                <option value="${student.getDept()}">${student.getDept()}</option>
                                <option value="B.sc maths">B.sc maths</option>
                                <option value="B.sc chemistry">B.sc chemistry</option>
                                <option value="B.sc physics">B.sc physics</option>
                                <option value="B.sc Computer Science">B.sc Computer Science</option>
                            </select>
                    </div>
                    
                    <div class="form-group">
                        <label for="">Shift</label>
                            <select class="form-control" id="" name="shift">
                                <option value="${student.getShift()}" >${student.getShift()}</option>
                                <option value="I">|</option>
                                <option value="II">||</option>     
                            </select>             
                    </div>
                    
                    <div class="form-group">
                        <label for="">Roll No</label>
                        <input type="text" class="form-control" value="${student.getRollno()}" id="" name="rollno" placeholder="MCLE00000">
                    </div>
                    
                    <div class="form-group">
                        <label for="">DOB</label>
                        <input type="date" class="form-control" value="${student.getDob()}"  id="" name="dob" placeholder="DD/MM/YYYY">
                     </div>
                    
                    <div class="form-group">
                        <label for="">Gender</label>
                            <select class="form-control"  id="" class="gender">
                                <option value="${student.getGender()}">${student.getGender()}</option>
                                <option value="Male">Male</option>
                                <option value="Female">Female</option>
                                <option value="TransGender">TransGender</option>
                            </select>
                    </div>
                    
                    <div class="form-group"> 
                        <label for="">Community</label>
                            <select id="inputState"  class="form-control" name="community">
                                <option value="${student.getCommunity()}">${student.getCommunity()}</option>
                                <option value="SC">SC</option>
                                <option value="ST">ST</option>
                                <option value="BC">BC</option>
                                <option value="MBC">MBC</option>
                                <option value="GEN">GEN</option>        
                            </select>
                    </div>
 
            
                    <div class="form-group">
                        <label for="">Aadhar No</label>
                            <input type="text" class="form-control" value="${student.getAadharno()}" id="" name="aadharno">
                    </div>
     
    
                    <div class="form-group">
                        <label for="">Name of Parents/Guardien</label>
                            <input type="text" class="form-control" value="${student.getParentname()}" id="" name="parentname">
                    </div>
                    
                    <div class="form-group">                        
                        <label for="">Contact Address</label>
                        <textarea class="form-control"  name="contactaddress">
                                ${student.getContactaddress()}
                        </textarea>
                    </div>
               
             
                    
                </div>
                   
                                           
               
                <div class="col-md-6"> 
                            
                <div class="form-group">
                    <label for="">Permanent Address</label>
                        <textarea class="form-control"  name="permanentaddress"> 
                            ${student.getPermanentaddress()}
                        </textarea>
                </div>
    
   
                <div class="form-group">
                    <div class="form-group">
                        <label for="">Whatsapp</label>
                            <input type="text" class="form-control" value="${student.getWhatsappno()}"  id="" name="whatsapp">
                    </div>
                </div>
            
                <div class="form-group">
                    <label for="">Mobile</label>
                        <input type="text" class="form-control" value="${student.getMobileno()}"  id="" name="mobile">
                </div>
    
            
     `          <div class="form-group">
                    <label for="">Blood Group</label>
                        <select id="inputState"  class="form-control" name="bloodgroup">
                            <option value="${student.getBloodgroup()}">${student.getBloodgroup()}</option>
                            <option value="AB+">AB+</option>
                            <option value="AB-">AB-</option>
                            <option value="B+">B+</option>
                            <option value="B-">B-</option>
                            <option value="O+">O+</option>        
                        </select> 
                </div>
  
             
                <div class="form-group">
                    <label for="">Talent(Specify)</label>
                        <input type="text" class="form-control" value="${student.getTalent()}" id="" name="talent">
                </div>
            
            
                <div class="form-group">
                    <label for="">Area of Interest(Specify)</label>
                        <select id="inputState"  class="form-control" name="aoi">
                            <option value="${student.getAoi()}">${student.getAoi()}</option>
                            <option value="Environment">Environment</option>
                            <option value="Health">Health</option>
                            <option value="Rural">Rural</option>
                            <option value="Education">Education</option>
                            <option value="Reconstruction">Reconstruction</option>        
                        </select>
                            <input type="text" class="form-control" id="inputZip">
                </div>
            
             
                <div class="form-group">
                    <label for="">Environment In Other Services/Activities</label>
                        <select id=""  class="form-control" name="eos">
                            <option value="${student.getEos()}">${student.getEos()}</option>
                            <option value="NCC">NCC</option>
                            <option value="SPORTS">SPORTS</option>
                            <option value="ROTRACT">ROTRACT</option>
                            <option value="VRC">VRC</option>
                            <option value="OTHERS">OTHERS</option>        
                        </select>
                </div>
            
                <div class="form-group">
                    <label for="inputZip">Participate in NSS in Earlier Classes</label>
                        <select id=""  class="form-control" name="participate">
                            <option value="${student.getParticipate()}">${student.getParticipate()}</option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>               
                        </select> 
                </div>
            
                <div class="form-group">
                    <label for="inputZip">College Hostel</label>
                        <select id=""  class="form-control" name="collegehostel">
                            <option value="${student.getCollegehostel()}">${student.getCollegehostel()}</option>
                            <option value="Yes">Yes</option>
                            <option value="No">No</option>               
                        </select> 
                 </div>    
            `      <div class="form-group">
                       <button type="submit" class="btn btn-success">CONFIRM</button>
                   </div>
                </div>
            </div>
           </form>
        </div>
            
       </body>
</html>
