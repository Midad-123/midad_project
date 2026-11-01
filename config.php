
<?php

$host = '100.120.228.107';
$dbname = 'midad';
$username = 'midad_remote';
$password = 'Midad@2026_Secure';
$port = 3306;

try {
    $pdo = new PDO(
        "mysql:host=$host;port=$port;dbname=$dbname;charset=utf8mb4",
        $username,
        $password,
        [
            PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
            PDO::ATTR_DEFAULT_FETCH_MODE => PDO::FETCH_ASSOC,
            PDO::ATTR_EMULATE_PREPARES => false
        ]
    );

} catch (PDOException $e) {
    error_log($e->getMessage());
    exit('تعذر الاتصال بقاعدة البيانات. تحققي من إعدادات الاتصال.');
}
