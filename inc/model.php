<?php
class Model extends DB {

    public function __construct()
    {
        parent::__construct();
    }


    public function getAllProduct($limit = null)
    {
        $sql = "SELECT * FROM product";
        if($limit)
        {
            $sql .= " LIMIT {$limit}";
        }
        $products = $this->query($sql);
        return $products;
    }

    public function getDetailProduct($id)
    {
        $products = $this->getItem($id, 'product');
        return $products;
    }

    public function loginAdmin($username, $password)
    {
        // $username = mysqli_real_escape_string($this->mysqli, $username); <= validate input
        $password = md5(mysqli_real_escape_string($this->mysqli, $password)); 

        $sql = "SELECT * FROM users WHERE username = '$username' and password = '$password' and status = 1";
        // $sql = "SELECT * FROM users WHERE username = {$username} and password = {$password} and status = 1"; <= fixed query

        $result = $this->query($sql);  
        $result = reset($result); 
        if($result) {
            $_SESSION['admin_id'] = $result['id'];
            $_SESSION['username'] = $result['username'];
            $_SESSION['full_name'] = $result['full_name'];
            $_SESSION['email'] = $result['email'];
            $_SESSION['permission'] = $result['permission'];
            return true;
        } else {
            return false;
        }
    }
    
}