<?php
class DB {
    public $mysqli;
    public function __construct()
    {
        $mysqli = new mysqli("localhost","root","root","hacking");

        // Check connection
        if ($mysqli -> connect_errno) {
            echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
            exit();
        }
        $this->mysqli = $mysqli;
    }

    public function __destruct()
    {
        $this->mysqli->close();
    }

    public function rawQuery($sql)
    {
        // Associative array
        $result = mysqli_query($this->mysqli,  $sql ) or die( '<pre>' . ((is_object($this->mysqli)) ? mysqli_error($this->mysqli) : (($___mysqli_res = mysqli_connect_error()) ? $___mysqli_res : false)) . '</pre>' );
        return $result;
    }

    public function query($sql)
    {
        // Associative array
        $result = mysqli_query($this->mysqli,  $sql ) or die( '<pre>' . ((is_object($this->mysqli)) ? mysqli_error($this->mysqli) : (($___mysqli_res = mysqli_connect_error()) ? $___mysqli_res : false)) . '</pre>' );
        if ($result)
        {
            $row = $result->fetch_all(MYSQLI_ASSOC);
            $result->free_result();
        }
        return $row;
    }

    public function getItem($itemId, $tables = null)
    {
        $sql = "SELECT * FROM {$tables} WHERE id='" . $itemId. "'";
        $data = $this->query($sql);
        return reset($data);
    }
}