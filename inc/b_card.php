
        <!-- Booking Room Start-->
        <div class="booking-area">
            <div class="container">
               <div class="row ">
               <div class="col-12">
                <form action="search.php" method="get">
                <div class="booking-wrap d-flex justify-content-between align-items-center">
                 
                    <!-- select in date -->
                    <div class="single-select-box mb-30">
                        <!-- select out date -->
                        <div class="boking-tittle"  id="">
                            <span> Check In Date:</span>
                        </div>
                        <div class="boking-datepicker">
                            <input id="datepicker1" name="check_in" value="<?php echo date('m/d/Y'); ?>" placeholder="<?php echo date("d/m/Y"); ?>" />
                        </div>
                   </div>
                    <!-- Single Select Box -->
                    <div class="single-select-box mb-30">
                        <!-- select out date -->
                        <div class="boking-tittle">
                            <span>Check OutDate:</span>
                        </div>
                        <div class="boking-datepicker">
                            <input id="datepicker2" name="check_out" value="<?php echo date('m/d/Y'); ?>" placeholder="<?php echo date("d/m/Y"); ?>" />
                        </div>
                   </div>
                    <!-- Single Select Box -->
                    <div class="single-select-box mb-30">
                        <div class="boking-tittle">
                            <span>Adults:</span>
                        </div>
                        <div class="select-this">
                            <!-- <form action="#"> -->
                                <div class="select-itms">
                                    <select name="adult" id="select1">
                                        <?php 
                                            for ($i=1; $i < 7; $i++) { 
                                                echo "<option value='".$i."'>".$i."</option>";
                                            }
                                         ?>
                                        <!-- <option value="1">1</option>
                                        <option value="2">2</option>
                                        <option value="3">3</option>
                                        <option value="4">4</option> -->
                                    </select>
                                </div>
                            <!-- </form> -->
                        </div>
                   </div>
                    <!-- Single Select Box -->
                    <div class="single-select-box mb-30">
                        <div class="boking-tittle">
                            <span>Children:</span>
                        </div>
                        <div class="select-this">
                            <!-- <form action="#"> -->
                                <div class="select-itms">
                                    <select name="children" id="select2">
                                        <?php 
                                            for ($i=0; $i < 7; $i++) { 
                                                echo "<option value='".$i."'>".$i."</option>";
                                            }
                                         ?>
                                        <!-- <option value="">1</option>
                                        <option value="">2</option>
                                        <option value="">3</option>
                                        <option value="">4</option> -->
                                    </select>
                                </div>
                            <!-- </form> -->
                        </div>
                   </div>
                    <!-- Single Select Box -->
                    <div class="single-select-box mb-30">
                        <div class="boking-tittle">
                            <span>Rooms:</span>
                        </div>
                        <div class="select-this">
                            <!-- <form action="#"> -->
                                <div class="select-itms">
                                    <select name="no_room" id="select3">
                                        <?php 
                                            for ($i=1; $i < 7; $i++) { 
                                                echo "<option value='".$i."'>".$i."</option>";
                                            }
                                         ?>
                                        <!-- <option value="">1</option>
                                        <option value="">2</option>
                                        <option value="">3</option>
                                        <option value="">4</option> -->
                                    </select>
                                </div> 
                            <!-- </form> -->
                        </div>
                   </div>
                    <!-- Single Select Box -->
                    <div class="single-select-box pt-45 mb-30">
                        <!-- <a href="#" class="btn select-btn"> -->
                        	<input class="btn select-btn" type="submit" value="Search">
                        <!-- Book Now</a> -->
                   </div>
               

                </div>
            </form>
               </div>
               </div>
            </div>
        </div>
        <!-- Booking Room End-->
        