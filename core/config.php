<?php
if (!defined('IN_SITE')) die('The Request Not Found');
session_start();
date_default_timezone_set('Asia/Ho_Chi_Minh');
// $base_url = 'https://' . $_SERVER['SERVER_NAME'] . '/'; // Thay url web bạn

// error_reporting(E_ALL);
// ini_set('display_errors', 1);

$base_url = 'http://localhost/';
class TUANORI
{
    private $ketnoi;
    function connect()
    {
        if (!$this->ketnoi) {
            $this->ketnoi = mysqli_connect('localhost', 'root', '', 'demo_web_key') or die('Bảo trì chống ddos. Hệ thống sẽ tự mở lại sau khi xử lý xong.');
            mysqli_query($this->ketnoi, "set names 'utf8'");
        }
    }
    function dis_connect()
    {
        if ($this->ketnoi) {
            mysqli_close($this->ketnoi);
        }
    }
    function getUser($username)
    {
        $this->connect();
        $row = $this->ketnoi->query("SELECT * FROM `users` WHERE `username` = '$username' ")->fetch_array();
        return $row;
    }
    function getId($id)
    {
        $this->connect();
        $row = $this->ketnoi->query("SELECT * FROM `users` WHERE `id` = '$id' ")->fetch_array();
        return $row;
    }
    function site($data)
    {
        $this->connect();
        $row = $this->ketnoi->query("SELECT * FROM `options` WHERE `key` = '$data' ")->fetch_array();
        return $row['value'];
    }
    function query($sql)
    {
        $this->connect();
        $row = $this->ketnoi->query($sql);
        return $row;
    }
    function cong($table, $data, $sotien, $where)
    {
        $this->connect();
        $row = $this->ketnoi->query("UPDATE `$table` SET `$data` = `$data` + '$sotien' WHERE $where ");
        return $row;
    }
    function tru($table, $data, $sotien, $where)
    {
        $this->connect();
        $row = $this->ketnoi->query("UPDATE `$table` SET `$data` = `$data` - '$sotien' WHERE $where ");
        return $row;
    }
    function insert($table, $data)
    {
        $this->connect();
        $field_list = '';
        $value_list = '';
        foreach ($data as $key => $value) {
            $field_list .= ",$key";
            $value_list .= ",'" . mysqli_real_escape_string($this->ketnoi, $value) . "'";
        }
        $sql = 'INSERT INTO ' . $table . '(' . trim($field_list, ',') . ') VALUES (' . trim($value_list, ',') . ')';

        return mysqli_query($this->ketnoi, $sql);
    }
    function update($table, $data, $where)
    {
        $this->connect();
        $sql = '';
        foreach ($data as $key => $value) {
            $sql .= "$key = '" . mysqli_real_escape_string($this->ketnoi, $value) . "',";
        }
        $sql = 'UPDATE ' . $table . ' SET ' . trim($sql, ',') . ' WHERE ' . $where;
        return mysqli_query($this->ketnoi, $sql);
    }
    function update_value($table, $data, $where, $value1)
    {
        $this->connect();
        $sql = '';
        foreach ($data as $key => $value) {
            $sql .= "$key = '" . mysqli_real_escape_string($this->ketnoi, $value) . "',";
        }
        $sql = 'UPDATE ' . $table . ' SET ' . trim($sql, ',') . ' WHERE ' . $where . ' LIMIT ' . $value1;
        return mysqli_query($this->ketnoi, $sql);
    }
    function remove($table, $where)
    {
        $this->connect();
        $sql = "DELETE FROM $table WHERE $where";
        return mysqli_query($this->ketnoi, $sql);
    }
    function get_list($sql)
    {
        $this->connect();
        $result = mysqli_query($this->ketnoi, $sql);
        if (!$result) {
            die('Câu truy vấn bị sai');
        }
        $return = array();
        while ($row = mysqli_fetch_assoc($result)) {
            $return[] = $row;
        }
        mysqli_free_result($result);
        return $return;
    }
    function get_row($sql)
    {
        $this->connect();
        $result = mysqli_query($this->ketnoi, $sql);
        if (!$result) {
            die('Câu truy vấn bị sai');
        }
        $row = mysqli_fetch_assoc($result);
        mysqli_free_result($result);
        if ($row) {
            return $row;
        }
        return false;
    }
    function num_rows($sql)
    {
        $this->connect();
        $result = mysqli_query($this->ketnoi, $sql);
        if (!$result) {
            die('Câu truy vấn bị sai');
        }
        $row = mysqli_num_rows($result);
        mysqli_free_result($result);
        if ($row) {
            return $row;
        }
        return false;
    }
}
if (isset($_COOKIE['token'])) {
    $TUANORI = new TUANORI;
    $getUser = $TUANORI->get_row(" SELECT * FROM users WHERE tokenlog = '" . $_COOKIE['token'] . "' ");
    $my_username = True;
    $my_gg = $getUser['discount'];
    $my_money = $getUser['money'];
    $my_level = $getUser['level'];
    if (!$getUser) {
        unset($_COOKIE['token']);
        setcookie('token', null, -1, '/');
        header('Location: /');
        die();
    }
    if ($getUser['money'] < 0) {
        $TUANORI->update("users", array(
            'banned' => 'OFF'
        ), "tokenlog = '" . $_COOKIE['token'] . "' ");
        unset($_COOKIE['token']);
        setcookie('token', null, -1, '/');
        header('Location: /');
        die();
    }
    if ($getUser['tokenlog'] != $_COOKIE['token']) {
        unset($_COOKIE['token']);
        setcookie('token', null, -1, '/');
        header('Location: /');
        die();
    }
    if ($getUser['banned'] != 'ON') {
        unset($_COOKIE['token']);
        setcookie('token', null, -1, '/');
        header('Location: /');
        die();
    }
} else {
    $my_level = NULL;
    $my_money = $my_gg = 0;
}
function CheckLogin()
{
    global $my_username;
    if ($my_username != True) {
        $_SESSION['url'] = $_SERVER['REQUEST_URI'];
        return die('<script type="text/javascript">setTimeout(function(){ location.href = "' . BASE_URL('client/login') . '" }, 0);</script>');
    }
}
function CheckVeri()
{
    global $verifx;
    if ($verifx != 1) {
        return die('<script type="text/javascript">setTimeout(function(){ location.href = "' . BASE_URL('') . '" }, 0);</script>');
    }
}
function CheckAdmin()
{
    global $my_level;
    if ($my_level != 'admin') {
        return die('<script type="text/javascript">setTimeout(function(){ location.href = "' . BASE_URL('') . '" }, 0);</script>');
    }
}
