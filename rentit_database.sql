create table customer(

	customer_id int not null auto_increment,
    fname varchar(100) not null,
    lname varchar(100) not null,
    email varchar(100) not null,
    nic char(10) not null,
    address varchar(100) not null,
    contactNo char(10) not null,
    username varchar(100) not null,
    password varchar(8) not null,
    securityQ varchar(100) not null,


primary key (customer_id)

);

create table vehicle(
vehicle_id int not null auto_increment,
vehicleNo varchar(10) not null,
vehicleModel varchar(100)not null,
vehicleCapacity int(10)not null,
vehicleDriver varchar(100) NOT NULL ,



primary key(vehicle_id)
);

create table reservation(
reservation_id int not null auto_increment,
service varchar(225),
location varchar(225) not null,
pickUpDate date not null,
pickUpTime time not null,
returnDate date ,
returnTime time ,
vehicle_id int, 
primary key(reservation_id),
CONSTRAINT FK_vehicle_id foreign key(vehicle_id) references vehicle(vehicle_id)
);

create table payment(
payment_id int auto_increment not null,
bankname varchar(225) not null,
cardname varchar(225) not null,
cardnumber varchar(19) not null,
price varchar(50) not null,
ts timestamp default current_timestamp on update current_timestamp,
customer_id int not null,
reservation_id int not null ,
primary key(payment_id),
CONSTRAINT FK_customer_id FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
CONSTRAINT FK_reservation_id foreign key(reservation_id) references reservation(reservation_id)
);

create table admin(
admin_id int auto_increment not null,
admin_username varchar(45) not null,
admin_password varchar(45)  not null,

primary key (admin_id)
);