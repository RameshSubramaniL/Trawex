<!DOCTYPE html>
<html>
<head>
    <title>Employee Registration</title>
    <style>
        body {
            font-family: Arial, sans-serif;
        }

        h2 {
            text-align: center;
        }

        form {
            max-width: 400px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        label {
            display: block;
            margin-bottom: 10px;
        }

        input[type="text"] {
            width: 80%;
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button[type="button"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 15px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }

        button[type="button"]:hover {
            background-color: #45a049;
        }

        #result {
            margin-top: 20px;
            text-align: center;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <h2>Employee Registration</h2>
    <form id="employeeForm">
        <label for="name">Name:</label>
        <input type="text" id="name" name="name"><br><br>

        <label for="email">Email:</label>
        <input type="text" id="email" name="email"><br><br>

        <label for="phone">Phone:</label>
        <input type="text" id="phone" name="phone" onkeydown="allowOnlyNumbers(event)">

        <label for="address">Address:</label>
        <input type="text" id="address" name="address"><br><br>

        <button type="button" onclick="registerEmployee()">Submit</button>
    </form>

    <div id="result"></div>

    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script>
        function allowOnlyNumbers(event) 
        {
            var charCode = (event.which) ? event.which : event.keyCode;
            if (charCode > 31 && (charCode < 48 || charCode > 57)) 
            {
                event.preventDefault();
            }
        }   
        function registerEmployee() 
        {
            var name = $("#name").val();
            var email = $("#email").val();
            var phone = $("#phone").val();
            var address = $("#address").val();

            if (phone.length !== 10 || !/^\d+$/.test(phone)) 
            {
                alert("Please enter a valid 10-digit phone number.");
                return;
            }

            $.ajax({
                url: "employee_ajax.php",
                type: "POST",
                data: { name: name, email: email, phone: phone, address: address },
                success: function(response) 
                {
                    if (response === "exists") 
                    {
                        alert("An employee with the same details already exists.");
                    }
                    else 
                    {
                    $("#result").html(response);
                }
                }
            });
        }
    </script>
</body>
</html>