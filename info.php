<?php

$connect = mysql_connect(“test”, “root”); if (!connect) { die('Connection Failed: ' . mysql_error()); { mysql_select_db(“database_name”, $connect);
$user_info = “INSERT INTO table_name (username, email) VALUES ('$_POST[username]', '$_POST[email]')”; if (!mysql_query($user_info, $connect)) { die('Error: ' . mysql_error()); }

echo “Your information was added to the database.”;

mysql_close($connect); ?>
