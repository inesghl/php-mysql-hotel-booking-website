<?php 
  $corepage = explode('/', $_SERVER['PHP_SELF']);
    $corepage = end($corepage);
    if ($corepage!=='index.php') {
      if ($corepage==$corepage) {
        $corepage = explode('.', $corepage);
       header('Location: index.php?page='.$corepage[0]);
     }
    }
?>

<h1><a href="index.php"><i class="fas fa-tachometer-alt"></i>  Dashboard</a> <small>Satistics Overview</small></h1>
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
     <li class="breadcrumb-item active" aria-current="page">Welcome to Admin Panel</li>
  </ol>
</nav>

<div class="row student">
  <div class="col-sm-4">
     <div class="card text-white bg-primary mb-3">
      <div class="card-header">
        <div class="row">
          <div class="col-sm-4">
            <i class="fa fa-bed fa-3x"></i>
          </div>
          <div class="col-sm-8">
            <div class="float-sm-right">&nbsp;<span style="font-size: 30px">

              <?php $stu=mysqli_query($db_con,'SELECT * FROM `rooms`'); $stu= mysqli_num_rows($stu); echo $stu; ?>
                
              </span>
            </div>
            <div class="clearfix"></div>
            <div class="float-sm-right">Total ROOMs</div>
          </div>
        </div>
      </div>
      <div class="list-group-item-primary list-group-item list-group-item-action">
        <div class="row">
          <div class="col-sm-8">
            <p class="">All Rooms</p>
          </div>
          <div class="col-sm-4">
            <a href="all-rooms.php"><i class="fa fa-arrow-right float-sm-right"></i></a>
          </div>
        </div>
      </div>
    </div>
  </div>

  <div class="col-sm-4">
     <div class="card text-white bg-info mb-3">
      <div class="card-header">
        <div class="row">
          <div class="col-sm-4">
            <i class="fa fa-blog fa-3x"></i>
          </div>
          <div class="col-sm-8">
            <div class="float-sm-right">&nbsp;<span style="font-size: 30px"><?php $tusers=mysqli_query($db_con,'SELECT * FROM `users`'); $tusers= mysqli_num_rows($tusers); echo $tusers; ?></span></div>
            <div class="clearfix"></div>
            <div class="float-sm-right">Total Posts</div>
          </div>
        </div>
      </div>
      <div class="list-group-item-primary list-group-item list-group-item-action">
         <a href="index.php?page=all-posts">
        <div class="row">
          <div class="col-sm-8">
            <p class="">All Posts</p>
          </div>
          <div class="col-sm-4">
           <i class="fa fa-arrow-right float-sm-right"></i>
          </div>
        </div>
        </a>
      </div>
    </div>
  </div>

<div class="col-sm-4">
     <div class="card text-white bg-info mb-3">
      <div class="card-header">
        <div class="row">
          <div class="col-sm-4">
            <i class="fa fa-hotel fa-3x"></i>
          </div>
          <div class="col-sm-8">
            <div class="float-sm-right">&nbsp;<span style="font-size: 30px"><?php $booking=mysqli_query($db_con,'SELECT * FROM `reservation`'); $booking= mysqli_num_rows($booking); echo $booking; ?></span></div>
            <div class="clearfix"></div>
            <div class="float-sm-right">Total Reservations</div>
          </div>
        </div>
      </div>
      <div class="list-group-item-primary list-group-item list-group-item-action">
         <a href="index.php?page=all-reservation">
        <div class="row">
          <div class="col-sm-8">
            <p class="">All Reservations</p>
          </div>
          <div class="col-sm-4">
           <i class="fa fa-arrow-right float-sm-right"></i>
          </div>
        </div>
        </a>
      </div>
    </div>
  </div>

</div>
<hr>
<h3>New Reservation</h3>
<table class="table  table-striped table-hover table-bordered" id="data">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Booking-id</th>
      <th scope="col">Total Guest</th>
      <th scope="col">Guest Name</th>
      <th scope="col">Check-in</th>
      <th scope="col">Checkout</th>
      <th scope="col">Request</th>
      <th scope="col">Email</th>
      <th scope="col">Address</th>
    </tr>
  </thead>
  <tbody>
    <?php 
      $query=mysqli_query($db_con,'SELECT * FROM `reservation`');
      $i=1;
      while ($result = mysqli_fetch_array($query)) { ?>
      <tr>
        <?php 
        echo '<td>'.$i.'</td>
          <td>'.ucwords($result['booking_id']).'</td>
          <td>'.$result['g_total'].'</td>
          <td>'.ucwords($result['g_name']).'</td>
          <td>'.ucwords($result['g_checkin']).'</td>
          <td>'.ucwords($result['g_checkout']).'</td>
          <td>'.ucwords($result['g_request']).'</td>
          <td>'.ucwords($result['g_email']).'</td>
          <td>'.ucwords($result['g_address']). ucwords($result['g_city']). ucwords($result['g_country']).'</td>
          ';
          ?>
      </tr>  
     <?php $i++;} ?>
    
  </tbody>
</table>