CREATE DATABASE hotel_db;
USE hotel_db;

CREATE TABLE guest (
    guest_id   VARCHAR(5),
    name       VARCHAR(100),
    phone      VARCHAR(15),
    city       VARCHAR(50),
    room_type  VARCHAR(20)
);


CREATE TABLE booking (
    booking_id  VARCHAR(5),
    guest_id    VARCHAR(5),
    check_in    DATE,
    check_out   DATE,
    nights      INT,
    amount      INT,
    status      VARCHAR(20)
);


INSERT INTO guest ( guest_id ,name ,phone , city ,room_type )
 VALUES 
 ('G001', 'Rahul Sharma',  '9812345678', 'Delhi',     'Deluxe'),
 ('G002', 'Priya Singh',   '9823456789', 'Mumbai',    'Suite'),
 ('G003', 'Amit Verma',    '9834567890', 'Jaipur',    'Standard'),
 ('G004', 'Sneha Gupta',   '9845678901', 'Goa',       'Deluxe'),
 ('G005', 'Vikram Joshi',  '9856789012', 'Bangalore', 'Standard'),
 ('G006', 'Neha Patel',    '9867890123', 'Chennai',   'Suite'),
 ('G007', 'Arjun Mehta',   '9878901234', 'Udaipur',   'Deluxe'),
 ('G008', 'Divya Rao',     '9889012345', 'Delhi',     'Standard'),
 ('G009', 'Karan Kapoor',  '9890123456', 'Mumbai',    'Suite'),
 ('G010', 'Pooja Nair',    '9901234567', 'Goa',       'Standard');


INSERT INTO booking(booking_id  ,guest_id ,check_in ,check_out,nights ,amount  ,status)    
VALUES 
('B001', 'G001', '2024-01-05', '2024-01-08', 3, 10500, 'Confirmed'),
('B002', 'G002', '2024-01-10', '2024-01-13', 3, 21000, 'Checked-Out'),
('B003', 'G003', '2024-02-01', '2024-02-03', 2,  4000, 'Confirmed'),
('B004', 'G004', '2024-02-14', '2024-02-16', 2,  7000, 'Cancelled'),
('B005', 'G005', '2024-03-03', '2024-03-05', 2,  4000, 'Checked-Out'),
('B006', 'G006', '2024-03-20', '2024-03-23', 3, 21000, 'Confirmed'),
('B007', 'G007', '2024-04-07', '2024-04-10', 3, 10500, 'Checked-Out'),
('B008', 'G008', '2024-04-15', '2024-04-17', 2,  4000, 'Confirmed'), 
('B009', 'G009', '2024-05-01', '2024-05-04', 3, 21000, 'Cancelled'),
('B010', 'G010', '2024-05-18', '2024-05-20', 2,  4000, 'Checked-Out');

SELECT * FROM guest;
SELECT * FROM booking;


SELECT name, phone FROM guest WHERE city = 'Delhi';


SELECT booking_id, guest_id, check_in, amount FROM booking WHERE status = 'Confirmed';


SELECT booking_id, guest_id, amount, status FROM booking ORDER BY amount DESC;