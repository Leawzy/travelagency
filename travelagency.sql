-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 24 2022 г., 11:58
-- Версия сервера: 5.7.39
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `travelagency`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Clients`
--

CREATE TABLE `Clients` (
  `ID_Clients` int(11) NOT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `Adress` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(255) DEFAULT NULL,
  `PassportData` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Clients`
--

INSERT INTO `Clients` (`ID_Clients`, `FullName`, `DateOfBirth`, `Gender`, `Adress`, `PhoneNumber`, `PassportData`) VALUES
(1, 'Вдовин Я. П.', '1992-05-29', 'м', 'г. Москва', '89476240001', '3242343242'),
(2, 'Беспалов И. Т.', '1970-06-30', 'м', 'г. Санкт-Петербург', '89476240002', '4352643653'),
(3, 'Федотова А. А.', '1983-04-13', 'ж', 'г. Новосибириск', '89476240003', '4536456546'),
(4, 'Скворцова П. Т.', '1996-02-04', 'ж', 'г. Екатеринбург', '89476240004', '3454573476'),
(5, 'Тимофеева А. И.', '1994-06-17', 'ж', 'г. Казань', '89476240005', '4355765476'),
(6, 'Сорокина В. Ф.', '1985-11-25', 'ж', 'г. Нижний Новгород', '89476240006', '2345576546'),
(7, 'Лукьянов А. Д.', '1975-08-11', 'м', 'г. Челябинск', '89476240007', '2346534654'),
(8, 'Колесникова А. М.', '1973-05-03', 'ж', 'г. Самара', '89476240008', '7657567465'),
(9, 'Кондратьев И. М.', '1996-12-30', 'м', 'г. Омск', '89476240009', '7565675864'),
(10, 'Михайлова А. М.', '1981-01-17', 'ж', 'г. Ростов-на-Дону', '89476240010', '7657575675'),
(11, 'Грачева В. Н.', '1994-05-30', 'ж', 'г. Уфа', '89476240011', '3453465474'),
(12, 'Беляева А. В.', '1986-08-13', 'ж', 'г. Красноярск', '89476240012', '6756473465'),
(13, 'Зиновьева Я. С.', '1970-01-23', 'ж', 'г. Ворожен', '89476240013', '2654765346'),
(14, 'Герасимова А. П.', '1991-04-21', 'ж', 'г. Перьм', '89476240014', '7567567566'),
(15, 'Филиппов Е. Р.', '1984-10-12', 'м', 'г. Волгоград', '89476240015', '4576758456'),
(16, 'Кулагин Е. Д.', '1991-02-22', 'м', 'г. Краснодар', '89476240016', '2543645765'),
(17, 'Петров А. Н.', '2000-10-31', 'м', 'г. Саратов', '89476240017', '5675683456'),
(18, 'Соловьева К. М.', '1996-09-03', 'ж', 'г. Тюмень', '89476240018', '7489457285'),
(19, 'Горшкова З. Н.', '1971-02-10', 'ж', 'г. Тольятти', '89476240019', '5868385678'),
(20, 'Нестеров Е. С.', '1993-10-09', 'м', 'г. Ижевск', '89476240020', '4595686858'),
(21, 'Антонов Д. Ю.', '1984-08-01', 'м', 'г. Барнаул', '89476240021', '2358584385'),
(22, 'Акимов А. К.', '1979-04-19', 'м', 'г. Ульяновск', '89476240022', '5430349349'),
(23, 'Кочетов А. Л.', '1976-11-16', 'м', 'г. Иркутск', '89476240023', '1248324587'),
(24, 'Лукьянов И. А.', '1973-08-01', 'м', 'г. Хабаровск', '89476240024', '3456893459'),
(25, 'Воронова В. Д.', '1976-11-12', 'ж', 'г. Махачкала', '89476240025', '2345908342'),
(26, 'Ильина Л. А.', '1987-06-26', 'ж', 'г. Ярославль', '89476240026', '3458534893'),
(27, 'Винокурова А. И.', '1975-09-14', 'ж', 'г. Владивосток', '89476240027', '4538534982'),
(28, 'Тихомирова А. Ф.', '1988-04-28', 'ж', 'г. Оренбург', '89476240028', '3425879543'),
(29, 'Волкова М. М.', '1999-09-27', 'ж', 'г. Томск', '89476240029', '5342058437'),
(30, 'Новиков А. В.', '1970-03-20', 'м', 'г. Кемерово', '89476240030', '5934729835');

-- --------------------------------------------------------

--
-- Структура таблицы `Employees`
--

CREATE TABLE `Employees` (
  `ID_Employees` int(11) NOT NULL,
  `FullName` varchar(255) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `Gender` varchar(255) DEFAULT NULL,
  `Adress` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(255) DEFAULT NULL,
  `PasportData` varchar(255) DEFAULT NULL,
  `ID_Post` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Employees`
--

INSERT INTO `Employees` (`ID_Employees`, `FullName`, `Age`, `Gender`, `Adress`, `PhoneNumber`, `PasportData`, `ID_Post`) VALUES
(1, 'Комарова М. К.', 24, 'ж', 'г. Подольск', '89476238601', '9054567243', 1),
(2, 'Иванов И. А.', 34, 'м', 'г. Балашиха', '89476238602', '6098598093', 2),
(3, 'Аксенов Н. П.', 30, 'м', 'г. Балашиха', '89476238603', '5098678903', 3),
(4, 'Иванов Л. Л.', 43, 'м', 'г. Серпухов', '89476238604', '4098763425', 4),
(5, 'Мальцева М. С.', 53, 'м', 'г. Серпухов', '89476238605', '5078389689', 5),
(6, 'Кондратьев Б. П.', 29, 'м', 'г. Подольск', '89476238606', '3954872456', 6),
(7, 'Князев К. Л.', 40, 'м', 'г. Серпухов', '89476238607', '6345326321', 7),
(8, 'Агафонов А. Р.', 45, 'м', 'г. Балашиха', '89476238608', '8913535878', 8),
(9, 'Моисеев Г. Б.', 46, 'м', 'г. Серпухов', '89476238609', '4016324256', 9),
(10, 'Смирнов Н. Б.', 24, 'м', 'г. Подольск', '89476238700', '6589254793', 10),
(11, 'Лебедев Г. Г.', 34, 'м', 'г. Серпухов', '89476238701', '6589254756', 11),
(12, 'Громов П. Е.', 21, 'м', 'г. Балашиха', '89476238702', '6589452456', 12),
(13, 'Якушев В. И.', 30, 'м', 'г. Серпухов', '89476238703', '6345326567', 13),
(14, 'Миронов Н. П.', 34, 'м', 'г. Коломна', '89476238704', '6589254456', 14),
(15, 'Горохов Т. М.', 43, 'м', 'г. Коломна', '89476238705', '6589254567', 15),
(16, 'Романова А. Е.', 44, 'ж', 'г. Подольск', '89476238706', '6589452456', 16),
(17, 'Стрелкова М. П.', 42, 'ж', 'г. Коломна', '89476238707', '6589452567', 17),
(18, 'Сазонова Э. М', 26, 'ж', 'г. Коломна', '89476238708', '6589452456', 18),
(19, 'Иванов Н. А.', 25, 'м', 'г. Балашиха', '89476238709', '4016324256', 19),
(20, 'Крюкова М. А', 24, 'ж', 'г. Коломна', '89476238801', '4016324256', 20),
(21, 'Сорокина К. В.', 31, 'ж', 'г. Коломна', '89476238802', '4647747457', 21),
(22, 'Романова У. Г.', 34, 'ж', 'г. Подольск', '89476238803', '3456714578', 22),
(23, 'Романовна К. Р', 27, 'ж', 'г. Коломна', '89476238804', '9023456613', 23),
(24, 'Шерстунова П. Е', 27, 'ж', 'г. Коломна', '89476238805', '5672355362', 24),
(25, 'Паховна Н. Н', 26, 'ж', 'г. Коломна', '89476238806', '5626556666', 25),
(26, 'Фокина Р. Р.', 25, 'ж', 'г. Подольск', '89476238807', '7748141415', 26),
(27, 'Киселева М. Д.', 24, 'ж', 'г. Коломна', '89476238808', '6017044395', 27),
(28, 'Артемов А. К.', 23, 'ж', 'г. Коломна', '89476238809', '5151677114', 28),
(29, 'Завьялова Е. М.', 21, 'ж', 'г. Подольск', '89476238901', '5151655758', 29),
(30, 'Кондратьев Д. Р.', 32, 'ж', 'г. Балашиха', '89476238902', '5151546547', 30);

-- --------------------------------------------------------

--
-- Структура таблицы `Hotel`
--

CREATE TABLE `Hotel` (
  `ID_Hotel` int(11) NOT NULL,
  `NameHotel` varchar(255) DEFAULT NULL,
  `Country` varchar(255) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `PhoneNumber` varchar(255) DEFAULT NULL,
  `Stars` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Hotel`
--

INSERT INTO `Hotel` (`ID_Hotel`, `NameHotel`, `Country`, `City`, `PhoneNumber`, `Stars`) VALUES
(1, 'Singita Grumeti Reserves', 'Tanzaniа', 'Serengeti National Park', '+27 (0) 21 683 3424', 5),
(2, 'Singita Sabi Sand', 'South Africa', 'Sabi Sand Wildtuin', '+27 (0) 21 683 3424', 5),
(3, 'Royal Malewane', 'South Africa', 'Kruger Area', '+27 15 793 0150', 5),
(4, 'Ol Donyo Lodge', 'Kenya', 'Kenya Game Parks', '+27 87 354 6591', 5),
(5, 'Oberoi Udaivilas', 'India', 'Udaipur', '+91 294 243 3300', 5),
(6, 'Triple Creek Ranch', 'USA', 'Montana', '+1 406-821-4600', 5),
(7, 'Mandarin Oriental Dhara Dhevi', 'Thailand', 'Chiang Mai', '+65 6222 4722', 5),
(8, 'Oberoi Rajvilas', 'India', 'Jaipur', '+91 141 268 0101', 5),
(9, 'Kirawira Luxury Tented Camp', 'Tanzania', 'Serengeti National Park', '+255 28 262 1518', 5),
(10, 'Serengeti Migration Camp', 'Tanzania', 'Serengeti National Park', '+255 27 250 0630', 5),
(11, 'The Lodge at Kauri Cliffs', 'New Zealand', 'North Island', '+64 9 407 0010', 5),
(12, 'Fairmont Mount Kenya Safari Club', 'Kenya', 'Nanyuki', '+254 62 2036000', 5),
(13, 'Posada de Mike Rapu', 'Easter Island', 'Explora Rapa Nui', '+56 32 255 1055', 5),
(14, 'Oberoi Amarvilas', 'India', 'Agra', '+91 562 223 1515', 5),
(15, 'Nisbet Plantation Beach Club', 'USA', 'Nevis', '+1 869-469-9325', 5),
(16, 'La Résidence Phou Vao', 'Laos', 'Luang Prabang', '+856 71 212 530', 5),
(17, 'Four Seasons Resort', 'Uruguay', 'Carmelo', '+598 4542 9000', 5),
(18, 'Beyond Ngorongoro Crater Lodge', 'Tanzania', 'Ngorongoro Conservation Area', '+27 11 809 4300', 5),
(19, 'Palacio Duhau', 'Buenos Aires', 'Park Hyatt', '+54 11 5171-1234', 5),
(20, 'Mombo Camp and Little Mombo Camp', 'Botswana', 'Okavango Delta', '+27 11 257 5000', 5),
(21, 'Hotel Caruso', 'Italy', 'Ravello', '+39 089 858801', 5),
(22, 'Little Palm Island Resort & Spa', 'Florida', 'Little Torch Key', '+1 305-684-8341', 5),
(23, 'Mandarin Oriental', 'Thailand', 'Bangkok', '+65 6222 4722', 5),
(24, 'Stafford London by Kempinski', 'London', 'James’s Place', '+44 207 493 0111', 5),
(25, 'Blackberry Farm', 'Tennessee', 'Walland', '+1 800-557-8864', 5),
(26, 'Couples Tower Isle', 'Jamaica', 'Tower Isle', '+1 876-975-4271', 5),
(27, 'Stein Eriksen Lodge', 'USA', 'Utah', '+1 (866) 996-0034', 5),
(28, 'Four Seasons Resort Hualalai', 'Hawaii', 'Big Island', '+1 808-325-8000', 5),
(29, 'Ritz-Carlton', 'Beijing', 'Financial Street', '+86 10 5908 8888', 5),
(30, 'Turnberry Resort', 'Scotland', 'Turnberry', '+44 01655 331000', 5);

-- --------------------------------------------------------

--
-- Структура таблицы `Post`
--

CREATE TABLE `Post` (
  `ID_Post` int(11) NOT NULL,
  `PostName` varchar(255) DEFAULT NULL,
  `Salary` int(11) DEFAULT NULL,
  `Responsibilities` varchar(255) DEFAULT NULL,
  `Requirements` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Post`
--

INSERT INTO `Post` (`ID_Post`, `PostName`, `Salary`, `Responsibilities`, `Requirements`) VALUES
(1, 'Генеральный директор', 350000, 'Руководитель', 'Следить за порядком'),
(2, 'Исполнительный директор', 200000, 'Руководитель', 'Следить за порядком'),
(3, 'Директор отдела продаж', 100000, 'Руководитель', 'Ответственный за продажи'),
(4, 'Зам. Директора отдела продаж', 750000, 'Руковидетль', 'Следить за ниже стоящими'),
(5, 'Коммерчесский директор', 150000, 'Руководитель', 'Ответвественный за финонсирование'),
(6, 'Технический директор', 150000, 'Руководитель', 'Ответственный за тех. Состояние'),
(7, 'Финансовый директор', 150000, 'Руководитель', 'Ответсвенный за финансы'),
(8, 'Директор по маркертингу', 150000, 'Руководитель', 'Ответсвтенный за маркетинг'),
(9, 'Директор по инф. Без.', 150000, 'Руководитель', 'Ответственный за инф. Без.'),
(10, 'Директор по развитию', 150000, 'Руководитель', 'Ответсвенный за развитие'),
(11, 'Директор по развитию корпоративных и бизнес коммуникаций', 150000, 'Руководитель', 'Отвественный за развитие'),
(12, 'Директор по административно-хозяйственной деятельности и безопасности', 150000, 'Руководитель', 'Отвественный за проведение мероприятий'),
(13, 'Директор департамента', 150000, 'Сотрудник', 'Ответсвенный за департамент'),
(14, 'Старший администратор по направлению', 15000, 'Сотрудник', 'Ответственный за сотрудников'),
(15, 'Администратор по направлению', 15000, 'Сотрудник', 'Оформление клиентов'),
(16, 'Менеджер по направлению', 12000, 'Сотрудник', 'Обзвон клиентов'),
(17, 'Старший авиакассир', 20000, 'Сотрудник', 'Ответсвенный за сотрудников'),
(18, 'Авиакассир', 15000, 'Сотрудник', 'Продажа билетов'),
(19, 'Глава охранного бюро', 87000, 'Руководитель', 'Ответсвенный за сотрудников'),
(20, 'Дневная охрана', 46000, 'Сотрудник', 'Охрана территории'),
(21, 'Ночная охрана', 48000, 'Сотрудник', 'Охрана территории'),
(22, 'Администратор', 55000, 'Сотрудник', 'Оформление клиентов'),
(23, 'Глава клийнингова агенства', 90000, 'Руководитель', 'Ответственный за сотрудников'),
(24, 'Сотрудник клийнингова агенства', 30200, 'Сотрудник', 'Уборка'),
(25, 'Руководитель направления', 78000, 'Руководитель', 'Ответсвенный за сотрудников'),
(26, 'Ведущий менеджер', 65000, 'Руководитель', 'Ведущий менеджер'),
(27, 'Руководитель отдела', 45000, 'Сотрудник', 'Ответсвенный за сотрудников'),
(28, 'Тур менеджер', 30000, 'Сотрудник', 'Обзвон клиентов'),
(29, 'Менеджер', 21000, 'Сотрудник', 'Обзвон клиентов'),
(30, 'Старший Адмнистратор', 78000, 'Руководитель', 'Отственный за сотрудников');

-- --------------------------------------------------------

--
-- Структура таблицы `Recreation`
--

CREATE TABLE `Recreation` (
  `ID_Recreation` int(11) NOT NULL,
  `RecreationName` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Restrictions` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Recreation`
--

INSERT INTO `Recreation` (`ID_Recreation`, `RecreationName`, `Description`, `Restrictions`) VALUES
(1, 'Охота', 'Поездка на охоту', 'Старше 18 лет'),
(2, 'Рыбалка', 'Поездка на рыбалку', 'Старше 18 лет'),
(3, 'Сафари', 'Поездка на сафари', 'Старше 18 лет'),
(4, 'Альпинизм', 'Покорение вершин', 'Старше 18 лет'),
(5, 'Конные прогулки', 'Поездка на конную прогулку', 'Старше 18 лет'),
(6, 'Восхождение на ледники', 'Поездка на восхождение ледников', 'Старше 18 лет'),
(7, 'Треккинг', 'Поездка на трекинг', 'Старше 18 лет'),
(8, 'Сёрфинг', 'Поездка на сёрфинг', 'Старше 18 лет'),
(9, 'Виндсёрфинг', 'Поездка на виндсёрфинг', 'Старше 18 лет'),
(10, 'Дайвинг', 'Поездка на дайвинг', 'Старше 18 лет'),
(11, 'Рафтинг', 'Поездка на рафтинг', 'Старше 18 лет'),
(12, 'Горные лыжи', 'Поездка в горы', 'Старше 14 лет'),
(13, 'Морские круизы', 'Поездка на круизе', 'Старше 14 лет'),
(14, 'Свадьба на яхте', 'Поездка на свадебное путешествие', 'Не более 20 человек'),
(15, 'Тайская церемония', 'Поездка на тайскую церемонию', 'Не более 10 человек'),
(16, 'Свадьба в замке', 'Поездка на свадьбу в замке', 'Не более 50 человек'),
(17, 'Горнолыжный отдых', 'Поездка на горнолыжный отдых', 'Старше 14 лет'),
(18, 'Лечебные туры', 'Поездка в лечебный тур', 'Старше 14 лет'),
(19, 'Деловой турзим', 'Поездка на деловую встречу и туризм', 'Старше 16 лет'),
(20, 'Отдых с детьми', 'Поездка на отдых с детьми', 'Старше 6 лет'),
(21, 'Новогодние туры', 'Поездка в новогодний тур', 'Старше 6 лет'),
(22, 'Пляжный отдых', 'Поездка на пляж', 'Старше 6 лет'),
(23, 'Свадебные путешествия', 'Поездка на свадебное путешествие', 'Старше 6 лет'),
(24, 'Шоп туры', 'Поездка в шоп тур', 'Не более 10 человек'),
(25, 'Экскурсионные туры', 'Поездка на экскурсионный тур', 'Не более 10 человек');

-- --------------------------------------------------------

--
-- Структура таблицы `Services`
--

CREATE TABLE `Services` (
  `ID_Services` int(11) NOT NULL,
  `ServicesName` varchar(255) DEFAULT NULL,
  `Description` varchar(255) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Services`
--

INSERT INTO `Services` (`ID_Services`, `ServicesName`, `Description`, `Price`) VALUES
(1, 'Всё включено', 'Включает комфортные услуги для проживания', 30000),
(2, 'Завтрак в постель', 'Приносят завтрак каждое утро', 3000),
(3, 'Бар', 'Круглосуточный бесплатный бар', 5000),
(4, 'Фитнес-зал', 'Круглосуточный доступ в фитнес-зал', 2000),
(5, 'Бассейн', 'Возможность посещения бассейна', 2000),
(6, 'Эксурсия по достопримечательностями', 'Собирают группу и показывают достопримечательности', 15000),
(7, 'Аренда транспорта', 'Возможность бесплатной аренды т/с', 15000),
(8, 'Спа-процедуры', 'Косметические и оздоровительные процедуры', 5000),
(9, 'Банная зона', 'Возможность посещать баню/сауну', 2000),
(10, 'Менеджера по загару', 'Это человек, который полностью контролирует процесс приема солнечных ванн', 5000),
(11, 'Гурме меню для животных', 'Шеф-повара специально для четвероногих изобретают рецепты блюд', 15000),
(12, 'Мыльный дворецкий', 'При заезде гостей номер посещает дворецкий с коллекцией мыла ручной работы.', 15000),
(13, 'Парикмахерские услуги', 'Вас обслужат лучшие стилисты нашего отеля', 3000),
(14, 'Аренда конференц-зала', 'Предоставим помещение для совещаний', 15000),
(15, 'Заказ услуг переводчиков, гидов', 'Переводчики и гиды от наших партнёров', 10000),
(16, 'Заказ мест в ресторанах', 'Закажим вам место в лучших ресторанах города', 2000),
(17, 'Прокат инвентаря', ' Даём в прокат различные вещи из инвентаря отеля', 5000),
(18, 'Вызов такси', 'Вызов такси бизнес класса', 4000),
(19, 'Доставка цветов и подарков', 'Доставим любые цветы и подарки', 5000),
(20, 'Доп. комплект полотенец и постел.белья', 'Предоставим вам доп полотенца и постельное бельё', 2000),
(21, 'Дополнительный комплект постел. Белья', 'Предоставим вам доп компел постельного белья', 1000),
(22, 'Дополн. уборка номера со сменой комплекта полотенец и пост. Белья', 'Дополнительно уберём вам номер и сменим полотенца', 3000),
(23, 'Дополнительная уборка сан.узла  в номере со сменой комплекта полотенец', 'Дополнительно уберём вам сан узел', 3000),
(24, 'Дополнительная специальная уборка номера для удаления запаха', 'Проведём спец. Уборку в вашем номере', 5000),
(25, 'Аренда ПК', 'Предоставим в аренду ПК', 2000),
(26, 'Копирование, сканирование, печать документа на лист А4', 'Предоставим сервис распечатки', 2000),
(27, 'Визовая поддержка', 'Поможем с визой', 15000),
(28, 'Тапочки', 'Предоставим тапочки', 1000),
(29, 'Аренда халата', 'Предоставим халат', 2000),
(30, 'Набор зубная щётка, паста', 'Предоставим зубную щётку, пасту', 2000);

-- --------------------------------------------------------

--
-- Структура таблицы `Tickets`
--

CREATE TABLE `Tickets` (
  `ID_Ticket` int(11) NOT NULL,
  `CheckInDate` date DEFAULT NULL,
  `CheckOutDate` date DEFAULT NULL,
  `Duration` int(11) DEFAULT NULL,
  `ID_Hotel` int(11) DEFAULT NULL,
  `ID_Recreation` int(11) DEFAULT NULL,
  `ID_Services1` varchar(255) DEFAULT NULL,
  `ID_Services2` varchar(255) DEFAULT NULL,
  `ID_Services3` varchar(255) DEFAULT NULL,
  `ID_Clients` int(11) DEFAULT NULL,
  `ID_Employees` int(11) DEFAULT NULL,
  `BookingNote` bit(1) DEFAULT NULL,
  `Payment note` bit(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Tickets`
--

INSERT INTO `Tickets` (`ID_Ticket`, `CheckInDate`, `CheckOutDate`, `Duration`, `ID_Hotel`, `ID_Recreation`, `ID_Services1`, `ID_Services2`, `ID_Services3`, `ID_Clients`, `ID_Employees`, `BookingNote`, `Payment note`) VALUES
(1, '2022-10-10', '2022-10-13', 3, 1, NULL, '1', '2', '3', 1, 30, b'1', b'1'),
(2, '2021-03-06', '2021-03-19', 13, 2, NULL, '1', '4', '5', 2, 15, b'1', b'1'),
(3, '2021-04-08', '2021-04-16', 8, 3, NULL, '2', '5', '6', 3, 28, b'1', b'1'),
(4, '2021-12-25', '2022-01-10', 15, 4, NULL, '1', '3', '6', 4, 15, b'1', b'1'),
(5, '2022-01-01', '2022-01-06', 5, 5, NULL, '3', '6', '7', 5, 28, b'1', b'1'),
(6, '2022-02-02', '2022-02-08', 6, 6, NULL, '4', '7', '8', 6, 30, b'1', b'1'),
(7, '2021-09-12', '2021-09-22', 10, 7, NULL, '5', '8', '9', 7, 15, b'1', b'1'),
(8, '2022-06-08', '2022-06-16', 8, 8, NULL, '6', '9', '10', 8, 28, b'1', b'1'),
(9, '2022-08-22', '2022-08-30', 8, 9, NULL, '7', '10', '11', 9, 30, b'1', b'1'),
(10, '2022-04-02', '2022-04-10', 8, 10, NULL, '8', '11', '12', 10, NULL, b'1', b'1'),
(11, '2022-03-14', '2022-03-21', 7, 11, NULL, '1', '12', '13', 11, 15, b'1', b'1'),
(12, '2021-10-10', '2021-10-20', 10, 12, NULL, '1', '13', '14', 12, 15, b'1', b'1'),
(13, '2021-06-03', '2021-06-16', 13, 13, NULL, '1', '14', '15', 13, 28, b'1', b'1'),
(14, '2021-04-02', '2021-04-12', 10, 14, NULL, '9', '15', '16', 14, 28, b'1', b'1'),
(15, '2022-08-13', '2022-08-20', 7, 15, NULL, '1', '16', '17', 15, 30, b'1', b'1'),
(16, '2022-09-09', '2022-09-13', 4, 16, NULL, '10', '17', '18', 16, 30, b'1', b'1'),
(17, '2022-10-06', '2022-10-15', 9, 17, NULL, '11', '18', '19', 17, 30, b'1', b'1'),
(18, '2022-07-21', '2022-07-30', 9, 18, NULL, '1', '19', '20', 18, 28, b'1', b'1'),
(19, '2022-08-02', '2022-08-08', 6, 19, NULL, '12', '20', '21', 19, 15, b'1', b'1'),
(20, '2022-04-12', '2022-04-16', 4, 20, NULL, '1', '21', '22', 20, 15, b'1', b'1'),
(21, '2022-02-02', '2022-02-10', 8, 21, NULL, '1', '22', '23', 21, 28, b'1', b'1'),
(22, '2022-02-10', '2022-02-14', 4, 22, NULL, '13', '23', '24', 22, 30, b'1', b'1'),
(23, '2022-01-01', '2022-01-10', 9, 23, NULL, '14', '24', '25', 23, 28, b'1', b'1'),
(24, '2022-05-14', '2022-05-20', 6, 24, NULL, '1', '25', '26', 24, 15, b'1', b'1'),
(25, '2022-08-12', '2022-08-16', 4, 25, NULL, '1', '26', '27', 25, 15, b'1', b'1'),
(26, '2022-09-10', '2022-09-17', 7, 26, NULL, '15', '27', '28', 26, 28, b'1', b'1'),
(27, '2021-11-11', '2021-11-18', 7, 27, NULL, '16', '28', '29', 27, 30, b'1', b'1'),
(28, '2022-06-06', '2022-06-12', 6, 28, NULL, '1', '29', '30', 28, 30, b'1', b'1'),
(29, '2022-11-11', '2022-11-18', 7, 29, NULL, '1', '30', '2', 29, 28, b'1', b'1'),
(30, '2022-12-28', '2022-01-04', 7, 30, NULL, '17', '2', '4', 30, 15, b'1', b'1');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Clients`
--
ALTER TABLE `Clients`
  ADD PRIMARY KEY (`ID_Clients`);

--
-- Индексы таблицы `Employees`
--
ALTER TABLE `Employees`
  ADD PRIMARY KEY (`ID_Employees`);

--
-- Индексы таблицы `Hotel`
--
ALTER TABLE `Hotel`
  ADD PRIMARY KEY (`ID_Hotel`);

--
-- Индексы таблицы `Post`
--
ALTER TABLE `Post`
  ADD PRIMARY KEY (`ID_Post`);

--
-- Индексы таблицы `Recreation`
--
ALTER TABLE `Recreation`
  ADD PRIMARY KEY (`ID_Recreation`);

--
-- Индексы таблицы `Services`
--
ALTER TABLE `Services`
  ADD PRIMARY KEY (`ID_Services`);

--
-- Индексы таблицы `Tickets`
--
ALTER TABLE `Tickets`
  ADD PRIMARY KEY (`ID_Ticket`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Clients`
--
ALTER TABLE `Clients`
  MODIFY `ID_Clients` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `Employees`
--
ALTER TABLE `Employees`
  MODIFY `ID_Employees` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `Hotel`
--
ALTER TABLE `Hotel`
  MODIFY `ID_Hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `Post`
--
ALTER TABLE `Post`
  MODIFY `ID_Post` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `Recreation`
--
ALTER TABLE `Recreation`
  MODIFY `ID_Recreation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT для таблицы `Services`
--
ALTER TABLE `Services`
  MODIFY `ID_Services` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT для таблицы `Tickets`
--
ALTER TABLE `Tickets`
  MODIFY `ID_Ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
