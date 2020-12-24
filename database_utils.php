<?php

function Connect() {
    if(!($connection = mysqli_connect('localhost', 'root', '', 'reviews'))) {
        die("Database connection failed");
    }
    return $connection;
}

function GetResultsForQuery(string $query) {
    $connection = Connect();
    
    $result = mysqli_query($connection, $query);
    if(!$result || $result->num_rows == 0) {
        LogError('no books for query: '.$query);
        mysqli_close($connection);
        return null;
    }
    
    $rows = array();
    $rowCount = $result->num_rows;
    for ($i = 0; $i < $rowCount; $i++) {
        $rows[] = mysqli_fetch_assoc($result);
    }
    
    $result->close();
    mysqli_close($connection);
    return $rows;
}

function LogError(string $str) {
    global $logging;
    if ($logging = true) {
        echo $str.'<br>';
    }
}
?>