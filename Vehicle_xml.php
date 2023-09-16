<?php
$xmlString = file_get_contents('vechile_details.xml');
$xml = simplexml_load_string($xmlString);

$json = json_encode($xml);

echo "<pre>";
htmlentities($json); 
?>
<!DOCTYPE html>
<html>
<head>
    <title>JSON Data Display</title>
    <style>
        body 
        {
            font-family: Arial, sans-serif;
            margin: 20px;
        }
        pre 
        {
            background-color: #f5f5f5;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <h1>JSON Data Display</h1>

    <div id="json-display"></div>

    <script>
        var jsonData = <?php echo $json; ?>;

        function displayJson(jsonData) 
        {
            var jsonDisplay = document.getElementById("json-display");
            jsonDisplay.innerHTML = JSON.stringify(jsonData, null, 2);
        }

        displayJson(jsonData);
    </script>
</body>
</html>

<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "vechile";

$conn = mysqli_connect($servername, $username, $password, $dbname);

if (!$conn) 
{
    die("Connection failed: " . mysqli_connect_error());
}

$sql= "select id from vechile_details where json_content = '$json'";
$result = $conn->query($sql);
$row_count = $result->num_rows;

if ($row_count === 0) 
{
    $sql_insert = "insert into vechile_details (json_content) values ('$json')";
    $ins_result = $conn->query($sql_insert);
    
	if ($ins_result) 
	{
	    echo "Data stored in the database successfully.";
	}
	else
	{
	    echo "Error";
	}
} 
else
{
    echo "JSON data already exists in the database and will not be inserted again.";
}

mysqli_close($conn);
?>
