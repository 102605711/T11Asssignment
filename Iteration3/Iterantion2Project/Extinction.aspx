<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Extinction.aspx.cs" Inherits="Iterantion2Project.Extinction" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Blog Single - saveAnimals</title>

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon">
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet"/>
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet"/>
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet"/>
    <link href="assets/css/saveAnimal.css" rel="stylesheet" />
    <link rel="shortcut icon" type="image/x-icon" href="~/favicon1.ico" />
    <style>

        .faq-list li:hover {
            background-color: rgb(236, 235, 235);
        }
         #hero:before {
            content: "";
            background: rgba(0, 0, 0, 0.2);
            position: absolute;
            bottom: 0;
            top: 0;
            left: 0;
            right: 0;
        }
body{
    background-color: #f7f7f7;
    margin-top:20px;
}

.main-timeline {
    position: relative
}

.main-timeline:before {
    content: "";
    display: block;
    width: 2px;
    height: 100%;
    background: #c6c6c6;
    margin: 0 auto;
    position: absolute;
    top: 0;
    left: 0;
    right: 0
}

.main-timeline .timeline {
    margin-bottom: 40px;
    position: relative
}

.main-timeline .timeline:after {
    content: "";
    display: block;
    clear: both
}

.main-timeline .icon {
    width: 18px;
    height: 18px;
    line-height: 18px;
    margin: auto;
    position: absolute;
    top: 0;
    left: 0;
    bottom: 0;
    right: 0
}

.main-timeline .icon:before,
.main-timeline .icon:after {
    content: "";
    width: 100%;
    height: 100%;
    border-radius: 50%;
    position: absolute;
    top: 0;
    left: 0;
    transition: all 0.33s ease-out 0s
}

.main-timeline .icon:before {
    background: #fff;
    border: 2px solid #232323;
    left: -3px
}

.main-timeline .icon:after {
    border: 2px solid #c6c6c6;
    left: 3px
}

.main-timeline .timeline:hover .icon:before {
    left: 3px
}

.main-timeline .timeline:hover .icon:after {
    left: -3px
}

.main-timeline .date-content {
    width: 50%;
    float: left;
    margin-top: 22px;
    position: relative
}

.main-timeline .date-content:before {
    content: "";
    width: 36.5%;
    height: 2px;
    background: #c6c6c6;
    margin: auto 0;
    position: absolute;
    top: 0;
    right: 10px;
    bottom: 0
}

.main-timeline .date-outer {
    width: 150px;
    height: 150px;
    font-size: 16px;
    text-align: center;
    margin: auto;
    z-index: 1
}

.main-timeline .date-outer:before,
.main-timeline .date-outer:after {
    content: "";
    width: 225px;
    height: 150px;
    margin: 0 auto;
    border-radius: 50%;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    transition: all 0.33s ease-out 0s
}

.main-timeline .date-outer:before {
    background: #fff;
    border: 2px solid #232323;
    left: -6px
}

.main-timeline .date-outer:after {
    border: 2px solid #c6c6c6;
    left: 6px
}

.main-timeline .timeline:hover .date-outer:before {
    left: 6px
}

.main-timeline .timeline:hover .date-outer:after {
    left: -6px
}

.main-timeline .date {
    width: 100%;
    margin: auto;
    position: absolute;
    top: 27%;
    left: 0
}

.main-timeline .month {
    font-size: 18px;
    font-weight: 700;
    color:#75060d   ;
    
}

.main-timeline .year {
    display: block;
    font-size: 13px;
    font-weight: 700;
    color: #232323;
    line-height: 36px
}

.main-timeline .timeline-content {
    width: 50%;
    padding: 20px 0 20px 50px;
    float: right
}

.main-timeline .title {
    font-size: 19px;
    font-weight: 700;
    line-height: 24px;
    margin: 0 0 15px 0
}

.main-timeline .description {
    margin-bottom: 0
}

.main-timeline .timeline:nth-child(2n) .date-content {
    float: right
}

.main-timeline .timeline:nth-child(2n) .date-content:before {
    left: 10px
}

.main-timeline .timeline:nth-child(2n) .timeline-content {
    padding: 20px 50px 20px 0;
    text-align: right
}

@media only screen and (max-width: 991px) {
    .main-timeline .date-content {
        margin-top: 35px
    }
    .main-timeline .date-content:before {
        width: 22.5%
    }
    .main-timeline .timeline-content {
        padding: 10px 0 10px 30px
    }
    .main-timeline .title {
        font-size: 17px
    }
    .main-timeline .timeline:nth-child(2n) .timeline-content {
        padding: 10px 30px 10px 0
    }
}

@media only screen and (max-width: 767px) {
    .main-timeline:before {
        margin: 0;
        left: 7px
    }
    .main-timeline .timeline {
        margin-bottom: 20px
    }
    .main-timeline .timeline:last-child {
        margin-bottom: 0
    }
    .main-timeline .icon {
        margin: auto 0
    }
    .main-timeline .date-content {
        width: 95%;
        float: right;
        margin-top: 0
    }
    .main-timeline .date-content:before {
        display: none
    }
    .main-timeline .date-outer {
        width: 110px;
        height: 110px
    }
    .main-timeline .date-outer:before,
    .main-timeline .date-outer:after {
        width: 110px;
        height: 110px
    }
    .main-timeline .date {
        top: 30%
    }
    .main-timeline .year {
        font-size: 24px
    }
    .main-timeline .timeline-content,
    .main-timeline .timeline:nth-child(2n) .timeline-content {
        width: 95%;
        text-align: center;
        padding: 10px 0
    }
    .main-timeline .title {
        margin-bottom: 10px
    }
}
}
    </style>
</head>
<body>
        <header id="header" class="fixed-top header-inner-pages">
        <div class="container d-flex align-items-center justify-content-between">
               <a href="/Home/kolaroo" class="logo"><img src="assets/Logo.png" class="img-fluid"/></a>
            <a href="/Home/kolaroo"></a>

            <nav id="navbar" class="navbar">
                <ul>
                    <li><a class="nav-link scrollto" href="/Home/kolaroo">Home</a></li>
                       <li><a class="nav-link scrollto" href="/Home/kolaroo">Land Animals</a></li>
                    <li class="dropdown">
                        <a href="/Home/habitat"><span>Habitats</span></a>
                        <ul>
                            <li><a href="/Home/habitat">Protecting Land</a></li>
                            <li><a href="/Home/HabitatMap">Explore habitat from the Map</a></li>
                        </ul> 
                    </li>
                    <li class="dropdown">
                        <a href="/Home/saveAnimals"><span>Save Animals</span> </a>
                        <ul>
                            <li><a href="/Home/saveAnimals">Help Endangered Animals</a></li>
                            <li><a href="/Home/shelter">Find shelter from the Map</a></li>
                        </ul> 
                    </li>
                    <li><a class="nav-link scrollto" href="/Home/Donate">Donation</a></li>
                     <li><a class="nav-link scrollto" href="/Home/JoinUS">Join Activity</a></li>
                    <li><a class="nav-link scrollto" href="/Quiz.aspx/">Check Your Knowledge</a></li>
                </ul>
                <i class="bi bi-list mobile-nav-toggle"></i>
            </nav><!-- .navbar -->
            
        </div>
    </header><!-- End Header -->
       <section id="hero" style="height: 80vh; background: url('assets/extinction.jpg') top center;">

        <div class="hero-container">
            <h1>Help Endangered Animals Right Now!</h1>
        </div>
    </section><!-- End Hero -->
    <form id="form1" runat="server">
       <div class="container">
                   <!-- ======= About Section ======= -->
        <section id="about" class="about">
            <div class="container">

                <div class="section-title">

                    <h3>Extinction <span>History</span></h3>

                </div>

            </div>
        </section><!-- End About Section -->
        <div class="main-timeline">
                  <!-- start experience section-->
                             <div class="timeline">
                            <div class="icon"></div>
                            <div class="date-content">
                                <div class="date-outer">
                                    <span class="date">
                                            <span class="month">1850</span>
                                    <span class="year">Tasmanian emu</span>
                                    </span>
                                </div>
                            </div>
                            <div class="timeline-content">
                                <img  src="Timeline/Picture1.jpg"  style=" border-radius: 50%; width:250px"/>
                               
                            </div>
                        </div>
                      <div class="timeline">
                            <div class="icon"></div>
                            <div class="date-content">
                                <div class="date-outer">
                                    <span class="date">
                                            <span class="month">1865</span>
                                    <span class="year">Broad-faced potoroo</span>
                                    </span>
                                </div>
                            </div>
                            <div class="timeline-content">
                                <img src="Timeline/Picture2.jpg" style=" border-radius: 50%; width:250px"/>
                               
                            </div>
                        </div>
                   <div class="timeline">
                            <div class="icon"></div>
                            <div class="date-content">
                                <div class="date-outer">
                                    <span class="date">
                                            <span class="month">1890</span>
                                    <span class="year">Eastern hare-wallaby</span>
                                    </span>
                                </div>
                            </div>
                            <div class="timeline-content">

                                <img src="Timeline/Picture3.jpg" style=" border-radius: 50%; width:250px"/>
                               
                            </div>
                        </div>
                   <div class="timeline">
                            <div class="icon"></div>
                            <div class="date-content">
                                <div class="date-outer">
                                    <span class="date">
                                            <span class="month">1931</span>
                                    <span class="year">Lesser bilby</span>
                                    </span>
                                </div>
                            </div>
                            <div class="timeline-content">

                               <img src="Timeline/Picture4.jpg" style=" border-radius: 50%; width:250px"/>
                               
                            </div>
                        </div>
            
                          <div class="timeline">
                            <div class="icon"></div>
                            <div class="date-content">
                                <div class="date-outer">
                                    <span class="date">
                                            <span class="month">1932</span>
                                    <span class="year">Notamacropus greyi</span>
                                    </span>
                                </div>
                            </div>
                            <div class="timeline-content">

                                <img src="Timeline/Picture5.jpg" style=" border-radius: 50%; width:250px"/>
                               
                            </div>
                        </div>
                        <!-- start experience section-->
                        <div class="timeline">
                            <div class="icon"></div>
                            <div class="date-content">
                                <div class="date-outer">
                                    <span class="date">
                                            <span class="month">1933</span>
                                    <span class="year">Lesser stick-nest rat</span>
                                    </span>
                                </div>
                            </div>
                            <div class="timeline-content">

                                 <img src="Timeline/Picture6.jpg" style=" border-radius: 50%; width:250px"/>
                               
                            </div>
                        </div>
                        <!-- end experience section-->
                         <div class="timeline">
                            <div class="icon"></div>
                            <div class="date-content">
                                <div class="date-outer">
                                    <span class="date">
                                            <span class="month">1935</span>
                                    <span class="year">Desert rat-kangaroo</span>
                                    </span>
                                </div>
                            </div>
                            <div class="timeline-content">

                                  <img src="Timeline/Picture7.jpg" style=" border-radius: 50%; width:250px"/>
                            </div>
                        </div>
                        <!-- start experience section-->
                      <div class="timeline">
                            <div class="icon"></div>
                            <div class="date-content">
                                <div class="date-outer">
                                    <span class="date">
                                            <span class="month">1936</span>
                                    <span class="year">Tasmanian tiger</span>
                                    </span>
                                </div>
                            </div>
                            <div class="timeline-content">

                                  <img src="Timeline/Picture8.jpg" style=" border-radius: 50%; width:250px"/>
                               
                            </div>
                        </div>
                        <!-- end experience section-->

           
                  <div class="timeline">
                            <div class="icon"></div>
                            <div class="date-content">
                                <div class="date-outer">
                                    <span class="date">
                                            <span class="month">1940</span>
                                    <span class="year">White-footed rabbit-rat</span>
                                    </span>
                                </div>
                            </div>
                            <div class="timeline-content">

                                   <img src="Timeline/Picture9.jpg" style=" border-radius: 50%; width:250px"/>
                               
                            </div>
                        </div>
     
                 <div class="timeline">
                            <div class="icon"></div>
                            <div class="date-content">
                                <div class="date-outer">
                                    <span class="date">
                                            <span class="month">1945</span>
                                    <span class="year">Southern pig-footed bandicoot</span>
                                    </span>
                                </div>
                            </div>
                            <div class="timeline-content">

                                   <img src="Timeline/Picture10.jpg" style=" border-radius: 50%; width:250px"/>
                               
                            </div>
                        </div>
  
                    <div class="timeline">
                            <div class="icon"></div>
                            <div class="date-content">
                                <div class="date-outer">
                                    <span class="date">
                                            <span class="month">1956</span>
                                    <span class="year">Crescent nailtail wallaby</span>
                                    </span>
                                </div>
                            </div>
                            <div class="timeline-content">
                                  <img src="Timeline/Picture11.jpg" style=" border-radius: 50%; width:250px"/>
                               
                            </div>
                        </div>
                    <div class="timeline">
                            <div class="icon"></div>
                            <div class="date-content">
                                <div class="date-outer">
                                    <span class="date">
                                            <span class="month">1960</span>
                                    <span class="year">Desert bandicoot</span>
                                    </span>
                                </div>
                            </div>
                            <div class="timeline-content">

                                  <img src="Timeline/Picture12.jpg" style=" border-radius: 50%; width:250px"/>
                               
                            </div>
                        </div>
                    <div class="timeline">
                            <div class="icon"></div>
                            <div class="date-content">
                                <div class="date-outer">
                                    <span class="date">
                                            <span class="month">1969</span>
                                    <span class="year">Victorian grassland earless dragon</span>
                                    </span>
                                </div>
                            </div>
                            <div class="timeline-content">

                              <img src="Timeline/Picture13.png" style=" border-radius: 50%; width:250px;height:180.5px;"/>
                            </div>
                        </div>
                        <!-- end experience section-->

                    </div>

                </div>
            <section id="about1" class="about">
                
                <div class="row">
                <div class="section-title">

                    <h3>Change  <span>From Now!</span></h3>

                    <div class="col-lg-12">
                        <div style="width:60%;border:2px solid #75060d;border-radius:60%;margin-left:20%;">
                             <p> <label for="Declaration1"> I xxxx</label>
                           <input type="checkbox" id="Declaration1" name="Declaration1" value="Declaration1"/></p>                           
                            <p> <label for="Declaration2"> I xxxx</label>
                           <input type="checkbox" id="Declaration2" name="Declaration2" value="Declaration2"/></p>
                             <p> <label for="Declaration3"> I xxxx</label>
                           <input type="checkbox" id="Declaration3" name="Declaration3" value="Declaration3"/></p>
                             <button type="button" class="btn btn-danger" style="margin-top:20px;border-radius:70%">Confirmation</button>
                           </div>
                       
                    </div>
                     </div>
                </div>
           
     

        </section><!-- End About Section -->
 </form>
</body>
</html>
