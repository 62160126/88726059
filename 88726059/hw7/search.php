 <?php



    $db_host = "localhost";
    $db_user = "root";
    $db_password = "";
    $db_name = "62160224";

    $mysqli = new mysqli($db_host, $db_user, $db_password, $db_name);
    $mysqli->set_charset("utf8");


    if ($mysqli->connect_errno) {
        echo "Failed to connect to MySQL: (" . $mysqli->connect_errno . ") " . $mysqli->connect_error;
    } else {

    }


    $kw = $_POST['kw'];
    $typ = $_POST['typ'];

    if($typ==0){ 
        $sql = "SELECT *
        FROM music 
        WHERE Name_song LIKE '%$kw%' OR Album_Name LIKE '%$kw%'"; 
        $result = $mysqli->query($sql);
    }
    else {
        $sql = "SELECT *
        FROM music 
        WHERE Name_song LIKE '%$kw%' AND Album_Name LIKE '%$typ%'"; 
        $result = $mysqli->query($sql);
    }

    $arr = array();
    if ($result->num_rows > 0){

        while($row = $result->fetch_object())
        {
            $arr[] = $row;
        }
    } else {

    }
    echo json_encode($arr);
