                <!-- <div class="row"> -->
                    <?php 
                        $query=mysqli_query($db_con,'SELECT * FROM `rooms`');
                        while ($result = mysqli_fetch_array($query)) { 
                    ?>
                    <div class="col-xl-4 col-lg-6 col-md-6">
                        <!-- Single Room -->
                        <div class="single-room mb-50">
                            <div class="room-img">
                               <a href="single-room.php?r_id=<?php echo $result['r_id']; ?>"><img src="admin/images/<?php echo $result['r_pic']; ?>" alt="<?php echo $result['r_type']; ?>"></a>
                            </div>
                            <div class="room-caption">
                                <h3><a href="single-room.php?r_id=<?php echo $result['r_id']; ?>"><?php echo $result['r_type']; ?></a></h3>
                                <div class="per-night">
                                    <span><u>BDT.</u><?php echo $result['r_rent']; ?> <span>/ par night</span></span>
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php } ?>
                <!-- </div> -->