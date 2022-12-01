-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Ноя 29 2022 г., 19:56
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
-- Структура таблицы `semestrs`
--

CREATE TABLE `semestrs` (
  `id` int(11) NOT NULL,
  `name` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `semestrs`
--

INSERT INTO `semestrs` (`id`, `name`) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 6),
(7, 7),
(8, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `specializations`
--

CREATE TABLE `specializations` (
  `id` int(11) NOT NULL,
  `name_sp` varchar(60) DEFAULT NULL,
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
-- Структура таблицы `specsub`
--

CREATE TABLE `specsub` (
  `id` int(11) NOT NULL,
  `subject` varchar(50) DEFAULT NULL,
  `spec` varchar(60) DEFAULT NULL,
  `semestr` int(3) NOT NULL,
  `ze` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `specsub`
--

INSERT INTO `specsub` (`id`, `subject`, `spec`, `semestr`, `ze`) VALUES
(1, 'Иностранный язык', 'АСОИУ', 1, 2),
(2, 'Иностранный язык', 'АСОИУ', 2, 2),
(3, 'Иностранный язык', 'АСОИУ', 3, 2),
(4, 'Иностранный язык', 'АСОИУ', 4, 2),
(5, 'Иностранный язык', 'АСОИУ', 5, 2),
(6, 'Иностранный язык', 'АСОИУ', 6, 2),
(7, 'История (история России, всеобщая история)', 'АСОИУ', 1, 4),
(8, 'Философия', 'АСОИУ', 2, 2),
(9, 'Теория вероятностей и математическая статистика ', 'АСОИУ', 3, 4),
(10, 'Математическая логика и дискретная математика ', 'АСОИУ', 4, 4),
(11, 'Сети и телекоммуникации ', 'АСОИУ', 5, 4),
(12, 'Безопасность жизнедеятельности', 'АСОИУ', 6, 2),
(13, 'Управление программными проектами', 'АСОИУ', 7, 4),
(14, 'Корпоративные системы обработки данных', 'АСОИУ', 8, 3),
(15, 'Основы непрерывной интеграции', 'АСОИУ', 8, 2),
(16, 'Физическая культура и спорт', 'АСОИУ', 1, 2),
(17, 'Математический анализ', 'АСОИУ', 2, 4),
(18, 'Базы данных', 'АСОИУ', 3, 4),
(19, 'Базы данных', 'АСОИУ', 4, 4),
(20, 'Графические системы ', 'АСОИУ', 5, 4),
(21, 'Информационная безопасность и защита информации', 'АСОИУ', 6, 4),
(22, 'Правовое обеспечение информационных систем', 'АСОИУ', 7, 2),
(23, 'Программирования для мобильных устройств', 'АСОИУ', 7, 4),
(24, 'Производственная практика', 'АСОИУ', 8, 8),
(25, 'Русский язык и культура речи', 'АСОИУ', 1, 2),
(26, 'Линейная алгебра', 'АСОИУ', 1, 4),
(27, 'Теория информации', 'АСОИУ', 1, 2),
(28, 'Введение в специальность', 'АСОИУ', 1, 2),
(29, 'Офисные приложения', 'АСОИУ', 1, 4),
(30, 'Навыки эффективной презентации', 'АСОИУ', 1, 2),
(31, 'Введение в проектную деятельность', 'АСОИУ', 1, 2),
(32, 'Введение в программирование', 'АСОИУ', 1, 4),
(33, 'Численные методы в компьютерных вычислениях', 'АСОИУ', 2, 2),
(34, 'Проектирование интерфейсов информационных систем', 'АСОИУ', 2, 2),
(35, 'Операционные системы', 'АСОИУ', 2, 4),
(36, 'Технологии прикладного программирования', 'АСОИУ', 2, 4),
(37, 'Тайм менеджмент', 'АСОИУ', 2, 2),
(38, 'Учебная практика', 'АСОИУ', 2, 4),
(39, 'Управление проектами', 'АСОИУ', 2, 2),
(40, 'Проектная деятельность', 'АСОИУ', 2, 2),
(41, 'Аппаратное обеспечение информационных систем', 'АСОИУ', 3, 4),
(42, 'Системы управление разработкой ПО ', 'АСОИУ', 3, 2),
(43, 'Объектно-ориентированное программирование', 'АСОИУ', 3, 4),
(44, 'Конфликтология', 'АСОИУ', 3, 2),
(45, 'Анализ экономической эффективности цифровых решени', 'АСОИУ', 3, 2),
(46, 'Теория информационных процессов и систем', 'АСОИУ', 3, 4),
(47, 'Проектная деятельность', 'АСОИУ', 3, 2),
(48, 'Web-программирование и дизайн', 'АСОИУ', 4, 4),
(49, 'Технология кроссплатформенного программирования ', 'АСОИУ', 4, 4),
(50, 'Шаблоны проектирования', 'АСОИУ', 4, 2),
(51, 'Системный анализ', 'АСОИУ', 4, 4),
(52, 'Основы технологического предпринимательства ', 'АСОИУ', 4, 2),
(53, 'Проектная деятельность', 'АСОИУ', 4, 4),
(54, 'Системы искусственного интеллекта ', 'АСОИУ', 5, 4),
(55, 'Технология кроссплатформенного программирования ', 'АСОИУ', 5, 4),
(56, 'Цифровые методы обработки информации ', 'АСОИУ', 5, 4),
(57, 'Теория принятия решений', 'АСОИУ', 5, 2),
(58, 'Моделирование бизнес процессов / Моделирование сис', 'АСОИУ', 5, 4),
(59, 'Проектная деятельность', 'АСОИУ', 5, 2),
(60, 'Функциональное программирование', 'АСОИУ', 6, 4),
(61, 'Системы искусственного интеллекта ', 'АСОИУ', 6, 4),
(62, 'Анализ данных', 'АСОИУ', 6, 4),
(63, 'Цифровые методы обработки информации ', 'АСОИУ', 6, 4),
(64, 'Методология DevOps / Системное администрирование ', 'АСОИУ', 6, 4),
(65, 'Проектная деятельность', 'АСОИУ', 6, 2),
(66, 'Нечеткое моделирование', 'АСОИУ', 7, 3),
(67, 'Тестирование ПО', 'АСОИУ', 7, 3),
(68, 'Надежность, эргономика и качество АСОИУ', 'АСОИУ', 7, 2),
(69, 'Проектирование интеграционных решений', 'АСОИУ', 7, 4),
(70, 'Корпоративные системы обработки данных', 'АСОИУ', 7, 2),
(71, 'Рефакторинг / Разработка технических документации', 'АСОИУ', 7, 4),
(72, 'Проектная деятельность', 'АСОИУ', 7, 2),
(73, 'Преддипломная практика', 'АСОИУ', 8, 8),
(74, 'ГИА', 'АСОИУ', 8, 9);

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
  `name` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `name_type` varchar(40) DEFAULT NULL,
  `specialization` varchar(40) DEFAULT NULL,
  `color` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `description`, `name_type`, `specialization`, `color`) VALUES
(3, 'Иностранный язык', 'Современная цель обучения иностранному языку – формирование иноязычной коммуникативной и межкультурной компетенций. Это интегративные цели обучения, имеющие четкую практическую направленность. Планируемый результат обучения – владение иностранным языком школьниками как средством реального общения.', 'Общая подготовка', 'Автоматизированные системы обработки инф', '#d7e3c0'),
(4, 'История (история России, всеобщая история)', 'Изучение всеобщей истории способствует формированию общей картины исторического пути человечества, разных народов и государств, преемственности исторических эпох и непрерывности исторических процессов. Преподавание курса должно давать обучающимся представление о процессах, явлениях и понятиях мировой истории, сформировать знания о месте и роли России в мировом историческом процессе.', 'Общая подготовка', 'Автоматизированные системы обработки инф', '#d7e3c0'),
(5, 'Физическая культура и спорт', 'Область социальной деятельности, направленная на сохранение и укрепление здоровья человека в процессе осознанной двигательной активности. Это часть культуры, представляющая собой совокупность ценностей и знаний, создаваемых и используемых обществом в целях физического и интеллектуального развития способностей человека, совершенствования его двигательной активности и формирования здорового образа жизни, социальной адаптации путём физического воспитания, физической подготовки и физического развития.', 'Общая подготовка', 'Автоматизированные системы обработки инф', '#d7e3c0'),
(6, 'Русский язык и культура речи', 'Предмет курса «Русский язык и культура речи» – речевая культура как основной показатель культуры человека. Первая задача курса – скорректировать имеющиеся нарушения правильности речи, то есть нормы произношения, ударения, грамматики, на-учиться анализировать свою речь и речь окружающих, работать с основными словарями, в которых отражаются нормы русского литературного языка.', 'Общая подготовка', 'Автоматизированные системы обработки инф', '#d7e3c0'),
(7, 'Философия', 'Философия – это свободная и универсальная область человеческого знания. Это учение (вернее, множество учений) об общих принципах познания, бытия и отношений человека и мира. Собственно, предмет изучения - это абсолютно все, что касается взаимосвязи человека и мира. Включает элементы науки, религии, искусства.', 'Общая подготовка', 'Автоматизированные системы обработки инф', '#d7e3c0'),
(8, 'Безопасность жизнедеятельности', 'Безопасность жизнедеятельности (БЖД) – область научных знаний, изучающая опасности и способы защиты от них человека в любых условиях его обитания.\r\nГлавная задача науки о безопасности жизнедеятельности – превентивный анализ источников опасностей и причин их проявления, прогнозирование и оценка их действий в пространстве и во времени.', 'Общая подготовка', 'Автоматизированные системы обработки инф', '#d7e3c0'),
(14, 'Линейная алгебра', 'Линейная алгебра, раздел алгебры, изучающий векторные (линейные) пространства и их подпространства, линейные отображения (операторы), линейные, билинейные и квадратичные функции (функционалы или формы) на векторных пространствах.', 'Математическая подготовка', 'Автоматизированные системы обработки инф', '#fad7bc'),
(15, 'Теория информации', 'Раздел прикладной математики, радиотехники и информатики, относящийся к измерению количества информации, её свойств и устанавливающий предельные соотношения для систем передачи данных. Как и любая математическая теория, теория оперирует математическими моделями, а не реальными физическими объектами. Использует, главным образом, математический аппарат теории вероятностей и математической статистики.', 'Базовые ИТ', 'Автоматизированные системы обработки инф', '#9dbb65'),
(16, 'Введение в специальность', 'Дисциплина «Введение в специальность» как учебный предмет вариативной части учебного плана специальности призвана вооружать студентов знаниями о значении и необходимости специальности в социально-экономической сфере, роли и месте специалиста в правовом государстве, научить их учиться избранной специальности.', 'Базовые ИТ', 'Автоматизированные системы обработки инф', '#9dbb65'),
(17, 'Офисные приложения', 'Офисные приложения представляют собой группу программ, которые предоставляют различные функции и считаются широко используемыми в профессиональной сфере, а также на личном и академическом уровне.', 'Базовые ИТ', 'Автоматизированные системы обработки инф', '#9dbb65'),
(18, 'Введение в программирование', 'Изучение дисциплины «Введение в программирование» нацелено на освоение языков программирования и восполнение пробелов в знаниях по информатике, полученных в школе. ', 'Базовое программирование', 'Автоматизированные системы обработки инф', '#f7e49c'),
(19, 'Навыки эффективной презентации', 'Данная дисциплина направлена на улучшение навыков выступления перед аудиторией, получение базовых ораторских знаний и создания успешных презентаций.', 'Гуманитарная подготовка', 'Автоматизированные системы обработки инф', '#b8dde7'),
(20, 'Введение в проектную деятельность', 'Введение в проектную деятельность – это обязательный элемент введения, отражающий сферу деятельности, в рамках которой будет осуществляться исследование в проектной работе. В отличие от объекта исследования предмет исследования более конкретен, даёт представление о том, как новые отношения, функции или свойства объекта рассматриваются в ходе выполнения проектной работы.', 'Проекты и проектная деятельность', 'Автоматизированные системы обработки инф', '#e4b9b6'),
(21, 'Математический анализ', 'Математический анализ, раздел математики, в котором переменные величины (функции и их обобщения) изучаются с использованием пределов.', 'Математическая подготовка', 'Автоматизированные системы обработки инф', '#fad7bc'),
(22, 'Численные методы в компьютерных вычислениях', 'Предметом изучения вычислительной математики являются численные методы решения задач математического анализа: изучение алгоритма метода, условия сходимости итерационных методов, изучение границ применимости методов, исследования оценок погрешностей методов и вычислений.', 'Математическая подготовка', 'Автоматизированные системы обработки инф', '#fad7bc'),
(23, 'Проектирование интерфейсов информационных систем', 'Проектирование интерфейсов информационных систем это разработка  пользовательского интерфейса которое включает в себе определение типа интерфейса и общих требований, сценариев использования, пользовательской модели и тестирование программных интерфейсов.', 'Базовые ИТ', 'Автоматизированные системы обработки инф', '#9dbb65'),
(24, 'Операционные системы', 'Данная дисциплина представляет собой инструкцию по изучению и работе с современными операционными системами.', 'Базовые ИТ', 'Автоматизированные системы обработки инф', '#9dbb65'),
(25, 'Технологии прикладного программирования', 'Цель технологий прикладного программирования — это написание программ, которые предназначены для реализации конкретных задач и предполагают взаимообмен с пользователями. ', 'Базовое программирование', 'Автоматизированные системы обработки инф', '#f7e49c'),
(26, 'Тайм менеджмент', 'Тайм менеджмент - это действие или процесс тренировки сознательного контроля над временем, потраченным на конкретные виды деятельности, при котором специально увеличиваются эффективность и продуктивность.', 'Гуманитарная подготовка', 'Автоматизированные системы обработки инф', '#b8dde7'),
(27, 'Учебная практика', 'Учебная практика — это первое вхождение в деятельность, при котором происходит знакомство с организацией, её устройством, принципами, определенным функциональным местом. Производственная практика направлена на анализ деятельности организации и понимание ее устройства, выделение проблем функционирования всей организации или подразделения, анализ профессиональных техник, методик и инструментов, используемых в работах.', 'Практика и ГИА', 'Автоматизированные системы обработки инф', '#d8d8d8'),
(28, 'Управление проектами', 'Управление проектами – самостоятельная область научного знания, позволяющего на основе системного, структурного, деятельностного, управленческого подходов и методов проектирования осуществлять целенаправлен-ную деятельность по разработке и управлению проектом, изменением проектируемого объекта и достижение проект-ного результата.', 'Проекты и проектная деятельность', 'Автоматизированные системы обработки инф', '#e4b9b6'),
(29, 'Проектная деятельность', 'Проектная деятельность (ПД) — это дисциплина, направленная на получение практического опыта по специальности. Соответственно, для каждой специальности предлагаются уникальные проекты. Это могут быть как задачи, предложенные университетом, так и внешние.', 'Проекты и проектная деятельность', 'Автоматизированные системы обработки инф', '#e4b9b6'),
(30, 'Теория вероятностей и математическая статистика ', 'В курсе «Теория вероятностей и математическая статистика» дается представление о случайных событиях и их вероятностях, случайных величинах и законах их распределения, закономерностях массовых однородных случайных процессов. Рассматриваются методы сбора, обработки и интерпретации статистических данных для получения научных и практических результатов.', 'Математическая подготовка', 'Автоматизированные системы обработки инф', '#fad7bc'),
(31, 'Базы данных', 'База данных - это организованный набор данных, обычно хранящихся и доступных в электронном виде из компьютерной системы. Данная дисциплина предназначена по работе с этими данными, и программами СУБД.', 'Базовые ИТ', 'Автоматизированные системы обработки инф', '#9dbb65'),
(32, 'Аппаратное обеспечение информационных систем', 'Аппаратное обеспечение ИС -- комплекс электронных, электрических и механических устройств, входящих в состав информационной системы или сети. Аппаратным сопровождением информационных систем являются такие компоненты, как персональные компьютеры (ПК), серверы, системы хранения данных (СХД), сетевые средства (коммутаторы, маршрутизаторы).', 'Базовые ИТ', 'Автоматизированные системы обработки инф', '#9dbb65'),
(33, 'Системы управление разработкой ПО ', 'Управление разработкой программных систем (software management) — это деятельность, направленная на обеспечение необходимых условий для работы коллектива разработчиков программного обеспечения (ПО), на планирование и контроль деятельности этого коллектива с целью обеспечения требуемого качества ПО, выполнения сроков и бюджета разработки ПО.', 'Базовые ИТ', 'Автоматизированные системы обработки инф', '#9dbb65'),
(34, 'Объектно-ориентированное программирование', 'Объектно-ориентированное программирование, ООП – это одна из парадигм разработки, подразумевающая организацию программного кода, ориентируясь на данные и объекты, а не на функции и логические структуры. Дисциплина предназначена на освоение методов работы с ООП.', 'Базовое программирование', 'Автоматизированные системы обработки инф', '#f7e49c'),
(35, 'Конфликтология', 'Конфликтология — междисциплинарная область знания, изучающая закономерности зарождения, возникновения, развития, разрешения и завершения конфликтов любого уровня. Конфликтология развивается в тесной связи с философией, социологией, психологией, историей, правом, этикой, экономикой, менеджментом и рядом других наук.', 'Гуманитарная подготовка', 'Автоматизированные системы обработки инф', '#b8dde7'),
(36, 'Анализ экономической эффективности цифровых решени', 'Дисциплина представляет собой совокупность методов оценки эффективности цифровых решений. Предметом исследования выступают экономические процессы, возникающие при реализации методического инструментария экономической оценки потенциала цифровых решений на крупном промышленном предприятии.', 'Гуманитарная подготовка', 'Автоматизированные системы обработки инф', '#b8dde7'),
(37, 'Теория информационных процессов и систем', 'Теория информационных процессов и систем - это эффективные стили мышления в рамках сложившейся методологии системного подхода.', 'Профильная подготовка', 'Автоматизированные системы обработки инф', '#ffffff'),
(38, 'Математическая логика и дискретная математика ', 'Часть математики, изучающая дискретные математические структуры, такие как графы и утверждения в логике. В контексте математики в целом дискретная математика часто отождествляется с конечной математикой - направлением, изучающим конечные структуры - конечные графы, конечные группы, конечные автоматы.', 'Математическая подготовка', 'Автоматизированные системы обработки инф', '#fad7bc'),
(39, 'Web-программирование и дизайн', 'Курс \"Web-программирования и дизайн\" относится к тем дисциплинам, которые закладывают основу знаний магистров по разработке, настройке, поддержке и сопровождению web-сайтов. Целями освоения дисциплины являются: овладение общей методикой дизайн-проектирования web-сайта; овладение технологиями художественного оформления web-сайта; овладение технологией размещения, поддержки и сопровождения web-сайта на сервере.', 'Базовое программирование', 'Автоматизированные системы обработки инф', '#f7e49c'),
(40, 'Технология кроссплатформенного программирования ', 'Умение использовать программные обеспечения для работы с несколькими аппаратными платформами или операционными системами. Обеспечивается благодаря использованию высокоуровневых языков программирования, сред разработки и выполнения, поддерживающих условную.', 'Профильная подготовка', 'Автоматизированные системы обработки инф', '#ffffff'),
(41, 'Шаблоны проектирования', 'Шаблон проектирования или паттерн (англ. design pattern) в разработке программного обеспечения — повторяемая архитектурная конструкция, представляющая собой решение проблемы проектирования в рамках некоторого часто возникающего контекста.', 'Профильная подготовка', 'Автоматизированные системы обработки инф', '#ffffff'),
(42, 'Системный анализ', 'Системный анализ – это научная дисциплина, занимающаяся проблемами принятия решений в условиях анализа большего количества информации различной природы. Целью применения системного анализа является повышение степени обоснованности принимаемого решения, расширение множества вариантов, среди которых производится обоснованный выбор.', 'Профильная подготовка', 'Автоматизированные системы обработки инф', '#ffffff'),
(43, 'Основы технологического предпринимательства ', 'Задачами дисциплины является: изучение и освоение на практике методов работы в ключевых аспектах ведения профессиональной деятельности: получение знаний о методах, формах и инструментах предпринимательской деятельности в сфере наукоемких технологий; овладение практическим опытом разработки проектов новых бизнесов на основе инноваций в сфере наукоемких технологий; реализация полученных навыков и умений в рамках проектной деятельности.', 'Проекты и проектная деятельность', 'Автоматизированные системы обработки инф', '#e4b9b6'),
(44, 'Сети и телекоммуникации ', 'Дисциплина \"Сети и системы телекоммуникаций\"является базовой для понимания принципов функционирования современных сетей и си-стем телекоммуникаций, представляющих собой основу мировой информационной инфраструктуры. Дисциплина разбита на три семестровых раздела и предлагает слушателям необходимый для понимания и более глубокого дальнейшего изучения материал по физическому устройству и организационным основам функционирования современных телекоммуникационных сетей и систем.', 'Базовые ИТ', 'Автоматизированные системы обработки инф', '#9dbb65'),
(45, 'Графические системы ', '\"Графические системы \" - это сравнительно молодая научная дисциплина, возникшая из потребностей практики в связи с бурным научно-техническим прогрессом и, в первую очередь, из-за появления сложных систем визуализации с большим числом элементов электроники и автоматики. Изучение дисциплины обеспечивает профессиональную подготовку современного специалиста в области управления и системного анализа.', 'Базовые ИТ', 'Автоматизированные системы обработки инф', '#9dbb65'),
(46, 'Системы искусственного интеллекта ', 'Дисциплина «Системы искусственного интеллекта» включает в себя рассмотрение основных вопросов современной теории и практики построения интеллектуальных систем, рассматриваются вопросы представления знаний, построения механизмов вывода, изучение логики предикатов 1-го порядка, автоматическое принятие решений, основанное на знаниях и рассуждениях.', 'Профильная подготовка', 'Автоматизированные системы обработки инф', '#ffffff'),
(47, 'Цифровые методы обработки информации ', 'Цель освоения дисциплины: формирование набора общенаучных, профессиональных и специальных компетенций будущего бакалавра по соответствующему направлению подготовки.', 'Профильная подготовка', 'Автоматизированные системы обработки инф', '#ffffff'),
(48, 'Теория принятия решений', 'Область исследования, вовлекающая понятия и методы математики, статистики, экономики, менеджмента и психологии с целью изучения закономерностей выбора людьми путей решения проблем и задач, а также способов достижения желаемого результата.', 'Профильная подготовка', 'Автоматизированные системы обработки инф', '#ffffff'),
(49, 'Моделирование бизнес процессов / Моделирование сис', 'Целью освоения учебной дисциплины «Моделирование бизнес-процессов» является формирование у обучающихся компетенций, установленных ФГОС ВО, по проектированию и моделированию бизнес процессов. ', 'Дисциплины по выбору', 'Автоматизированные системы обработки инф', '#ab9abf'),
(50, 'Информационная безопасность и защита информации', 'Практика предотвращения несанкционированного доступа, использования, раскрытия, искажения, изменения, исследования, записи или уничтожения информации. Это универсальное понятие применяется вне зависимости от формы, которую могут принимать данные. Основная задача информационной безопасности - сбалансированная защита конфиденциальности, целостности и доступности данных, с учётом целесообразности применения и без какого-либо ущерба производительности организации.', 'Базовые ИТ', 'Автоматизированные системы обработки инф', '#9dbb65'),
(51, 'Функциональное программирование', 'Парадигма программирования, в которой процесс вычисления трактуется как вычисление значений функций в математическом понимании последних.  ', 'Профильная подготовка', 'Автоматизированные системы обработки инф', '#ffffff'),
(52, 'Анализ данных', 'Область математики и информатики, занимающаяся построением и исследованием наиболее общих математических методов и вычислительных алгоритмов извлечения знаний из экспериментальных данных; процесс исследования, фильтрации, преобразования и моделирования данных с целью извлечения полезной информации и принятия решений. Анализ данных имеет множество аспектов и подходов, охватывает разные методы в различных областях науки и деятельности.', 'Профильная подготовка', 'Автоматизированные системы обработки инф', '#ffffff'),
(53, 'Методология DevOps / Системное администрирование ', 'Методология DevOps - это методология автоматизации технологических процессов сборки, настройки и развёртывания программного обеспечения.  «Системное администрирование» – научно-техническая дисциплина, основной целью которой является изучение назначения, функций и общих структурных решений построения системного программного обеспечения (СПО), организации подсистемы ввода-вывода в современных операционных системах (ОС) и углубленного изучения внутреннего устройства и алгоритмов работы современных файловых систем (ФС).', 'Дисциплины по выбору', 'Автоматизированные системы обработки инф', '#ab9abf'),
(54, 'Управление программными проектами', 'Управление программными проектами-это искусство и наука планирования и руководства программными проектами. Это субдисциплина управления проектами, в которой программные проекты планируются, реализуются, контролируются и контролируются.', 'Базовые ИТ', 'Автоматизированные системы обработки инф', '#9dbb65'),
(55, 'Правовое обеспечение информационных систем', 'Правовое обеспечение функционирования информационных систем – совокупность правовых норм, определяющих создание, юридический статус и функционирование информационных систем, регламентирующих порядок получения, преобразования и использования информации.', 'Гуманитарная подготовка', 'Автоматизированные системы обработки инф', '#b8dde7'),
(56, 'Программирования для мобильных устройств', 'Это процесс, при котором приложения разрабатываются для небольших портативных устройств, таких, как КПК, смартфоны или сотовые телефоны. Эти приложения могут быть предустановлены на устройство в процессе производства, загружены пользователем с помощью различных платформ для распространения ПО или являться веб-приложениями, которые обрабатываются на стороне клиента или сервера.', 'Базовое программирование', 'Автоматизированные системы обработки инф', '#f7e49c'),
(57, 'Нечеткое моделирование', 'Цель дисциплины подготовить студента к самостоятельному применению методов нечеткого моделирования. при исследовании, проектировании автоматизированных производственных систем.', 'Профильная подготовка', 'Автоматизированные системы обработки инф', '#ffffff'),
(58, 'Тестирование ПО', 'Тестирование (testing) программного обеспечения (ПО) – это процесс исследования ПО с целью выявления ошибок и определения соответствия между реальным и ожидаемым поведением ПО, осуществляемый на основе набора тестов, выбранных определённым образом.\r\nВ более широком смысле, тестирование ПО – это техника контроля качества программного продукта, включающая в себя проектирование тестов, выполнение тестирования и анализ полученных результатов.', 'Профильная подготовка', 'Автоматизированные системы обработки инф', '#ffffff'),
(59, 'Надежность, эргономика и качество АСОИУ', 'Целью дисциплины «Надежность, эргономика и качество АСОИУ» является ознакомление студентов с понятием «качества АСОИУ», характеристиками качества, методами оценки и повышения качества. Основное внимание при изложении материала уделяется различным методам повышения надежности и качества создаваемых систем, организационным мероприятиям, позволяющим улучшить показатели надежности и качества АСОИУ, в том числе современным методам и технологиям тестирования и документирования.', 'Профильная подготовка', 'Автоматизированные системы обработки инф', '#ffffff'),
(60, 'Проектирование интеграционных решений', 'Проектирование интеграционных решений - программно-аппаратный комплекс, предназначенный для проектирования АСУТП и реализующий в разработанной функции управления верхнего уровня. .', 'Профильная подготовка', 'Автоматизированные системы обработки инф', '#ffffff'),
(61, 'Корпоративные системы обработки данных', 'Целью дисциплины является освоение студентами методологии проектирования и эксплуатации корпоративных информационных систем. Основной задачей изучения дисциплины является задача познакомить\r\nстудентов с методиками построения информационных систем предприятий и\r\nнаучить использовать современные ERP средства. ', 'Профильная подготовка', 'Автоматизированные системы обработки инф', '#ffffff'),
(62, 'Рефакторинг / Разработка технических документации', 'Рефакторинг (англ. refactoring), или перепроектирование кода, переработка кода, равносильное преобразование алгоритмов — процесс изменения внутренней структуры программы, не затрагивающий её внешнего поведения и имеющий целью облегчить понимание её работы. Основная цель курса “Разработка технической документации” состоит в получении знаний и практических навыков по созданию, оформлению и выпуску комплектов конструкторской и программной документации для обеспечения всесторонней технической подготовки будущего специалиста.', 'Профильная подготовка', 'Автоматизированные системы обработки инф', '#ffffff'),
(63, 'Основы непрерывной интеграции', 'Непрерывная интеграция (CI, англ. Continuous Integration) — практика разработки программного обеспечения, которая заключается в постоянном слиянии рабочих копий в общую основную ветвь разработки (до нескольких раз в день) и выполнении частых автоматизированных сборок проекта для скорейшего выявления потенциальных дефектов и решения интеграционных проблем.', 'Профильная подготовка', 'Автоматизированные системы обработки инф', '#ffffff'),
(64, 'Производственная практика', 'Производственная практика — практическая часть учебного процесса подготовки квалифицированных рабочих и специалистов, проходящая, как правило, на различных предприятиях в условиях реального производства. Является заключительной частью учебной практики, проходящей в учебном заведении.', 'Практика и ГИА', 'Автоматизированные системы обработки инф', '#d8d8d8'),
(65, 'Преддипломная практика', 'Преддипломная практика как один из видов производственной практики, формирующей исследовательские и организационные компетенции, является составной частью основной образовательной программы.', 'Практика и ГИА', 'Автоматизированные системы обработки инф', '#d8d8d8'),
(66, 'ГИА', 'Государственная итоговая аттестация (ГИА) – форма оценки степени и уровня освоения обучающимися имеющей государственную аккредитацию образовательной программы, которая проводится государственными экзаменационными комиссиями в целях определения соответствия результатов освоения обучающимися основных образовательных программ, соответствующих требованиям стандартов высшего образования.', 'Практика и ГИА', 'Автоматизированные системы обработки инф', '#d8d8d8');

-- --------------------------------------------------------

--
-- Структура таблицы `type`
--

CREATE TABLE `type` (
  `id_type` int(11) NOT NULL,
  `name_type` varchar(40) NOT NULL,
  `color` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `type`
--

INSERT INTO `type` (`id_type`, `name_type`, `color`) VALUES
(1, 'Общая подготовка', '#d7e3c0'),
(2, 'Базовое программирование', '#f7e49c'),
(3, 'Базовые ИТ', '#9dbb65'),
(4, 'Дисциплины по выбору', '#ab9abf'),
(5, 'Гуманитарная подготовка', '#b8dde7'),
(6, 'Математическая подготовка', '#fad7bc'),
(7, 'Специальное программирование', ''),
(8, 'Профильная подготовка', '#ffffff'),
(9, 'Практика и ГИА', '#d8d8d8'),
(10, 'Проекты и проектная деятельность', '#e4b9b6');

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
-- Индексы таблицы `semestrs`
--
ALTER TABLE `semestrs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Индексы таблицы `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name_sp` (`name_sp`);

--
-- Индексы таблицы `specsub`
--
ALTER TABLE `specsub`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subject` (`subject`),
  ADD KEY `spec` (`spec`),
  ADD KEY `semestr` (`semestr`);

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
  ADD KEY `name` (`name`),
  ADD KEY `specialization` (`specialization`),
  ADD KEY `subjects_ibfk_1` (`name_type`),
  ADD KEY `subjects_ibfk_2` (`color`);

--
-- Индексы таблицы `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`id_type`),
  ADD KEY `name_type` (`name_type`),
  ADD KEY `color` (`color`),
  ADD KEY `color_2` (`color`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `semestrs`
--
ALTER TABLE `semestrs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `specsub`
--
ALTER TABLE `specsub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT для таблицы `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

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
-- Ограничения внешнего ключа таблицы `specsub`
--
ALTER TABLE `specsub`
  ADD CONSTRAINT `specsub_ibfk_1` FOREIGN KEY (`subject`) REFERENCES `subjects` (`name`) ON UPDATE SET NULL,
  ADD CONSTRAINT `specsub_ibfk_2` FOREIGN KEY (`spec`) REFERENCES `specializations` (`name_sp`) ON UPDATE CASCADE,
  ADD CONSTRAINT `specsub_ibfk_3` FOREIGN KEY (`semestr`) REFERENCES `semestrs` (`name`);

--
-- Ограничения внешнего ключа таблицы `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`group_numb`) REFERENCES `groups` (`group_number`);

--
-- Ограничения внешнего ключа таблицы `subjects`
--
ALTER TABLE `subjects`
  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`name_type`) REFERENCES `type` (`name_type`) ON UPDATE CASCADE,
  ADD CONSTRAINT `subjects_ibfk_2` FOREIGN KEY (`color`) REFERENCES `type` (`color`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;