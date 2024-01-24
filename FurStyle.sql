-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Янв 24 2024 г., 09:06
-- Версия сервера: 5.7.39-log
-- Версия PHP: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `FurStyle`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Administrator`
--

CREATE TABLE `Administrator` (
  `id` int(11) NOT NULL,
  `login` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Структура таблицы `answers`
--

CREATE TABLE `answers` (
  `id` int(11) NOT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_correct` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `answers`
--

INSERT INTO `answers` (`id`, `question_id`, `answer_text`, `is_correct`) VALUES
(23, 14, 'Да', 1),
(24, 14, 'нет', 0),
(25, 13, 'нет', 0),
(26, 13, 'да', 1),
(27, 15, 'Боб', 1),
(28, 15, 'Брэндон', 0),
(29, 16, 'Брэндон', 1),
(30, 16, 'Роберт', 0),
(31, 18, '200k$', 0),
(32, 18, '320k$', 1),
(33, 17, 'да', 1),
(34, 17, 'нет', 0),
(35, 23, 'не смешно', 0),
(36, 23, 'смешно', 1),
(37, 24, 'пРОВЕРКА', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `Cart`
--

CREATE TABLE `Cart` (
  `id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Cart`
--

INSERT INTO `Cart` (`id`, `client_id`, `product_id`) VALUES
(1, 5, 1),
(51, 10, 20),
(52, 12, 20),
(53, 12, 21),
(54, 5, 3);

-- --------------------------------------------------------

--
-- Структура таблицы `Client`
--

CREATE TABLE `Client` (
  `id` int(11) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `password` longtext NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `isAdmin` int(11) NOT NULL,
  `balance` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Client`
--

INSERT INTO `Client` (`id`, `firstName`, `lastName`, `password`, `phone`, `email`, `isAdmin`, `balance`) VALUES
(5, 'Артур', 'Хайруллин', '$2y$10$3e43ImqEkQ.pJ6ImR7LTnu.kGV5.p60J0Tsnq0kkI.SW9.XMb5Or2', '+7 (951) 801-80 25', 'hack1medait@gmail.com', 1, 65006),
(15, 'Менеджер', 'Младший', '$2y$10$SXRARR0SI81Ia7nNZjg6musltu5H.aFaaebwg1IUtXLj5QDNVIzg6', '+7 (951) 801-80 32', 'meneg@gmail.com', 2, 0),
(16, '123', '321', '$2y$10$eSoJfjtWUBxM8Kl1i9pZK.bzOkMzi9rmVmbvY/jXUdg0gAPzu6lOS', '+7545354345', '123@gmail.com', 0, 0),
(17, 'Коля', 'Чернышев', '$2y$10$ho/G4ti7AnBroyAxqfutAuwaH.qIaaspMToFWvVTqGWy7063RWEue', '+7 (545) 644-56 45', 'mene3123123g@gmail.com', 0, 0),
(18, 'Вовчик любит банан?', '2', '$2y$10$hws17eyNjEUVe61JGbzxlegO3NI1GGKIxXTOWtfignjOtI8CJozVm', '', '1', 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `Comments`
--

CREATE TABLE `Comments` (
  `id` int(11) NOT NULL,
  `text` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Comments`
--

INSERT INTO `Comments` (`id`, `text`) VALUES
(1, 'Круть'),
(2, 'Вау'),
(3, 'Класс'),
(4, '\"Спасибо за помощь в выборе! '),
(5, 'Кайфффик');

-- --------------------------------------------------------

--
-- Структура таблицы `Product`
--

CREATE TABLE `Product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` int(11) NOT NULL,
  `image_path` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Product`
--

INSERT INTO `Product` (`id`, `name`, `price`, `image_path`) VALUES
(3, 'Аронт Мини', 3500, 'image/3.jpg'),
(20, 'Льери Мини', 36500, 'image/1.jpg'),
(21, 'Тут Рядом Космос', 1200, 'image/2.jpg'),
(24, 'Самми', 27000, 'image/8.jpg'),
(25, 'Арклоу\r\n', 24600, 'image/4.jpg'),
(26, 'Кейсес', 13000, 'image/5.jpg'),
(27, 'Бруквиль', 13000, 'image/6.jpg'),
(28, 'Коренс', 17000, 'image/7.jpg'),
(29, 'Эби-1', 12000, 'image/9.jpg'),
(30, 'Слипсон Мини\r\n', 10000, 'image/10.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `questions_ball` int(11) NOT NULL,
  `test_id` int(11) NOT NULL,
  `NameTest` varchar(155) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `questions`
--

INSERT INTO `questions` (`id`, `question_text`, `questions_ball`, `test_id`, `NameTest`) VALUES
(13, 'Умен ли Андрей?', 2, 0, 'Андрей и Футбольная тима'),
(14, 'Сделал ли я дз?', 2, 0, 'Какаха'),
(15, 'Кто глава Футбольной команды?', 3, 0, ''),
(16, 'Кто глава Баскетбольной команды?', 3, 1, 'Какаха'),
(17, 'Делал ли ты дз?', 2, 1, 'Андрей и Футбольная тима'),
(18, 'Сколько стоит Ламба', 2, 1, ''),
(23, 'хахвхвхахавхвахва', 2, 2, '2'),
(24, 'ПРОВЕРКА ТЕСТОВ', 2, 3, 'ПРОВЕРКА'),
(25, 'КАК', 2, 3, 'КУ');

-- --------------------------------------------------------

--
-- Структура таблицы `results`
--

CREATE TABLE `results` (
  `id` int(11) NOT NULL,
  `surname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `user_answers`
--

CREATE TABLE `user_answers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `answer_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `user_answers`
--

INSERT INTO `user_answers` (`id`, `user_id`, `question_id`, `answer_id`) VALUES
(48, 17, 2, 4),
(49, 5, 8, 14),
(50, 15, 123, 123),
(51, 5, 1, 1),
(52, 5, 2, 4),
(53, 5, 3, 7),
(54, 5, 4, 9),
(55, 5, 7, 11),
(56, 5, 14, 23),
(57, 5, 13, 26),
(58, 5, 14, 23),
(59, 5, 15, 27);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Administrator`
--
ALTER TABLE `Administrator`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `answers`
--
ALTER TABLE `answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `question_id` (`question_id`);

--
-- Индексы таблицы `Cart`
--
ALTER TABLE `Cart`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Индексы таблицы `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Comments`
--
ALTER TABLE `Comments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Product`
--
ALTER TABLE `Product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `price` (`price`);

--
-- Индексы таблицы `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `question_id` (`question_id`),
  ADD KEY `answer_id` (`answer_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Administrator`
--
ALTER TABLE `Administrator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `answers`
--
ALTER TABLE `answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT для таблицы `Cart`
--
ALTER TABLE `Cart`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT для таблицы `Client`
--
ALTER TABLE `Client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `Comments`
--
ALTER TABLE `Comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `Product`
--
ALTER TABLE `Product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `results`
--
ALTER TABLE `results`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `answers`
--
ALTER TABLE `answers`
  ADD CONSTRAINT `answers_ibfk_1` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`);

--
-- Ограничения внешнего ключа таблицы `Cart`
--
ALTER TABLE `Cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `Client` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_answers`
--
ALTER TABLE `user_answers`
  ADD CONSTRAINT `user_answers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `client` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_answers_ibfk_2` FOREIGN KEY (`answer_id`) REFERENCES `answers` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_answers_ibfk_3` FOREIGN KEY (`question_id`) REFERENCES `questions` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `user_answers_ibfk_4` FOREIGN KEY (`user_id`) REFERENCES `client` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
