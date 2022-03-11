 <style>
 .main{width:500px;margin-left:50px;margin-top:50px;}
 </style>
 <?php
 $noerror=true;
 if(@$_POST["job"]=="" || @$_POST["fullname"]=="" || @$_POST["email"]=="" || strpos(@$_POST["fullname"]," ")<0 )
	 $noerror=false;
	 
 if($noerror){
	 
 
	$job=@$_POST["job"];
	if($job=="Actor")
		$jobPage="Actor";
	else if($job=="Engineer")
		$jobPage="Engineer";
 ?>
 <div class="main">
 <p>Thanks for apply. Our Happy Customer List: <a href="<?php echo $job;?>.php" rel="noopener noreferrer"><pre><?php echo $job;?>s</pre></a>
 </p>
 </div>
 
 <?php } else{
	 echo "Please, go back and check your mistake";
 }
 ?>