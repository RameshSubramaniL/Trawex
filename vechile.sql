-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 16, 2023 at 06:13 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vechile`
--

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `name`, `email`, `phone`, `address`, `token`) VALUES
(3, 'Ramesh s', 'ramr2170@gmail.com', '+919080977841', '3/217,Singarapeytai, Thathampatty(p.o)', 'e53624850284c6c3345206c96f97bb2d'),
(4, 'Ramesh s', 'ramr2170@gmail.com', '9080977841', '3/217,Singarapeytai, Thathampatty(p.o)', 'e8375b1e5791c9ce49c18d69424951e8');

-- --------------------------------------------------------

--
-- Table structure for table `vechile_details`
--

CREATE TABLE `vechile_details` (
  `id` int(11) NOT NULL,
  `json_content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`json_content`))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vechile_details`
--

INSERT INTO `vechile_details` (`id`, `json_content`) VALUES
(1, '{\"VehAvailCore\":{\"@attributes\":{\"Status\":\"Available\"},\"Vehicle\":{\"@attributes\":{\"AirConditionInd\":\"true\",\"TransmissionType\":\"Automatic\",\"FuelType\":\"Unspecified\",\"DriveType\":\"Unspecified\",\"PassengerQuantity\":\"5\",\"BaggageQuantity\":\"3\",\"Code\":\"SCAR\",\"CodeContext\":\"CARTRAWLER\"},\"VehType\":{\"@attributes\":{\"VehicleCategory\":\"1\",\"DoorCount\":\"2\"}},\"VehClass\":{\"@attributes\":{\"Size\":\"7\"}},\"VehMakeModel\":{\"@attributes\":{\"Name\":\"Volkswagen Jetta or similar\",\"Code\":\"SCAR\"}},\"PictureURL\":\"https://ctimg-fleet.cartrawler.com/volkswagen/jetta/primary.png\",\"VehIdentity\":{\"@attributes\":{\"VehicleAssetNumber\":\"26537\"}}},\"RentalRate\":{\"VehicleCharges\":{\"VehicleCharge\":{\"@attributes\":{\"Description\":\"Unlimited mileage\",\"TaxInclusive\":\"true\",\"IncludedInRate\":\"true\",\"Purpose\":\"609.VCP.X\"}}},\"RateQualifier\":{\"@attributes\":{\"RateQualifier\":\"PREPAID-IN\",\"PromotionCode\":\"INCLUSIVE_NO_EXCESS\"}}},\"TotalCharge\":{\"@attributes\":{\"RateTotalAmount\":\"127.85\",\"EstimatedTotalAmount\":\"127.85\",\"CurrencyCode\":\"USD\"}},\"PricedEquips\":{\"PricedEquip\":[{\"Equipment\":{\"@attributes\":{\"EquipType\":\"13\"},\"Description\":\"GPS\"},\"Charge\":{\"@attributes\":{\"Amount\":\"16.99\",\"CurrencyCode\":\"USD\",\"TaxInclusive\":\"false\",\"IncludedInRate\":\"false\"}}},{\"Equipment\":{\"@attributes\":{\"EquipType\":\"8\"},\"Description\":\"Child toddler seat\"},\"Charge\":{\"@attributes\":{\"Amount\":\"13.99\",\"CurrencyCode\":\"USD\",\"TaxInclusive\":\"false\",\"IncludedInRate\":\"false\"}}},{\"Equipment\":{\"@attributes\":{\"EquipType\":\"9\"},\"Description\":\"Booster seat\"},\"Charge\":{\"@attributes\":{\"Amount\":\"13.99\",\"CurrencyCode\":\"USD\",\"TaxInclusive\":\"false\",\"IncludedInRate\":\"false\"}}},{\"Equipment\":{\"@attributes\":{\"EquipType\":\"7\"},\"Description\":\"Infant child seat\"},\"Charge\":{\"@attributes\":{\"Amount\":\"13.99\",\"CurrencyCode\":\"USD\",\"TaxInclusive\":\"false\",\"IncludedInRate\":\"false\"}}},{\"Equipment\":{\"@attributes\":{\"EquipType\":\"4\"},\"Description\":\"Ski rack\"},\"Charge\":{\"@attributes\":{\"Amount\":\"18.00\",\"CurrencyCode\":\"USD\",\"TaxInclusive\":\"true\",\"IncludedInRate\":\"false\"}}}]},\"Fees\":{\"Fee\":[{\"@attributes\":{\"Amount\":\"127.85\",\"CurrencyCode\":\"USD\",\"Purpose\":\"22\"}},{\"@attributes\":{\"Amount\":\"0.00\",\"CurrencyCode\":\"USD\",\"Purpose\":\"23\"}},{\"@attributes\":{\"Amount\":\"0.00\",\"CurrencyCode\":\"USD\",\"Purpose\":\"6\"}}]},\"Reference\":{\"@attributes\":{\"Type\":\"16\",\"ID\":\"846174189\",\"ID_Context\":\"CARTRAWLER\",\"DateTime\":\"2021-06-14T06:27:28.549+01:00\",\"URL\":\"72cc9427-c597-4545-a6e0-ac48d0b97886.64\"}},\"TPA_Extensions\":{\"PictureURLHD\":\"https://ctimg-fleet.cartrawler.com/volkswagen/jetta/primary.png\",\"UpSell\":{\"@attributes\":{\"Insurance\":\"0\"}},\"DebitCard\":{\"@attributes\":{\"OnArrival\":\"true\"}},\"PPDep\":{\"@attributes\":{\"Available\":\"false\",\"Keep\":\"false\"}},\"ZeroDeposit\":{\"@attributes\":{\"Available\":\"false\"}},\"FuelPolicy\":{\"@attributes\":{\"Type\":\"FULLFULL\",\"Description\":\"Fuel: Pick up and return full.\"}},\"Config\":{\"@attributes\":{\"OrderBy\":\"7\",\"Relevance\":\"0\",\"Preferred\":\"0\",\"Insurance\":\"false\",\"Duration\":\"1\",\"Limited\":\"1\",\"CC_Info\":\"true\",\"PhysicalInetAddress\":\"-1762762070\",\"ConsumerAddress\":\"2001849194\",\"HotelDelivery\":\"false\"}},\"OrderBy\":{\"@attributes\":{\"Index\":\"7\"}},\"Indexation\":{\"IndexByPrice\":{\"@attributes\":{\"Key\":\"6\",\"BundleText\":\"Standard\",\"BundleType\":\"Rate_IN_INCLUSIVE_NO_EXCESS\"}}},\"CC_Info\":{\"@attributes\":{\"Required\":\"true\"}},\"SpecialOffers\":{\"Offer\":[\"For faster, easier car hire, add driver details before pick-up.\",\"This car hire brand has committed to maintaining sanitisation measures as per WHO COVID-19 guidelines.\"]},\"Duration\":{\"@attributes\":{\"Days\":\"1\"}},\"PricedEquipsDisplay\":{\"PricedEquip\":[{\"@attributes\":{\"EquipType\":\"13\",\"Amount\":\"16.99\",\"CurrencyCode\":\"USD\",\"RateType\":\"POSTPAID\"}},{\"@attributes\":{\"EquipType\":\"8\",\"Amount\":\"13.99\",\"CurrencyCode\":\"USD\",\"RateType\":\"POSTPAID\"}},{\"@attributes\":{\"EquipType\":\"9\",\"Amount\":\"13.99\",\"CurrencyCode\":\"USD\",\"RateType\":\"POSTPAID\"}},{\"@attributes\":{\"EquipType\":\"7\",\"Amount\":\"13.99\",\"CurrencyCode\":\"USD\",\"RateType\":\"POSTPAID\"}},{\"@attributes\":{\"EquipType\":\"4\",\"Amount\":\"18.00\",\"CurrencyCode\":\"USD\",\"RateType\":\"POSTPAID\"}}]},\"Fleet\":{\"FleetGroup\":{\"Vehicle\":{\"@attributes\":{\"AirConditionInd\":\"true\",\"TransmissionType\":\"Automatic\",\"FuelType\":\"Unspecified\",\"DriveType\":\"Unspecified\",\"PassengerQuantity\":\"5\",\"BaggageQuantity\":\"3\",\"Code\":\"SCAR\",\"CodeContext\":\"CARTRAWLER\"},\"VehType\":{\"@attributes\":{\"VehicleCategory\":\"1\",\"DoorCount\":\"2\"}},\"VehClass\":{\"@attributes\":{\"Size\":\"7\"}},\"VehMakeModel\":{\"@attributes\":{\"Name\":\"Volkswagen Jetta or similar\",\"Code\":\"SCAR\"}},\"PictureURL\":\"https://ctimg-fleet.cartrawler.com/volkswagen/jetta/primary.png\",\"VehIdentity\":{\"@attributes\":{\"VehicleAssetNumber\":\"26537\"}}}}}}},\"VehAvailInfo\":{\"PricedCoverages\":{\"PricedCoverage\":{\"Coverage\":{\"@attributes\":{\"CoverageType\":\"601.VCT.X\"}},\"Charge\":{\"@attributes\":{\"Description\":\"Extra insurance\",\"TaxInclusive\":\"true\",\"IncludedInRate\":\"true\"}}}}}}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vechile_details`
--
ALTER TABLE `vechile_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `vechile_details`
--
ALTER TABLE `vechile_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
