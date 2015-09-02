<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="../resources/style.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

<script type="text/javascript" src="../resources/content.js"></script>

<script type="text/javascript">
 //write here java script coding.
 
function validateForm () {
	var p1 = document.getElementById('p1');
	var p2 = document.getElementById('p2');
	if (p1.value != p2.value) {
		alert('Password check!');
		return false;
	}

// check email
var email = document.getElementById('email');
// regex
var email_regexp = /[0-9a-z_A-Z]+@[0-9a-z_A-Z.]+\.[a-zА-ЯA-Z]{2,4}/i;
if (!email_regexp.test(email.value)) {
alert('Check email');
return false;
}
}

</script>

<style type="text/css">
//type css class. 

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<div class="container">
    <div class="row">
        <div class="col-sm-6 col-md-4 col-md-offset-4">
            <div class="account-wall">
                <div id="my-tab-content" class="tab-content">
						<div class="tab-pane active" id="login">
               		    <img class="profile-img" src=""
                    alt="">
               			<form class="form-signin" action="home" method="post">
               				<input type="text" name="user" class="form-control" placeholder="Username" required autofocus>
               				<input type="password" name="password" class="form-control" placeholder="Password" required>
               				<input type="submit" class="btn btn-lg btn-default btn-block" value="Sign In" />
               			</form>
               			<div id="tabs" data-tabs="tabs">
               				<p class="text-center"><a href="#register" data-toggle="tab">Need an Account?</a></p>
              				</div>
						</div>
						<div class="tab-pane" id="register">
							<form class="form-signin" action="registered" method="post">
								<input type="text" name="user" class="form-control" placeholder="User Name ..." required autofocus>
								<input type="email" name="email" class="form-control" placeholder="Emaill Address ..." required>
								<input type="password" id="p1" name="password" class="form-control" placeholder="Password ..." required>
								<input type="password" id="p2" name="repassword" class="form-control" placeholder="Confirm Password ..." required>
								<input type="number" name="mobno" class="form-control" placeholder="Mobile Number ..." maxlength="10" required>
								<input type="submit" class="btn btn-lg btn-default btn-block" value="Sign Up" onclick="return validateForm();" />
							</form>
							<div id="tabs" data-tabs="tabs">
               			<p class="text-center"><a href="#login" data-toggle="tab">Have an Account?</a></p>
              			</div>
						</div>
					</div>
            </div>
        </div>
    </div>
</div>

</body>
</html>