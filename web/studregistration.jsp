
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <link rel="stylesheet" href="css/home.css">
    </head>
    <body>
        
    
    <div class="registerform">
        <h3 class="text-danger">STUDENT REGISTRATION FORM</h3>
        <form action="StudentRegister" method="post">
    <div class="form-group ">
      <label for="">Name of the Student</label>
      <input type="text" class="form-control" name="name" placeholder="IN BLOCK LETTERS">
    </div>
     
    <div class="form-row">        
    <div class="form-group col-md-4">
      <label for="">Department</label>
    <select class="form-control" id="" name="dept">
      <option value="B.sc maths">B.sc maths</option>
      <option value="B.sc chemistry">B.sc chemistry</option>
      <option value="B.sc physics">B.sc physics</option>
      <option value="B.sc Computer Science">B.sc Computer Science</option>
    </select>
    </div>
             
     <div class="form-group col-md-4">
    <label for="">Shift</label>
    <select class="form-control" id="" name="shift">
      <option value="I">|</option>
     <option value="II">||</option>     
    </select>             
    </div>
  <div class="form-group col-md-4">
    <label for="">Roll No</label>
    <input type="text" class="form-control" id="" name="rollno" placeholder="MCLE00000">
  </div>
    </div>
            
  <div class="form-row">          
  <div class="form-group col-md-4">
    <label for="">DOB</label>
    <input type="date" class="form-control" id="" name="dob" placeholder="DD/MM/YYYY">
  </div>
 
    <div class="form-group col-md-4">
      <label for="">Gender</label>
    <select class="form-control" id="" name="gender">
      <option value="Male">Male</option>
      <option value="Female">Female</option>
      <option value="TransGender">TransGender</option>
    </select>
    </div>            
            
    <div class="form-group col-md-4"> 
        <label for="">Community</label>
      <select id="inputState" class="form-control" name="community">
        <option value="SC">SC</option>
        <option value="ST">ST</option>
        <option value="BC">BC</option>
        <option value="MBC">MBC</option>
        <option value="GEN">GEN</option>        
      </select>
    </div>
  </div>
            
  <div class="form-group">
    <label for="">Aadhar No</label>
    <input type="text" class="form-control" id="" name="aadharno">
  </div>
     
    
    <div class="form-group">
      <label for="">Name of Parents/Guardien</label>
      <input type="text" class="form-control" id="" name="parentname">
    </div>
    
    <div class="form-row">
    <div class="form-group col-md-6">
      <label for="">Contact Address</label>
      <textarea class="form-control" name="contactaddress"></textarea>
    </div>
        
    <div class="form-group col-md-6">
      <label for="">Permanent Address</label>
      <textarea class="form-control" name="permanentaddress"></textarea>
    </div>
    </div>
    
    <div class="form-row">
    <div class="form-group col-md-6">
    <div class="form-group">
      <label for="">Whatsapp</label>
      <input type="text" class="form-control"  id="" name="whatsapp">
    </div>
    </div>
            
     <div class="form-group col-md-6">
      <label for="">Mobile</label>
      <input type="text" class="form-control"  id="" name="mobile">
     </div>
    </div>
            
     <div class="form-group">
      <label for="">Blood Group</label>
     <select id="inputState" class="form-control" name="bloodgroup">
        <option value="AB+">AB+</option>
        <option value="AB-">AB-</option>
        <option value="B+">B+</option>
        <option value="B-">B-</option>
        <option value="O+">O+</option>        
      </select> 
    </div>
  
             
     <div class="form-group">
      <label for="">Talent(Specify)</label>
      <input type="text" class="form-control" id="" name="talent">
    </div>
            
            
     <div class="form-group">
      <label for="">Area of Interest(Specify)</label>
      <select id="inputState" class="form-control" name="aoi">
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
      <select id="" class="form-control" name="eos">
        <option value="NCC">NCC</option>
        <option value="SPORTS">SPORTS</option>
        <option value="ROTRACT">ROTRACT</option>
        <option value="VRC">VRC</option>
        <option value="OTHERS">OTHERS</option>        
      </select>
    </div>
            
     <div class="form-group">
      <label for="inputZip">Participate in NSS in Earlier Classes</label>
     <select id="" class="form-control" name="participate">
        <option value="Yes">Yes</option>
        <option value="No">No</option>               
      </select> 
    </div>
            
    <div class="form-group">
      <label for="inputZip">College Hostel</label>
     <select id="" class="form-control" name="collegehostel">
        <option value="Yes">Yes</option>
        <option value="No">No</option>               
      </select> 
    </div>
            
    
 
  <button type="submit" class="btn btn-success">Register</button>
</form>
    </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>

    </body>
</html>
