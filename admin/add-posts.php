<?php 
  $corepage = explode('/', $_SERVER['PHP_SELF']);
    $corepage = end($corepage);
    if ($corepage!=='index.php') {
      if ($corepage==$corepage) {
        $corepage = explode('.', $corepage);
       header('Location: index.php?page='.$corepage[0]);
     }
    }

  if (isset($_POST['posts-add'])) {
  	$p_title = $_POST['p_title'];
  	$p_category = $_POST['p_category'];
  	$p_details = $_POST['p_details'];
  	$p_comments = $_POST['p_comments'];
  	
  	$p_pic = explode('.', $_FILES['p_pic']['name']);
  	$p_pic = end($p_pic); 
  	$p_pic = date('Y-m-d-m-s').'.'.$p_pic;

  	$query = "INSERT INTO `posts`(`p_title`, `p_category`, `p_pic`, `p_details`, `p_comments`) VALUES ('$p_title', '$p_category', '$p_pic', '$p_details', '$p_comments');";
  	if (mysqli_query($db_con,$query)) {
  		$datainsert['insertsucess'] = '<p style="color: green;">Post Created!</p>';
  		move_uploaded_file($_FILES['p_pic']['tmp_name'], 'images/'.$p_pic);
  	}else{
  		$datainsert['inserterror']= '<p style="color: red;">Post Not Created, please input right informations!</p>';
  	}
  }
?>
<h1 class="text-primary"><i class="fas fa-user-plus"></i>  Create posts<small class="text-warning"> Create posts</small></h1>
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
     <li class="breadcrumb-item" aria-current="page"><a href="index.php">Dashboard </a></li>
     <li class="breadcrumb-item active" aria-current="page">Create posts</li>
  </ol>
</nav>

<div class="row">
	
<div class="col-sm-6">
		<?php if (isset($datainsert)) {?>
	<div role="alert" aria-live="assertive" aria-atomic="true" class="toast fade" data-autohide="true" data-animation="true" data-delay="2000">
	  <div class="toast-header">
	    <strong class="mr-auto">Create posts Alert</strong>
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
		    <label for="p_title">Post Title</label>
		    <input name="p_title" type="text" value="<?php isset($p_title)? $p_title: '' ; ?>" class="form-control"  id="r_type" required="">
	  	</div>
	  	<div class="form-group">
		    <label for="p_details">Post Details</label>
		    <textarea class="form-control" name="p_details" value="<?php isset($p_details)? $address: '' ; ?>"></textarea>
		            <script>CKEDITOR.replace( 'p_details' ); </script>
	  	</div>
	  	<div class="form-group">
		    <label for="p_category">Post Category</label>
		    <input name="p_category" type="text" class="form-control" id="p_category" value="<?php //isset($p_category)? $p_category: '' ; ?>" placeholder="" required="">
	  	</div>
	  	<div class="form-group">
		    <label for="class">Post Comments</label>
		    <label for="p_comments">Post comment</label>
		    <input name="p_comments" type="text" class="form-control" id="p_comments" value="<?php //isset($p_comments)? $p_comments: '' ; ?>" placeholder="" required="">
	  	</div>
	  	<div class="form-group">
		    <label for="p_pic">Fetured Image </label>
		    <input name="p_pic" type="file" class="form-control" id="p_pic" required="">
	  	</div>
	  	<div class="form-group text-center">
		    <input name="posts-add" value="Add Post" type="submit" class="btn btn-danger">
	  	</div>
	 </form>
</div>
</div>
<script src="https://cdn.ckeditor.com/4.14.1/standard/ckeditor.js"></script>