<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
        <link href="css/dashboard.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
       
        <div class="container mt-3 mb-5"> 
            <h1>OD GENERATOR</h1> 
        </div>
        
        <div class="container dashboard mt-5">
            <div class="row mt-5">
                <div class="col-md-4">
                    <div class="card" style="width: 18rem;">
                        <div class="card-body">
                          <h5 class="card-title">ADD STUDENT</h5>
                          <p class="card-text">Add NSS students with required details</p>
                          <a href="studregistration.jsp" class="btn btn-primary">ADD STUDENT</a>
                        </div>
                     </div>
                </div>
                <div class="col-md-4">
                     <div class="card" style="width: 18rem;">
                        <div class="card-body">
                          <h5 class="card-title">VIEW STUDENT</h5>
                          <p class="card-text">it shows add student details</p>
                          <a href="studentlist.jsp" class="btn btn-primary">VIEW STUDENT</a>
                        </div>
                     </div>
                </div>
                <div class="col-md-4">
                     <div class="card" style="width: 18rem;">
                        <div class="card-body">
                          <h5 class="card-title">CREATE OD FORM</h5>
                          <p class="card-text">Creates OD form for different events</p>
                          <a href="#" class="btn btn-primary">CREATE OD FORM</a>
                        </div>
                     </div>
                </div>
               
            </div>
        </div>
        
       <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.6/umd/popper.min.js" integrity="sha384-wHAiFfRlMFy6i5SRaxvfOCifBUQy1xHdJ/yoi7FRNXMRBu5WHdZYu1hA6ZOblgut" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/js/bootstrap.min.js" integrity="sha384-B0UglyR+jN6CkvvICOB2joaf5I4l3gm9GU6Hc1og6Ls7i6U/mkkaduKaBhlAXv9k" crossorigin="anonymous"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>              
     
    </body>
</html>
