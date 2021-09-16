-- -----------------------------------------------------
-- Table `hibernate_sequence`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS hibernate_sequence
(
    `next_val` BIGINT NOT NULL
)
    AUTO_INCREMENT = 1;

insert into hibernate_sequence (next_val)
values (1);

-- -----------------------------------------------------
-- Table `user`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS usr
(
    `id`         BIGINT       NOT NULL,
    `firstname`  VARCHAR(255),
    `secondname` VARCHAR(255),
    `password`   VARCHAR(255) NOT NULL,
    `telephone`  VARCHAR(255),
    `email`      VARCHAR(255),
    `active`     BOOLEAN      NOT NULL,
    PRIMARY KEY (`id`)
);

-- -----------------------------------------------------
-- Table `user_role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS user_role
(
    `user_id` BIGINT NOT NULL,
    `roles`   VARCHAR(255),
    INDEX user_role_user_fk (`user_id` ASC),
    CONSTRAINT user_role_user_fk
        FOREIGN KEY (`user_id`)
            REFERENCES usr (`id`)
);

-- -----------------------------------------------------
-- Table `item`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS item
(
    `id`           BIGINT NOT NULL,
    `code`         VARCHAR(20),
    `name`         VARCHAR(255),
    `brand`        VARCHAR(255),
    `category`     VARCHAR(255),
    `sub_category` VARCHAR(255),
    `price`        FLOAT,
    `image`        VARCHAR(255),
    `description`  VARCHAR(255),
    `model`        VARCHAR(255),
    `measure`      VARCHAR(255),
    `square`       FLOAT,
    `capacity`     FLOAT,
    `application`  VARCHAR(255),
    `keyWord`      VARCHAR(255),
    `inStock`      BOOLEAN,
    PRIMARY KEY (`id`)
);

-- -----------------------------------------------------
-- Table `category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS category
(
    `id`          BIGINT NOT NULL,
    `name`        VARCHAR(255),
    `description` VARCHAR(255),
    `keyword`     VARCHAR(255),
    PRIMARY KEY (`id`)
);

-- -----------------------------------------------------
-- Table `sub_category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS sub_category
(
    `id`          BIGINT NOT NULL,
    `name`        VARCHAR(255),
    `description` VARCHAR(255),
    `keyword`     VARCHAR(255),
    PRIMARY KEY (`id`)
);

-- -----------------------------------------------------
-- Table `Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Orders
(
    ID                  varchar(50)      not null,
    Amount              double precision not null,
    Customer_Address    varchar(255)     not null,
    Customer_Email      varchar(128)     not null,
    Customer_Firstname  varchar(255)     not null,
    Customer_Secondname varchar(255)     not null,
    Customer_Phone      varchar(128)     not null,
    Order_Date          datetime         not null,
    Order_Num           integer          not null,
    primary key (ID)
);

-- -----------------------------------------------------
-- Table `Order_Details`
-- -----------------------------------------------------
create table Order_Details
(
    ID         varchar(50)      not null,
    Amount     double precision not null,
    Price      double precision not null,
    Quanity    integer          not null,
    ORDER_ID   varchar(50)      not null,
    PRODUCT_ID BIGINT           not null,
    primary key (ID)
);

alter table Orders
    add constraint UK_sxhpvsj665kmi4f7jdu9d2791 unique (Order_Num);

alter table Order_Details
    add constraint ORDER_DETAIL_ORD_FK
        foreign key (ORDER_ID)
            references Orders (ID);

alter table Order_Details
    add constraint ORDER_DETAIL_PROD_FK
        foreign key (PRODUCT_ID)
            references item (id);

insert into usr (id, email, password, active)
values (12, '45678913579@mail.ru', '$2a$08$pKe3uV5kSb358BIotDLRhOOVSqNKvNVbiqpS/CSYyJjVc0MvF8xyG', true);

insert into user_role (user_id, roles)
values (12, 'USER'),
       (12, 'ROLE_MANAGER'),
       (12, 'EMPLOYEE'),
       (12, 'ADMIN');

insert into category(id, name, description, keyword)
values (9, 'uteplitel', 'Утеплитель', '');

insert into sub_category(id, name, description, keyword)
values (10, 'uteplitel-dlya-krovli', 'Утеплитель для кровли', '');

insert into sub_category(id, name, description, keyword)
values (11, 'uteplitel-dlya-pola', 'Утеплитель для пола', '');

insert into item(id, code, name, brand, price, image, category, sub_category)
values (1, 'S001', 'test', 'isovol', 228, '/static/img/items/Izobel-228x228.jpg', 'uteplitel', 'uteplitel-dlya-krovli');

insert into item(id, code, name, brand, price, image, category, sub_category)
values (2, 'S002', 'test', 'isovol', 228, '/static/img/items/Izobel-228x228.jpg', 'uteplitel', 'uteplitel-dlya-krovli');

insert into item(id, code, name, brand, price, image, category, sub_category)
values (3, 'S003', 'test', 'isovol', 228, '/static/img/items/Izobel-228x228.jpg', 'uteplitel', 'uteplitel-dlya-krovli');

insert into item(id, code, name, brand, price, image, category, sub_category)
values (4, 'S004', 'test', 'isovol', 228, '/static/img/items/Izobel-228x228.jpg', 'uteplitel', 'uteplitel-dlya-krovli');

insert into item(id, code, name, brand, price, image, category, sub_category)
values (5, 'S005', 'test', 'ursa', 228, '/static/img/items/ursaterra34-228x228.jpg', 'uteplitel',
        'uteplitel-dlya-pola');

insert into item(id, code, name, brand, price, image, category, sub_category)
values (6, 'S006', 'test', 'ursa', 228, '/static/img/items/ursaterra34-228x228.jpg', 'uteplitel',
        'uteplitel-dlya-pola');

insert into item(id, code, name, brand, price, image, category, sub_category)
values (7, 'S007', 'test', 'ursa', 228, '/static/img/items/ursaterra34-228x228.jpg', 'uteplitel',
        'uteplitel-dlya-pola');

insert into item(id, code, name, brand, price, image, category, sub_category)
values (8, 'S008', 'test', 'ursa', 228, '/static/img/items/ursaterra34-228x228.jpg', 'uteplitel',
        'uteplitel-dlya-pola');
