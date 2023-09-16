<?php
include("config.php");

if ($_SERVER["REQUEST_METHOD"] == "POST") 
{
    $name = $_POST["name"];
    $email = $_POST["email"];
    $phone = $_POST["phone"];
    $address = $_POST["address"];
    $token = generateToken();


    $sql = "select name, email, phone, address from employees where  name = '".$name."' and email = '".$email."' and phone = '".$phone."' and address = '".$address."'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) 
    {
        echo "exists";
    } 
    else 
    {
        $sql = "insert into employees(name,email,phone,address,token) values ('".$name."','".$email."','".$phone."','".$address."','".$token."')";
        $result = $conn->query($sql);
        if ($result) 
        {
            echo "Employee registered successfully. Token: " . $token;
        } else 
        {
            echo "Error";
        }
    }
    $conn->close();
}

function generateToken() 
{
    return bin2hex(random_bytes(16));
}
?>
