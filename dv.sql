-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Трв 02 2017 р., 16:15
-- Версія сервера: 5.7.14
-- Версія PHP: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `dv`
--

-- --------------------------------------------------------

--
-- Структура таблиці `actors`
--

CREATE TABLE `actors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `birth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `actors`
--

INSERT INTO `actors` (`id`, `name`, `surname`, `birth`) VALUES
(1, 'Vin', 'Diesel', '1967-07-18'),
(2, 'Arnold', 'Schwarzenegger', '1947-07-30'),
(3, 'Sylvester', 'Stallone', '1946-07-06'),
(4, 'Jackie', 'Chan', '1954-04-07'),
(5, 'Tom', 'Hardy', '1977-09-15'),
(6, 'Christopher', 'Brian Bridges', '1977-09-11'),
(7, 'Gerard', 'James Butler', '1969-11-13'),
(8, 'Charlize', 'Theron', '1975-08-07'),
(9, 'Elsa', 'Pataky', '1976-07-18'),
(10, 'Michelle', 'Rodriguez', '1978-07-12'),
(11, 'Tyrese', 'Darnell Gibson', '1978-12-30'),
(12, 'Gina', 'Joy Carano', '1982-04-16'),
(13, 'Jason', 'Statham', '1967-07-26'),
(14, 'Dwayne', 'Johnson', '1972-05-02'),
(15, 'Will', 'Smith', '1968-09-15'),
(16, 'Actor', 'Diesel', NULL),
(17, 'Actor', 'Stallone', NULL),
(18, 'Actor', 'Hardy', NULL),
(19, 'Actor', 'Chan', NULL),
(20, 'Actor', 'Smith', NULL);

-- --------------------------------------------------------

--
-- Структура таблиці `fee`
--

CREATE TABLE `fee` (
  `id` int(11) NOT NULL,
  `cash` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `fee`
--

INSERT INTO `fee` (`id`, `cash`) VALUES
(1, 5000000),
(2, 2000000),
(3, 1000000),
(4, 7000000),
(5, 3000000),
(6, 7000000),
(7, 3000000),
(8, 5000000),
(9, 2000000),
(10, 1000000),
(11, 5000000),
(12, 2000000),
(13, 1000000),
(14, 7000000),
(15, 3000000),
(16, 7000000),
(17, 3000000),
(18, 5000000),
(19, 2000000),
(20, 1000000),
(21, 5000000),
(22, 2000000),
(23, 1000000),
(24, 7000000),
(25, 3000000),
(26, 7000000),
(27, 3000000),
(28, 5000000),
(29, 2000000),
(30, 1000000),
(31, 5000000),
(32, 2000000),
(33, 1000000),
(34, 7000000),
(35, 3000000),
(36, 7000000),
(37, 3000000),
(38, 5000000),
(39, 2000000),
(40, 1000000),
(41, 3000000);

-- --------------------------------------------------------

--
-- Структура таблиці `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `director` varchar(100) DEFAULT NULL,
  `release_date` year(4) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `box_office` int(11) DEFAULT NULL,
  `running_time` int(3) DEFAULT NULL,
  `studio_id` int(11) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `films`
--

INSERT INTO `films` (`id`, `title`, `director`, `release_date`, `budget`, `box_office`, `running_time`, `studio_id`, `genre`) VALUES
(1, 'The Fate of the Furious', 'Felix Gary Gray', 2017, 250000000, 910800000, 136, 1, 'action'),
(2, 'Escape Plan', 'Jan Mikael Hafstrom', 2013, 50000000, 137300000, 115, 2, 'action'),
(3, 'John Rambo', 'Sylvester Stallone', 2008, 50000000, 113200000, 92, 3, 'thriller'),
(4, 'The Spy Next Door', 'Brian Levant', 2010, 28000000, 45200000, 95, 3, 'comedy'),
(5, 'Mad Max: Fury Road', 'George Miller', 2015, 150000000, 373570581, 120, 5, 'action'),
(6, 'Furious 7', 'James Wan', 2015, 190000000, 1516045911, 137, 1, 'action'),
(7, 'RocknRolla', 'Guy Stuart Ritchie', 2008, 18000000, 25728089, 114, 5, 'crime'),
(8, 'AEon Flux', 'Karyn Kiyoko Kusama', 2005, 62000000, 52300000, 93, 6, 'fantasy'),
(9, 'Fast & Furious 6', 'Justin Lin', 2013, 160000000, 771800000, 130, 1, 'action'),
(10, 'Fast Five', 'Justin Lin', 2011, 125000000, 601900000, 98, 1, 'action'),
(11, 'Transformers: Dark of the Moon', 'Michael Benjamin Bay', 2011, 195000000, 1106450000, 155, 7, 'fantasy'),
(12, 'Haywire', 'Steven Soderbergh', 2011, 23000000, 33400000, 93, 4, 'action'),
(13, 'The Expendables', 'Sylvester Stallone', 2010, 82000000, 274000000, 103, 3, 'action'),
(14, 'Suicide Squad', 'David Ayer', 2016, 175000000, 745600054, 123, 8, 'fantasy\n');

-- --------------------------------------------------------

--
-- Структура таблиці `films_actors`
--

CREATE TABLE `films_actors` (
  `film_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL,
  `fee_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `films_actors`
--

INSERT INTO `films_actors` (`film_id`, `actor_id`, `fee_id`) VALUES
(1, 1, 1),
(1, 6, 2),
(1, 8, 3),
(1, 9, 4),
(1, 10, 5),
(1, 11, 6),
(1, 13, 7),
(1, 14, 8),
(2, 2, 9),
(2, 3, 10),
(3, 3, 11),
(4, 4, 12),
(5, 5, 13),
(5, 8, 14),
(6, 1, 15),
(6, 6, 16),
(6, 9, 17),
(6, 10, 18),
(6, 11, 19),
(6, 12, 20),
(6, 13, 21),
(6, 14, 22),
(7, 7, 23),
(8, 8, 24),
(9, 1, 25),
(9, 6, 26),
(9, 9, 27),
(9, 10, 28),
(9, 11, 29),
(9, 12, 30),
(9, 14, 31),
(10, 1, 32),
(10, 6, 33),
(10, 9, 34),
(10, 11, 35),
(10, 14, 36),
(11, 11, 37),
(12, 12, 38),
(13, 3, 39),
(13, 13, 40),
(14, 15, 41);

-- --------------------------------------------------------

--
-- Структура таблиці `studios`
--

CREATE TABLE `studios` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `founded` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `studios`
--

INSERT INTO `studios` (`id`, `name`, `founded`) VALUES
(1, 'Universal Studios', '1912-06-12'),
(2, 'Summit Entertainment', '2007-04-19'),
(3, 'Lionsgate', '1997-07-03'),
(4, 'Relativity Media LLC', '2004-05-18'),
(5, 'Warner Bros. Entertainment Inc.', '1923-04-04'),
(6, 'Paramount Pictures Corporation', '1912-05-08'),
(7, 'DreamWorks Pictures', '1994-10-12'),
(8, 'DC Entertainment', '2009-09-04');

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `actors`
--
ALTER TABLE `actors`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `fee`
--
ALTER TABLE `fee`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`),
  ADD KEY `studio_id` (`studio_id`);

--
-- Індекси таблиці `films_actors`
--
ALTER TABLE `films_actors`
  ADD PRIMARY KEY (`film_id`,`actor_id`),
  ADD UNIQUE KEY `fee_id` (`fee_id`),
  ADD KEY `payment` (`fee_id`),
  ADD KEY `actor_id` (`actor_id`);

--
-- Індекси таблиці `studios`
--
ALTER TABLE `studios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `actors`
--
ALTER TABLE `actors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT для таблиці `fee`
--
ALTER TABLE `fee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT для таблиці `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблиці `studios`
--
ALTER TABLE `studios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- Обмеження зовнішнього ключа збережених таблиць
--

--
-- Обмеження зовнішнього ключа таблиці `films`
--
ALTER TABLE `films`
  ADD CONSTRAINT `films_ibfk_1` FOREIGN KEY (`studio_id`) REFERENCES `studios` (`id`) ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `films_actors`
--
ALTER TABLE `films_actors`
  ADD CONSTRAINT `films_actors_ibfk_1` FOREIGN KEY (`actor_id`) REFERENCES `actors` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `films_actors_ibfk_2` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `films_actors_ibfk_3` FOREIGN KEY (`fee_id`) REFERENCES `fee` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
