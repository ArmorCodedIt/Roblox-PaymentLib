<?php
//Auth setup file
//Coded by Armor
//Adding in custom verification values soon!
//Define Auth parameters
if (isset($_POST["user"])){
  //if is using POST(from a form if you go that route)
  $user = $_POST["user"];
  $pass = $_POST["pass"];
  if (isset($_POST["token"])){
    $token=$_POST["token"];
  }
}
if (isset($_GET["user"])){
  //if is using GET(Default way and easiest)
  $user = $_GET["user"];
  $pass = $_GET["pass"];
  if (isset($_GET["token"])){
    $token=$_GET["token"];
  }
}
//not sure how you authenticate your users but if you use a file like auth then you can use it like this
$pathtousers="";
$useext=".";
$data=file_get_contents("$user");//if you use a file extension fill it in with $useext and do "$user"..$useext
//if you dont atleast use a b64 hashing on your users passwords then remind me never to visit your site...
$pawd=base64_encode($pass);//if you use a diff alg then replace this
if ($pawd==$pass){
  //echo that the verification passed!
  echo 'local ItemValue = Instance.new("StringValue")
ItemValue.Parent = game:GetService("Workspace")
ItemValue.Name = "83hiehdsdkfjie" -- Random so nothing accidentally deletes the value, if you name it part your script may try to load the values of a part instead of your value.
ItemValue.Value = "Auth_Returns_0"'
} else {
  //echo that the verification failed!
    echo 'local ItemValue = Instance.new("StringValue")
  ItemValue.Parent = game:GetService("Workspace")
  ItemValue.Name = "83hiehdsdkfjie" -- Random so nothing accidentally deletes the value, if you name it part your script may try to load the values of a part instead of your value.
  ItemValue.Value = "Auth_Returns_1"'
}
 ?>
