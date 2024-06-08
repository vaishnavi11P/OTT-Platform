<?php
    $con = mysqli_connect('localhost', 'root', '', 'flix') or die("Connection failed: " . mysqli_connect_error());

    $sql_thriller="SELECT Distinct s.SName,s.Img_Name, s.Links FROM series s, genre g WHERE s.SName = g.SName and g.Thriller LIKE 'yes' ";
    $r1= mysqli_query($con,$sql_thriller);

    $sql_crime="SELECT  Distinct s.SName,s.Img_Name, s.Links FROM series s, genre g WHERE s.SName = g.SName and g.Crime LIKE 'yes' ";
    $r2= mysqli_query($con,$sql_crime);

    $sql_romance="SELECT Distinct s.SName,s.Img_Name, s.Links FROM series s, genre g WHERE s.SName = g.SName and g.Romance LIKE 'yes' ";
    $r3= mysqli_query($con,$sql_romance);

    $sql_horror="SELECT Distinct s.SName,s.Img_Name, s.Links FROM series s, genre g WHERE s.SName = g.SName and g.Horror LIKE 'yes' ";
    $r4= mysqli_query($con,$sql_horror);

    $sql_recommendation="SELECT Distinct s.SName,s.Img_Name, s.Links FROM series s, genre g WHERE s.SName = g.SName and g.Recommendations LIKE 'yes' ";
    $r5= mysqli_query($con,$sql_recommendation);

    $sql_trending="SELECT Distinct s.SName,s.Img_Name, s.Links FROM series s, genre g WHERE s.SName = g.SName and g.Trending LIKE 'yes' ";
    $r6= mysqli_query($con,$sql_trending);

    $sql_Continue_watching="SELECT Distinct s.SName,s.Img_Name, s.Links FROM series s, genre g WHERE s.SName = g.SName and g.`continue-watching` LIKE 'yes' ";
    $r7= mysqli_query($con,$sql_Continue_watching);
?>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tv-Shows</title>
    <link rel="icon" href="flix.png" type="image/x-icon"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <!-- <link rel="stylesheet" href="tvshow.css"> -->
    <style>
    .navbar{
        height: 60px;
        background-color: transparent;
        color: rgb(194, 7, 7);
        position: sticky;
        top: 0;
        height: auto;
        min-height: 70px;
        z-index: 1;
        display: flex;
        align-items: center;
    }

    .logo h1{
        z-index: 2;
        display: inline-block;
        font-size: 1.8em;
        margin-right: 5px;
        text-decoration: none;
        vertical-align: middle;
    }

    .show{
        text-align: center;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 20px;
        width: 80px;
    }

    .show button{
        background-color: rgb(184, 7, 7);
        color: rgb(213, 204, 204);
        border-radius: 10px;
        font-size: 0.6rem;
    }
  
    .tvshow{
        text-align: center;
        display: flex;
        justify-content: center;
        align-items: center;
        height: 20px;
        width: 80px;
    }

    .tvshow button{
        background-color: rgb(184, 7, 7);
        color: rgb(213, 204, 204);
        border-radius: 10px;
        font-size: 0.6rem;
    }

    .nav-search{
        display: flex;
        justify-content: space-evenly;
        margin-right: 30px;
        width: 500px;
        height: 25px;
        border-radius: 4px;
        margin-left: auto;
    }

    .search-input{
        background-color: rgb(213, 204, 204);
        width: 100%;
        font-size: 1rem;
        border-radius: 5px;
        border: none;
    }

    ::placeholder{
        color: rgb(145, 10, 10);
    }

    .search-icon{
        width: 40px;
        display: flex;
        justify-content: center;
        align-items: center;
        color: red;
        font-size: 1.2rem;
    }

    .main-image{
        position: relative;
        display: flex;
        align-items: flex-end;
    }

    .hero-section1{
        align-items: flex-end;
        background-size: cover;
        background-repeat: no-repeat;
        height: 750px; 
        width: 100%;
        margin-bottom: 20px;
    }

    .box{
        height: 150px;
        width: 200px;
        background-size: cover;
        background-repeat: no-repeat;
        margin-left: 25px;
    }

    .box:hover{
        width: 350px;
    }

    .main-image button{
        color: black;
        width: 150px;
        padding: 7px;
        font-size: 1rem;
        font-weight: 800;
        margin: 10px 0;
        border: none;
        outline: none;
        cursor: pointer;
        background-color: rgb(213, 204, 204);
        margin-left: 10px;
        z-index: 1;
    }

    button{
        color: black;
        width: 150px;
        padding: 7px;
        font-size: 1rem;
        font-weight: 800;
        margin: 10px 0;
        border: none;
        outline: none;
        cursor: pointer;
        background-color: rgb(213, 204, 204);
        margin-left: 10px;
    }

    .main-image button:hover{
        opacity: 0.5;
    }

/* continue watching */
    .continue-watching{
        height: 35px;
    }

    .continue-watching p{
        letter-spacing: .2rem;
        font-size: larger;
        font-family: Arial, Helvetica, sans-serif;
        color: rgb(213, 204, 204);
        padding: 10px;
    }

    .cw-movies{
        height: 150px;
        padding: 10px;
        display: flex;
        padding-left: 0;
    }

    .cw-movies .box-img{
        height: 150px;
        width: 200px;
        background-size: cover;
        background-repeat: no-repeat;
    }

    .box-img:hover{
        width: 350px;
    }

/* trending */
    .trending{
        height: 35px;
    }

    .trending p{
        letter-spacing: .2rem;
        font-size: larger;
        font-family: Arial, Helvetica, sans-serif;
        color: rgb(213, 204, 204);
        padding: 10px;
    }

    .t-movies{
        height: 150px;
        padding: 10px;
        display: flex;
        overflow-x: hidden;
        padding-left: 0;
    }

/* recommendation */
    .recommendations{
        height: 35px;
    }

    .recommendations p{
        letter-spacing: .2rem;
        font-size: larger;
        font-family: Arial, Helvetica, sans-serif;
        color: rgb(213, 204, 204);
        padding: 10px;
    }

    .rec-movies{
        height: 150px;
        padding: 10px;
        display: flex;
        padding-left: 0;
    }

/* romance */
    .romance{
        height: 35px;
    }

    .romance p{
        letter-spacing: .2rem;
        font-size: larger;
        font-family: Arial, Helvetica, sans-serif;
        color: rgb(213, 204, 204);
        padding: 10px;
    }

    .rom-movies{
        width: 100%;
        height: 100px;
        padding: 10px;
        margin-top: 10px; 
        display: flex;
        text-align: center;
        justify-content: center;
        align-items: center; 
    }

    .slideshow-container {
        margin: auto;  
        z-index: 0;
    }

    .slides {
        display: flex;
    }

    .slides .mySlides{
        display: none;
        width: 100vw;
        height: 750px;
    }

    .rom_movies{
        height: 150px;
        padding: 10px;
        display: flex;
        padding-left: 0;
    }

/* thriller and horror  */
    .thriller{
        height: 35px;
    }

    .thriller p{
        letter-spacing: .2rem;
        font-size: larger;
        font-family: Arial, Helvetica, sans-serif;
        color: rgb(213, 204, 204);
        padding: 10px;
    }

    .th-movies{
        height: 150px;
        padding: 10px;
        display: flex;
        padding-left: 0;
    }

    .box-img:hover{
        width: 350px;
    }

/* crime */
    .crime{
        height: 35px;
    }

    .crime p{
        letter-spacing: .2rem;
        font-size: larger;
        font-family: Arial, Helvetica, sans-serif;
        color: rgb(213, 204, 204);
        padding: 10px;
    }

    .poster{
        display: flex;
    }

    .crime-poster{
        height: 550px;
        width: 600px;
        background-size: cover;
        background-repeat: no-repeat;
        margin-top: 8px;
    }

    .crime-poster:hover{
        opacity: 0.5;
    }

    .crime-poster2{
        justify-content: center;
        height: 550px;
        width: 800px;
        margin-top: 15px;
    }

    .c1{
        height: 250px;
        width: auto;
        display: flex;
    }

    .c1 .box-img{
        height: 250px;
        width: 300px;
        background-size: cover;
        background-repeat: no-repeat;
    }

    .c1 .box-img-1 {
        background-image: url("crime2.avif");
        margin-left: 65px;
    }

    .c1 .box-img-2 {
        background-image: url("crime1.jpeg");
        margin-left: 65px;
    }

    .c2{
        height: 250px;
        width: auto;
        display: flex;
        margin-top: 45px;
    }

    .c2 .box-img{
        height: 250px;
        width: 300px;
        background-size: cover;
        background-repeat: no-repeat;
        display: flex;
    }

    .c2 .box-img-3 {
        background-image: url("crime3.jpg");
        margin-left: 65px;
    }

    .c2 .box-img-4 {
        background-image: url("crime4.jpg");
        margin-left: 65px;
    }

    .box-img:hover{
        width: 450px;
    }
</style>
</head>
<body bgcolor="black">
    <header>
        <div class="navbar">
            <div class="logo">
                <h1>CineVerse</h1>
            </div>
            <div class="show">
                <button type="button" onclick="location.href='homepage.php'">Home</button>
            </div>
            <div class="tvshow">
                <button type="button" onclick="location.href='tv.php'">Tv-Shows</button>
            </div>
            <div class="nav-search">
                <input placeholder="Search your favourite movies" class="search-input">
                <div class="search-icon">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </div>
            </div>
        </div>
    </header>
    <!-- <form method="post" action="f5.php"> -->
    <div class="main-image">
        <div class="hero-section1">
            <div class="rom-movies">
                <div class="slideshow-container">
                    <div class="slides">
                    <img class="mySlides" src="tv-rom1.jpeg">
                    <img class="mySlides" src="tv-rom2.jpg">
                    <img class="mySlides" src="thriller1.jpeg">
                    <img class="mySlides" src="tv-cw.webp">
                    <img class="mySlides" src="tv-cw2.webp">
                    <img class="mySlides" src="thriller2.jpeg">
                    <img class="mySlides" src="trending4.jpeg">
                    <img class="mySlides" src="trending2.jpeg">
                    </div>
                </div>
            </div>
            <div class="button">
                <button type="button">
                    <i class="fa-solid fa-play"></i>
                    Watch Now</button>
            </div>
        </div>
    </div>
    <form method="post" action="f5.php">
    <div class="continue-watching">
        <p>Continue Watching</p>
    </div>
    <div class="cw-movies">
    <?php
                while($row=mysqli_fetch_assoc($r7)){
                    $image_path=$row['Img_Name'];
            ?>
            <div ><button style="background-image: url('<?php echo $image_path ?>');" class="box" type="submit" name="movie" value="<?php echo $row['SName']; ?>"></button></div>

            <?php
                }
            ?>
    </div>
    <div class="trending">
        <p>Trending</p>
    </div>
    <div class="t-movies">
    <?php
                while($row=mysqli_fetch_assoc($r6)){
                    $image_path=$row['Img_Name'];
            ?>
            <div ><button style="background-image: url('<?php echo $image_path ?>');" class="box" type="submit" name="movie" value="<?php echo $row['SName']; ?>"></button></div>

            <?php
                }
            ?>
    </div>

    <div class="recommendations">
        <p>Recommendations</p>
    </div>
    <div class="rec-movies">
    <?php
                while($row=mysqli_fetch_assoc($r5)){
                    $image_path=$row['Img_Name'];
            ?>
            <div ><button style="background-image: url('<?php echo $image_path ?>');" class="box" type="submit" name="movie" value="<?php echo $row['SName']; ?>"></button></div>

            <?php
                }
            ?>
    </div>

    <div class="romance">
        <p>Romantic Shows</p>
    </div>
    <div class="rom_movies">
    <?php
                while($row=mysqli_fetch_assoc($r3)){
                    $image_path=$row['Img_Name'];
            ?>
            <div ><button style="background-image: url('<?php echo $image_path ?>');" class="box" type="submit" name="movie" value="<?php echo $row['SName']; ?>"></button></div>

            <?php
                }
            ?>
    </div>

    <div class="thriller">
        <p>Thriller and Horror Shows</p>
    </div>
    <div class="th-movies">
    <?php
                while($row=mysqli_fetch_assoc($r1)){
                    $image_path=$row['Img_Name'];
            ?>
            <div ><button style="background-image: url('<?php echo $image_path ?>');" class="box" type="submit" name="movie" value="<?php echo $row['SName']; ?>"></button></div>

            <?php
                }
            ?>
    </div>

    <div class="crime">
        <p>Crime</p>
    </div>
    <div class="poster">
        <div class="crime-poster">
        <?php
                while($row=mysqli_fetch_assoc($r2)){
                    $image_path=$row['Img_Name'];
            ?>
            <div ><button style="background-image: url('<?php echo $image_path ?>');" class="crime-poster" type="submit" name="movie" value="<?php echo $row['SName']; ?>"></button></div>

            <?php
                }
            ?>
        </div>
        <div class="crime-poster2">
            <div class="c1">
                <div class="box-img box-img-1"></div>
                <div class="box-img box-img-2"></div>
            </div>
            <div class="c2">
                <div class="box-img box-img-3"></div>
                <div class="box-img box-img-4"></div>
            </div>
        </div>
    </div>

    <script src="script.js"></script>
    </form>
</body>
</html>