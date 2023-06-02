-- phpMyAdmin SQL Dump
-- version 5.0.4deb2~bpo10+1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 02, 2023 at 11:08 PM
-- Server version: 10.3.31-MariaDB-0+deb10u1
-- PHP Version: 7.3.31-1~deb10u3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u22747886_WINE`
--

-- --------------------------------------------------------

--
-- Table structure for table `DessertWine`
--

CREATE TABLE `DessertWine` (
  `DessertWineID` int(11) NOT NULL,
  `WineID` int(11) DEFAULT NULL,
  `Sweetness` varchar(255) DEFAULT NULL,
  `IntenseFlavors` varchar(255) DEFAULT NULL,
  `SyrupyTexture` varchar(255) DEFAULT NULL,
  `HighSugarContent` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `DessertWine`
--

INSERT INTO `DessertWine` (`DessertWineID`, `WineID`, `Sweetness`, `IntenseFlavors`, `SyrupyTexture`, `HighSugarContent`) VALUES
(1, 84, 'A luscious and honeyed Sauternes with flavors of apricot, honey, and botrytis.', 'Sémillon, Sauvignon Blanc', '70', '13.5'),
(2, 85, 'A rich and fortified Port with intense flavors of dark fruits, chocolate, and spices.', 'Touriga Nacional, Touriga Franca, Tinta Roriz', '80', '20'),
(3, 86, 'A complex and sweet Tokaji Aszú with flavors of dried fruits, caramel, and botrytis.', 'Furmint, Hárslevelű', '90.99', '11'),
(4, 87, 'A luxurious and concentrated Icewine with intense sweetness and flavors of ripe fruits and honey.', 'Vidal Blanc, Riesling', '90', '9.5'),
(5, 88, 'A light and effervescent Moscato d\'Asti with floral aromas and sweet peach flavors.', 'Moscato Bianco', '90.99', '5.5'),
(6, 89, 'A rich and syrupy Pedro Ximénez with intense flavors of raisins, toffee, and caramel.', 'Pedro Ximénez', '80', '15'),
(7, 90, 'A fortified Banyuls with notes of dark fruits, chocolate, and spices, and a touch of Mediterranean herbs.', 'Grenache', '80', '16'),
(8, 91, 'A sweet and aromatic Late Harvest Riesling with flavors of ripe peaches, honey, and petrol.', 'Riesling', '80', '9'),
(9, 92, 'An aromatic and floral Muscat de Beaumes-de-Venise with flavors of orange blossom, apricot, and honey.', 'Muscat Blanc à Petits Grains', '80', '15.5'),
(10, 93, 'A nutty and oxidized Vin Santo with flavors of dried fruits, toasted almonds, and honey.', 'Trebbiano, Malvasia', '80', '15');

-- --------------------------------------------------------

--
-- Table structure for table `RedWine`
--

CREATE TABLE `RedWine` (
  `RedWineID` int(11) NOT NULL,
  `WineID` int(11) DEFAULT NULL,
  `FullBodied` varchar(255) DEFAULT NULL,
  `RichTannins` varchar(255) DEFAULT NULL,
  `DarkFruitFlavors` varchar(255) DEFAULT NULL,
  `EarthySpicyUndertones` varchar(255) DEFAULT NULL,
  `AgingPotential` varchar(255) DEFAULT NULL,
  `ServeAtRoomTemp` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `RedWine`
--

INSERT INTO `RedWine` (`RedWineID`, `WineID`, `FullBodied`, `RichTannins`, `DarkFruitFlavors`, `EarthySpicyUndertones`, `AgingPotential`, `ServeAtRoomTemp`) VALUES
(1, 62, 'Medium to Full-Bodied', 'Velvety and Supple', 'Black Cherry and Plum', 'Subtle Earthy and Spicy Notes', '5-7 years', 'Yes'),
(2, 63, 'Full-Bodied', 'Bold and Grippy', 'Blackberry and Blueberry', 'Smoky and Peppery Undertones', '8-10 years', 'Yes'),
(3, 60, 'Full-Bodied', 'Rich and Robust', 'Blackcurrant and Cassis', 'Cedar and Tobacco Undertones', '10-15 years', 'Yes'),
(4, 65, 'Medium to Full-Bodied', 'Smooth and Silky', 'Blackberry and Dark Chocolate', 'Hints of Mocha and Spice', '3-5 years', 'Yes'),
(5, 61, 'Medium-Bodied', 'Soft and Elegant', 'Plum and Red Berries', 'Cocoa and Vanilla Undertones', '5-8 years', 'Yes'),
(6, 66, 'Full-Bodied', 'Spicy and Bold', 'Blackberry and Black Pepper', 'Rich and Intense Flavors', '5-7 years', 'Yes'),
(7, 64, 'Full-Bodied', 'Zesty and Spicy', 'Blackberry and Raspberry', 'Black Pepper and Oak Undertones', '7-9 years', 'Yes'),
(8, 67, 'Medium to Full-Bodied', 'Structured and Balanced', 'Cherry and Red Currant', 'Earthy and Herbal Notes', '7-10 years', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `Shops`
--

CREATE TABLE `Shops` (
  `ShopID` int(11) NOT NULL,
  `ShopName` varchar(255) DEFAULT NULL,
  `StreetNo` varchar(50) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Province` varchar(255) DEFAULT NULL,
  `PostalCode` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Shops`
--

INSERT INTO `Shops` (`ShopID`, `ShopName`, `StreetNo`, `StreetName`, `City`, `Province`, `PostalCode`) VALUES
(1, 'The Grapevine', '10', 'Vineyard Avenue', 'Stellenbosch', 'Western Cape', '7600'),
(2, 'Food Fusion', '5', 'Market Street', 'Stellenbosch', 'Western Cape', '7600'),
(3, 'Fresh Delights', '20', 'Beach Road', 'Somerset West', 'Western Cape', '7130'),
(4, 'Green Grocers', '15', 'Gardens Street', 'Somerset West', 'Western Cape', '7130'),
(5, 'Taste of Durbanville', '30', 'Main Road', 'Durbanville', 'Western Cape', '7550'),
(6, 'Gourmet Market', '25', 'Market Street', 'Durbanville', 'Western Cape', '7550'),
(7, 'The Wine Cellar', '40', 'Wine Street', 'Franschhoek', 'Western Cape', '7690'),
(8, 'Farmers Market', '35', 'Vineyard Road', 'Franschhoek', 'Western Cape', '7690'),
(9, 'Urban Harvest', '50', 'Long Street', 'Cape Town', 'Western Cape', '8000'),
(10, 'Fresh Mart', '45', 'Main Road', 'Cape Town', 'Western Cape', '8000'),
(11, 'The Vineyard Store', '60', 'Vineyard Street', 'Paarl', 'Western Cape', '7646'),
(12, 'Farmers Choice', '55', 'Market Road', 'Paarl', 'Western Cape', '7646'),
(13, 'Beachside Groceries', '70', 'Beach Road', 'Noordhoek', 'Western Cape', '7979'),
(14, 'Organic Oasis', '65', 'Main Street', 'Noordhoek', 'Western Cape', '7979'),
(15, 'Vineyard Delights', '80', 'Wine Road', 'Constantia', 'Western Cape', '7848'),
(16, 'Green Gourmet', '75', 'Gardens Avenue', 'Constantia', 'Western Cape', '7848'),
(17, 'Food Haven', '90', 'Main Street', 'Panorama', 'Western Cape', '7500'),
(18, 'The Local Market', '85', 'Market Road', 'Panorama', 'Western Cape', '7500');

-- --------------------------------------------------------

--
-- Table structure for table `SparklingWine`
--

CREATE TABLE `SparklingWine` (
  `SparklingWineID` int(11) NOT NULL,
  `WineID` int(11) DEFAULT NULL,
  `Effervescent` varchar(255) DEFAULT NULL,
  `Sweetness` varchar(255) DEFAULT NULL,
  `LightToMediumBodied` varchar(255) DEFAULT NULL,
  `Aromas` varchar(255) DEFAULT NULL,
  `ServeChilled` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SparklingWine`
--

INSERT INTO `SparklingWine` (`SparklingWineID`, `WineID`, `Effervescent`, `Sweetness`, `LightToMediumBodied`, `Aromas`, `ServeChilled`) VALUES
(68, 68, 'Fine and persistent bubbles', 'Dry', 'Light-bodied', 'Toasty aromas with hints of citrus', 'Serve chilled at 6-8°C'),
(69, 69, 'Light and effervescent bubbles', 'Semi-sweet', 'Light-bodied', 'Fruity aromas of apple and peach', 'Serve chilled at 6-8°C'),
(70, 70, 'Crisp and lively bubbles', 'Dry', 'Light-bodied', 'Citrusy aromas with a hint of green apple', 'Serve chilled at 6-8°C'),
(71, 71, 'Elegant and creamy bubbles', 'Dry', 'Medium-bodied', 'Delicate aromas of white flowers and brioche', 'Serve chilled at 8-10°C'),
(72, 72, 'Sweet and aromatic bubbles', 'Sweet', 'Light-bodied', 'Aromas of ripe peaches and floral undertones', 'Serve chilled at 6-8°C'),
(73, 73, 'Vibrant and effervescent bubbles', 'Dry', 'Light-bodied', 'Citrus and floral aromas with mineral notes', 'Serve chilled at 6-8°C'),
(74, 74, 'Fruity and semi-sparkling bubbles', 'Semi-sweet', 'Light-bodied', 'Red berry aromas with a hint of sweetness', 'Serve chilled at 6-8°C'),
(75, 75, 'Elegant and creamy bubbles', 'Dry', 'Medium-bodied', 'Toasty aromas with hints of vanilla and brioche', 'Serve chilled at 8-10°C'),
(76, 76, 'Refined and complex bubbles', 'Dry', 'Medium-bodied', 'Citrusy aromas with notes of hazelnut', 'Serve chilled at 8-10°C'),
(77, 77, 'Fine and delicate bubbles', 'Dry', 'Light-bodied', 'Subtle toasty aromas with a hint of brioche', 'Serve chilled at 6-8°C'),
(78, 78, 'Creamy and aromatic bubbles', 'Semi-sweet', 'Medium-bodied', 'Green apple aromas with toasted almond undertones', 'Serve chilled at 8-10°C'),
(79, 79, 'Fine and persistent bubbles', 'Dry', 'Light-bodied', 'Delicate toasty aromas with a hint of bread crust', 'Serve chilled at 6-8°C'),
(80, 80, 'Dry and refreshing bubbles', 'Dry', 'Light-bodied', 'Lively aromas of green apple and lemon', 'Serve chilled at 6-8°C'),
(81, 81, 'Vibrant and fruity bubbles', 'Dry', 'Light-bodied', 'Citrus and floral aromas with a hint of white flowers', 'Serve chilled at 6-8°C'),
(82, 82, 'Refreshing and fruity bubbles', 'Dry', 'Light-bodied', 'Strawberry and raspberry aromas with a touch of sweetness', 'Serve chilled at 6-8°C'),
(83, 83, 'Lively and expressive bubbles', 'Dry', 'Light-bodied', 'Vibrant pink color with flavors of red berries and citrus', 'Serve chilled at 6-8°C');

-- --------------------------------------------------------

--
-- Table structure for table `Tourists`
--

CREATE TABLE `Tourists` (
  `TouristID` int(11) NOT NULL,
  `TouristName` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(20) DEFAULT NULL,
  `EmailAddress` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Nationality` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Tourists`
--

INSERT INTO `Tourists` (`TouristID`, `TouristName`, `PhoneNumber`, `EmailAddress`, `DateOfBirth`, `Nationality`, `City`) VALUES
(1, 'John Doe', '+19876543210', 'johndoe@gmail.com', '1990-01-01', 'USA', 'Stellenbosch'),
(2, 'Jane Smith', '+447912345678', 'janesmith@yahoo.com', '1995-05-15', 'UK', 'Stellenbosch'),
(3, 'David Johnson', '+14165551234', 'davidjohnson@hotmail.com', '1988-12-10', 'Canada', 'Stellenbosch'),
(4, 'Michael Brown', '+61412345678', 'michaelbrown@gmail.com', '1992-07-20', 'Australia', 'Somerset West'),
(5, 'Sarah Wilson', '+491601234567', 'sarahwilson@gmx.net', '1998-03-05', 'Germany', 'Somerset West'),
(6, 'Emily Davis', '+33123456789', 'emilydavis@orange.fr', '1991-09-18', 'France', 'Somerset West'),
(7, 'Christopher Taylor', '+14165551234', 'christophertaylor@hotmail.com', '1985-11-30', 'USA', 'Durbanville'),
(8, 'Olivia Martin', '+14165551234', 'oliviamartin@hotmail.com', '1994-02-25', 'Canada', 'Durbanville'),
(9, 'Emma Anderson', '+447912345678', 'emmaanderson@yahoo.com', '1987-08-12', 'UK', 'Durbanville'),
(10, 'Daniel Martinez', '+34912345678', 'danielmartinez@gmail.com', '1993-06-10', 'Spain', 'Franschhoek'),
(11, 'Sophia Thompson', '+14165551234', 'sophiathompson@hotmail.com', '1999-04-02', 'USA', 'Franschhoek'),
(12, 'Liam Garcia', '+541123456789', 'liamgarcia@outlook.com', '1989-10-15', 'Mexico', 'Franschhoek'),
(13, 'Isabella Rodriguez', '+14165551234', 'isabellarodriguez@hotmail.com', '1997-12-08', 'Argentina', 'Cape Town'),
(14, 'Mason Lee', '+61412345678', 'masonlee@gmail.com', '1996-01-20', 'Australia', 'Cape Town'),
(15, 'Ava Hernandez', '+14165551234', 'avahernandez@hotmail.com', '1992-09-03', 'USA', 'Cape Town'),
(16, 'William Gonzalez', '+34912345678', 'williamgonzalez@gmail.com', '1991-02-12', 'Spain', 'Paarl'),
(17, 'Sophia Adams', '+14165551234', 'sophiaadams@hotmail.com', '1988-07-25', 'Canada', 'Paarl'),
(18, 'Noah Campbell', '+447912345678', 'noahcampbell@yahoo.com', '1995-04-18', 'UK', 'Paarl'),
(19, 'Oliver Clark', '+61412345678', 'oliverclark@gmail.com', '1993-11-30', 'Australia', 'Noordhoek'),
(20, 'Emily Hill', '+14165551234', 'emilyhill@hotmail.com', '1987-03-15', 'USA', 'Noordhoek'),
(21, 'Amelia Turner', '+441234567890', 'ameliaturner@btinternet.com', '1999-05-05', 'UK', 'Noordhoek'),
(22, 'James White', '+14165551234', 'jameswhite@hotmail.com', '1994-08-22', 'USA', 'Constantia'),
(23, 'Charlotte Young', '+61412345678', 'charlotteyoung@gmail.com', '1990-06-12', 'Australia', 'Constantia'),
(24, 'Lucas Rodriguez', '+541123456789', 'lucasrodriguez@outlook.com', '1989-01-25', 'Mexico', 'Constantia'),
(25, 'Harper Baker', '+14165551234', 'harperbaker@hotmail.com', '1996-09-18', 'USA', 'Panorama'),
(26, 'Ella Walker', '+441234567890', 'ellawalker@btinternet.com', '1998-02-10', 'UK', 'Panorama'),
(27, 'Jacob Lewis', '+14165551234', 'jacoblewis@hotmail.com', '1992-11-28', 'USA', 'Panorama');

-- --------------------------------------------------------

--
-- Table structure for table `WhiteWine`
--

CREATE TABLE `WhiteWine` (
  `WhiteWineID` int(11) NOT NULL,
  `WineID` int(11) DEFAULT NULL,
  `LightBodied` varchar(255) DEFAULT NULL,
  `CrispAcidity` varchar(255) DEFAULT NULL,
  `FruitFlavors` varchar(255) DEFAULT NULL,
  `FloralMineralNotes` varchar(255) DEFAULT NULL,
  `ServeChilled` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `WhiteWine`
--

INSERT INTO `WhiteWine` (`WhiteWineID`, `WineID`, `LightBodied`, `CrispAcidity`, `FruitFlavors`, `FloralMineralNotes`, `ServeChilled`) VALUES
(1, 1, 'Light and refreshing', 'Crisp and lively', 'Citrus, green apple', 'Delicate floral and mineral notes', 'Yes'),
(2, 2, 'Medium-bodied', 'Balanced acidity', 'Stone fruit, melon', 'Subtle hints of flowers and minerals', 'Yes'),
(3, 3, 'Light and zesty', 'Bright and tangy', 'Citrus, tropical fruit', 'Aromatic floral and mineral nuances', 'Yes'),
(4, 4, 'Crisp and clean', 'Vibrant and refreshing', 'Apple, pear', 'Subtle floral and mineral undertones', 'Yes'),
(5, 5, 'Light and elegant', 'Lively and zingy', 'Citrus, white peach', 'Delicate floral and mineral accents', 'Yes'),
(6, 6, 'Medium-bodied', 'Balanced and bright', 'Citrus, pineapple', 'Hints of flowers and mineral complexity', 'Yes'),
(7, 7, 'Crisp and vibrant', 'Refreshing and lively', 'Green apple, pear', 'Subtle floral and mineral undertones', 'Yes'),
(8, 8, 'Light and zesty', 'Lively and tangy', 'Citrus, tropical fruit', 'Aromatic floral and mineral nuances', 'Yes'),
(9, 9, 'Crisp and clean', 'Bright and refreshing', 'Apple, melon', 'Subtle floral and mineral notes', 'Yes'),
(10, 10, 'Light and refreshing', 'Crisp and lively', 'Citrus, peach', 'Delicate floral and mineral nuances', 'Yes'),
(11, 11, 'Medium-bodied', 'Balanced acidity', 'Stone fruit, pineapple', 'Subtle hints of flowers and minerals', 'Yes'),
(12, 12, 'Light and zesty', 'Bright and tangy', 'Citrus, tropical fruit', 'Aromatic floral and mineral complexity', 'Yes'),
(13, 13, 'Crisp and clean', 'Vibrant and refreshing', 'Apple, pear', 'Subtle floral and mineral undertones', 'Yes'),
(14, 14, 'Light and elegant', 'Lively and zingy', 'Citrus, white peach', 'Delicate floral and mineral accents', 'Yes'),
(15, 15, 'Medium-bodied', 'Balanced and bright', 'Citrus, pineapple', 'Hints of flowers and mineral complexity', 'Yes'),
(16, 16, 'Crisp and vibrant', 'Refreshing and lively', 'Green apple, pear', 'Subtle floral and mineral undertones', 'Yes'),
(17, 17, 'Light and zesty', 'Lively and tangy', 'Citrus, tropical fruit', 'Aromatic floral and mineral nuances', 'Yes'),
(18, 18, 'Crisp and clean', 'Bright and refreshing', 'Apple, melon', 'Subtle floral and mineral notes', 'Yes'),
(19, 19, 'Light and refreshing', 'Crisp and lively', 'Citrus, peach', 'Delicate floral and mineral nuances', 'Yes'),
(20, 20, 'Medium-bodied', 'Balanced acidity', 'Stone fruit, pineapple', 'Subtle hints of flowers and minerals', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `WineAvailability`
--

CREATE TABLE `WineAvailability` (
  `AvailabilityID` int(11) NOT NULL,
  `WineID` int(11) DEFAULT NULL,
  `WineryID` int(11) DEFAULT NULL,
  `ShopID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `WineAvailability`
--

INSERT INTO `WineAvailability` (`AvailabilityID`, `WineID`, `WineryID`, `ShopID`) VALUES
(35, 1, 19, 1),
(36, 2, 29, 1),
(37, 3, 17, 1),
(38, 4, 18, 1),
(39, 5, 18, 1),
(40, 6, 16, 1),
(41, 7, 25, 1),
(42, 8, 26, 1),
(43, 9, 14, 1),
(44, 10, 29, 1),
(45, 11, 17, 1),
(46, 12, 25, 1),
(47, 13, 28, 1),
(48, 14, 27, 1),
(49, 15, 28, 1),
(50, 16, 26, 1),
(51, 17, 16, 1),
(52, 18, 12, 1),
(53, 19, 29, 1),
(54, 20, 18, 1),
(55, 60, 28, 1),
(56, 61, 13, 1),
(57, 62, 22, 1),
(58, 63, 19, 1),
(59, 64, 19, 1),
(60, 1, 25, 2),
(61, 2, 21, 2),
(62, 3, 14, 2),
(63, 4, 14, 2),
(64, 5, 17, 2),
(65, 6, 20, 2),
(66, 7, 24, 2),
(67, 8, 20, 2),
(68, 9, 28, 2),
(69, 10, 23, 2),
(70, 11, 27, 2),
(71, 12, 19, 2),
(72, 13, 23, 2),
(73, 14, 14, 2),
(74, 15, 26, 2),
(75, 16, 14, 2),
(76, 17, 27, 2),
(77, 18, 17, 2),
(78, 19, 17, 2),
(79, 20, 14, 2),
(80, 60, 20, 2),
(81, 61, 27, 2),
(82, 62, 18, 2),
(83, 63, 25, 2),
(84, 64, 26, 2),
(85, 1, 28, 3),
(86, 2, 29, 3),
(87, 3, 16, 3),
(88, 4, 27, 3),
(89, 5, 12, 3),
(90, 6, 25, 3),
(91, 7, 12, 3),
(92, 8, 18, 3),
(93, 9, 22, 3),
(94, 10, 25, 3),
(95, 11, 18, 3),
(96, 12, 22, 3),
(97, 13, 12, 3),
(98, 14, 24, 3),
(99, 15, 12, 3),
(100, 16, 14, 3),
(101, 17, 15, 3),
(102, 18, 29, 3),
(103, 19, 14, 3),
(104, 20, 22, 3),
(105, 60, 15, 3),
(106, 61, 24, 3),
(107, 62, 14, 3),
(108, 63, 26, 3),
(109, 64, 29, 3),
(110, 1, 14, 4),
(111, 2, 20, 4),
(112, 3, 23, 4),
(113, 4, 25, 4),
(114, 5, 29, 4),
(115, 6, 22, 4),
(116, 7, 13, 4),
(117, 8, 12, 4),
(118, 9, 27, 4),
(119, 10, 17, 4),
(120, 11, 19, 4),
(121, 12, 23, 4),
(122, 13, 16, 4),
(123, 14, 27, 4),
(124, 15, 25, 4),
(125, 16, 23, 4),
(126, 17, 24, 4),
(127, 18, 21, 4),
(128, 19, 17, 4),
(129, 20, 22, 4),
(130, 60, 27, 4),
(131, 61, 27, 4),
(132, 62, 14, 4),
(133, 63, 21, 4),
(134, 64, 13, 4),
(135, 1, 27, 5),
(136, 2, 26, 5),
(137, 3, 19, 5),
(138, 4, 12, 5),
(139, 5, 20, 5),
(140, 6, 21, 5),
(141, 7, 15, 5),
(142, 8, 19, 5),
(143, 9, 12, 5),
(144, 10, 16, 5),
(145, 11, 13, 5),
(146, 12, 17, 5),
(147, 13, 21, 5),
(148, 14, 20, 5),
(149, 15, 29, 5),
(150, 16, 12, 5),
(151, 17, 27, 5),
(152, 18, 28, 5),
(153, 19, 16, 5),
(154, 20, 29, 5),
(155, 60, 25, 5),
(156, 61, 28, 5),
(157, 62, 15, 5),
(158, 63, 20, 5),
(159, 64, 16, 5),
(160, 1, 29, 6),
(161, 2, 18, 6),
(162, 3, 19, 6),
(163, 4, 12, 6),
(164, 5, 27, 6),
(165, 6, 25, 6),
(166, 7, 16, 6),
(167, 8, 13, 6),
(168, 9, 22, 6),
(169, 10, 17, 6),
(170, 11, 13, 6),
(171, 12, 16, 6),
(172, 13, 15, 6),
(173, 14, 16, 6),
(174, 15, 25, 6),
(175, 16, 22, 6),
(176, 17, 28, 6),
(177, 18, 27, 6),
(178, 19, 17, 6),
(179, 20, 14, 6),
(180, 60, 26, 6),
(181, 61, 17, 6),
(182, 62, 18, 6),
(183, 63, 16, 6),
(184, 64, 19, 6),
(185, 1, 18, 7),
(186, 2, 20, 7),
(187, 3, 12, 7),
(188, 4, 24, 7),
(189, 5, 15, 7),
(190, 6, 25, 7),
(191, 7, 15, 7),
(192, 8, 14, 7),
(193, 9, 18, 7),
(194, 10, 12, 7),
(195, 11, 28, 7),
(196, 12, 14, 7),
(197, 13, 19, 7),
(198, 14, 20, 7),
(199, 15, 19, 7),
(200, 16, 16, 7),
(201, 17, 13, 7),
(202, 18, 23, 7),
(203, 19, 22, 7),
(204, 20, 20, 7),
(205, 60, 14, 7),
(206, 61, 19, 7),
(207, 62, 15, 7),
(208, 63, 19, 7),
(209, 64, 20, 7),
(210, 1, 24, 8),
(211, 2, 19, 8),
(212, 3, 27, 8),
(213, 4, 18, 8),
(214, 5, 29, 8),
(215, 6, 12, 8),
(216, 7, 20, 8),
(217, 8, 21, 8),
(218, 9, 16, 8),
(219, 10, 12, 8),
(220, 11, 29, 8),
(221, 12, 14, 8),
(222, 13, 20, 8),
(223, 14, 23, 8),
(224, 15, 21, 8),
(225, 16, 12, 8),
(226, 17, 19, 8),
(227, 18, 21, 8),
(228, 19, 21, 8),
(229, 20, 22, 8),
(230, 60, 29, 8),
(231, 61, 26, 8),
(232, 62, 16, 8),
(233, 63, 27, 8),
(234, 64, 12, 8),
(235, 1, 14, 9),
(236, 2, 21, 9),
(237, 3, 21, 9),
(238, 4, 27, 9),
(239, 5, 19, 9),
(240, 6, 12, 9),
(241, 7, 12, 9),
(242, 8, 28, 9),
(243, 9, 29, 9),
(244, 10, 15, 9),
(245, 11, 26, 9),
(246, 12, 14, 9),
(247, 13, 16, 9),
(248, 14, 27, 9),
(249, 15, 26, 9),
(250, 16, 25, 9),
(251, 17, 18, 9),
(252, 18, 13, 9),
(253, 19, 25, 9),
(254, 20, 20, 9),
(255, 60, 24, 9),
(256, 61, 16, 9),
(257, 62, 20, 9),
(258, 63, 27, 9),
(259, 64, 16, 9),
(260, 1, 16, 10),
(261, 2, 20, 10),
(262, 3, 25, 10),
(263, 4, 17, 10),
(264, 5, 29, 10),
(265, 6, 23, 10),
(266, 7, 22, 10),
(267, 8, 14, 10),
(268, 9, 16, 10),
(269, 10, 26, 10),
(270, 11, 17, 10),
(271, 12, 22, 10),
(272, 13, 18, 10),
(273, 14, 13, 10),
(274, 15, 26, 10),
(275, 16, 29, 10),
(276, 17, 29, 10),
(277, 18, 28, 10),
(278, 19, 22, 10),
(279, 20, 21, 10),
(280, 60, 12, 10),
(281, 61, 25, 10),
(282, 62, 22, 10),
(283, 63, 20, 10),
(284, 64, 25, 10),
(285, 1, 27, 11),
(286, 2, 12, 11),
(287, 3, 25, 11),
(288, 4, 21, 11),
(289, 5, 18, 11),
(290, 6, 19, 11),
(291, 7, 13, 11),
(292, 8, 19, 11),
(293, 9, 26, 11),
(294, 10, 28, 11),
(295, 11, 26, 11),
(296, 12, 17, 11),
(297, 13, 13, 11),
(298, 14, 16, 11),
(299, 15, 15, 11),
(300, 16, 24, 11),
(301, 17, 21, 11),
(302, 18, 24, 11),
(303, 19, 17, 11),
(304, 20, 27, 11),
(305, 60, 20, 11),
(306, 61, 23, 11),
(307, 62, 28, 11),
(308, 63, 29, 11),
(309, 64, 26, 11),
(310, 1, 17, 12),
(311, 2, 17, 12),
(312, 3, 17, 12),
(313, 4, 13, 12),
(314, 5, 19, 12),
(315, 6, 28, 12),
(316, 7, 13, 12),
(317, 8, 18, 12),
(318, 9, 17, 12),
(319, 10, 20, 12),
(320, 11, 12, 12),
(321, 12, 19, 12),
(322, 13, 16, 12),
(323, 14, 26, 12),
(324, 15, 19, 12),
(325, 16, 15, 12),
(326, 17, 21, 12),
(327, 18, 22, 12),
(328, 19, 19, 12),
(329, 20, 28, 12),
(330, 60, 18, 12),
(331, 61, 25, 12),
(332, 62, 16, 12),
(333, 63, 24, 12),
(334, 64, 12, 12),
(335, 1, 15, 13),
(336, 2, 29, 13),
(337, 3, 29, 13),
(338, 4, 13, 13),
(339, 5, 17, 13),
(340, 6, 12, 13),
(341, 7, 27, 13),
(342, 8, 24, 13),
(343, 9, 23, 13),
(344, 10, 17, 13),
(345, 11, 21, 13),
(346, 12, 17, 13),
(347, 13, 25, 13),
(348, 14, 28, 13),
(349, 15, 14, 13),
(350, 16, 22, 13),
(351, 17, 20, 13),
(352, 18, 17, 13),
(353, 19, 20, 13),
(354, 20, 24, 13),
(355, 60, 13, 13),
(356, 61, 17, 13),
(357, 62, 16, 13),
(358, 63, 15, 13),
(359, 64, 28, 13),
(360, 1, 28, 14),
(361, 2, 21, 14),
(362, 3, 14, 14),
(363, 4, 20, 14),
(364, 5, 17, 14),
(365, 6, 20, 14),
(366, 7, 13, 14),
(367, 8, 12, 14),
(368, 9, 20, 14),
(369, 10, 18, 14),
(370, 11, 16, 14),
(371, 12, 12, 14),
(372, 13, 13, 14),
(373, 14, 21, 14),
(374, 15, 23, 14),
(375, 16, 15, 14),
(376, 17, 22, 14),
(377, 18, 26, 14),
(378, 19, 21, 14),
(379, 20, 22, 14),
(380, 60, 19, 14),
(381, 61, 26, 14),
(382, 62, 20, 14),
(383, 63, 14, 14),
(384, 64, 25, 14),
(385, 1, 13, 15),
(386, 2, 21, 15),
(387, 3, 27, 15),
(388, 4, 25, 15),
(389, 5, 21, 15),
(390, 6, 15, 15),
(391, 7, 26, 15),
(392, 8, 18, 15),
(393, 9, 14, 15),
(394, 10, 12, 15),
(395, 11, 22, 15),
(396, 12, 27, 15),
(397, 13, 20, 15),
(398, 14, 22, 15),
(399, 15, 19, 15),
(400, 16, 20, 15),
(401, 17, 18, 15),
(402, 18, 27, 15),
(403, 19, 18, 15),
(404, 20, 27, 15),
(405, 60, 29, 15),
(406, 61, 25, 15),
(407, 62, 13, 15),
(408, 63, 28, 15),
(409, 64, 26, 15),
(410, 1, 24, 16),
(411, 2, 23, 16),
(412, 3, 13, 16),
(413, 4, 27, 16),
(414, 5, 28, 16),
(415, 6, 16, 16),
(416, 7, 21, 16),
(417, 8, 19, 16),
(418, 9, 22, 16),
(419, 10, 26, 16),
(420, 11, 12, 16),
(421, 12, 25, 16),
(422, 13, 19, 16),
(423, 14, 13, 16),
(424, 15, 14, 16),
(425, 16, 16, 16),
(426, 17, 15, 16),
(427, 18, 12, 16),
(428, 19, 26, 16),
(429, 20, 18, 16),
(430, 60, 27, 16),
(431, 61, 28, 16),
(432, 62, 19, 16),
(433, 63, 26, 16),
(434, 64, 29, 16),
(435, 1, 15, 17),
(436, 2, 15, 17),
(437, 3, 15, 17),
(438, 4, 18, 17),
(439, 5, 19, 17),
(440, 6, 27, 17),
(441, 7, 17, 17),
(442, 8, 14, 17),
(443, 9, 23, 17),
(444, 10, 19, 17),
(445, 11, 12, 17),
(446, 12, 23, 17),
(447, 13, 25, 17),
(448, 14, 15, 17),
(449, 15, 29, 17),
(450, 16, 27, 17),
(451, 17, 24, 17),
(452, 18, 21, 17),
(453, 19, 26, 17),
(454, 20, 27, 17),
(455, 60, 20, 17),
(456, 61, 19, 17),
(457, 62, 14, 17),
(458, 63, 27, 17),
(459, 64, 13, 17),
(460, 1, 24, 18),
(461, 2, 24, 18),
(462, 3, 25, 18),
(463, 4, 22, 18),
(464, 5, 20, 18),
(465, 6, 21, 18),
(466, 7, 14, 18),
(467, 8, 16, 18),
(468, 9, 22, 18),
(469, 10, 22, 18),
(470, 11, 15, 18),
(471, 12, 26, 18),
(472, 13, 18, 18),
(473, 14, 16, 18),
(474, 15, 27, 18),
(475, 16, 12, 18),
(476, 17, 25, 18),
(477, 18, 26, 18),
(478, 19, 14, 18),
(479, 20, 29, 18),
(480, 60, 16, 18),
(481, 61, 14, 18),
(482, 62, 28, 18),
(483, 63, 21, 18),
(484, 64, 29, 18);

-- --------------------------------------------------------

--
-- Table structure for table `WineReview`
--

CREATE TABLE `WineReview` (
  `ReviewID` int(11) NOT NULL,
  `TouristID` int(11) DEFAULT NULL,
  `WineID` int(11) DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `Winery`
--

CREATE TABLE `Winery` (
  `WineryID` int(11) NOT NULL,
  `WineryName` varchar(255) DEFAULT NULL,
  `StreetNo` varchar(255) DEFAULT NULL,
  `StreetName` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `Province` varchar(255) DEFAULT NULL,
  `PostalCode` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(255) DEFAULT NULL,
  `EmailAddress` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Website` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Winery`
--

INSERT INTO `Winery` (`WineryID`, `WineryName`, `StreetNo`, `StreetName`, `City`, `Province`, `PostalCode`, `PhoneNumber`, `EmailAddress`, `Description`, `Website`) VALUES
(12, 'Waterford Estate', '123', 'Main Street', 'Stellenbosch', 'Western Cape', '1234', '+27 123456789', 'info@waterfordestate.com', 'Beautiful winery offering a wide selection of wines.', 'www.waterfordestate.com'),
(13, 'Vergelegen Estate', '456', 'Vineyard Road', 'Somerset West', 'Western Cape', '2345', '+27 234567890', 'info@vergelegenestate.com', 'Experience the essence of luxury at our prestigious winery.', 'www.vergelegenestate.com'),
(14, 'Klein Roosboom Boutique Winery', '789', 'Winemaker Street', 'Durbanville', 'Western Cape', '3456', '+27 345678901', 'info@kleinroosboomwinery.com', 'Discover exceptional wines and breathtaking views at our boutique winery.', 'www.kleinroosboomwinery.com'),
(15, 'Boschendal', '321', 'Wine Estate Road', 'Franschhoek', 'Western Cape', '4567', '+27 456789012', 'info@boschendal.com', 'One of South Africa\'s oldest and most picturesque wine estates.', 'www.boschendal.com'),
(16, 'Groot Constantia', '654', 'Constantia Main Road', 'Cape Town', 'Western Cape', '5678', '+27 567890123', 'info@grootconstantia.co.za', 'Experience rich history and award-winning wines at our iconic estate.', 'www.grootconstantia.co.za'),
(17, 'Fairview Wine and Cheese', '987', 'Paarl Main Road', 'Paarl', 'Western Cape', '6789', '+27 678901234', 'info@fairview.co.za', 'Enjoy a unique wine and cheese tasting experience at our renowned winery.', 'www.fairview.co.za'),
(18, 'Spier Wine Farm', '123', 'R310 Lynedoch Road', 'Stellenbosch', 'Western Cape', '7890', '+27 789012345', 'info@spier.co.za', 'A destination in itself, offering wine, food, art, and wildlife encounters.', 'www.spier.co.za'),
(19, 'Jordan Wine Estate', '456', 'Stellenbosch Kloof Road', 'Stellenbosch', 'Western Cape', '8901', '+27 890123456', 'info@jordanwines.com', 'Enjoy world-class wines and breathtaking views at our family-run estate.', 'www.jordanwines.com'),
(20, 'Delaire Graff Estate', '789', 'Helshoogte Pass', 'Stellenbosch', 'Western Cape', '9012', '+27 901234567', 'info@delaire.co.za', 'Indulge in luxury and sophistication at our award-winning wine estate.', 'www.delaire.co.za'),
(21, 'La Motte Wine Estate', '321', 'Franschhoek Main Road', 'Franschhoek', 'Western Cape', '0123', '+27 012345678', 'info@lamotte.co.za', 'Discover a rich tapestry of wine, art, and Cape Winelands heritage.', 'www.lamotte.co.za'),
(22, 'Eikehof', '654', 'Winery Street', 'Stellenbosch', 'Western Cape', '2345', '+27 234567890', 'info@eikehof.com', 'Experience elegance and fine wines at our charming winery.', 'www.eikehof.com'),
(23, 'House of J.C. Le Roux', '987', 'Devon Valley Road', 'Stellenbosch', 'Western Cape', '3456', '+27 345678901', 'info@jcleroux.co.za', 'Celebrate sparkling wines and unforgettable moments at our famous house.', 'www.jcleroux.co.za'),
(24, 'Constantia Glen', '123', 'Constantia Main Road', 'Cape Town', 'Western Cape', '4567', '+27 456789012', 'info@constantiaglen.com', 'Specializing in cool climate Bordeaux-style wines with panoramic views.', 'www.constantiaglen.com'),
(25, 'Cape Point Vineyards', '456', 'Silvermine Road', 'Noordhoek', 'Western Cape', '5678', '+27 567890123', 'info@capepointvineyards.co.za', 'Renowned for producing elegant wines from the rugged coastal terroir.', 'www.capepointvineyards.co.za'),
(26, 'Ambeloui', '789', 'Blumberg Drive', 'Stellenbosch', 'Western Cape', '6789', '+27 678901234', 'info@ambeloui.com', 'Discover boutique wines made with passion and artisanal craftsmanship.', 'www.ambeloui.com'),
(27, 'Buitenverwachting', '321', 'Klein Constantia Road', 'Constantia', 'Western Cape', '7890', '+27 789012345', 'info@buitenverwachting.com', 'Experience fine wines and historical charm at our estate.', 'www.buitenverwachting.com'),
(28, 'Durbanville Hills Winery', '654', 'Tygerberg Valley Road', 'Durbanville', 'Western Cape', '8901', '+27 890123456', 'info@durbanvillehills.co.za', 'Nestled against the picturesque Tygerberg Hills, we offer exceptional wines.', 'www.durbanvillehills.co.za'),
(29, 'De Grendel Wines', '987', 'Plattekloof Road', 'Panorama', 'Western Cape', '9012', '+27 901234567', 'info@degrendel.co.za', 'Explore our vineyards and enjoy the breathtaking views of Table Mountain.', 'www.degrendel.co.za');

-- --------------------------------------------------------

--
-- Table structure for table `Wines`
--

CREATE TABLE `Wines` (
  `WineID` int(11) NOT NULL,
  `AverageRating` float DEFAULT NULL,
  `WineName` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `GrapeVariety` varchar(255) DEFAULT NULL,
  `Price` float DEFAULT NULL,
  `AlcoholPercentage` float DEFAULT NULL,
  `Year` date DEFAULT NULL,
  `Vintage` varchar(255) DEFAULT NULL,
  `Type` enum('White Wine','Red wine','Sparkling Wine','Dessert Wine') DEFAULT NULL,
  `Region` varchar(255) DEFAULT NULL,
  `ImageURL` varchar(255) DEFAULT NULL,
  `Varietal` varchar(255) DEFAULT NULL,
  `WineryID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Wines`
--

INSERT INTO `Wines` (`WineID`, `AverageRating`, `WineName`, `Description`, `GrapeVariety`, `Price`, `AlcoholPercentage`, `Year`, `Vintage`, `Type`, `Region`, `ImageURL`, `Varietal`, `WineryID`) VALUES
(1, 4.5, 'Chardonnay', 'A rich and buttery Chardonnay with notes of tropical fruit and oak.', 'Chardonnay', 80.99, 13.5, '2022-01-01', '2004', 'White Wine', 'Stellenbosch', 'https://example.com/chardonnay.jpg', 'Chardonnay', NULL),
(2, 4.2, 'Sauvignon Blanc', 'A crisp and refreshing Sauvignon Blanc with vibrant citrus flavors.', 'Sauvignon Blanc', 90.99, 12, '2023-01-01', '1997', 'White Wine', 'Franschhoek', 'https://example.com/sauvignon_blanc.jpg', 'Sauvignon Blanc', NULL),
(3, 4, 'Riesling', 'A floral and off-dry Riesling with notes of peach and honey.', 'Riesling', 80, 11.5, '2021-01-01', '2016', 'White Wine', 'Paarl', 'https://example.com/riesling.jpg', 'Riesling', NULL),
(4, 4.3, 'Gewürztraminer', 'A fragrant and aromatic Gewürztraminer with exotic spice and lychee flavors.', 'Gewürztraminer', 90, 12.5, '2022-01-01', '2001', 'White Wine', 'Constantia', 'https://example.com/gewurztraminer.jpg', 'Gewürztraminer', NULL),
(5, 4.1, 'Vermentino', 'A crisp and zesty Vermentino with flavors of citrus and green apple.', 'Vermentino', 190, 11.8, '2023-01-01', '1999', 'White Wine', 'Cape Point', 'https://example.com/vermentino.jpg', 'Vermentino', NULL),
(6, 4.5, 'Müller-Thurgau', 'A light and floral Müller-Thurgau with a hint of sweetness.', 'Müller-Thurgau', 80, 11.4, '2021-01-01', '1999', 'White Wine', 'Tulbagh', 'https://example.com/muller_thurgau.jpg', 'Müller-Thurgau', NULL),
(7, 4, 'Trebbiano', 'A crisp and dry Trebbiano with lively acidity and citrus flavors.', 'Trebbiano', 80.99, 12.3, '2019-01-01', '2011', 'White Wine', 'Walker Bay', 'https://example.com/trebbiano.jpg', 'Trebbiano', NULL),
(8, 4.2, 'Pinot Grigio', 'A light and refreshing Pinot Grigio with delicate pear and apple notes.', 'Pinot Grigio', 90.99, 12, '2020-01-01', '2000', 'White Wine', 'Hemel-en-Aarde', 'https://example.com/pinot_grigio.jpg', 'Pinot Grigio', NULL),
(9, 4.3, 'Viognier', 'An aromatic and full-bodied Viognier with flavors of apricot and honey.', 'Viognier', 120, 13.2, '2018-01-01', '2009', 'White Wine', 'Swartland', 'https://example.com/viognier.jpg', 'Viognier', NULL),
(10, 4.1, 'Gruner Veltliner', 'A crisp and herbaceous Grüner Veltliner with white pepper and citrus zest.', 'Gruner Veltliner', 210.99, 12.5, '2021-01-01', '2022', 'White Wine', 'Elgin', 'https://example.com/gruner_veltliner.jpg', 'Gruner Veltliner', NULL),
(11, 4.5, 'Chenin Blanc', 'A versatile and fruit-driven Chenin Blanc with notes of pear and melon.', 'Chenin Blanc', 410.99, 13, '2022-01-01', '1992', 'White Wine', 'Robertson', 'https://example.com/chenin_blanc.jpg', 'Chenin Blanc', NULL),
(12, 4.2, 'Albariño', 'A vibrant and zesty Albariño with flavors of peach and citrus.', 'Albariño', 80.99, 12.5, '2023-01-01', '2004', 'White Wine', 'Darling', 'https://example.com/albarino.jpg', 'Albariño', NULL),
(13, 4, 'Marsanne', 'A full-bodied and textured Marsanne with flavors of honey and almond.', 'Marsanne', 80, 13.5, '2021-01-01', '2022', 'White Wine', 'Swartland', 'https://example.com/marsanne.jpg', 'Marsanne', NULL),
(14, 4.3, 'Sémillon', 'A rich and honeyed Sémillon with flavors of lemon curd and vanilla.', 'Sémillon', 90.99, 12.8, '2022-01-01', '2006', 'White Wine', 'Stellenbosch', 'https://example.com/semillon.jpg', 'Sémillon', NULL),
(15, 4.1, 'Picpoul Blanc', 'A crisp and mineral-driven Picpoul Blanc with vibrant acidity and citrus notes.', 'Picpoul Blanc', 80, 11.9, '2023-01-01', '2009', 'White Wine', 'Paarl', 'https://example.com/picpoul_blanc.jpg', 'Picpoul Blanc', NULL),
(16, 4.5, 'Verdelho', 'A tropical and medium-bodied Verdelho with flavors of pineapple and mango.', 'Verdelho', 400, 13.2, '2022-01-01', '2004', 'White Wine', 'Franschhoek', 'https://example.com/verdelho.jpg', 'Verdelho', NULL),
(17, 4.2, 'Torrontés', 'An aromatic and floral Torrontés with notes of rose petals and lychee.', 'Torrontés', 90.99, 12.5, '2023-01-01', '2002', 'White Wine', 'Swartland', 'https://example.com/torrontes.jpg', 'Torrontés', NULL),
(18, 4, 'Colombard', 'A crisp and unoaked Colombard with refreshing citrus and green apple flavors.', 'Colombard', 90.99, 11.8, '2021-01-01', '2009', 'White Wine', 'Robertson', 'https://example.com/colombard.jpg', 'Colombard', NULL),
(19, 4.3, 'Assyrtiko', 'A vibrant and mineral-driven Assyrtiko with flavors of lemon and sea salt.', 'Assyrtiko', 80, 13, '2022-01-01', '2012', 'White Wine', 'Elgin', 'https://example.com/assyrtiko.jpg', 'Assyrtiko', NULL),
(20, 4.1, 'Muscadet', 'A zesty and bracing Muscadet with citrus and saline notes.', 'Muscadet', 330.99, 11.5, '2023-01-01', '2013', 'White Wine', 'Walker Bay', 'https://example.com/muscadet.jpg', 'Muscadet', NULL),
(60, 4.5, 'Cabernet Sauvignon', 'A bold and full-bodied Cabernet Sauvignon with rich blackcurrant and cedar flavors.', 'Cabernet Sauvignon', 270, 14.5, '2022-01-01', '2002', 'Red wine', 'Napa Valley', 'https://example.com/cabernet_sauvignon.jpg', 'Cabernet Sauvignon', NULL),
(61, 4.2, 'Merlot', 'A smooth and velvety Merlot with flavors of plum and chocolate.', 'Merlot', 90, 13.8, '2023-01-01', '2016', 'Red wine', 'Bordeaux', 'https://example.com/merlot.jpg', 'Merlot', NULL),
(62, 4, 'Pinot Noir', 'An elegant and fruity Pinot Noir with notes of cherry and spice.', 'Pinot Noir', 340.99, 13, '2021-01-01', '2019', 'Red wine', 'Burgundy', 'https://example.com/pinot_noir.jpg', 'Pinot Noir', NULL),
(63, 4.3, 'Syrah', 'A rich and peppery Syrah with dark fruit and smoky undertones.', 'Syrah', 340.99, 14, '2022-01-01', '2021', 'Red wine', 'Rhône Valley', 'https://example.com/syrah.jpg', 'Syrah', NULL),
(64, 4.1, 'Zinfandel', 'A bold and spicy Zinfandel with flavors of blackberry and black pepper.', 'Zinfandel', 80.99, 14.2, '2023-01-01', '1993', 'Red wine', 'Sonoma County', 'https://example.com/zinfandel.jpg', 'Zinfandel', NULL),
(65, 4.5, 'Malbec', 'A robust and velvety Malbec with dark fruit and chocolate notes.', 'Malbec', 90.99, 13.5, '2022-01-01', '2009', 'Red wine', 'Mendoza', 'https://example.com/malbec.jpg', 'Malbec', NULL),
(66, 4, 'Shiraz', 'A full-bodied and spicy Shiraz with blackberry and black pepper flavors.', 'Shiraz', 90, 14.5, '2021-01-01', '2008', 'Red wine', 'Barossa Valley', 'https://example.com/shiraz.jpg', 'Shiraz', NULL),
(67, 4.2, 'Sangiovese', 'An elegant and structured Sangiovese with cherry and earthy undertones.', 'Sangiovese', 80.99, 13.8, '2020-01-01', '1992', 'Red wine', 'Tuscany', 'https://example.com/sangiovese.jpg', 'Sangiovese', NULL),
(68, 4.5, 'Champagne', 'A classic and elegant Champagne with fine bubbles and notes of toasted bread and citrus.', 'Chardonnay, Pinot Noir, Pinot Meunier', 70.99, 12.5, '2022-01-01', '2012', 'Sparkling Wine', 'Champagne', 'https://example.com/champagne.jpg', 'Champagne', NULL),
(69, 4.2, 'Prosecco', 'A lively and fruity Prosecco with aromas of apple and peach.', 'Glera', 310.99, 11, '2023-01-01', '1994', 'Sparkling Wine', 'Veneto', 'https://example.com/prosecco.jpg', 'Prosecco', NULL),
(70, 4, 'Cava', 'A crisp and refreshing Cava with flavors of citrus and green apple.', 'Macabeo, Xarel·lo, Parellada', 90, 11.5, '2021-01-01', '2009', 'Sparkling Wine', 'Penedès', 'https://example.com/cava.jpg', 'Cava', NULL),
(71, 4.3, 'Crémant', 'An elegant and creamy Crémant with delicate bubbles and notes of white flowers and brioche.', 'Chardonnay, Pinot Noir, Pinot Blanc', 90.99, 12, '2022-01-01', '2007', 'Sparkling Wine', 'Alsace', 'https://example.com/cremant.jpg', 'Crémant', NULL),
(72, 4.1, 'Asti Spumante', 'A sweet and aromatic Asti Spumante with flavors of ripe peaches and honey.', 'Moscato Bianco', 90, 7.5, '2023-01-01', '2019', 'Sparkling Wine', 'Piedmont', 'https://example.com/asti_spumante.jpg', 'Asti Spumante', NULL),
(73, 4.5, 'Sekt', 'A vibrant and effervescent Sekt with citrus and floral notes.', 'Riesling, Pinot Blanc, Pinot Gris', 80.99, 11.5, '2022-01-01', '2014', 'Sparkling Wine', 'Mosel', 'https://example.com/sekt.jpg', 'Sekt', NULL),
(74, 4, 'Lambrusco', 'A fruity and semi-sparkling Lambrusco with flavors of red berries and a hint of sweetness.', 'Lambrusco', 460.99, 8.5, '2021-01-01', '1993', 'Sparkling Wine', 'Emilia-Romagna', 'https://example.com/lambrusco.jpg', 'Lambrusco', NULL),
(75, 4.2, 'Cremant de Bourgogne', 'An elegant and creamy Crémant de Bourgogne with fine bubbles and a delicate toasty character.', 'Chardonnay, Pinot Noir', 80, 12.5, '2020-01-01', '1997', 'Sparkling Wine', 'Burgundy', 'https://example.com/cremant_de_bourgogne.jpg', 'Crémant de Bourgogne', NULL),
(76, 4.3, 'Franciacorta', 'A refined and complex Franciacorta with persistent bubbles and flavors of citrus and hazelnut.', 'Chardonnay, Pinot Noir', 340.99, 12, '2019-01-01', '2018', 'Sparkling Wine', 'Lombardy', 'https://example.com/franciacorta.jpg', 'Franciacorta', NULL),
(77, 4.1, 'English Sparkling Wine', 'A high-quality English sparkling wine with fine bubbles and flavors of orchard fruits and toasted bread.', 'Chardonnay, Pinot Noir, Pinot Meunier', 90, 11.5, '2021-01-01', '2006', 'Sparkling Wine', 'Sussex', 'https://example.com/english_sparkling.jpg', 'English Sparkling Wine', NULL),
(78, 4.5, 'Blanquette de Limoux', 'A creamy and aromatic Blanquette de Limoux with hints of green apple and toasted almonds.', 'Mauzac, Chardonnay, Chenin Blanc', 390, 12, '2022-01-01', '2019', 'Sparkling Wine', 'Languedoc-Roussillon', 'https://example.com/blanquette_de_limoux.jpg', 'Blanquette de Limoux', NULL),
(79, 4.2, 'Trento DOC', 'A prestigious and elegant Trento DOC sparkling wine with fine bubbles and notes of bread crust and citrus.', 'Chardonnay, Pinot Noir', 90, 12.5, '2023-01-01', '2021', 'Sparkling Wine', 'Trentino', 'https://example.com/trento_doc.jpg', 'Trento DOC', NULL),
(80, 4, 'Sekt Trocken', 'A dry and refreshing Sekt Trocken with lively acidity and flavors of green apple and lemon.', 'Riesling, Pinot Blanc, Pinot Gris', 80, 11.5, '2021-01-01', '1991', 'Sparkling Wine', 'Rheingau', 'https://example.com/sekt_trocken.jpg', 'Sekt Trocken', NULL),
(81, 4.3, 'Cremant de Loire', 'A vibrant and fruity Crémant de Loire with fine bubbles and aromas of citrus and white flowers.', 'Chenin Blanc, Chardonnay, Cabernet Franc', 70, 12, '2022-01-01', '2000', 'Sparkling Wine', 'Loire Valley', 'https://example.com/cremant_de_loire.jpg', 'Crémant de Loire', NULL),
(82, 4.1, 'Sekt Rosé', 'A refreshing and fruity Sekt Rosé with delicate bubbles and notes of strawberries and raspberries.', 'Pinot Noir, Pinot Blanc', 90.99, 11, '2023-01-01', '2005', 'Sparkling Wine', 'Pfalz', 'https://example.com/sekt_rose.jpg', 'Sekt Rosé', NULL),
(83, 4.4, 'Cava Rosado', 'A lively and expressive Cava Rosado with vibrant pink color and flavors of red berries and citrus.', 'Garnacha, Monastrell, Pinot Noir', 270, 11.5, '2022-01-01', '1999', 'Sparkling Wine', 'Catalonia', 'https://example.com/cava_rosado.jpg', 'Cava Rosado', NULL),
(84, 4.4, 'Sauternes', 'A luscious and honeyed Sauternes with flavors of apricot, honey, and botrytis.', 'Sémillon, Sauvignon Blanc', 70, 13.5, '2010-01-01', '1992', 'Dessert Wine', 'Bordeaux', 'https://example.com/sauternes.jpg', 'Sauternes', NULL),
(85, 4.3, 'Port', 'A rich and fortified Port with intense flavors of dark fruits, chocolate, and spices.', 'Touriga Nacional, Touriga Franca, Tinta Roriz', 80, 20, '2005-01-01', '2003', 'Dessert Wine', 'Douro Valley', 'https://example.com/port.jpg', 'Port', NULL),
(86, 4.2, 'Tokaji Aszú', 'A complex and sweet Tokaji Aszú with flavors of dried fruits, caramel, and botrytis.', 'Furmint, Hárslevelű', 90.99, 11, '2008-01-01', '2016', 'Dessert Wine', 'Tokaj', 'https://example.com/tokaji_aszu.jpg', 'Tokaji Aszú', NULL),
(87, 4.1, 'Icewine', 'A luxurious and concentrated Icewine with intense sweetness and flavors of ripe fruits and honey.', 'Vidal Blanc, Riesling', 90, 9.5, '2012-01-01', '2014', 'Dessert Wine', 'Niagara Peninsula', 'https://example.com/icewine.jpg', 'Icewine', NULL),
(88, 4, 'Moscato d\'Asti', 'A light and effervescent Moscato d\'Asti with floral aromas and sweet peach flavors.', 'Moscato Bianco', 90.99, 5.5, '2015-01-01', '1998', 'Dessert Wine', 'Piedmont', 'https://example.com/moscato_dasti.jpg', 'Moscato d\'Asti', NULL),
(89, 4.5, 'Pedro Ximénez', 'A rich and syrupy Pedro Ximénez with intense flavors of raisins, toffee, and caramel.', 'Pedro Ximénez', 80, 15, '2000-01-01', '2022', 'Dessert Wine', 'Andalusia', 'https://example.com/pedro_ximenez.jpg', 'Pedro Ximénez', NULL),
(90, 4.3, 'Banyuls', 'A fortified Banyuls with notes of dark fruits, chocolate, and spices, and a touch of Mediterranean herbs.', 'Grenache', 80, 16, '2009-01-01', '1997', 'Dessert Wine', 'Languedoc-Roussillon', 'https://example.com/banyuls.jpg', 'Banyuls', NULL),
(91, 4.2, 'Late Harvest Riesling', 'A sweet and aromatic Late Harvest Riesling with flavors of ripe peaches, honey, and petrol.', 'Riesling', 80, 9, '2011-01-01', '1992', 'Dessert Wine', 'Mosel', 'https://example.com/late_harvest_riesling.jpg', 'Late Harvest Riesling', NULL),
(92, 4.1, 'Muscat de Beaumes-de-Venise', 'An aromatic and floral Muscat de Beaumes-de-Venise with flavors of orange blossom, apricot, and honey.', 'Muscat Blanc à Petits Grains', 80, 15.5, '2007-01-01', '2014', 'Dessert Wine', 'Rhône Valley', 'https://example.com/muscat_de_beaumes_de_venise.jpg', 'Muscat de Beaumes-de-Venise', NULL),
(93, 4, 'Vin Santo', 'A nutty and oxidized Vin Santo with flavors of dried fruits, toasted almonds, and honey.', 'Trebbiano, Malvasia', 80, 15, '2003-01-01', '2004', 'Dessert Wine', 'Tuscany', 'https://example.com/vin_santo.jpg', 'Vin Santo', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `DessertWine`
--
ALTER TABLE `DessertWine`
  ADD PRIMARY KEY (`DessertWineID`),
  ADD KEY `WineID` (`WineID`);

--
-- Indexes for table `RedWine`
--
ALTER TABLE `RedWine`
  ADD PRIMARY KEY (`RedWineID`),
  ADD KEY `WineID` (`WineID`);

--
-- Indexes for table `Shops`
--
ALTER TABLE `Shops`
  ADD PRIMARY KEY (`ShopID`);

--
-- Indexes for table `SparklingWine`
--
ALTER TABLE `SparklingWine`
  ADD PRIMARY KEY (`SparklingWineID`),
  ADD KEY `WineID` (`WineID`);

--
-- Indexes for table `Tourists`
--
ALTER TABLE `Tourists`
  ADD PRIMARY KEY (`TouristID`);

--
-- Indexes for table `WhiteWine`
--
ALTER TABLE `WhiteWine`
  ADD PRIMARY KEY (`WhiteWineID`),
  ADD KEY `WineID` (`WineID`);

--
-- Indexes for table `WineAvailability`
--
ALTER TABLE `WineAvailability`
  ADD PRIMARY KEY (`AvailabilityID`),
  ADD KEY `WineID` (`WineID`),
  ADD KEY `WineryID` (`WineryID`),
  ADD KEY `ShopID` (`ShopID`);

--
-- Indexes for table `WineReview`
--
ALTER TABLE `WineReview`
  ADD PRIMARY KEY (`ReviewID`),
  ADD KEY `TouristID` (`TouristID`),
  ADD KEY `WineID` (`WineID`);

--
-- Indexes for table `Winery`
--
ALTER TABLE `Winery`
  ADD PRIMARY KEY (`WineryID`);

--
-- Indexes for table `Wines`
--
ALTER TABLE `Wines`
  ADD PRIMARY KEY (`WineID`),
  ADD KEY `WineryID` (`WineryID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `RedWine`
--
ALTER TABLE `RedWine`
  MODIFY `RedWineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `Shops`
--
ALTER TABLE `Shops`
  MODIFY `ShopID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `Tourists`
--
ALTER TABLE `Tourists`
  MODIFY `TouristID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `WhiteWine`
--
ALTER TABLE `WhiteWine`
  MODIFY `WhiteWineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `WineAvailability`
--
ALTER TABLE `WineAvailability`
  MODIFY `AvailabilityID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=546;

--
-- AUTO_INCREMENT for table `WineReview`
--
ALTER TABLE `WineReview`
  MODIFY `ReviewID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Winery`
--
ALTER TABLE `Winery`
  MODIFY `WineryID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `Wines`
--
ALTER TABLE `Wines`
  MODIFY `WineID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `DessertWine`
--
ALTER TABLE `DessertWine`
  ADD CONSTRAINT `DessertWine_ibfk_1` FOREIGN KEY (`WineID`) REFERENCES `Wines` (`WineID`);

--
-- Constraints for table `RedWine`
--
ALTER TABLE `RedWine`
  ADD CONSTRAINT `RedWine_ibfk_1` FOREIGN KEY (`WineID`) REFERENCES `Wines` (`WineID`);

--
-- Constraints for table `SparklingWine`
--
ALTER TABLE `SparklingWine`
  ADD CONSTRAINT `SparklingWine_ibfk_1` FOREIGN KEY (`WineID`) REFERENCES `Wines` (`WineID`);

--
-- Constraints for table `WhiteWine`
--
ALTER TABLE `WhiteWine`
  ADD CONSTRAINT `WhiteWine_ibfk_1` FOREIGN KEY (`WineID`) REFERENCES `Wines` (`WineID`);

--
-- Constraints for table `WineAvailability`
--
ALTER TABLE `WineAvailability`
  ADD CONSTRAINT `WineAvailability_ibfk_1` FOREIGN KEY (`WineID`) REFERENCES `Wines` (`WineID`),
  ADD CONSTRAINT `WineAvailability_ibfk_2` FOREIGN KEY (`WineryID`) REFERENCES `Winery` (`WineryID`),
  ADD CONSTRAINT `WineAvailability_ibfk_3` FOREIGN KEY (`ShopID`) REFERENCES `Shops` (`ShopID`);

--
-- Constraints for table `WineReview`
--
ALTER TABLE `WineReview`
  ADD CONSTRAINT `WineReview_ibfk_1` FOREIGN KEY (`TouristID`) REFERENCES `Tourists` (`TouristID`),
  ADD CONSTRAINT `WineReview_ibfk_2` FOREIGN KEY (`WineID`) REFERENCES `Wines` (`WineID`);

--
-- Constraints for table `Wines`
--
ALTER TABLE `Wines`
  ADD CONSTRAINT `Wines_ibfk_1` FOREIGN KEY (`WineryID`) REFERENCES `Winery` (`WineryID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
