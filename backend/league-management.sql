CREATE TABLE user(
    uuid int AUTO_INCREMENT NOT NULL UNIQUE,
    user_name VARCHAR(32) NOT NULL,
    user_lastname VARCHAR(32) NOT NULL,
    user_password VARCHAR(32) NOT NULL,
    user_email VARCHAR(32) NOT NULL,
    PRIMARY KEY(uuid)
)ENGINE=InnoDB;

CREATE TABLE user_role(
    role_id int NOT NULL AUTO_INCREMENT,
    role_name VARCHAR(32) NOT NULL,
    PRIMARY KEY(role_id)
)ENGINE=InnoDB;


CREATE TABLE user_has_role(
    user_uuid int NOT NULL UNIQUE,
    role_id int NOT NULL,
    FOREIGN KEY (user_uuid) REFERENCES user(uuid),
    FOREIGN KEY (role_id) REFERENCES user_role(role_id),
    PRIMARY KEY(user_uuid)
)ENGINE=InnoDB;
