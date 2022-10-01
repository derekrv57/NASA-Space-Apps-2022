const canvas = document.getElementById('canvas');
const context = canvas.getContext('2d');
function printStar(x,y,r) {
  context.beginPath();
  context.arc(x, y, r, 0, 2 * Math.PI, false);
  context.fillStyle = 'white';
  context.fill();
  context.stroke();
}
<?php
  include '../php/connection.php';
    $sql = "SELECT * FROM stars WHERE date = '".$_GET['date']."'";
    $result = $conn->query($sql);
    if ($result->num_rows > 0) {
      $i=0;
      while($row = $result->fetch_assoc()) {
        echo "printStar(".$row["x"].",".$row["y"].",".$row["size"].");";
      }
    } else {
      header('Location: ../../');
    }
    $conn->close();
?>