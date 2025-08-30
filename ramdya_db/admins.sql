
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `admins` (`id`, `name`, `email`, `password`, `mobile`) VALUES
(1, 'Rameshwar', 'sonwanerameshwar522@gmail.com', 'ramdya0909', 9022956273),
(2, 'Test', 'Test@gmail.com', 'Test123', 9999999999);

ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

