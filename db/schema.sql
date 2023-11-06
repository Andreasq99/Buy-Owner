DROP DATABASE IF EXISTS tinlizzie_db;

-- CREATE DATABASE
CREATE DATABASE tinlizzie_db;

USE tinlizzie_db;

-- -- User table
-- CREATE TABLE IF NOT EXISTS User (
--   id INT AUTO_INCREMENT PRIMARY KEY,
--   username VARCHAR(255) NOT NULL UNIQUE,
--   email VARCHAR(255) NOT NULL UNIQUE,
--   password VARCHAR(255) NOT NULL,
--   first_name VARCHAR(255) NOT NULL,
--   last_name VARCHAR(255) NOT NULL,
--   street VARCHAR(255),
--   city VARCHAR(255),
--   state VARCHAR(255),
--   zip VARCHAR(10),
--   phone_number VARCHAR(65),
--   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
-- );

-- -- Vehicle table
-- CREATE TABLE IF NOT EXISTS Vehicle (
--     id INT AUTO_INCREMENT PRIMARY KEY,
--     make VARCHAR(255) NOT NULL,
--     model VARCHAR(255) NOT NULL,
--     year INT NOT NULL,
--     price DECIMAL(10, 2) NOT NULL,
--     mileage INT NOT NULL,
--     color VARCHAR(255),
--     `condition` ENUM('New', 'Used', 'Certified Pre-Owned', 'Does Not Run', 'Parts Only') NOT NULL,
--     vin VARCHAR(255) NOT NULL,
--     rating INT,
--     description TEXT,
--     type ENUM('car', 'truck', 'SUV', 'Convertible', 'Sedan', 'Sportscar') NOT NULL,
--     updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--     user_id INT,
--     FOREIGN KEY (user_id) REFERENCES User(id)
-- );

-- -- VehicleImages table to store vehicle images
-- CREATE TABLE IF NOT EXISTS VehicleImage (
--   id INT AUTO_INCREMENT PRIMARY KEY,
--   vehicle_id INT NOT NULL,
--   image_path VARCHAR(255) NOT NULL,
--   description TEXT,
--   FOREIGN KEY (vehicle_id) REFERENCES Vehicle(id) ON DELETE CASCADE,
--   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--   updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
  
-- );

-- -- Like table
-- CREATE TABLE IF NOT EXISTS `Like` (
--   id INT AUTO_INCREMENT PRIMARY KEY,
--   userId INT NOT NULL,
--   vehicleId INT NOT NULL,
--   createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--   updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   FOREIGN KEY (userId) REFERENCES User(id) ON DELETE CASCADE,
--   FOREIGN KEY (vehicleId) REFERENCES Vehicle(id) ON DELETE CASCADE
-- );

-- -- Love table
-- CREATE TABLE IF NOT EXISTS Love (
--   id INT AUTO_INCREMENT PRIMARY KEY,
--   userId INT NOT NULL,
--   vehicleId INT NOT NULL,
--   createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--   updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   FOREIGN KEY (userId) REFERENCES User(id) ON DELETE CASCADE,
--   FOREIGN KEY (vehicleId) REFERENCES Vehicle(id) ON DELETE CASCADE
-- );

-- -- View table
-- CREATE TABLE IF NOT EXISTS View (
--   id INT AUTO_INCREMENT PRIMARY KEY,
--   vehicleId INT NOT NULL,
--   createdAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
--   updatedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   FOREIGN KEY (vehicleId) REFERENCES Vehicle(id) ON DELETE CASCADE
-- );


