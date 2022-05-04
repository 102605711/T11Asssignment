<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quiz.aspx.cs" Inherits="Iterantion2Project.Quiz" %>

<!DOCTYPE html>
<html lang="en" >

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <title>Quiz</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

     <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">

    <link href="~/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="~/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="~/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="~/assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet">
    <link href="~/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="~/assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet">
    <link href="~/assets/css/Quiz.css" rel="stylesheet" />
    <link href="~/assets/css/Button.css" rel="stylesheet" />
    <link href="~/assets/css/style.css" rel="stylesheet" />
    <link href="~/assets/css/buttons.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato:900|Rye&display=swap" rel="stylesheet">
    <link href="~/assets/css/TextStyle.css" rel="stylesheet" />
    
</head>
<body>
    <header id="header" class="fixed-top header-inner-pages">
        <div class="container d-flex align-items-center justify-content-between">
            <a href="/Home/kolaroo"><img src="~/assets/Logo.png" alt="" class="img-fluid"></a>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto" href="/Home/kolaroo">Home</a></li>
                    <li class="dropdown">
                        <a href="/Home/landanimals"><span>Land Animals</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="/Home/landanimals">Endangered Animals</a></li>
                            <li><a href="/endangered_land_animals/Index">Explore More</a></li>
                        </ul> 
                    </li>
                    <li class="dropdown">
                        <a href="/Home/habitat"><span>Habitats</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="/Home/habitat">Protecting Land</a></li>
                            <li><a href="/Home/HabitatMap">Explore habitat from the Map</a></li>
                        </ul> 
                    </li>
                    <li class="dropdown">
                        <a href="/Home/saveAnimals"><span>Help Endangered Animals</span> <i class="bi bi-chevron-down"></i></a>
                        <ul>
                            <li><a href="/Home/saveAnimals">Help Endangered Animals</a></li>
                            <li><a href="/Home/shelter">Find shelter from the Map</a></li>
                        </ul> 
                    </li>
                    <li><a class="nav-link scrollto" href="/Home/Donate">Donation</a></li>
                    <li><a class="nav-link scrollto" href="/Quiz.aspx/">Quiz</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->

        </div>
    </header><!-- End Header -->
  

        <section id="blog" class="blog">
            <div class="container" data-aos="fade-up">
                 <div class="sidebar">

        <form id="form1" runat="server">
            

      

      
        <asp:MultiView ID="mlvw" runat="server" ActiveViewIndex="0">

            
            <asp:View ID="vw1" runat="server">

              
                
            <br/>
            <br/>
            <br/>
         
                  
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         
                  
             <asp:Button class="button fire" ID="StartQuiz" runat="server" Text="Start Quiz" OnClick="StartQuiz_Click" />
                  <br/>
            <br/>
            <br/>
                 <br/>
            <br/>
            
            
            </asp:View>
           

            <asp:View ID="vw2" runat="server">

                <asp:Panel ID="Panel2"  Font-Bold="true" runat="server" style="margin-left: 10px; margin-top: 5px" Height="160px" Width="520px">
                
      
                    <asp:Label ID="question1" runat="server" ></asp:Label>
            <br />

                <asp:RadioButtonList ID="q1" runat="server">
                    <asp:ListItem value="1"/>
                    <asp:ListItem value="2"/>
                    <asp:ListItem value="3"/>
                    <asp:ListItem value="4"/>
                </asp:RadioButtonList>

                <asp:Label ID="t1" runat="server" Forecolor="Red"></asp:Label>

     
                </asp:Panel>

                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="n2" runat="server" class="retro" OnClick="n2_Click" Text="Next" />
            <br/>
                
           
            </asp:View>

        <asp:View ID="vw3" runat="server">

             <asp:Panel ID="Panel3" Font-Bold="true" runat="server" style="margin-left: 10px; margin-top: 5px" Height="160px" Width="500px">
                
      
                 <asp:Label ID="question2" runat="server" ></asp:Label>
            <br />

                <asp:RadioButtonList ID="q2" runat="server">
                    <asp:ListItem value="1"/>
                    <asp:ListItem value="2"/>
                    <asp:ListItem value="3"/>
                    <asp:ListItem value="4"/>
                    
                </asp:RadioButtonList>
                <asp:Label ID="t2" runat="server" Forecolor="Red"></asp:Label>

               
           
             <br />
               
                <asp:Button class="retro" ID="c3" runat="server" onclick="c3_Click" Text="Prev" />
               &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button class="retro" ID="n3" runat="server" Text="Next" OnClick="n3_Click" />
              
                </asp:Panel>
               <br />
                  <br />
                  <br />
   
            

         
        </asp:View>

            <asp:View ID="vw4" runat="server">

             <asp:Panel ID="Panel4" Font-Bold="true" runat="server" style="margin-left: 10px; margin-top: 5px" Height="160px" Width="500px">
                
      
                 <asp:Label ID="question3" runat="server" ></asp:Label>
                 <br />
                <asp:RadioButtonList ID="q3" runat="server">
                    <asp:ListItem value="1"/>
                    <asp:ListItem value="2"/>
                    <asp:ListItem value="3"/>
  
                    
                </asp:RadioButtonList>
                <asp:Label ID="t3" runat="server" Forecolor="Red"></asp:Label>

               
           
             <br />
                
                <asp:Button ID="c4" class="retro" runat="server" onclick="c4_Click" Text="Prev" />
              &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="n4" class="retro" runat="server" Text="Next" OnClick="n4_Click" />
                </asp:Panel>
                 <br />
                 <br />

               

            
        </asp:View>
            
            <asp:View ID="vw5" runat="server">

             <asp:Panel ID="Panel5" Font-Bold="true" runat="server" style="margin-left: 10px; margin-top: 5px" Height="160px" Width="600px">
                
      
            
            <asp:Label ID="question4" runat="server" ></asp:Label>
                 <br />
                <asp:RadioButtonList ID="q4" runat="server">
                    <asp:ListItem value="1"/>
                    <asp:ListItem value="2"/>
                    <asp:ListItem value="3"/>
                    <asp:ListItem value="4"/>
                    
                </asp:RadioButtonList>
                <asp:Label ID="t4" runat="server" Forecolor="Red" ></asp:Label>

               
           
             <br />
                
                <asp:Button ID="c5" class="retro" runat="server" onclick="c5_Click" Text="Prev" />
                 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="n5" class="retro" runat="server" Text="Next" OnClick="n5_Click" />
              
                </asp:Panel>
                 <br /> <br /><br />



        </asp:View>
            <asp:View ID="vw6" runat="server">
                <asp:Panel ID="Panel6" Font-Bold="true" runat="server" style="margin-left: 10px; margin-top: 5px" Height="160px" Width="600px">
                
                <asp:Label ID="question5" runat="server" ></asp:Label>
                 <br />
                <asp:RadioButtonList ID="q5" runat="server">
                    <asp:ListItem value="1"/>
                    <asp:ListItem value="2"/>
                    <asp:ListItem value="3"/>
                    <asp:ListItem value="4"/>
                    
                </asp:RadioButtonList>
                <asp:Label ID="t5" runat="server" Forecolor="Red"></asp:Label>


               
           
             <br />
               
                <asp:Button ID="c6" class="retro" runat="server" onclick="c6_Click" Text="Prev" />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <asp:Button ID="n6" class="retro" runat="server" Text="Next" OnClick="n6_Click" />
              
                </asp:Panel>
                 <br /> <br /> <br />

            

            </asp:View>
            <asp:View ID="vw7" runat="server">
        
                <asp:Label class="hcqStyle3" ID="Result1" runat="server" ></asp:Label>
                
                <br /><br />
                <asp:Label class="hcqStyle2" ID="Result2" runat="server" ></asp:Label>
            </asp:View>

            
            
        </asp:MultiView>   
    
       
    </form>
                              </div>

            </div>
        </section>

</body>
</html>

      