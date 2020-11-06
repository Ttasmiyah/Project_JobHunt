﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CompanyProfile.aspx.cs" Inherits="JobHunt.CompanyProfile" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>Job Hunt Website</title>
    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/jobdescription.css" rel="stylesheet">
    <link href="css/fontawesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
       <!-- Including the bootstrap CDN -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js" integrity="sha384-B4gt1jrGC7Jh4AgTPSdUtOBvfO8shuf57BaghqFfPlYxofvL8/KUEfYiJOMMV+rV" crossorigin="anonymous"></script>

</head>
<body>
    <form id="form1" >
      
        <div>
            <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
                <a class="navbar-brand" href="#">JobHunt</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto mr-0">
                        <li class="nav-item active">
                            <a class="nav-link" href="HomePage.aspx">Home <span class="sr-only">(current)</span></a>
                        </li>
       
                       
                        <li class="nav-item">
                            <a class="nav-link" href="#">About Us</a>
                        </li>    
                        
                                <li class="nav-item">
                                    <a class="nav-link" href="postajob.aspx">Post A Job</a>
                           </li >
                         
                           <li class="nav-item">
                                <a class="nav-link" href="joblist.aspx">Job List</a>
                           </li>
                         <li class="nav-item">
                            <a class="nav-link" href="HomePage.aspx">Logout</a>
                        </li>

                    </ul>
                        
                </div>
            </nav> 
             </div>
    </form >

       <section class="big-banner">
        <div class="container-fluid">
            <div class="col-4">
                <div class="hero-title">
                    <h1 class="display-5 text-center">Applicants List</h1>
                </div>


            </div>

        </div>

    </section>

    <div class="container">
        <div class="jumbotron" style="margin-top: 50px">
            <form runat="server">

              <% foreach(JobHunt.Models.companyprofile data in getWhileLoopDataList() ) { %>
                        <div>
                                           <h4>Company Name</h4>
                                               <p><%: data.company_name %></p> 
                                           <h4>Company Username</h4>
                                               <p><%: data.username %></p>
                                          <h4>Contact Person</h4>
                                               <p><%: data.contact_person %></p> 
                                           <h4>Contact No.</h4>
                                               <p><%: data.company_contact %></p>
                                           <h4>Address</h4>
                                               <p><%: data.company_address %></p> 
                                           <h4>Email</h4>
                                               <p><%: data.company_email %></p>
                                            <h4>Details</h4>
                                               <p><%: data.company_details %></p>

                        </div>

                <% } //foreach %>
                                           
               <div class="form-group row" >
                        <label for="inputEmail3" class="col-sm-2 col-form-label">Company Name</label>
                          <div class="col-sm-10">
                            <asp:TextBox ID="TextBox1" runat="server"  class="form-control"  placeholder="eg.ABC limited" ></asp:TextBox>
                         
                        </div>
                </div>
                 
                <div class="form-group row" >
                        <label for="inputEmail3" class="col-sm-2 col-form-label">Contact Person</label>
                          <div class="col-sm-10">
                            <asp:TextBox ID="TextBox3" runat="server"  class="form-control"  placeholder="" ></asp:TextBox>
                         
                         </div>
                 </div>
                <div class="form-group row" >
                        <label for="inputEmail3" class="col-sm-2 col-form-label">Contact No</label>
                          <div class="col-sm-10">
                            <asp:TextBox ID="TextBox5" runat="server"  class="form-control"  placeholder="eg.01XXXXXXXXX" ></asp:TextBox>
                            
                         </div>
                    </div>
                    <div class="form-group row" >
                        <label for="inputEmail3" class="col-sm-2 col-form-label">Address</label>
                          <div class="col-sm-10">
                            <asp:TextBox ID="TextBox7" runat="server"  class="form-control"  placeholder="" ></asp:TextBox>
                          
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                        
                            <asp:TextBox ID="TextBox8" runat="server"  class="form-control" placeholder="eg.abc@gmail.com"></asp:TextBox>
                        </div>
                    </div>
                    <div class="form-group row">
                        <label for="inputPassword3" class="col-sm-2 col-form-label">Company Details</label>
                        <div class="col-sm-10">
                     
                            <asp:TextBox ID="TextBox6" runat="server"  class="form-control" placeholder=""></asp:TextBox>
                        </div>
                    </div>





                    
              <%--  <div class="form-group">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="gridCheck">
                        <label class="form-check-label" for="gridCheck">
                            Check me out
                        </label>
                    </div>
                </div>--%>
                <asp:Button ID="Button3" runat="server" Text="Update" CssClass="btn btn-primary" OnClick="update" />
               <%-- <button type="submit" class="btn btn-primary">Back</button>--%>


             
            </form>

             </div>
         </div>






     <!--Footer-->
            <footer>
                
                <div class="footer-top"  style="margin-top: 50px">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-3 col-sm-6 col-xs-12 segment-one">
                                <h3>Divinector</h3>
                                <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>

                            </div>
                            <div class="col-md-3 col-sm-6 col-xs-12 segment-two">
                                <h2>Divinector</h2>
                                <ul>
                                    <li><a href="#">Event</a>
                                     </li>
                                     <li><a href="#">Support</a>
                                         </li>
                                     <li><a href="#">Hosting</a>
                                         </li>
                                     <li><a href="#">Career</a>
                                         </li>
                                     <li><a href="#">Blog</a>
                                         </li>

                                </ul>
                            </div>
                             <div class="col-md-3 col-sm-6 col-xs-12 segment-three">
                                 <h2>Follow us</h2>
                                 <p>Please follow us on social media.</p>
                                 <a href="#"><i class="fa fa-facebook"></i></a>
                                  <a href="#"><i class="fa fa-twitter"></i></a>
                                  <a href="#"><i class="fa fa-Linkedin"></i></a>
                                  <a href="#"><i class="fa fa-pinterest"></i></a>
                             </div>
                             <div class="col-md-3 col-sm-6 col-xs-12 segment-four">
                                 <h2>Our Newletter</h2>
                             <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p>
                              <form action="">
                                  <input type="email">
                                  <input type="submit" value="subscribe">
                              </form>

                             </div>
                            
                        </div>
                    </div>
                </div>
            </footer>

            <!--Footer-->













      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>


</body>
</html>
