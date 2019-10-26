<%-- 
    Document   : signup
    Created on : Oct 19, 2019, 4:06:57 PM
    Author     : Administrator
--%>

<div id="signupbox" style=" margin-top:50px" class="mainbox col-md-6 col-md-offset-3 col-sm-8 col-sm-offset-2">
    <div class="panel panel-info">
        <div class="panel-heading">
            <div class="panel-title">Sign Up</div>
            <div style="float:right; font-size: 85%; position: relative; top:-10px"><a id="signinlink" href="/SpringWithHibernate/login" >Sign In</a></div>
        </div>  
        <div class="panel-body" >
            <form id="signupform" class="form-horizontal" role="form" action="/SpringWithHibernate/signupSubmit" method="POST">

                <div id="signupalert" style="display:none" class="alert alert-danger">
                    <p>Error:</p>
                    <span></span>
                </div>



                <div class="form-group">
                    <label for="email" class="col-md-3 control-label">Email</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="email" placeholder="Email Address">
                    </div>
                </div>


                <div class="form-group">
                    <label for="name" class="col-md-3 control-label"> Name</label>
                    <div class="col-md-9">
                        <input type="text" class="form-control" name="name" placeholder="Enter Your Name">
                    </div>
                </div>
                <div class="form-group">
                    <label for="phone" class="col-md-3 control-label"> Phone Number</label>
                    <div class="col-md-9">
                        <input type="number" class="form-control" name="phone" placeholder="Enter Your Phone Number">
                    </div>
                </div>
                <div class="form-group">
                    <label for="password" class="col-md-3 control-label">Password</label>
                    <div class="col-md-9">
                        <input type="password" class="form-control" name="password" placeholder="Enter Password">
                    </div>
                </div>
                <div class="form-group">
                    <label for="gender" class="col-md-3 control-label">Gender</label>
                    <div class="col-md-9">
                <select name="gender">
                    <option value="Male">Male</option>
                    <option value="Female">Female</option>
                    <option value="Other">Other</option>
                    
                </select>
                 </div>
                </div>

                <div class="form-group">
                    <!-- Button -->                                        
                    <div class="col-md-offset-3 col-md-9">
                        <button  type="submit" class="btn btn-info"><i class="icon-hand-right"></i> Sign Up</button>
                        <span style="margin-left:8px;">or</span>  
                    </div>
                </div>

                <div style="border-top: 1px solid #999; padding-top:20px"  class="form-group">

                    <div class="col-md-offset-3 col-md-9">
                        <button id="btn-fbsignup" type="button" class="btn btn-primary"><i class="icon-facebook"></i>   Sign Up with Facebook</button>
                    </div>                                           

                </div>



            </form>
        </div>
    </div>




</div>
