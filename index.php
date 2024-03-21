<?php
    include 'includes/database.php';
    include 'includes/loginServer.php';
    session_start();
    
    $data = new LoginServer();
   
    $message = "";
    
    if(isset($_POST["login"])){
        $field = array(
            "Username" => $_POST["Username"],
            "Password" => $_POST["Password"]
        );
        if($data->loginValidation($field)){
            if($data->canLogin("User", $field)){
                $_SESSION["Username"] = $_POST["Username"];
                header("location: dashboard.php");
            }else{
                $message = $data->error;
            }
        }else{
            
            $message = $data->error;
        }
    }
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="./loginStyles.css" />
    <title>SG Farms Login</title>
</head>
<body>
    <div class="login__container">
        <h1>SG Farms: Admin Login</h1>
        <?php
       
            if(isset($message)){
                echo '<label class="text-danger">' . $message . '</label>';
            }
        ?>
        <form action="" method="post">
            <input type="text" name="Username" placeholder="Username">
            <input type="password" name="Password" placeholder="Password">
            <button type="submit" name="login">Login</button>
        </form>
    </div>   
</body>
</html>