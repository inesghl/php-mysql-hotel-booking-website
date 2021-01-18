<?php 
if ($_GET['rent']== "") {
    header("Location:search.php");
}

include_once('inc/header.php');
    $con_message ='';
    $r_rent = $_GET['rent'];
    $r_type = $_GET['type'];
    $check_in = $_GET['in'];
    $check_out = $_GET['out'];
    $adult = $_GET['ad'];
    $children = $_GET['ch'];
    $no_room = $_GET['nr'];
    $n_guest = $adult +$children;

    //night calculation
    $date1 = $check_in;
    $date2 = $check_out;
    $diff = abs(strtotime($date2) - strtotime($date1));
    $years = floor($diff / (365*60*60*24));
    $months = floor(($diff - $years * 365*60*60*24) / (30*60*60*24));
    $days = floor(($diff - $years * 365*60*60*24 - $months*30*60*60*24)/ (60*60*24));
 
if(isset($_POST['submit'])){
    extract($_POST);
    $booking_id = rand();

    $query = "INSERT INTO `reservation`(`booking_id`, `g_adult`, `g_child`, `g_total`, `g_checkin`, `g_checkout`, `g_name`, `g_email`, `g_address`, `g_city`, `g_country`, `g_request`) VALUES ('$booking_id','$adult','$children','$n_guest','$check_in','$check_out','$name','$email','$address','$city','$country','$message')";
    if (mysqli_query($db_con,$query)) {
        $con_message = $booking_id;
    }else{
        echo "<h1 class='bg-warning text-light'>Your Reservation not success </h1>";
    }

}
?>

    <!-- slider Area Start-->
    <div class="slider-area">
        <div class="single-slider hero-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/contact_hero.jpg" >
            <div class="container">
                <div class="row ">
                    <div class="col-md-11 offset-xl-1 offset-lg-1 offset-md-1">
                        <div class="hero-caption">
                            <span>Confirm</span>
                            <h2>Compleate your Reeservation</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- slider Area End-->

    <!-- ================ contact section start ================= -->
    <section class="contact-section">
            <div class="container">          
                <div class="row">
                    <?php if (!$con_message=="") { ?>
                        <div class="col-md-8 col-xs-12">
                            <div class="row px-3 py-3 rounded border border-success">
                                <div class="col-12">
                                    <h2 class="contact-title">Thank you for your Reservation. <br> 
                                        Your Reservation id is 
                                        <a href='booking-details.php?id=<?php echo $con_message; ?>'>
                                            #<?php echo $con_message; ?>
                                        </a>
                                    </h2>
                                </div>
                                <div class="col-12">
                                    <div class="single-select-box">
                                        <a href="index.php" class="btn select-btn">
                                            Back to Home
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </section>
    <!-- ================ contact section end ================= -->


<?php include_once('inc/footer.php');?>