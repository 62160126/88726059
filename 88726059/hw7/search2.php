
<body>
<head>
 <meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1.0">
 <meta http-equiv="X-UA-Compatible" content="ie=edge">
 <title>CSS</title>
 <link rel="stylesheet" type="text/css" href="css/mystyle.css">
</head>
<title>Search</title>
<h4>Search</h4>
<input type="text" id="kw">
<select id="typ">
<?php
    // connect database 
    $db_host = "localhost";
    $db_user = "root";
    $db_password = "";
    $db_name = "62160126";  
    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
    $mysqli->set_charset("utf8");
    if ($mysqli->connect_errno) {
        echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
    }
    $sql = "SELECT *
            FROM music 
            ORDER BY 1";
    $result = $mysqli->query($sql);
    while($row = $result->fetch_object()) {
        echo "<option value='$row->Album_Name'>$row->Album_Name</option>"; 
    }
?>
</select>
<button onclick="search()">Search</button>
<form method="post" action="search.html">
    <input type="submit" value="Normal Search">
</form>
<table>
        <tr>
            <td  id="disp"></td>
        </tr>
</table>  

</body> 
<script>
    function search() {
        kw = document.getElementById('kw').value;
        typ = document.getElementById('typ').value;
        console.log("kw=" + kw);
        console.log("typ=" + typ);
        var xmlhttp = new XMLHttpRequest();
        xmlhttp.onreadystatechange = function() {
            if (this.readyState == 4 && this.status == 200) {

                arr = JSON.parse(this.responseText);
                console.log(arr);
                if (arr.length == 0) {
                    document.getElementById('disp').innerHTML = "Not found";
                } else {
                    html = ""; 
                    for (i = 0; i < arr.length; i++) {
                        html += "MusicName :"+arr[i].Name_song  +"<br>AlbumName :" + arr[i].Album_Name+ "<br><hr>";
                    }
                    document.getElementById('disp').innerHTML = html;
                }
            }
        }
        parameters = "kw=" + kw + "&typ=" + typ;
        xmlhttp.open("post", "search.php");
        xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
        xmlhttp.send(parameters);
    }
</script>
