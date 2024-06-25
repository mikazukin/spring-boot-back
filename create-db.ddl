-- データベースの作成
CREATE DATABASE demo;

-- ユーザーの作成と権限の付与
CREATE USER 'app-user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON demo.* TO 'app-user'@'localhost';

-- 権限の反映
FLUSH PRIVILEGES;
