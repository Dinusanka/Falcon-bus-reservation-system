<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Contact Us</title>
<style type="text/css">
       body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        h1 {
            background-color: teal;
            color: white;
            padding: 20px;
        
        }

        form {
            background-color: white; 
            border-radius: 5px;
            padding: 20px;
            width: 80%; 
            max-width: 500px; 
            margin: 0 auto;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        label {
            display: block;
            margin-bottom: 10px;
            font-weight: bold;
        }

        input[type="text"],
        input[type="email"],
        textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        button[type="submit"] {
            background-color: blue; 
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        .footer-content{
       width: auto;
       height: 100px;
       background-color: #52bde8;
       }
       
       h1{
        background-color: #52bde8
       }
    </style>
</head>
<body>
<h1>Contact Us</h1>
    <p>If you have any questions or feedback, please feel free to contact us using the form below:</p>

    <form action="../contact" method="post">
        <label for="name">Your Name:</label>
        <input type="text" id="name" name="cname" required><br><br>

        <label for="email">Email Address:</label>
        <input type="email" id="email" name="email" required><br><br>
        
        <label for="phone">Contact Number:</label>
        <input type="text" id="phone" name="phone" required><br><br>

        <label for="message">Message:</label>
        <textarea id="message" name="message" rows="4" cols="50" required></textarea><br><br>

        <button type="submit">Submit</button>
         </form>
<hr>
 <footer><div class="footer-content">
                   
               
                <div class="copy">
                <p>&copy; 2023 Bus Reservation System. All rights reserved.</p>
            </div> 
       </div>
    </footer>
   

</body>
</html>  