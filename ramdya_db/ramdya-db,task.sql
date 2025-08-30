
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
(1, 'Rameshwar', 'sonwanerameshwar522@gmail.com', 'ramdya0909', 9022956273);


CREATE TABLE `leaves` (
  `lid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `message` varchar(250) NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'No Action'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `leaves` (`lid`, `uid`, `subject`, `message`, `status`) VALUES
(1, 2, 'Regarding one day CL', 'Sir,\r\nHaving urgent work at home, I cannot attend the meeting on 22nd march 2025', 'Approved');


CREATE TABLE `tasks` (
  `tid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `description` varchar(250) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `status` varchar(100) NOT NULL DEFAULT 'Not Started'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `tasks` (`tid`, `uid`, `description`, `start_date`, `end_date`, `status`) VALUES
(1, 1, 'Assignment 1', '2025-03-03', '2025-09-18', 'Not Started');


CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `mobile` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `users` (`uid`, `name`, `email`, `password`, `mobile`) VALUES
(1, 'Rameshwar Sonawane', 'sonwanerameshwar522@gmail.com', 'ramdya0909', 9022956273);

ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

ALTER TABLE `leaves`
  ADD PRIMARY KEY (`lid`);

ALTER TABLE `tasks`
  ADD PRIMARY KEY (`tid`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`);

ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `leaves`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

ALTER TABLE `tasks`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

