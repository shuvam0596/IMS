<?php include_once('include/header.php');
 include_once('include/database.php');?>

    
<?php 
 include_once('include/database.php');

$success="";
	if(isset($_REQUEST['submit'])){
	

	 $category_name =$_POST['category_name'];
	 $handler_designation =$_POST['handler_designation'];
		 
		 
		
		 
		
        
$query = mysqli_query($link,"insert into handler_panel(category_name,handler_designation) values ('$category_name','$handler_designation')");
//$success="You are successfully Registered!. <a href='login.php'>Click here to Login</a>";
$success = 'Handler Designation Successfully Added';




}








 ?>
    <!--main content start-->
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-files-o"></i> New Handler Designation</h3>
            
          </div>
        </div>
        <!-- Form validations -->
		<?php if($success!=""){?>
       <ol class="breadcrumb" style="color:#4cd964;text-align:center;height:55px;font-weight:bold;">
            <?php echo $success; ?>
		</ol><?php }?>
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
             
              <div class="panel-body">
			  
                <div class="form">
                  <form class="form-validate form-horizontal" id="register_form" method="post" action="">
                    <div class="form-group ">
                      <label for="fullname" class="control-label col-lg-2">Category <span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input class=" form-control" id="category_name" required name="category_name" type="text" />
                      </div>
                    </div>
					<div class="form-group ">
                      <label for="fullname" class="control-label col-lg-2">Designation <span class="required">*</span></label>
                      <div class="col-lg-10">
                        <input class=" form-control" id="handler_designation" required name="handler_designation" type="text" />
                      </div>
                    </div>
                  
                    <div class="form-group">
                      <div class="col-lg-offset-2 col-lg-10">
                        <input class="btn btn-primary" name="submit" id="subbutn" Value="Submit" type="submit">
                        
                      </div>
                    </div>
                  </form>
				  <div class="panel-bodys">
                <table class="table bootstrap-datatable countries">
                  <thead>
				<tr><td><strong>S No.</strong></td>
				  <td><strong>Category</strong></td>
				  <td><strong>Designation</strong></td></tr>
			<?php	 $query="SELECT * FROM handler_panel";


$result = mysqli_query($link,$query);
$i=1;
while($nt=mysqli_fetch_array($result)){

?>
<tr> <td><?php echo $i;?></td>
<td>  <?php echo $nt['category_name'] ?></td>
<td>  <?php echo $nt['handler_designation'] ?></td></tr>

<?php 
$i++; }
 ?><table></div>
                </div>
              </div>
            </section>
          </div>
        </div>
        <!-- page end-->
      </section>
    </section>
    <!--main content end-->
    <div class="text-right">
    <!-- Smartsupp Live Chat script -->

    </div>
  </section>
  <!-- container section end -->

  <!-- javascripts -->
  <script src="js/jquery.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- jquery validate js -->
  <script type="text/javascript" src="js/jquery.validate.min.js"></script>
  <!-- custom form validation script for this page-->
  <script src="js/form-validation-script.js"></script>
  <!--custome script for all page-->
  <script src="js/scripts.js"></script>


</body>

</html>
