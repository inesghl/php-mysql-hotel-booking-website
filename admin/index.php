<?php require_once 'db_con.php';
session_start();
if (!isset($_SESSION['user_login'])) {
  header('Location: login.php');
}
?>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/bootstrap.min.css">
    <link rel="stylesheet" href="../css/dataTables.bootstrap4.min.css">
    <link rel="stylesheet" href="../css/fontawesome.min.css">
    <link rel="stylesheet" href="../css/solid.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.0.0/animate.min.css"/>
    <link rel="stylesheet" type="text/css" href="../css/style.css">

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="../js/jquery-3.5.1.min.js"></script>
    <script src="../js/bootstrap.min.js"></script>
    <script src="../js/jquery.dataTables.min.js"></script>
    <script src="../js/dataTables.bootstrap4.min.js"></script>
    <script src="../js/fontawesome.min.js"></script>
    <script src="../js/script.js"></script>
    <script src="https://cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>
    <title>Admin Deshboard</title>
  </head>
  <body>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.php">Reservation.com<!-- <i class="fas fa-chart-line fa-3x"></i> --></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="navbar-collapse collapse justify-content-end" id="navbarSupportedContent">
    <?php $showuser = $_SESSION['user_login']; $haha = mysqli_query($db_con,"SELECT * FROM `users` WHERE `username`='$showuser';"); $showrow=mysqli_fetch_array($haha); ?>
    <ul class="nav navbar-nav navbar-right">
        <li class="dropdown ">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">
            <img class="showimg" src="images/<?php echo $showrow['photo']; ?>">
            <!-- <i class="pr-2 fa fa-user"> --></i><?php echo $showrow['name']; ?></a>
            <span class="caret"></span></a>
            <ul class="dropdown-menu pl-2 pr-4" role="menu">
              <!-- <li class="nav-item">
                <a class="" href="index.php?page=user-profile"><i class="fa fa-user"></i><?php //echo $showrow['name']; ?></a>
              </li> -->
              
              <li class="pb-2">
                <a class="" href="index.php?page=user-profile"><i class="fa fa-user"></i> Profile</a>
              </li>
              <li class="divider"></li>
              <li class="pb-2">
                <a class="" href="logout.php"><i class="fa fa-power-off"></i> Logout</a>
              </li>
            </ul>
          </li>
        </ul>
    <!-- <ul class="nav navbar-nav ">
      <li class="nav-item">
        <a class="nav-link" href="index.php?page=user-profile"><i class="fa fa-user"></i> Welcome <?php //echo $showrow['name']; ?>!</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="index.php?page=add-student"><i class="fa fa-user-plus"></i> Add Stuennt</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="index.php?page=user-profile"><i class="fa fa-user"></i> Profile</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout.php"><i class="fa fa-power-off"></i> Logout</a>
      </li>
    </ul> -->
  </div>
</nav>
<br>
    <div class="container">
        <div class="row">
          <div class="col-md-3">

            <div class="list-group">
              <a href="index.php?page=dashboard" class="list-group-item list-group-item-action active">
               <i class="fas fa-tachometer-alt"></i> Dashboard
              </a>
              <ul class="nav navbar-nav">
                <!-- reservation -->
                <li class="panel panel-default list-group-item list-group-item-action">
                  <a href="index.php?page=all-reservation">
                    <span class="glyphicon glyphicon-user"></span><i class="fa fa-hotel"></i> Reservation <span class="caret"></span>
                  </a>
                </li>
                <!-- Room -->
                <li class="panel panel-default list-group-item list-group-item-action" id="dropdown">
                  <a data-toggle="collapse" href="#dropdown-room">
                    <span class="glyphicon glyphicon-user"></span><i class="fa fa-bed"></i> ROOM <span class="caret"></span>
                  </a>
                  <!-- Dropdown level 1 -->
                  <div id="dropdown-room" class="panel-collapse collapse">
                    <div class="panel-body">
                      <ul class="nav navbar-nav">
                        <li>
                          <a href="index.php?page=add-rooms" class="list-group-item list-group-item-action">
                          Add Rooms
                          </a>
                        </li>
                        <li>
                          <a href="index.php?page=all-rooms" class="list-group-item list-group-item-action">
                            All Rooms
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </li>
              
              <!-- post -->
              
                <li class="panel panel-default list-group-item list-group-item-action" id="dropdown">
                  <a data-toggle="collapse" href="#dropdown-lvl2">
                    <span class="glyphicon glyphicon-user"></span><i class="fa fa-blog"></i> POST <span class="caret"></span>
                  </a>
                  <!-- Dropdown level 1 -->
                  <div id="dropdown-lvl2" class="panel-collapse collapse">
                    <div class="panel-body">
                      <ul class="nav navbar-nav">
                        <li>
                          <a href="index.php?page=add-posts" class="list-group-item list-group-item-action">
                          Add Posts
                          </a>
                        </li>
                        <li>
                          <a href="index.php?page=all-posts" class="list-group-item list-group-item-action">
                            All Posts
                          </a>
                        </li>
                      </ul>
                    </div>
                  </div>
                </li>

                <!-- user -->
                <li class="panel panel-default list-group-item list-group-item-action" id="dropdown">
                    <a data-toggle="collapse" href="#dropdown-user">
                      <span class="glyphicon glyphicon-user"></span><i class="fa fa-user"></i> USERS <span class="caret"></span>
                    </a>
                    <!-- Dropdown level 1 -->
                    <div id="dropdown-user" class="panel-collapse collapse">
                      <div class="panel-body">
                        <ul class="nav navbar-nav">
                          <li>
                            <a href="index.php?page=all-users" class="list-group-item list-group-item-action">
                            All Users
                            </a>
                          </li>
                          <li>
                            <a href="index.php?page=user-profile" class="list-group-item list-group-item-action">
                              User Profile
                            </a>
                          </li>
                        </ul>
                      </div>
                    </div>
                  </li>
                </ul>
                

    
              <a href="index.php?page=add-student" class="list-group-item list-group-item-action">
                <i class="fa fa-user-plus"></i> Add Student
              </a>
              <a href="index.php?page=all-student" class="list-group-item list-group-item-action">
                <i class="fa fa-users"></i> All Students
              </a>
              
              


            </div>
          </div>
          <div class="col-md-9">
             <div class="content">
                 <?php 
                   if (isset($_GET['page'])) {
                    $page = $_GET['page'].'.php';
                    }else{
                      $page = 'dashboard.php';
                    }

                    if (file_exists($page)) {
                      require_once $page;
                    }else{
                      require_once '404.php';
                    }
                  ?>
             </div>
        </div>
        </div>  
    </div>
    <div class="clearfix"></div>
    <footer>
      <div class="container">
      <p>All Right Reseerved <a class="text-light" href="http://minarkhan.com">minarkhan</a> &copy; 2016 to <?php echo date('Y') ?></p>
      </div>
    </footer>
    <script type="text/javascript">
      jQuery('.toast').toast('show');
    </script>
  </body>
</html>