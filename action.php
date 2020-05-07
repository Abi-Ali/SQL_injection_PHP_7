<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<title>SQL Injection form error example</title>
 <meta name="description" content="Twitter Bootstrap Version2.0 form error example from w3resource.com."> <link href="http://localhost/twitter-bootstrap/twitter-bootstrap-v2/docs/assets/css/bootstrap.css" rel="stylesheet">
 </head>
 <body style="margin-top: 50px">
 <div class="container">
 <div class="row">
 <div class="span6">
 <?php
 $host="localhost";
 $username="root";
 $password="password";
 $db_name="hr";
 $conn = mysqli_connect($host, $username, $password);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";

mysqli_select_db($conn, "hr");
echo" <br>"."database selected"."<br>";

$uid = $_POST['uid'];
$pid = $_POST['passid'];
//$uid = $_GET['uid'];
//$pid = $_GET['passid'];
//echo $pid ."<br>";
$len=strlen($pid);


//$regex="/\w*((\%27)|(\'))((\%6F)|o|(\%4F))((\%72)|r|(\%52))/ix"
$sql_operator = array(":", "<", ";", ")", ".", "=", ",", "+", "<>", "-", "<=", "*", ">=", "/", ">", "?", "(");

$string = $pid;
$flag=0;
for($i=0;$i<$len;$i++)
{
	$flag=0;
	$str1=$pid[$i];
	//echo $str1;
	if (in_array($str1, $sql_operator))
	{
    		//echo "Match found "."<br>";
    		echo "SQL injection attack detected"."<br>";
    		echo "User blocked";
    		$flag=1;
    		break;
   
	}
}
if($flag==0)
{	
$SQL = "select * from user_details where userid = '$uid' and password = '$pid'";
$result = mysqli_query($conn, $SQL);
//$result = mysqli_multi_query($conn, $SQL);   ---for 2,3,4 scripts

$rowcount=mysqli_num_rows($result);
printf("Result set has %d rows.\n",$rowcount);
if($rowcount>"0")
{
	echo "<h4>".
	"-- Personal Information -- ".
	"</h4>";
	while ($row=mysqli_fetch_row($result))
	{
		echo "<p>"."User ID : ".$row[0]."</p>";
		echo "<p>"."Password : ".$row[1]."</p>";
		echo "<p>"."First Name : ".$row[2]." Last Name : ".$row[3]."</p>";
		echo "<p>"."Gender : ".$row[4]." Date of Birth :".$row[5]."</p>";
		echo "<p>"."Country : ".$row[6]." User rating : ".$row[7]."</p>";
		echo "<p>"."Email ID : ".$row[8]."</p>";
		echo "--------------------------------------------";
	}
}
else
	echo "<br><br>
	Invalid user id or password";

}	
?>
</div>
</div>
</div>
</body>
</html>

