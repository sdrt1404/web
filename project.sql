-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Окт 17 2022 г., 02:40
-- Версия сервера: 10.4.24-MariaDB
-- Версия PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `project`
--

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `group_number` varchar(7) DEFAULT NULL,
  `specialization` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `group_number`, `specialization`) VALUES
(1, '', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `specializations`
--

CREATE TABLE `specializations` (
  `id` int(11) NOT NULL,
  `name_sp` varchar(40) DEFAULT NULL,
  `about` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `specializations`
--

INSERT INTO `specializations` (`id`, `name_sp`, `about`) VALUES
(1, 'Автоматизированные системы обработки инф', 'Автоматизированная система – система, состоящая из персонала и комплекса средств автоматизации его деятельности, реализующая информационную технологию выполнения установленных функций. Автоматизированной системой обработки информации и управления будем называть систему, состоящую из взаимосвязанных и взаимодействующих в пространстве и во времени вычислительных, алгоритмических и связных средств, источников информации с метрологическим обеспечением, средств управления и отображения, применяемых для получения продукта заданного качества с участием человека в определенных условиях эксплуатации.'),
(2, 'АСОИУ', 'Автоматизированная система – система, состоящая из персонала и комплекса средств автоматизации его деятельности, реализующая информационную технологию выполнения установленных функций. Автоматизированной системой обработки информации и управления будем называть систему, состоящую из взаимосвязанных и взаимодействующих в пространстве и во времени вычислительных, алгоритмических и связных средств, источников информации с метрологическим обеспечением, средств управления и отображения, применяемых для получения продукта заданного качества с участием человека в определенных условиях эксплуатации.');

-- --------------------------------------------------------

--
-- Структура таблицы `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `group_number` text DEFAULT NULL,
  `group_numb` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` varchar(25) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `name_type` varchar(40) DEFAULT NULL,
  `specialization` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `description`, `name_type`, `specialization`) VALUES
(3, 'Иностранный язык', 'Современная цель обучения иностранному языку – формирование иноязычной коммуникативной и межкультурной компетенций. Это интегративные цели обучения, имеющие четкую практическую направленность. Планируемый результат обучения – владение иностранным языком школьниками как средством реального общения.', 'Общая подготовка', 'Автоматизированные системы обработки инф'),
(4, 'История (история России, ', '', 'Общая подготовка', 'Автоматизированные системы обработки инф'),
(5, 'Физическая культура и спо', '', 'Общая подготовка', 'Автоматизированные системы обработки инф'),
(6, 'Русский язык и культура р', '', 'Общая подготовка', 'Автоматизированные системы обработки инф'),
(7, 'Философия', '', 'Общая подготовка', 'Автоматизированные системы обработки инф'),
(8, 'Безопасность жизнедеятель', '', 'Общая подготовка', 'Автоматизированные системы обработки инф');

-- --------------------------------------------------------

--
-- Структура таблицы `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `name_type` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `type`
--

INSERT INTO `type` (`id_type`, `name_type`) VALUES
(2, 'Базовое программирование'),
(3, 'Базовые ИТ'),
(5, 'Гуманитарная подготовка'),
(4, 'Дисциплины по выбору'),
(6, 'Математическая подготовка'),
(1, 'Общая подготовка'),
(9, 'Практика и ГИА'),
(10, 'Проекты и проектная деятельность'),
(8, 'Профильная подготовка'),
(7, 'Специальное программирование');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_number` (`group_number`),
  ADD KEY `group_number_2` (`group_number`),
  ADD KEY `group_number_3` (`group_number`),
  ADD KEY `specialization` (`specialization`);

--
-- Индексы таблицы `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_sp` (`name_sp`);

--
-- Индексы таблицы `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_numb` (`group_numb`);

--
-- Индексы таблицы `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_type` (`name_type`),
  ADD KEY `name` (`name`),
  ADD KEY `specialization` (`specialization`);

--
-- Индексы таблицы `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`),
  ADD KEY `name_type` (`name_type`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `type`
--
ALTER TABLE `type`
  MODIFY `id_type` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`specialization`) REFERENCES `specializations` (`name_sp`);

--
-- Ограничения внешнего ключа таблицы `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`group_numb`) REFERENCES `groups` (`group_number`);

--
-- Ограничения внешнего ключа таблицы `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`name_type`) REFERENCES `type` (`name_type`) ON DELETE SET NULL,
  ADD CONSTRAINT `subjects_ibfk_2` FOREIGN KEY (`specialization`) REFERENCES `specializations` (`name_sp`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
