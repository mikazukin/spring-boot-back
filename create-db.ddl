-- データベースの作成
CREATE DATABASE demo;

-- ユーザーの作成と権限の付与
CREATE USER 'app-user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON demo.* TO 'app-user'@'localhost';

-- 権限の反映
FLUSH PRIVILEGES;

-- データベースの選択
USE demo;

-- APP_USERSテーブルの作成
CREATE TABLE APP_USERS (
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- ダミーデータの挿入
INSERT INTO APP_USERS (username, email, password)
VALUES
    ('user1', 'user1@example.com', 'password'),
    ('user2', 'user2@example.com', 'password'),
    ('user3', 'user3@example.com', 'password');