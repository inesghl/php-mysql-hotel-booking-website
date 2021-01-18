<?php 
if (empty($_GET['check_in'] == true)) {
    header("Location:index.php#check_availabilty");
}


include_once('inc/header.php'); ?>


    <main>

        <!-- slider Area Start-->
        <div class="slider-area">
            <div class="single-slider hero-overly slider-height2 d-flex align-items-center" data-background="assets/img/hero/roomspage_hero.jpg" >
                <div class="container">
                    <div class="row ">
                        <div class="col-md-11 offset-xl-1 offset-lg-1 offset-md-1">
                            <div class="hero-caption">
                                <span>search</span>
                                <h2>Available Rooms </h2>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- slider Area End-->


        <!-- Room Start -->
    <section class="room-area pt-0 r-padding1">
        <!-- <form action="confirm.php?r_id=4" method="get"> -->

            <?php include_once("inc/b_search.php"); ?>

            <div class="container">
                <div class="row justify-content-center">
                    <div class="col-xl-8">
                        <!--font-back-tittle  -->
                        <div class="font-back-tittle mb-45">
                            <div class="archivment-front">
                                <h3>Available Rooms</h3>
                            </div>
                            <h3 class="archivment-back">Available Rooms</h3>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <?php 
                        $query=mysqli_query($db_con,'SELECT * FROM `rooms`');
                        while ($result = mysqli_fetch_array($query)) { 
                    ?>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                               <!-- <a href="single-room.php?r_id=<?php echo $result['r_id']; ?>"> -->
                                    <img src="admin/images/<?php echo $result['r_pic']; ?>" alt="<?php echo $result['r_type']; ?>">
                                <!-- </a> -->
                            </div>
                            <div class="room-caption">
                                <h3>
                                    <!-- <a href="single-room.php?r_id=<?php //echo $result['r_id']; ?>"> -->
                                        <?php echo $result['r_type']; ?>
                                        
                                    <!-- </a> -->
                                </h3>
                                <div class="per-night">
                                    <span><u>BDT.</u><?php echo $result['r_rent']; ?> <span>/ par night</span></span>
                                </div>
                                <div class="single-select-box pt-45">
                                    <a href="confirm.php?rent=<?php echo $result['r_rent']."&type=". $result['r_type']."&in=".$_GET['check_in']."&out=".$_GET['check_out']."&ad=".$_GET['adult']."&ch=".$_GET['children']."&nr=".$_GET['no_room']; ?>" class="btn select-btn">
                                    <!-- <input class="btn select-btn" type="submit" name="<?php //echo $result['r_id'] ?>" value="Reserve"> -->
                                    Reserve</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                </div>
                <!-- <div class="row justify-content-center">
                    <div class="room-btn pt-70">
                        <a href="#" class="btn view-btn1">View more  <i class="ti-angle-right"></i> </a>
                    </div>
                </div> -->
            </div>
<!-- </form> -->
        </section>
        <!-- Room End -->

        <!-- Gallery img Start-->
        <div class="gallery-area fix">
            <div class="container-fluid p-0">
                <div class="row">
                    <div class="col-md-12">
                        <div class="gallery-active owl-carousel">
                            <div class="gallery-img">
                                <a href="#"><img src="assets/img/gallery/gallery1.jpg" alt=""></a>
                            </div>
                            <div class="gallery-img">
                                <a href="#"><img src="assets/img/gallery/gallery2.jpg" alt=""></a>
                            </div>
                            <div class="gallery-img">
                                <a href="#"><img src="assets/img/gallery/gallery3.jpg" alt=""></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Gallery img End-->
    </main>
<?php include_once('inc/footer.php'); ?>
