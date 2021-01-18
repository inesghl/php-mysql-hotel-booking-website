<?php 
  $corepage = explode('/', $_SERVER['PHP_SELF']);
    $corepage = end($corepage);
    if ($corepage!=='index.php') {
      if ($corepage==$corepage) {
        $corepage = explode('.', $corepage);
       header('Location: index.php?page='.$corepage[0]);
     }
    }

  if (isset($_POST['room-add'])) {
  	$r_type = $_POST['r_type'];
  	$r_rent = $_POST['r_rent'];
  	$r_details = $_POST['r_details'];
  	
  	$r_pic = explode('.', $_FILES['r_pic']['name']);
  	$r_pic = end($r_pic); 
  	$r_pic = date('Y-m-d-m-s').'.'.$r_pic;

  	$query = "INSERT INTO `rooms`(`r_type`, `r_rent`, `r_pic`, `r_details`) VALUES ('$r_type', '$r_rent', '$r_pic', '$r_details');";
  	if (mysqli_query($db_con,$query)) {
  		$datainsert['insertsucess'] = '<p style="color: green;">Room Created!</p>';
  		move_uploaded_file($_FILES['r_pic']['tmp_name'], 'images/'.$r_pic);
  	}else{
  		$datainsert['inserterror']= '<p style="color: red;">Room Not Created, please input right informations!</p>';
  	}
  }
?>
<h1 class="text-primary"><i class="fas fa-user-plus"></i>  Create Rooms<small class="text-warning"> Create Rooms</small></h1>
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
     <li class="breadcrumb-item" aria-current="page"><a href="index.php">Dashboard </a></li>
     <li class="breadcrumb-item active" aria-current="page">Create Rooms</li>
  </ol>
</nav>

<div class="row">
	
<div class="col-sm-6">
		<?php if (isset($datainsert)) {?>
	<div role="alert" aria-live="assertive" aria-atomic="true" class="toast fade" data-autohide="true" data-animation="true" data-delay="2000">
	  <div class="toast-header">
	    <strong class="mr-auto">Create Rooms Alert</strong>
	    <small><?php echo date('d-M-Y'); ?></small>
	    <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
	      <span aria-hidden="true">&times;</span>
	    </button>
	  </div>
	  <div class="toast-body">
	    <?php 
	    	if (isset($datainsert['insertsucess'])) {
	    		echo $datainsert['insertsucess'];
	    	}
	    	if (isset($datainsert['inserterror'])) {
	    		echo $datainsert['inserterror'];
	    	}
	    ?>
	  </div>
	</div>
		<?php } ?>
	<form enctype="multipart/form-data" method="POST" action="">
		<div class="form-group">
		    <label for="r_type">Room Type</label>
		    <select name="r_type" id="" class="form-control" required="">
		    	<option value="<?= isset($r_type)? $r_type: '' ; ?>"></option>
		    	<option value="Single Queenbed Room">Single Queenbed Room</option>
		    	<option value="Single Kingbed Room">Single Kingbed Room</option>
		    	<option value="Super Deluxe Twin">Super Deluxe Twin</option>
		    	<option value="Family Room">Family Room</option>
		    	<option value="Couple Bed Room">Couple Bed Room</option>
		    	<option value="Join Room">Join Room</option>
		    	<option value="Single Non A/C room">Single Non A/C room</option>
		    </select>

		    <!-- <input name="name" type="text" class="form-control" id="name" value="<?= isset($name)? $name: '' ; ?>" required=""> -->
	  	</div>
	  	<div class="form-group">
		    <label for="r_rent">Room Rent /day</label>
		    <input name="r_rent" type="text" value="<?= isset($r_rent)? $r_rent: '' ; ?>" class="form-control" pattern="[0-9]{2,5}" id="r_type" required="">
	  	</div>



	  	<div class="form-group">

		    <label for="r_details">Room Details</label>
		    <textarea class="form-control" name="r_details" value="<?= isset($r_details)? $address: '' ; ?>">
		            </textarea>
		            <script>
		                    CKEDITOR.replace( 'r_details' );
		            </script>
		    <!-- <input name="address" type="text" value="<?= isset($address)? $address: '' ; ?>" class="form-control" id="address" required=""> -->
	  	</div>
	  	<!-- <div class="form-group">
		    <label for="pcontact">Parant Contact NO</label>
		    <input name="pcontact" type="text" class="form-control" id="pcontact" pattern="01[5|6|7|8|9][0-9]{8}" value="<?= isset($pcontact)? $pcontact: '' ; ?>" placeholder="01........." required="">
	  	</div>
	  	<div class="form-group">
		    <label for="class">Student Class</label>
		    <select name="class" class="form-control" id="class" required="">
		    	<option>Select</option>
		    	<option value="1st">1st</option>
		    	<option value="2nd">2nd</option>
		    	<option value="3rd">3rd</option>
		    	<option value="4th">4th</option>
		    	<option value="5th">5th</option>
		    </select>
	  	</div> -->
	  	<div class="form-group">
		    <label for="r_pic">Room Picture</label>
		    <input name="r_pic" type="file" class="form-control" id="r_pic" required="">
	  	</div>
	  	<div class="form-group text-center">
		    <input name="room-add" value="Add Room" type="submit" class="btn btn-danger">
	  	</div>
	 </form>
</div>
</div>
<script src="https://cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>