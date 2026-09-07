create table if not exists activity_logs(
    activity_log_id int auto_increment primary key,
    user_id varchar(50),
    user_email varchar(50),
    activity_log_action varchar(50) not null,
    activity_log_status enum('success', 'failed') default 'success',


    -- client parameters
    activity_log_ip_address varchar(45),
    activity_log_user_agent varchar(255),

    -- timestamp
    activity_log_created_at timestamp default current_timestamp

);

-- September 7, 2026

create table if not exists users(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    user_email VARCHAR(50) UNIQUE NOT NULL,
    user_username VARCHAR(20) UNIQUE NOT NULL,
    user_password VARCHAR(255) NOT NULL,
    user_role ENUM('admin', 'manager','user') NOT NULL DEFAULT 'user',
    user_created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
    user_updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP

) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4;



INSERT INTO users
(
    user_email,
    user_username,
    user_password,
    user_role
)
VALUES
(
    'admin@example.com',
    'admin',
    '$2y$10$HNfhClczEWBxcFuJwP53iu2Y75Tba7IEtmX8vX.1tp0dZ5EVt9CbO',
    'admin'
),
(
    'manager@example.com',
    'manager',
    '$2y$10$HNfhClczEWBxcFuJwP53iu2Y75Tba7IEtmX8vX.1tp0dZ5EVt9CbO',
    'manager'
),
(
    'user@example.com',
    'user',
    '$2y$10$HNfhClczEWBxcFuJwP53iu2Y75Tba7IEtmX8vX.1tp0dZ5EVt9CbO',
    'user'
);