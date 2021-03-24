-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 25 2021 г., 00:36
-- Версия сервера: 5.6.47
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `wow1`
--

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `rockPosition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jumpPosition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rockSize` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `result` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `results`
--

INSERT INTO `results` (`id`, `rockPosition`, `duration`, `jumpPosition`, `rockSize`, `result`) VALUES
(1, '915', '89543', '914', '77', 'success'),
(2, '476', '7937', '474', '75', 'success'),
(3, '652', '21867', '650', '59', 'success'),
(4, '332', '2007', '0', '44', 'fail'),
(5, '512', '8018', '510', '74', 'success'),
(6, '569', '8003', '568', '84', 'success'),
(7, '370', '7978', '368', '48', 'success'),
(8, '769', '7992', '768', '80', 'success'),
(9, '689', '8015', '688', '77', 'success'),
(10, '517', '7994', '516', '73', 'success'),
(11, '911', '8045', '910', '75', 'success'),
(12, '406', '8002', '404', '54', 'success'),
(13, '711', '7994', '710', '66', 'success'),
(14, '685', '7991', '684', '70', 'success'),
(15, '280', '7994', '278', '80', 'success'),
(16, '740', '7988', '738', '77', 'success'),
(17, '866', '8048', '864', '81', 'success'),
(18, '723', '8044', '722', '50', 'success'),
(19, '279', '15093', '278', '46', 'success'),
(20, '734', '7963', '732', '41', 'success'),
(21, '330', '8006', '328', '71', 'success'),
(22, '802', '8010', '800', '43', 'success'),
(23, '347', '7992', '346', '61', 'success');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
