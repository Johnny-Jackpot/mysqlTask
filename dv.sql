-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Час створення: Трв 13 2017 р., 17:09
-- Версія сервера: 5.7.14
-- Версія PHP: 7.0.10

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
  `name` varchar(63) NOT NULL,
  `surname` varchar(63) NOT NULL,
  `dob` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `actors`
--

INSERT INTO `actors` (`id`, `name`, `surname`, `dob`) VALUES
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
-- Структура таблиці `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `title` varchar(127) NOT NULL,
  `director` varchar(127) DEFAULT NULL,
  `release_date` year(4) DEFAULT NULL,
  `budget` int(11) DEFAULT NULL,
  `box_office` int(11) DEFAULT NULL,
  `running_time` int(3) DEFAULT NULL,
  `studio_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `films`
--

INSERT INTO `films` (`id`, `title`, `director`, `release_date`, `budget`, `box_office`, `running_time`, `studio_id`) VALUES
(1, 'The Fate of the Furious', 'Felix Gary Gray', 2017, 250000000, 910800000, 136, 1),
(2, 'Escape Plan', 'Jan Mikael Hafstrom', 2013, 50000000, 137300000, 115, 2),
(3, 'John Rambo', 'Sylvester Stallone', 2008, 50000000, 113200000, 92, 3),
(4, 'The Spy Next Door', 'Brian Levant', 2010, 28000000, 45200000, 95, 3),
(5, 'Mad Max: Fury Road', 'George Miller', 2015, 150000000, 373570581, 120, 5),
(6, 'Furious 7', 'James Wan', 2015, 190000000, 1516045911, 137, 1),
(7, 'RocknRolla', 'Guy Stuart Ritchie', 2008, 18000000, 25728089, 114, 5),
(8, 'AEon Flux', 'Karyn Kiyoko Kusama', 2005, 62000000, 52300000, 93, 6),
(9, 'Fast & Furious 6', 'Justin Lin', 2013, 160000000, 771800000, 130, 1),
(10, 'Fast Five', 'Justin Lin', 2011, 125000000, 601900000, 98, 1),
(11, 'Transformers: Dark of the Moon', 'Michael Benjamin Bay', 2011, 195000000, 1106450000, 155, 7),
(12, 'Haywire', 'Steven Soderbergh', 2011, 23000000, 33400000, 93, 4),
(13, 'The Expendables', 'Sylvester Stallone', 2010, 82000000, 274000000, 103, 3),
(14, 'Suicide Squad', 'David Ayer', 2016, 175000000, 745600054, 123, 8);

-- --------------------------------------------------------

--
-- Структура таблиці `films_actors`
--

CREATE TABLE `films_actors` (
  `film_id` int(11) NOT NULL,
  `actor_id` int(11) NOT NULL,
  `fee` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `films_actors`
--

INSERT INTO `films_actors` (`film_id`, `actor_id`, `fee`) VALUES
(1, 1, 5000000),
(1, 6, 2000000),
(1, 8, 1000000),
(1, 9, 7000000),
(1, 10, 3000000),
(1, 11, 7000000),
(1, 13, 3000000),
(1, 14, 5000000),
(2, 2, 2000000),
(2, 3, 1000000),
(3, 3, 7000000),
(4, 4, 5000000),
(5, 5, 1000000),
(5, 8, 2000000),
(6, 1, 5000000),
(6, 6, 2000000),
(6, 9, 1000000),
(6, 10, 7000000),
(6, 11, 3000000),
(6, 12, 7000000),
(6, 13, 3000000),
(6, 14, 5000000),
(7, 7, 2000000),
(8, 8, 1000000),
(9, 1, 7000000),
(9, 6, 3000000),
(9, 9, 7000000),
(9, 10, 3000000),
(9, 11, 5000000),
(9, 12, 2000000),
(9, 14, 1000000),
(10, 1, 7000000),
(10, 6, 3000000),
(10, 9, 7000000),
(10, 11, 3000000),
(10, 14, 5000000),
(11, 11, 2000000),
(12, 12, 1000000),
(13, 3, 7000000),
(13, 13, 3000000),
(14, 15, 7000000);

-- --------------------------------------------------------

--
-- Структура таблиці `films_genres`
--

CREATE TABLE `films_genres` (
  `film_id` int(11) NOT NULL,
  `genre_id` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `films_genres`
--

INSERT INTO `films_genres` (`film_id`, `genre_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(13, 1),
(14, 1),
(2, 2),
(5, 2),
(12, 2),
(13, 2),
(4, 3),
(7, 4),
(8, 5),
(11, 5),
(14, 5);

-- --------------------------------------------------------

--
-- Структура таблиці `genres`
--

CREATE TABLE `genres` (
  `id` int(3) NOT NULL,
  `genre` varchar(63) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп даних таблиці `genres`
--

INSERT INTO `genres` (`id`, `genre`) VALUES
(1, 'action'),
(2, 'thriller'),
(3, 'comedy'),
(4, 'crime'),
(5, 'fantasy');

-- --------------------------------------------------------

--
-- Структура таблиці `studios`
--

CREATE TABLE `studios` (
  `id` int(11) NOT NULL,
  `name` varchar(63) NOT NULL,
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
  ADD KEY `actor_id` (`actor_id`);

--
-- Індекси таблиці `films_genres`
--
ALTER TABLE `films_genres`
  ADD PRIMARY KEY (`film_id`,`genre_id`),
  ADD KEY `genre_id` (`genre_id`);

--
-- Індекси таблиці `genres`
--
ALTER TABLE `genres`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT для таблиці `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT для таблиці `genres`
--
ALTER TABLE `genres`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
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
  ADD CONSTRAINT `films_actors_ibfk_2` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON UPDATE CASCADE;

--
-- Обмеження зовнішнього ключа таблиці `films_genres`
--
ALTER TABLE `films_genres`
  ADD CONSTRAINT `films_genres_ibfk_1` FOREIGN KEY (`film_id`) REFERENCES `films` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `films_genres_ibfk_2` FOREIGN KEY (`genre_id`) REFERENCES `genres` (`id`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
