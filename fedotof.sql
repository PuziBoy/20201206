-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1
-- Время создания: Дек 06 2020 г., 19:19
-- Версия сервера: 10.4.14-MariaDB
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `fedotof`
--

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `code` varchar(3) NOT NULL,
  `value` varchar(15) NOT NULL,
  `listOrder` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`id`, `code`, `value`, `listOrder`) VALUES
(1, 'RUS', 'Русский', 1),
(2, 'EST', 'Eesti', 2),
(3, 'ENG', 'English', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `menu`
--

CREATE TABLE `menu` (
  `id` int(11) NOT NULL,
  `code` tinytext NOT NULL,
  `value` text NOT NULL,
  `link` mediumtext NOT NULL,
  `listOrder` int(11) NOT NULL,
  `lang` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `menu`
--

INSERT INTO `menu` (`id`, `code`, `value`, `link`, `listOrder`, `lang`) VALUES
(1, 'menuShop', 'Магазин', '', 1, 'RUS'),
(2, 'menuShop', 'Shop', '', 2, 'ENG'),
(3, 'menuShop', 'Pood', '', 3, 'EST'),
(4, 'menuMain', 'Главная', '#main', 4, 'RUS'),
(5, 'menuMain', 'Main', '#main', 5, 'ENG'),
(6, 'menuMain', 'Kodu', '#main', 6, 'EST'),
(7, 'menuNews', 'Новости', '', 7, 'RUS'),
(8, 'menuNews', 'News', '', 9, 'ENG'),
(9, 'menuNews', 'Uudised', '', 9, 'EST'),
(10, 'menuCatalog', 'Каталог', '', 10, 'RUS'),
(11, 'menuCatalog', 'Catalog', '', 11, 'ENG'),
(12, 'menuCatalog', 'Kataloog', '', 12, 'EST'),
(13, 'menuNewItems', 'Новинки!', '', 13, 'RUS'),
(14, 'menuNewItems', 'New Items!', '', 14, 'ENG'),
(15, 'menuNewItems', 'Uued üksused!', '', 15, 'EST'),
(16, 'menuComp', 'Компьютерная техника', '#comp', 16, 'RUS'),
(17, 'menuComp', 'Computer technology', '#comp', 17, 'ENG'),
(18, 'menuComp', 'Arvutitehnoloogia', '#comp', 18, 'EST'),
(19, 'menuOdejda', 'Одежда', '#wear', 19, 'RUS'),
(20, 'menuOdejda', 'Clothes', '#wear', 20, 'ENG'),
(21, 'menuOdejda', 'Riietud', '#wear', 21, 'EST'),
(22, 'menuAkcii', 'Акции!', '', 22, 'RUS'),
(23, 'menuAkcii', 'Promotions!', '', 23, 'ENG'),
(24, 'menuAkcii', 'Kampaaniad!', '', 24, 'EST'),
(25, 'menuKontakt', 'Контакты', '#fat', 25, 'RUS'),
(26, 'menuKontakt', 'Contacts', '#fat', 26, 'ENG'),
(27, 'menuKontakt', 'Kontaktid', '#fat', 27, 'EST');

-- --------------------------------------------------------

--
-- Структура таблицы `services`
--

CREATE TABLE `services` (
  `id` int(11) NOT NULL,
  `code` tinytext NOT NULL,
  `title` tinytext NOT NULL,
  `lead` tinyint(4) NOT NULL,
  `theText` text NOT NULL,
  `listOrder` int(11) NOT NULL,
  `photo` text NOT NULL,
  `lang` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `services`
--

INSERT INTO `services` (`id`, `code`, `title`, `lead`, `theText`, `listOrder`, `photo`, `lang`) VALUES
(1, 'nintendo', 'Nintendo NES', 1, '115 евро', 1, 'photos/nintendo.jpg', 'RUS'),
(2, 'nintendo', 'Nintendo NES', 1, '115 euros', 2, 'photos/nintendo.jpg', 'ENG'),
(3, 'nintendo', 'Nintendo NES', 1, '115 eurot', 3, 'photos/nintendo.jpg', 'EST'),
(4, 'spectrum', 'ZX Spectrum', 1, '80 евро', 4, 'photos/spectrum.jpg', 'RUS'),
(5, 'spectrum', 'ZX Spectrum', 1, '80 euros', 5, 'photos/spectrum.jpg', 'ENG'),
(6, 'spectrum', 'ZX Spectrum', 1, '80 eurot', 6, 'photos/spectrum.jpg', 'EST'),
(7, 'sega', 'Sega Mega Drive 2', 1, '50 евро', 7, 'photos/sega.jpg', 'RUS'),
(8, 'sega', 'Sega Mega Drive 2', 1, '50 euros', 8, 'photos/sega.jpg', 'ENG'),
(9, 'sega', 'Sega Mega Drive 2', 1, '50 eurot', 9, 'photos/sega.jpg', 'EST'),
(10, 'elc', 'Электроника \"Ну погоди!\"', 1, '10 евро', 10, 'photos/elc.jpg', 'RUS'),
(11, 'elc', 'Electronics \"Just you wait!\"', 1, '10 euros', 11, 'photos/elc.jpg', 'ENG'),
(12, 'elc', 'Elektroonika \"Oota!\"', 1, '10 eurot', 12, 'photos/elc.jpg', 'EST'),
(13, 'vintage-1', 'Винтажный свитер 1', 2, '15 евро', 13, 'photos/vintage.jpg', 'RUS'),
(14, 'vintage-1', 'Vintage sweater 1', 2, '15 euros', 14, 'photos/vintage.jpg', 'ENG'),
(15, 'vintage-1', 'Vintage kampsun 1', 2, '15 eurot', 15, 'photos/vintage.jpg', 'EST'),
(16, 'vintage-2', 'Винтажный свитер 2', 2, '10 евро', 16, 'photos/vintage-2.jpg\r\n', 'RUS'),
(17, 'vintage-2', 'Vintage sweater 2', 2, '10 euros', 17, 'photos/vintage-2.jpg\r\n', 'ENG'),
(18, 'vintage-2', 'Vintage kampsun 2', 2, '10 eurot', 18, 'photos/vintage-2.jpg', 'EST'),
(19, 'vintage-3', 'Винтажный свитер 3', 2, '12 евро', 0, 'photos/vintage-3.jpg', 'RUS'),
(20, 'vintage-3', 'Vintage sweater 3', 2, '12 euros', 20, 'photos/vintage-3.jpg', 'ENG'),
(21, 'vintage-3', 'Vintage kampsun 1', 2, '12 eurot', 21, 'photos/vintage-3.jpg', 'EST'),
(22, 'vintage-4', 'Винтажный свитер 4', 2, '12 евро', 22, 'photos/vintage-4.jpg', 'RUS'),
(23, 'vintage-4', 'Vintage sweater 4', 2, '12 euros', 23, 'photos/vintage-4.jpg', 'ENG'),
(24, 'vintage-4', 'Vintage kampsun 4', 2, '12 eurot', 24, 'photos/vintage-4.jpg', 'EST'),
(25, 'banan', 'Джинсы бананы', 2, '13 евро', 25, 'photos/banan.jpg', 'RUS'),
(26, 'banan', 'Banana jeans', 2, '13 euros', 26, 'photos/banan.jpg', 'ENG'),
(27, 'banan', 'Banaanist teksad', 2, '13 eurot', 27, 'photos/banan.jpg', 'EST');

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `code` tinytext NOT NULL,
  `value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `code`, `value`) VALUES
(1, 'fenek', 'photos/fenek.png'),
(2, 'second', 'photos/second.jpg'),
(3, 'comp', 'photos/comp.jpg'),
(12, 'map', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d2029.0038594481532!2d24.762196116076524!3d59.4330101816952!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x4692935f45066adb%3A0xbb5cf58af9ed0911!2sTartu%20maantee%2029%2C%2010128%20Tallinn!5e0!3m2!1sru!2see!4v1607199061038!5m2!1sru!2see');

-- --------------------------------------------------------

--
-- Структура таблицы `terms`
--

CREATE TABLE `terms` (
  `id` int(11) NOT NULL,
  `code` tinytext NOT NULL,
  `value` mediumtext NOT NULL,
  `lang` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `terms`
--

INSERT INTO `terms` (`id`, `code`, `value`, `lang`) VALUES
(1, 'aboutUs', 'Описание нашей организации', 'RUS'),
(2, 'aboutUs', 'Description of our organization', 'ENG'),
(3, 'aboutUs', 'Meie organisatsiooni kirjeldus', 'EST'),
(4, 'describ', 'Здраствуйте. Наша компания занимается продажей винтажных вещей. А именно: одежда, мебель и компьютерная техника. Желаете преобрести джинсы клеш, бабушкин свитер, кресло качалку, раритентную люстру, восьми битные консоли или старый компьютер ZX Spectrum? Вам однозначно к нам!', 'RUS'),
(5, 'describ', 'Hello. Our company is engaged in the sale of vintage items. Namely: clothes, furniture and computer equipment. Do you want to buy flared jeans, grandma\'s sweater, a rocking chair, a rare chandelier, eight-bit consoles or an old ZX Spectrum computer? You definitely come to us!', 'ENG'),
(6, 'describ', 'Tere. Meie ettevõte tegeleb vintage esemete müügiga. Nimelt: riided, mööbel ja arvutitehnika. Kas soovite osta laienevaid teksaseid, vanaema kampsunit, kiiktooli, haruldast lühtrit, kaheksabitiseid konsoole või vana arvutit ZX Spectrum? Tulete kindlasti meie juurde!', 'EST'),
(7, 'computer', 'Компьютерная техника', 'RUS'),
(8, 'computer', 'Arvutitehnoloogia', 'EST'),
(9, 'computer', 'Computer technology', 'ENG'),
(10, 'odezda', 'Одежда', 'RUS'),
(11, 'odezda', 'Сlothes', 'ENG'),
(12, 'odezda', 'Riided', 'EST'),
(13, 'kontakti', 'Контакты:', 'RUS'),
(14, 'kontakti', 'Contacts:', 'ENG'),
(15, 'kontakti', 'Kontaktid:', 'EST'),
(16, 'question', 'По вопросам работы интернет-магазина просим обращаться в нашу службу поддержки клиентов', 'RUS'),
(17, 'question', 'For questions about the operation of the online store, please contact our customer support', 'ENG'),
(18, 'question', 'Veebipoe toimimise kohta küsimuste saamiseks pöörduge meie klienditoe poole', 'EST'),
(19, 'answer', 'Мы ответим на Ваш запрос по электронной почте или по телефону.', 'RUS'),
(20, 'answer', 'We will respond to your request by email or telephone.', 'ENG'),
(21, 'answer', 'Vastame teie päringule e-posti või telefoni teel.', 'EST'),
(22, 'tel', 'Телефон:', 'RUS'),
(23, 'tel', 'Phone:', 'ENG'),
(24, 'tel', 'Telefon:', 'EST'),
(25, 'mail', 'Э-почта:', 'RUS'),
(26, 'mail', 'E-mail:', 'ENG'),
(27, 'mail', 'E-post:', 'EST'),
(28, 'ofice', 'Наш офис:', 'RUS'),
(29, 'ofice', 'Our office:', 'ENG'),
(30, 'ofice', 'Meie kontor:', 'EST'),
(31, 'adres', 'Адрес:', 'RUS'),
(32, 'adres', 'Address:', 'ENG'),
(33, 'adres', 'Aadress:', 'EST'),
(34, 'time', 'Время работы: Пн–Пт', 'RUS'),
(35, 'time', 'Opening hours: Mon – Fri', 'ENG'),
(36, 'time', 'Tööaeg: E – R', 'EST'),
(37, 'podrob', 'Подробнее', 'RUS'),
(38, 'podrob', 'More', 'ENG'),
(39, 'podrob', 'Rohkem detaile', 'EST'),
(40, 'buy', 'Купить', 'RUS'),
(41, 'buy', 'Buy', 'ENG'),
(42, 'buy', 'Osta', 'EST');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Индексы таблицы `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang` (`lang`);

--
-- Индексы таблицы `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang` (`lang`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `terms`
--
ALTER TABLE `terms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lang` (`lang`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `menu`
--
ALTER TABLE `menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT для таблицы `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT для таблицы `terms`
--
ALTER TABLE `terms`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
