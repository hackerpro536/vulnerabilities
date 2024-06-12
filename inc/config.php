<?php
class DB {
    public $mysqli;
    public function __construct()
    {
        $host = 'localhost';
        $db_name = 'hacking';
        $db_user = 'root';
        $db_pass = 'root';

        $mysqli = new mysqli($host,$db_user,$db_pass,$db_name);

        // Check connection
        if ($mysqli -> connect_errno) {
            echo "Failed to connect to MySQL: " . $mysqli -> connect_error;
            exit();
        }
        $this->mysqli = $mysqli;
    }

    protected function sqlEror()
    {
        if(users('debug'))
        {
            die( '<pre>' . ((is_object($this->mysqli)) ? mysqli_error($this->mysqli) : (($___mysqli_res = mysqli_connect_error()) ? $___mysqli_res : false)) . '</pre>' );
        }
    }

    public function __destruct()
    {
        $this->mysqli->close();
    }

    public function rawQuery($sql)
    {
        // Associative array
        $result = mysqli_query($this->mysqli,  $sql ) or $this->sqlEror();
        return $result;
    }

    public function input($input)
    {
        if(users('debug') == false)
        { 
            $input = mysqli_real_escape_string($this->mysqli,  $input );
        }
        return $input;
    }

    public function query($sql)
    {
        $result = mysqli_query($this->mysqli,  $sql ) or $this->sqlEror();
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