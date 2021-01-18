<?php 
                        $query=mysqli_query($db_con,'SELECT * FROM `posts`');
                        while ($result = mysqli_fetch_array($query)) { 
                    ?>
<?php
if (!stripos($_SERVER['REQUEST_URI'], 'blog.php')){
    ?>
     <!-- <div class="row"> -->
                    
                        

                        <div class="col-xl-4 col-lg-4 col-md-6">
                            <!-- Single Blog -->
                            <div class="single-blog mb-30">
                                <div class="blog-img">
                                    <a href="single-blog.php?p_id=<?php echo $result['p_id']; ?>"><img src="admin/images/<?php echo $result['p_pic']; ?>" alt=""></a>
                                </div>
                                <div class="blog-caption">
                                    <div class="blog-cap-top d-flex justify-content-between mb-40">
                                        <span><?php echo $result['p_category']; ?></span>
                                        <ul><li>by<a href="#"> Jhon Guru</a></li></ul>
                                    </div>
                                    <div class="blog-cap-mid">
                                        <p><a href="single-blog.php?p_id=<?php echo $result['p_id']; ?>"><?php echo $result['p_title']; ?></a></p>
                                    </div>
                                    <!-- Comments -->
                                    <div class="blog-cap-bottom d-flex justify-content-between">
                                        <span>Feb 28, 2020</span>
                                        <span><img src="assets/img/our_blog/blog-comments-icon.jpg" alt="">3</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    
                <!-- </div> -->
                <?php
}
else{
     ?>
        
        <article class="blog_item">
            <div class="blog_item_img">
                <a href="single-blog.php?p_id=<?php echo $result['p_id']; ?>">
                    
                    <img class="card-img rounded-0" src="admin/images/<?php echo $result['p_pic']; ?>" alt="">
                    <span class="blog_item_date">
                        <h3>15</h3>
                        <p>Jan</p>
                    </span>
                </a>
            </div>

            <div class="blog_details">
                <a class="d-inline-block" href="single-blog.php?p_id=<?php echo $result['p_id']; ?>">
                    <h2><?php echo $result['p_title']; ?></h2>
                </a>
                <p>That dominion stars lights dominion divide years for fourth have don't stars is that
                    he earth it first without heaven in place seed it second morning saying.</p>
                <ul class="blog-info-link">
                    <li><a href="#"><i class="fa fa-user"></i><?php echo $result['p_category']; ?></a></li>
                    <li><a href="#"><i class="fa fa-comments"></i> 03 Comments</a></li>
                </ul>
            </div>
        </article>

<?php } ?>
     <?php
}
?>
                