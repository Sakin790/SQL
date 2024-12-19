CREATE TABLE User (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(100),
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE UserProfile (
    id INT PRIMARY KEY AUTO_INCREMENT,
    user_id INT UNIQUE NOT NULL,
    address VARCHAR(255),
    phone_number VARCHAR(15),
    FOREIGN KEY (user_id) REFERENCES User(id)
);


User table a kono effect porbe na, 
UserProfile table  a (user_id ) name a notun column  hobe 
and (user_id ) er value hobe (User) table er (id)