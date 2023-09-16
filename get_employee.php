<?php
include("config.php");
if ($_SERVER["REQUEST_METHOD"] == "GET") 
{
    $token = $_GET["token"];
    $employeeId = $_GET["employee_id"];
   
    $sql = "select name, email, phone, address from employees where token = '".$token."' and id = '".$employeeId."'";
    $result = $conn->query($sql);

    if ($result->num_rows > 0) 
    {
        $row = $result->fetch_assoc();
        $return['status']=true;
        $return['data'] = array(
            "name" => $row["name"],
            "email" => $row["email"],
            "phone" => $row["phone"],
            "address" => $row["address"]
        );

        echo json_encode($return, JSON_PRETTY_PRINT);
    } 
    else
    {
        $return['status']=false;
        $return['message']='Employee not found or authentication failed.';

 echo json_encode($return, JSON_PRETTY_PRINT);
        // return $return;

        
        // echo "Employee not found or authentication failed.";
    }

    $conn->close();
}
?>
