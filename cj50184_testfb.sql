-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost
-- Время создания: Апр 13 2019 г., 01:41
-- Версия сервера: 5.6.39-83.1
-- Версия PHP: 5.6.37

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `cj50184_testfb`
--

-- --------------------------------------------------------

--
-- Структура таблицы `goods`
--

CREATE TABLE IF NOT EXISTS `goods` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `info` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `goods`
--

INSERT INTO `goods` (`id`, `name`, `company`, `info`) VALUES
(1, 'S8', 'Samsung', 'phone'),
(2, '10', 'htc', 'phone'),
(3, 'X2', 'Sony', 'phone'),
(7, 'Rx580', 'ASUS', 'videocard'),
(8, 'gtx1080ti', 'ASUS', 'videocard'),
(9, 'Vaga64', 'Sapphire', 'videocard'),
(10, 'radeon7', 'AMD', 'videocard');

-- --------------------------------------------------------

--
-- Структура таблицы `usergr`
--

CREATE TABLE IF NOT EXISTS `usergr` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `sname` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `pass` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Дамп данных таблицы `usergr`
--

INSERT INTO `usergr` (`id`, `name`, `sname`, `pass`, `email`) VALUES
(6, 'admin', 'prime', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2', 'admin@mail.ru'),
(7, 'admin2', 'prime2', '1c6637a8f2e1f75e06ff9984894d6bd16a3a36a9', 'admin2@mail.ru'),
(8, 'admin3', 'Test', '5f6955d227a320c7f1f6c7da2a6d96a851a8118f', 'test@test.test'),
(9, 'admin4', 'test', 'bdaed8350a99a93701b160e0585c6ac166d7a361', 'test@test.te'),
(10, 'rasul', 'test', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220', 'rasul@ras.ras');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `friend-name` varchar(15) DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `friend-name` (`friend-name`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `friend-name`) VALUES
(1, 'Иван', '2,11,4,6,8'),
(2, 'Петя', '1,6,3,7'),
(3, 'Сергей', '4,8,11'),
(4, 'Расул', '3,2,8'),
(5, 'Екатерина', '7,9,12,7,11'),
(6, 'Роман', '5,3,7'),
(7, 'Мария', '3,4,9,8'),
(8, 'Денчик', '1,3'),
(9, 'Станислав', '1,6,2,10,4'),
(10, 'Настя', '5,2,7,9'),
(11, 'Иван', '2,7,8,3,1,4,5'),
(12, 'Наталья', '2,6,3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
