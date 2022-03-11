<html>
<head>
<script src="//code.jquery.com/jquery-2.1.3.js"></script>
<script src="https://rawgit.com/guillaumepotier/Parsley.js/2.4.3/dist/parsley.js"></script>
<link rel="stylesheet" media="all" href="https://rawgit.com/guillaumepotier/Parsley.js/2.4.3/bower_components/bootstrap/dist/css/bootstrap.css" />
<link rel="stylesheet" media="all" href="https://rawgit.com/guillaumepotier/Parsley.js/2.4.3/doc/assets/docs.css" />
<link rel="stylesheet" media="all" href="https://rawgit.com/guillaumepotier/Parsley.js/2.4.3/src/parsley.css" />
 <style>
 .main{width:500px;margin-left:50px;margin-top:50px;}
 </style>
</head>
<body>
<div class="main">
	<h1>Application Form</h1>
	<div class="bs-callout bs-callout-warning hidden">
	  <h4>Oh snap!</h4>
	  <p>This form seems to be invalid :(</p>
	</div>

	<div class="bs-callout bs-callout-info hidden">
	  <h4>Yay!</h4>
	  <p>Everything seems to be ok :)</p>
	</div>

	<form id="demo-form" method="post" action="register.php" data-parsley-validate="">
	  <label for="fullname">Full Name * :</label>
	  <input type="text" class="form-control" name="fullname" required="">

	  <label for="email">Email * :</label>
	  <input type="email" class="form-control" name="email" data-parsley-trigger="change" required="">
<!--
	  <label for="gender">Gender :</label>
	  <p>
		M: <input type="radio" name="gender" id="genderM" value="M" required="">
		F: <input type="radio" name="gender" id="genderF" value="F">
	  </p>

	  <label for="hobbies">Hobbies (Optional, but 2 minimum):</label>
	  <p>
		Skiing <input type="checkbox" name="hobbies[]" id="hobby1" value="ski" data-parsley-mincheck="2"><br>
		Running <input type="checkbox" name="hobbies[]" id="hobby2" value="run"><br>
		Eating <input type="checkbox" name="hobbies[]" id="hobby3" value="eat"><br>
		Sleeping <input type="checkbox" name="hobbies[]" id="hobby4" value="sleep"><br>
		Reading <input type="checkbox" name="hobbies[]" id="hobby5" value="read"><br>
		Coding <input type="checkbox" name="hobbies[]" id="hobby6" value="code"><br>
	  </p>
-->
	  <p>
	  <label for="job">Job *:</label>
	  <br/>
	  <select id="job" name="job" required="">
		<option value="">Choose..</option>
		<option value="Actor">Actor</option>
		<option value="Engineer">Engineer</option>
	  </select>
	  </p>
<!--
	  <p>
	  <label for="message">Message (20 chars min, 100 max) :</label>
	  <textarea id="message" class="form-control" name="message" data-parsley-trigger="keyup" data-parsley-minlength="20" data-parsley-maxlength="100" data-parsley-minlength-message="Come on! You need to enter at least a 20 character comment.." data-parsley-validation-threshold="10"></textarea>
	  </p>
-->
	  <br>
	  <input type="submit" class="btn btn-default" value="Validate & Submit">
	  <!--<p><small>* Please, note that this demo form is not a perfect example of UX-awareness. The aim here is to show a quick overview of parsley-API and Parsley customizable behavior.</small></p>-->
	</form>
	<script>
	$(function () {
		$("#job").change(function(){
			//var data=$("#job option:selected").text();
		})
		  $('#demo-form').parsley().on('field:validated', function() {
			var ok = $('.parsley-error').length === 0;
			$('.bs-callout-info').toggleClass('hidden', !ok);
			$('.bs-callout-warning').toggleClass('hidden', ok);
		  })
		  .on('form:submit', function() {
			//return false; // Don't submit form for this demo
		  });
	});
	</script>
</div>
</body>
</html>