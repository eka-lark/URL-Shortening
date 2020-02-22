<?php
    include('dbcon.php');
    include('view.php')
?>

<!DOCTYPE html>
<html language="English ">

<head>
  <title>URL Shortening</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Cookie">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="css/global.css">
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <style>

    #logo {
    max-height: 36px;
    margin-right: 10px;
    margin-top: -3px;
    display: inline-block;
    }

    .navbar-inverse .navbar-nav>.active>a,
    .navbar-inverse .navbar-nav>.active>a:hover,
    .navbar-inverse .navbar-nav>.active>a:focus {
    
    border-color: transparent;
    

    }
  </style>

</head>

<body class="bg">

<?php   include('header.php')  ?>

    <div class="row">
      
      <div class="col-md-2 col-sm-4 col-xs-2">
      </div>
      <div class="col-md-8 col-sm-8 col-xs-8">
        <form class="form-container" action="index.php" method="POST">
          <h1 style="text-align:center;">URL Shortener Form</h1><br>
          <div class="form-group">
            <strong> Link: </strong> <input type="text" name="link" class="form-control" id="exampleInputEmail1" placeholder="Enter the Link" required>
          </div>
          <div class="form-group">
           <strong> Specifier: </strong>
            <input type="text" name="txt" class="form-control" id="exampleInputPassword1"
              placeholder="Specify Keyword" required>
          </div>

          <div class="form-group">
            <strong> Your Link: </strong>
             <input type="text" name="short_link" class="form-control" id="exampleInputPassword1"
               placeholder="Short Text" required>
           </div>
          
          <button type="submit" name="submit" class="btn btn-" style="background-color: blueviolet;"><b>Generate Link</b></button>

          
            
        </form>
      </div>
    </div>

    <?php 
		 include('dbcon.php');
		 if(isset($_POST['submit'])){
			$link=$_POST['link'];
			$txt=$_POST['txt'];
			$short_link=$_POST['short_link'];
			
			$count=mysqli_num_rows(mysqli_query($con,"select * from shorturl where short_link='$short_link'"));
			if($count>0){
				echo "<script> alert('Short Link already exist'); </script>";
			}else{
				mysqli_query($con,"insert into shorturl(link,txt,short_link) values('$link','$txt','$short_link')");
				header('location:index.php');
				die();
			}
		 }
	?>

    <div class="row" >

      <div class="col-md-2 col-sm-4 col-xs-2">
      </div>
      <div class="col-md-8 col-sm-8 col-xs-8">

    
         
      <form class="form-container">
        <h2 style="text-align:center;">Shortened URL Details</h2><br>
       <div style="overflow-x:auto;">
        <table>
          <tr>
            <th>S.No.</th>
            <th>Specifier</th>
            <th class="th">Link</th>
            <th>Shortened Link</th>
            <th>Count</th>
            <th></th>
          </tr>
          <?php
      $sql=mysqli_query($con,"select * from shorturl");
      $c=mysqli_num_rows($sql);
      $id=1;
			while($id<=$c){

        $row=mysqli_fetch_assoc($sql);
		  ?>
            <tr>
                <td><?php echo $id++?></td>
                <td><?php echo $row['txt']?></td>
                <td style="width:150px"><a href="<?php echo $row['link']?>" target="_blank"><?php echo $row['link']?></a></td>
                <td><?php echo $row['short_link']?></td>
                <td><?php echo $row['hit_count']?></td>

            </tr>
            <?php } ?>

        </table>

                </div>
          </form>
      </div>



    </div>
 <br><br>

   <?php 

   include('footer.php'); ?>
</body>


</html>