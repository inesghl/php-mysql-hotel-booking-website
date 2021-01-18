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
<h1 class="text-primary"><i class="fas fa-users"></i>  All Posts<small class="text-warning"> All Posts List!</small></h1>
<nav aria-label="breadcrumb">
  <ol class="breadcrumb">
     <li class="breadcrumb-item" aria-current="page"><a href="index.php">Dashboard </a></li>
     <li class="breadcrumb-item active" aria-current="page">All Posts</li>
  </ol>
</nav>
<?php if(isset($_GET['delete']) || isset($_GET['edit'])) {?>
  <div role="alert" aria-live="assertive" aria-atomic="true" class="toast fade" data-autohide="true" data-animation="true" data-delay="2000">
    <div class="toast-header">
      <strong class="mr-auto">Posts Create Alert</strong>
      <small><?php echo date('d-M-Y'); ?></small>
      <button type="button" class="ml-2 mb-1 close" data-dismiss="toast" aria-label="Close">
        <span aria-hidden="true">&times;</span>
      </button>
    </div>
    <div class="toast-body">
      <?php 
        if (isset($_GET['delete'])) {
          if ($_GET['delete']=='success') {
            echo "<p style='color: green; font-weight: bold;'>Post Deleted Successfully!</p>";
          }  
        }
        if (isset($_GET['delete'])) {
          if ($_GET['delete']=='error') {
            echo "<p style='color: red'; font-weight: bold;>Post Not Deleted!</p>";
          }  
        }
        if (isset($_GET['edit'])) {
          if ($_GET['edit']=='success') {
            echo "<p style='color: green; font-weight: bold; '>Post Edited Successfully!</p>";
          }  
        }
        if (isset($_GET['edit'])) {
          if ($_GET['edit']=='error') {
            echo "<p style='color: red; font-weight: bold;'>Post Not Edited!</p>";
          }  
        }
      ?>
    </div>
  </div>
    <?php } ?>
<table class="table  table-striped table-hover table-bordered" id="data">
  <thead class="thead-dark">
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Post title</th>
      <th scope="col">Post category</th>
      <th scope="col">Post Details</th>
      <th scope="col">Post Picture</th>
      <th scope="col">Post Comment</th>
      <th scope="col">Action</th>
    </tr>
  </thead>
  <tbody>
    <?php 
      $query=mysqli_query($db_con,'SELECT * FROM `posts`');
      $i=1;
      while ($result = mysqli_fetch_array($query)) { ?>
      <tr>
        <?php 
        echo '<td>'.$i.'</td>
          <td>'.ucwords($result['p_title']).'</td>
          <td>'.$result['p_category'].'</td>
          <td>'.ucwords($result['p_details']).'</td>
          <td><img src="images/'.$result['p_pic'].'" height="50px"></td>
          <td>'.ucwords($result['p_comments']).'</td>
          <td>
            <a class="btn btn-xs btn-warning" href="index.php?page=editstudent&id='.base64_encode($result['p_id']).'&p_pic='.base64_encode($result['p_pic']).'">
              <i class="fa fa-edit"></i></a>

             &nbsp; <a class="btn btn-xs btn-danger" onclick="javascript:confirmationDelete($(this));return false;" href="index.php?page=delete&id='.base64_encode($result['p_id']).'&p_pic='.base64_encode($result['p_pic']).'">
             <i class="fas fa-trash-alt"></i></a></td>';?>
      </tr>  
     <?php $i++;} ?>
    
  </tbody>
</table>
<script type="text/javascript">
  function confirmationDelete(anchor)
{
   var conf = confirm('Are you sure want to delete this record?');
   if(conf)
      window.location=anchor.attr("href");
}
</script>