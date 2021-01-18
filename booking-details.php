<?php
// if ($_GET['id']== "") {
//     header("Location:search.php");
// }
include_once('inc/header.php');?>
<!-- slider Area Start-->
    <div class="slider-area">
        <div class="single-slider hero-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/contact_hero.jpg" >
            <div class="container">
                <div class="row ">
                    <div class="col-md-11 offset-xl-1 offset-lg-1 offset-md-1">
                        <div class="hero-caption">
                            <span>Reeservation Details</span>
                            <h2>Search Your Reservation Details</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider Area End-->


<?php
if($_SERVER['REQUEST_METHOD']=="GET"){
    if (isset($_GET['booking_id'])) {
	$booking_id = $_GET['booking_id'];
 
?>

    

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
            <div class="container">          
                <div class="row">
                    <div class="col-lg-12">
                            <div class="media-body">
                                <h2>Search Reservation</h2>
                                    <form action="" method="get">
                                        <input type="number" value="<?php if($_SERVER['REQUEST_METHOD']=="GET"){ echo $_GET['booking_id'];} ?>" name="booking_id" placeholder="Enter Your Reservation ID ">
                                        <button>Search</button>

                                    </form>
                            </div>
                        </div>
                			<?php 
                    	$query=mysqli_query($db_con,"SELECT * FROM `reservation` WHERE booking_id = '$booking_id'");
                        if (mysqli_num_rows($query) > 0 ) {
                            
                        
				      	$i=1;
				      // var_dump($query);
				      while ($result = mysqli_fetch_array($query)) { 
				      	//date calculation
				      	$date1 = $result['g_checkin'];
					    $date2 = $result['g_checkout'];
					    $diff = abs(strtotime($date2) - strtotime($date1));
					    $years = floor($diff / (365*60*60*24));
					    $months = floor(($diff - $years * 365*60*60*24) / (30*60*60*24));
					    $days = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));

					    $n_guest = $result['g_adult'] + $result['g_child'];
				      	?>
				      	<div class="col-lg-12">
				      		<div class="media-body">
                                <p>RESERVATION DETAILS<input class="ml-4" type="button" value="Print this page" onClick="window.print()">
                                </p> 
                            </div>
				      	</div>
				    	<div class="col-lg-4 border border-success pt-15">
				    		<div class="media contact-info">
                            	<span class="contact-info__icon"><i class="ti-home"></i></span>
	                            <div class="media-body">
	                                <h3>Check In : <p><?php echo $result['g_checkin']; ?></p></h3>
	                                <h3>Check Out : <p><?php echo $result['g_checkout']; ?></p></h3>
	                                <h3>Total length of stay : <p><?php echo $days; ?> Nights</p></h3>
	                                <h3>Total Guests : <p><?php echo $n_guest; ?> Guest(s)</p></h3>
	                                <h3>Total Guests : <p><?php echo $n_guest; ?> Guest(s)</p></h3>
	                            </div>
	                        </div>
                        </div>
                        <div class="col-lg-8 border border-success pt-15">
				    		<div class="media contact-info">
                            <span class="contact-info__icon"><i class="ti-home"></i></span>
                            <div class="media-body">
                                <h3>Booking ID : <p><?php echo $result['booking_id'] ?></p></h3>
                                <h3>Guest Name : <p><?php echo $result['g_name'] ?></p></h3>
                                <h3>Email : <p><?php echo $result['g_email'] ?></p></h3>
                                <h3>Check in : <p><?php echo $result['g_checkin'] ?></p></h3>
                                <h3>Check Out : <p><?php echo $result['g_checkout'] ?></p></h3>
                                <h3>Address : <p><?php echo $result['booking_id'] .$result['g_address']. $result['g_city'] . $result['g_country']?> </p></h3>
                                <h3>Guest\'s special request : <p><?php echo $result['g_request'] ?></p></h3>
                            </div>
                        </div>
                    <?php 
                    $i++;}
                } else {
                    echo "Your Reservation ID is Wrong! Please enter a valid Reservation ID";
                }
                    ?>
                    </div>
                </div>
            </div>
        </section>
    <!-- ================ contact section end ================= -->
<?php 
       
    }else{
?>
    <!-- ================ contact section start ================= -->
    <section class="contact-section">
            <div class="container">          
                <div class="row">
                    <div class="col-lg-12">
                            <div class="media-body">
                                <h2>Search Reservation</h2>
                                    <form action="" method="get">
                                        <input type="number" value="<?php if($_SERVER['REQUEST_METHOD']=="GET"){ echo $_GET['booking_id'];} ?>" name="booking_id" placeholder="Enter Your Reservation ID ">
                                        <button>Search</button>

                                    </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    <!-- ================ contact section end ================= -->
<?php
}
} 
 ?>

<?php include_once('inc/footer.php');?>