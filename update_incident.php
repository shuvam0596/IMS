
<style>
.imgimg{width:50px;height:50px;cursor:pointer}
.imgpp{width:400px;height:400px;cursor:pointer}
 
.black_overlay {
  display: none;
  position: absolute;
  top:0%;
  left:0%;
  width:500px;
 height:400px
  background-color: black;
  z-index:1001;
  -moz-opacity:0.8;
  opacity:.80;
  filter: alpha(opacity=80);
}
.white_content {
  display: none;
  position: absolute;
  top:25%;
  left:35%;
  width:500px;
  height:500px;
  padding:16px;
  border:5px solid rgb(83, 163, 163);
  border-radius:5px;
  color:#000;
  background-color: white;
  z-index:1002;
  overflow: auto;
}
</style>
<?php

 include_once('include/header.php');
 include_once('include/database.php');
  
  if(isset($_REQUEST['id']))
	 $id=$_REQUEST['id'];
else
	$id="";
	
$fetch_query="select * from incident_records where id=$id";
$rid=mysqli_query($link,$fetch_query);
$datainfo=mysqli_fetch_array($rid);
 
$success="";


	if(isset($_REQUEST['submit'])){
	
				  

		 $priority =trim($_POST['priority']);
		 
		 $handler_id =trim($_POST['handler_id']);
		
		 $value = explode("-", $handler_id);
		 $val1=$value[0];
		 $val2=$value[1];
		
         $id=$_REQUEST['id'];
 
 
  $fetch_query="update incident_records set priority='$priority',assigned_to='$val2',handler_id='$val1'  where id='$id'";
$rid=mysqli_query($link,$fetch_query);
}








 ?>
   
    <section id="main-content">
      <section class="wrapper">
        <div class="row">
          <div class="col-lg-12">
            <h3 class="page-header"><i class="fa fa-files-o"></i> Incident Assigned To:-</h3>
            
          </div>
        </div>
        <!-- Form validations -->
		
        <div class="row">
          <div class="col-lg-12">
            <section class="panel">
             
              <div class="panel-body">
			  
                <div class="form">
                  <form class="form-validate form-horizontal" id="register_form" method="post" action="">
				  <div class="form-group ">
                      
                      <div class="col-lg-10">
					  
					  <div class="col-md-5">Incident No.:-</div><div class="col-md-5"><strong><?php echo $datainfo['incident_no'];?></strong></div>
					  <div class="col-md-5">Incident Open Date:-</div><div class="col-md-5"><strong><?php echo $datainfo['incident_open_date'];?></strong></div>
					  <div class="col-md-5">Incident Created By:-</div><div class="col-md-5"><strong><?php echo $datainfo['incident_created_by'];?></strong></div>
					  <div class="col-md-5">Designation:-</div><div class="col-md-5"><strong><?php echo $datainfo['designation'];?></strong></div>
					  <div class="col-md-5">Title:-</div><div class="col-md-5"><strong><?php echo $datainfo['title'];?></strong></div>
					  <div class="col-md-5">Description:-</div><div class="col-md-5"><strong><?php echo $datainfo['description'];?></strong></div>
					  <div class="col-md-5">Category:-</div><div class="col-md-5"><strong><?php echo $datainfo['category'];?></strong></div>
					  <div class="col-md-5">Location:-</div><div class="col-md-5"><strong><?php echo $datainfo['location'];?></strong></div>
					  <div class="col-md-5">Email:-</div><div class="col-md-5"><strong><?php echo $datainfo['email'];?></strong></div>
					  <div class="col-md-5">Phone:-</div><div class="col-md-5"><strong><?php echo $datainfo['phone'];?></strong></div>
					  
					  
					  <div class="col-md-5">Priority:-</div><div class="col-md-5"><strong><?php echo $datainfo['priority'];?></strong></div>
					  
					  
					  <div class="col-md-5">Image:-</div><div class="col-md-5"><strong><a href="javascript:void(0)"onclick="document.getElementById('light').style.display='block';document.getElementById('fade').style.display='block'"><img class="imgimg"src="upload/<?php  echo $datainfo['image']; ?>"></a> </div>
	 
						 <div id="light" class="white_content">
	 <a style="float:right" href="javascript:void(0)"onclick="document.getElementById('light').style.display='none';document.getElementById('fade').style.display='none'">Close</a>
 <img class="imgpp"src="upload/<?php  echo $datainfo['image']; ?>">
 
</div>  
					  
					  <div class="col-md-5">Status:-</div><div style="width:20%;"  <?php if($datainfo['status']=='Closed') { ?>class="col-md-5 btn btn-success" <?php } elseif($datainfo['status']=='Processing') { ?>class="col-md-5 btn btn-warning"
	 <?php } else { ?>   class="col-md-5 btn btn-danger"  <?php }?>><strong><?php echo $datainfo['status'];?></strong></div>
					  
					  <?php if($datainfo['assigned_to']!="") { ?><div style="margin-top:10px" class="col-md-5">Assigned To:-</div><div style="width:20%;margin-top:10px" class="col-md-5 btn btn-primary"><strong><?php echo $datainfo['assigned_to'];?></strong></div><?php }?>
                        
                      </div>
                    </div>
					
                       
					<div class="form-group">
                    <label class="control-label col-lg-2" for="inputSuccess">Assigned To (<?php echo $datainfo['category'];?>)*:-</label>
                    <div class="col-lg-10">
                     

                     <?php	
$cat=$datainfo['category'];
					 $query="SELECT * FROM handler_registration where designation='$cat'";


$result = mysqli_query($link,$query);
echo "<select name='handler_id' id='handler_id' required class='form-control'    >";

echo "<option value=>Select</option>";
while($nt=mysqli_fetch_array($result)){
?>

<option value="<?php echo $nt['id']; echo"-";echo $nt['name']; ?>" <?php if($nt['id']==$datainfo['handler_id']) { echo "selected"; } ?>  ><?php echo $nt['name'] ?></option>

<?php
}
echo "</select>"; ?>
                               
                    </div>
                  </div>
                    
                   
					
                  
					<div class="form-group">
                    <label class="control-label col-lg-2" for="inputSuccess">Priority*</label>
                    <div class="col-lg-10">
                      <select class="form-control m-bot15" name="priority" required >
                                              <option value="">Select</option>
											  
                                              <option value="High" <?php if($datainfo['priority']=="High") echo 'selected="selected"';?>>High</option>
                                              <option value="Medium" <?php if($datainfo['priority']=="Medium") echo 'selected="selected"';?>>Medium</option>
                                              <option value="Low" <?php if($datainfo['priority']=="Low") echo 'selected="selected"';?>>Low</option>
                                             
                                            
                                             
                                          </select>

                     
                    </div>
                  </div>
					
					
                    
                   
                    <div class="form-group">
                      <div class="col-lg-offset-2 col-lg-10">
                        <input class="btn btn-primary" name="submit" Value="Assigned To" type="submit">
                        
                      </div>
                    </div>
                  </form>
                </div>
              </div>
            </section>
          </div>
        </div>
        <!-- page end-->
      </section>
    </section>
  <!-- container section start -->

  <!-- javascripts -->
     <script src="js/jquery-1.10.2.js"></script>
  <script src="js/jquery-ui-1.10.4.min.js"></script>
  <script src="js/jquery-1.8.3.min.js"></script>
  <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
  <!-- bootstrap -->
  <script src="js/bootstrap.min.js"></script>
  <!-- nice scroll -->
  <script src="js/jquery.scrollTo.min.js"></script>
  <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
  <!-- charts scripts -->
  <script src="assets/jquery-knob/js/jquery.knob.js"></script>
  <script src="js/jquery.sparkline.js" type="text/javascript"></script>
  <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
  <script src="js/owl.carousel.js"></script>
  <!-- jQuery full calendar -->
  <<script src="js/fullcalendar.min.js"></script>
    <!-- Full Google Calendar - Calendar -->
    <script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
    <!--script for this page only-->
    <script src="js/calendar-custom.js"></script>
    <script src="js/jquery.rateit.min.js"></script>
    <!-- custom select -->
    <script src="js/jquery.customSelect.min.js"></script>
    <script src="assets/chart-master/Chart.js"></script>

    <!--custome script for all page-->
    <script src="js/scripts.js"></script>
    <!-- custom script for this page-->
    <script src="js/sparkline-chart.js"></script>
    <script src="js/easy-pie-chart.js"></script>
    <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
    <script src="js/jquery-jvectormap-world-mill-en.js"></script>
    <script src="js/xcharts.min.js"></script>
    <script src="js/jquery.autosize.min.js"></script>
    <script src="js/jquery.placeholder.min.js"></script>
    <script src="js/gdp-data.js"></script>
    <script src="js/morris.min.js"></script>
    <script src="js/sparklines.js"></script>
    <script src="js/charts.js"></script>
    <script src="js/jquery.slimscroll.min.js"></script>
    <script>
      //knob
      $(function() {
        $(".knob").knob({
          'draw': function() {
            $(this.i).val(this.cv + '%')
          }
        })
      });

      //carousel
      $(document).ready(function() {
        $("#owl-slider").owlCarousel({
          navigation: true,
          slideSpeed: 300,
          paginationSpeed: 400,
          singleItem: true

        });
      });

      //custom select box

      $(function() {
        $('select.styled').customSelect();
      });

      /* ---------- Map ---------- */
      $(function() {
        $('#map').vectorMap({
          map: 'world_mill_en',
          series: {
            regions: [{
              values: gdpData,
              scale: ['#000', '#000'],
              normalizeFunction: 'polynomial'
            }]
          },
          backgroundColor: '#eef3f7',
          onLabelShow: function(e, el, code) {
            el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
          }
        });
      });
    </script>

</body>

</html>
