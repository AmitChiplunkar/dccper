<?php
include_once('config.php');
?>
<html>
    <head>
        <title>Practice</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/local.css">
        <link rel="stylesheet" href="font-awesome/css/font-awesome.min.css"  type="text/css">
  


    </head>
    <body>
       <div id="container-fluid" class="container">
           <div id="header" class="row navbar-default ">
              <div id="title" class="text-center col-md-10 ">
                   <h2>Project Management</h2>
              </div>
              <div id="setting" class="col-md-2">
                  <a href="blank.html"><i class="fa fa-fw fa-gear"></i>Settings</a>
              </div>
            
           </div>
           
           <div id="down" class="row">
             <!--Project Members -->
            <div id="projectmember"class="col-md-2">

            <div class=" col-sm-2 row navbar-collapse navbar-ex1-collapse">
                <div class="sidebar-nav">
                  <div class="navbar navbar-default" role="navigation">
                     <div class="navbar-collapse collapse sidebar-navbar-collapse"> 
                      <ul class="nav">
                          <li><h4><a class="active">Project Members</a></h4></li>
                          <?php

                            $member_id=0;
                            if(isset($_GET['member_id'])&&$_GET['member_id']>0){
                             $member_id=$_GET['member_id'];
                           }

                            $sql_query="SELECT * FROM members";
                            $result_set=mysql_query($sql_query);
                            $path="";
                            $member_name="";

                            if(mysql_num_rows($result_set)>0)
                            {
                                  while($row=mysql_fetch_assoc($result_set))
                              {
                                if($member_id==$row['id']){
                                  $path=$row['profile_pic'];
                                  $member_name=$row['name'];
                                }

                              ?>

                              <a href="?member_id=<?php echo $row['id'] ?>" class="list-group-item <?php echo ($row['id']==$member_id)?"selected_mem":""; ?>">
                                <?php echo $row['name']; ?>
                              </a>

                                <?php
                              }
                            }
                            $page_id=0;
                           if(isset($_GET['page_id'])&&$_GET['page_id']>=0){
                            $page_id=$_GET['page_id'];
                           }
                           $sql_query="select count(id) as ctr from tasks";
                            $n        = mysql_fetch_assoc(mysql_query($sql_query));
                            $n = $n['ctr'];
                            $last = ((int)($n/5));

                           if(isset($_GET['page_id'])&&$_GET['page_id']=='last'){
                             $page_id=$last;
                           }

                            $q = $page_id*5;

                            $sql_query="SELECT * FROM `tasks` where member_id=$member_id LIMIT $q,5";
                            $result_set=mysql_query($sql_query);

                          ?>


                       </ul>
                     </div> 
                  </div>
                </div>
              </div>
              </div>
             <!--End of Project Member-->
             <div id="data" class="col-md-10">
                 <div id="picname" class="row ">
                    
                    <!--                    -->
                    <div id="pic" class="col-md-6 ">
                        <?php if(!empty($path)):?>
                        <img src="<?php echo $path;?>" style="width:150px;height:150px;">
                        <?php endif; ?>
                    </div>
                    <div id="name" class="col-md-6 " ><?php 
                        if(!empty($member_name)){ 
                              $member_name=explode(" ", $member_name);
                              if(count($member_name)==1){
                                 echo "<h3 class='pull-right'>".$member_name[0]."</h3>";
                              }
                              else{
                              echo "<h3 class='pull-right'>".$member_name[1].", ".$member_name[0]."</h3>";
                             }
                             }
                        ?> 
                     </div>
             <!--                    -->
                    
                 </div>
                  <div id="report" >
                        <button id="button"type="button" class="btn" >Create Report</button>
                     </div>
                <!-- Table-->
                 <div id="table" >
                    <div class="table-responsive">
         
                        <table class="table table-bordered table-striped">
                            <thead>
                                <tr>
                                    
                                    <th class="col-lg-4" bgcolor="black"><font color="white">Task</font></th>
                                    <th class="col-lg-2" bgcolor="black"><font color="white">Start Date</font></th>
                                    <th class="col-lg-2" bgcolor="black"><font color="white">End Date</font></th>
                                    <th class="col-lg-1" bgcolor="black"><font color="white">Estimated Hours</font></th>
                                    <th class="col-lg-1" bgcolor="black"><font color="white">Hours Spent</font></th>
                                    <th class="col-lg-2" bgcolor="black"><font color="white">Schedule Variable</font></th>
                                 </tr>
                            </thead>
                            <tbody>
                            <?php 
                                if(mysql_num_rows($result_set)>0)
                                {
                                      while($row=mysql_fetch_assoc($result_set))
                                  {


                                  ?>

                                 <tr>
                                   
                                    <td><?php echo $row['task_name'] ?></td>
                                    <td><?php echo $row['start_date'] ?></td>
                                    <td><?php echo $row['end_date'] ?></td>
                                    <td><?php echo $row['estimated_hours'] ?></td>
                                    <td><?php echo $row['hours_spent'] ?></td>
                                    <td><?php echo $row['estimated_hours'] - $row['hours_spent']?></td>
                                </tr>

                                    <?php
                                  }
                                }


                            ?>


                            </tbody>

                        </table>
                    </div>
                     
                 </div>
                 <!-- End of Table-->
                 <div id="pagination" align="center" >
                       <ul class = "pagination ">
                         <li><a href = "?member_id=<?php echo $member_id;?>&page_id=0">&laquo;</a></li>
                         <li><a href = "?member_id=<?php echo $member_id;?>&page_id=<?php echo $page_id-1;?>">&lt;</a></li>
                         <li><a href = "?member_id=<?php echo $member_id;?>&page_id=<?php echo $page_id+1;?>">&gt;</a></li>
                         <li><a href = "?member_id=<?php echo $member_id;?>&page_id=last">&raquo;</a></li>
                       </ul>
                 </div>
             </div>
              
               
           </div>
          
       </div>
        
    </body>
</html>