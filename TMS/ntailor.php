<?php
session_start();
$userName=$_SESSION['userName'];
if(!isset($_SESSION['userName']))
{
  header("Location:login.php");
}
?>

<html>
<head>
  <title>Tailor</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" type="text/css" href="CSS/table.css">
</head>
<body>


<div class="grid-container">
  <div class="header">
    <h2 style="color: #2E4053"; align="left">Tailor Management System </h2>

  </div>

  <div class="left" style="background-color:#aaa;">
  <ul>

  <li><a href="ntailor.php">Dashboard</a></li>
  <li><a href="tailor_view.php?userName=<?php echo $userName; ?>">View Profile</a></li>
  <li><a href="tailor_edit.php">Edit Profile</a></li>
  <li><a href="tailor_changepic.php">Change Profile Picture</a></li>
  <li><a href="tailor_changepass.php">Change Password</a></li>
  <li><a href="tailor_taken_order.php">Order List</a></li>
    <li><a href="logout.php">Logout</a></li>
</ul>
  </div>
  <div class="middle" style="background-color:#bbb;"><?php
    $name=$_SESSION['name'];
    echo "<h5>Welcome $name</h5>";
    ?>

      <?php

  $con=mysqli_connect("localhost","root","","db");
  if(!$con)
  {
    die("Connection Error: ".mysqli_connect_error()."<br/>");
  }
  $sql="SELECT `ID` FROM tailor";
  $tid = mysqli_fetch_array(mysqli_query($con,$sql))['ID'];
  if (isset($_GET['oid'])) {
    $sql="UPDATE `orders` SET delivered=".$_GET['set']." WHERE order_id=".$_GET['oid'];
    mysqli_query($con,$sql);
  }
?>


    <?php
$con=mysqli_connect("localhost","root","","db");
  if(!$con)
  {
    die("Connection Error: ".mysqli_connect_error()."<br/>");
  }

  $sql="SELECT order_id,p.pname, uname, descr, order_date, delivery_date, delivered FROM `orders` o, `products` p WHERE o.tid=".$tid." AND o.pid=p.pid";
  $result=mysqli_query($con,$sql);
  if(mysqli_num_rows($result)>0)
   {
    ?>
    <table border='1' cellpadding='8'>
      <tr>
        <th>Order Id</th>
        <th>Product</th>
        <th>Customer</th>
        <th>Description</th>
        <th>Order Date</th>
        <th>Delivery Date</th>
        <th>Status</th>
      </tr>
    <?php
    while($row=mysqli_fetch_array($result))
    {
      echo "<tr>";
      echo "<td>".$row['order_id']."</td>";
      echo "<td>".$row['pname']."</td>";
      echo "<td>".$row['uname']."</td>";
      echo "<td>".$row['descr']."</td>";
      echo "<td>".$row['order_date']."</td>";
      echo "<td>".$row['delivery_date']."</td>";
      echo "<td><a href='ntailor.php?oid=".$row['order_id']."&set=".($row['delivered'] == '0' ? '1' : '0')."'><button>".($row['delivered']=='1' ? "Delivered" : "Pending")."</button></a></td>";
//echo '<td><a href="tailoredit.php? Order Id='.$row['oid'].'&Order Date=' .$row['order_date'].'&Delivery Date='.$row['delivery_date'].'&Note='.$row['note'].'">Edit</a> || <a href="tailordelete.php?oid=' .$row['oid'].'">Delete</a></td>';
      echo "</tr>";

    
    }
    echo "</table>";
   }
   else
   {
    echo "No data found.<br/>";
   }


?>
    </div>

  <div class="footer">
    <p>Copyright ?? 2020</p>
  </div>
</div>
</body>
</html>
