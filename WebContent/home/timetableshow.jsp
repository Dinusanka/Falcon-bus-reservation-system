<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="t" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="b" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Bus Timetable</title>
    <link rel="stylesheet" href="<c:url value='/CSS/ttshow.css' />">
    <style type="text/css">
    
           body {
            margin: 0;
            font-family: Arial, sans-serif;
            background-color: #d1f1f0;
        }

        input{
            margin-top: 40px;
            margin-bottom: 5px;
            margin-right: 20px;
            padding: auto;
            width: 170px;
            height: 35px;
            border-radius: 10px;
            float:right


        }
        .ul {
        position: relative;
        align-items: left;
        margin-top: 40;
        float: left;
        top: 10px;
        width: 100%;
        background-color: #0a31f0;
        }

        
   

        li {
  float: left;
  
  
}
    li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
    margin-bottom:13px
    }

    /* Change the link color to #111 (black) on hover */
    li a:hover {
    background-color: #130341;
    }
    .search-container {
      background-color: #fff;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      padding: 20px;
      margin-left: 90px;
      border-radius: 8px;
      width: 1300px;
      height: 140px;
     
      flex-direction: column;
      align-items: stretch;
    }

    .search-input,
    .date-input {
      width: 100%;
      padding: 10px;
      margin-left: 20px;
      margin-bottom: 10px;
      box-sizing: border-box;
    }

    .date-input {
      margin-bottom: 0;
    }
    .f{float: left;
    width: 300px;
    margin-left: 110px;

}
.t{float: left;
    width: 300px;
    margin-left: 100px;}
.d{
    float: left;
    width: 300px;
    margin-left:100px;;
}

    .search-btn {
      width: 300px;
      margin-top: 10px;
      padding: 10px;
    position: relative;
      background-color: #4caf50;
      color: #fff;
      border: none;
      border-radius: 4px;
      cursor: pointer;
      margin-right: 500px;
    }

    .search-btn:hover {
      background-color: #45a049;
     
    }
    

        .slideshow-container {
            
            width: 1700px;
            height:700px;
            margin-left: 120px;
            border-radius: 10px;
         
            
        }
        @keyframes fadeIn {
        0% { opacity: 0; }
        100% { opacity: 1; }
        }
        .mySlides {
            display: none;
             animation: fadeIn 5s; 
            width: 1000px;
            height:500px
        }
        .Top{
            width: auto;
            height: 150px;
           background-color: #52bde8;
        }

        img {
           
            width: 1300px;
            height:700px;
            float:left
        }

        .img1 {
            animation: fadeIn 5s; 
            width: 900px;
            height:500px
        }
        .logo {
            
            width: 90px;
            height:50px
        }
		.social-icons {
	    width: 240px;
	    height: 45px;
	    margin-left: 1200px;
	    float:left;
	    margin-top:-70px

	   
			}
			
			.social-text {
	    width: 240px;
	    height: 45px;
	    margin-left: 1275px;
	    float:left;
	    margin-top:-110px

	   
			}

 .link{
padding:30px;
float:left
 }
        .caption {
            

            bottom: 8px;
            width: 1270px;
            hight:100px;
            text-align: center;
            color: #f2f2f2;
            font-size: 15px;
            padding: 15px;
            background: rgba(0, 0, 0, 0.5);
            
        }
	.copy {
    text-align: center;
    padding:30px
    

}
/* Style for the table */
table {
  width: 1000px;
  border-collapse: collapse;
  margin-top: 20px;
  margin-left:280px;
}

/* Style for table header cells */
th, td {
  padding: 12px;
  text-align: center;
  border-bottom: 1px solid #00F0FF ;
}

/* Alternate row color for better readability */
tr:nth-child(even) {
  background-color: #f2f2f2;
}

/* Hover effect for table rows */
tr:hover {
  background-color: #e5f7ff;
}

/* Style for the table header */
th {
  background-color:  #071FA3 ;
  color: white;
}

/* Style for the action button */


/* Style for the action button on hover */
input[type="submit"]:hover {
  background-color: #45a049;
}


.footer-content{
 width: auto;
 height: 100px;
 background-color: #52bde8;
}
   
    </style>
</head>
<body>

	<%
	String cid = request.getParameter("cusid");
	String origin = request.getParameter("origin");
	String destination = request.getParameter("destination");
	String date = request.getParameter("date");
	%>
    <div class="search-container">
        <form>
            <div class="f">
                <label for="from">From:</label>
                <input type="text" id="from" class="search-input" name="originb" value="<%=origin %>" readonly>
            </div>

            <div class="t">
                <label for="to">To:</label>
                <input type="text" id="to" class="search-input" name="destinationb" value="<%=destination %>" readonly>
            </div>

            <div class="d">
                <label for="date">Date:</label>
                <input type="text" id="date" name="dateb" class="date-input" value="<%=date %>" readonly>
            </div>

            <div class="d">
                <label for="date"></label>
                <input type="hidden" id="cusidb" name="cusidb" class="date-input" value="<%=session.getAttribute("retrievedId") %>" readonly>
            </div>
        </form>
    </div>

    <table>
    <thead>
        <tr>
            <th>Bus Number</th>
            <th>Time</th>
            <th>Action</th>
        </tr>
    </thead>
    <tbody>
        <c:forEach var="time" items="${timetableDetails}">
            <tr>
               <td>${time.origin}</td> 
                    <td>${time.date}</td>
                <td>
                      <form action="show" method="POST">
       
            <input type="hidden" id="from" class="search-input" name="originb" value="<%=origin %>" readonly>
            <input type="hidden" id="to" class="search-input" name="destinationb" value="<%=destination %>" readonly>
            <input type="hidden" id="date" name="dateb" class="date-input" value="<%=date %>" readonly>
            <input type="hidden" id="cusidb" name="cusidb" class="date-input" value="<%=session.getAttribute("retrievedId") %>" readonly>
            <input type="hidden" id="busNumberb" name="busNumberb" class="date-input" value="${time.origin}" readonly>
            <input type="hidden" id="time" name="time" class="date-input" value="${time.date}" readonly>
            <input type="hidden" id="price" name="price" class="price" value="${time.price}" readonly>
            
                <input type="submit" name="Book" value="Book">
            
      
    </form>
                </td>
            </tr>
        </c:forEach>
    </tbody>
</table>


</body>
</html>
