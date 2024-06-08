<?php
session_start(); // Start the session

$con = mysqli_connect('localhost', 'root', '', 'flix') or die("Connection failed: " . mysqli_connect_error());

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['submit'])) {
    if (isset($_POST['email']) && isset($_POST['password']) && isset($_POST['confirm_password']) && isset($_POST['first_name'])) {
        $email = $_POST['email'];
        // Store the email in a session variable
        $_SESSION['email'] = $email;
        $password = $_POST['password'];
        $confirmPassword = $_POST['confirm_password'];
        $firstName = $_POST['first_name'];

        // Check if email already exists in database
        $email_query = "SELECT * FROM USER WHERE Email = '$email'";
        $email_result = mysqli_query($con, $email_query);

        if (mysqli_num_rows($email_result) > 0) {
            // Email already exists, update user details
            $update_user_details_sql = "UPDATE USER SET User_Name = '$firstName' WHERE Email = '$email'";
            $update_login_sql = "UPDATE LOGIN SET Password = '$password' WHERE User_ID = '$email'";

            $result_user_details = mysqli_query($con, $update_user_details_sql);
            $result_login = mysqli_query($con, $update_login_sql);

            if ($result_user_details && $result_login) {
                echo  '<script type="text/javascript">
                window.onload = function () { 
                alert("email already exists !!User details updated!!"); 
                window.location.href = "subscription.php";
                }
                </script>';
            } else {
                echo "Error updating user details: " . mysqli_error($con);
            }
        } else {
            // If email doesn't exist, proceed with registration
            if ($password === $confirmPassword) {
                // Insert user details into LOGIN table
                $sql_login = "INSERT INTO LOGIN (User_id, Password) VALUES ('$email', '$password')";
                $result_login = mysqli_query($con, $sql_login);

                // Insert user details into USER_DETAILS table
                $sql_user_details = "INSERT INTO USER (User_Name, Email) VALUES ('$firstName', '$email')";
                $result_user_details = mysqli_query($con, $sql_user_details);

                // Insert user ID into subscription table
                $sql_subscription = "INSERT INTO subscriptions (email) VALUES ('$email')";
                $result_subscription = mysqli_query($con, $sql_subscription);

                if ($result_login && $result_user_details && $result_subscription) {
                    // Redirect to subscription page
                    header("Location: subscription.php");
                    exit();
                } else {
                    echo "Error: " . mysqli_error($con);
                }
            } else {
                echo "Password and confirm password do not match";
            }
        }
    } else {
        echo "Email, password, first name, and confirm password cannot be empty";
    }
}

mysqli_close($con);
?>