-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Мар 23 2024 г., 01:04
-- Версия сервера: 8.0.30
-- Версия PHP: 8.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `everest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about_us_advantages`
--

CREATE TABLE `about_us_advantages` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `about_us_banners`
--

CREATE TABLE `about_us_banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `about_us_blocks`
--

CREATE TABLE `about_us_blocks` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `about_us_companies`
--

CREATE TABLE `about_us_companies` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `about_us_descriptions`
--

CREATE TABLE `about_us_descriptions` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `about_us_geographies`
--

CREATE TABLE `about_us_geographies` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `about_us_geography_districts`
--

CREATE TABLE `about_us_geography_districts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `appartments`
--

CREATE TABLE `appartments` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descritpion` text COLLATE utf8mb4_unicode_ci,
  `plan_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `floor_plan_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quadrature` int NOT NULL,
  `floor` int NOT NULL,
  `entrance` int NOT NULL,
  `rooms` int NOT NULL DEFAULT '0',
  `deadline` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metro` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `complex_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `appartments`
--

INSERT INTO `appartments` (`id`, `title`, `descritpion`, `plan_image`, `floor_plan_image`, `quadrature`, `floor`, `entrance`, `rooms`, `deadline`, `metro`, `type`, `city_id`, `complex_id`, `created_at`, `updated_at`) VALUES
(1, 'Студия 22,8 м²', 'Отделка и кондиционер входят в стоимость', 'appartments\\March2024\\Pi4IF4F4OHlPaHTYzpUF.png', 'appartments\\March2024\\IDxawyglnYtoUCUzZznJ.png', 32, 3, 5, 2, '2 квартал 2024 года', 'м. Домодедовская', 'available', 1, 1, NULL, '2024-03-13 20:18:04'),
(2, 'Студия 32,8 м²', 'Отделка и кондиционер входят в стоимость', 'appartments\\March2024\\kyHum2UZXABFhu0pUagj.png', 'appartments\\March2024\\BZTXTx2A1piDTMdnWhZW.png', 55, 3, 5, 3, '2 квартал 2024 года', 'м. Домодедовская', 'available', 1, 1, NULL, '2024-03-13 20:18:16'),
(3, 'Студия 12,8 м²', 'Отделка и кондиционер входят в стоимость', 'appartments\\March2024\\0UZXkiKDQnDCweYx7wrB.png', 'appartments\\March2024\\ELM2ClG6ay8ols3eF2E1.png', 15, 3, 5, 1, '2 квартал 2024 года', 'м. Домодедовская', 'not_available', 1, 1, NULL, '2024-03-13 20:18:29'),
(4, 'Студия 100м²', 'Отделка и кондиционер входят в стоимость', 'appartments\\March2024\\0UZXkiKDQnDCweYx7wrB.png', 'appartments\\March2024\\ELM2ClG6ay8ols3eF2E1.png', 15, 3, 5, 4, '2 квартал 2024 года', 'м. Домодедовская', 'not_available', 1, 2, NULL, '2024-03-13 20:18:29');

-- --------------------------------------------------------

--
-- Структура таблицы `appartment_advantages`
--

CREATE TABLE `appartment_advantages` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appartment_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `appartment_advantages`
--

INSERT INTO `appartment_advantages` (`id`, `image`, `title`, `description`, `appartment_id`, `created_at`, `updated_at`) VALUES
(1, 'appartment-advantages\\March2024\\ggHPe8CNokXkg7q07Q83.png', 'Удобство', 'Удобно)!!', 1, NULL, '2024-03-13 20:21:13'),
(2, 'appartment-advantages\\March2024\\6a9cUxnR4iN24GQgZIdN.png', 'Удобство', 'Удобно)!!', 1, NULL, '2024-03-13 20:21:19'),
(3, 'appartment-advantages\\March2024\\ggHPe8CNokXkg7q07Q83.png', 'Удобство', 'Удобно)!!', 1, NULL, NULL),
(4, 'appartment-advantages\\March2024\\ggHPe8CNokXkg7q07Q83.png', 'Удобство', 'Удобно)!!', 1, NULL, NULL),
(5, 'appartment-advantages\\March2024\\ggHPe8CNokXkg7q07Q83.png', 'Удобство', 'Удобно)!!', 2, NULL, NULL),
(6, 'appartment-advantages\\March2024\\ggHPe8CNokXkg7q07Q83.png', 'Удобство', 'Удобно)!!', 2, NULL, NULL),
(7, 'appartment-advantages\\March2024\\ggHPe8CNokXkg7q07Q83.png', 'Удобство', 'Удобно)!!', 2, NULL, NULL),
(8, 'appartment-advantages\\March2024\\ggHPe8CNokXkg7q07Q83.png', 'Удобство', 'Удобно)!!', 2, NULL, NULL),
(9, 'appartment-advantages\\March2024\\ggHPe8CNokXkg7q07Q83.png', 'Удобство', 'Удобно)!!', 3, NULL, NULL),
(10, 'appartment-advantages\\March2024\\ggHPe8CNokXkg7q07Q83.png', 'Удобство', 'Удобно)!!', 3, NULL, NULL),
(11, 'appartment-advantages\\March2024\\ggHPe8CNokXkg7q07Q83.png', 'Удобство', 'Удобно)!!', 3, NULL, NULL),
(12, 'appartment-advantages\\March2024\\ggHPe8CNokXkg7q07Q83.png', 'Удобство', 'Удобно)!!', 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
--

CREATE TABLE `banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `banners`
--

INSERT INTO `banners` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Просчитай свою выгоду', 'Успейте купить квартиру с минимальной переплатой по уникальной ставке от 2,9%', 'banners\\March2024\\IJKSMG85fqyWV9d0Zask.png', '2024-03-09 19:12:02', '2024-03-09 19:12:02');

-- --------------------------------------------------------

--
-- Структура таблицы `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `cities`
--

INSERT INTO `cities` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Алматы', '2024-03-09 20:31:03', '2024-03-09 20:31:03'),
(2, 'Астана', '2024-03-09 20:31:08', '2024-03-09 20:31:08'),
(3, 'Караганда', '2024-03-09 20:31:14', '2024-03-09 20:31:14');

-- --------------------------------------------------------

--
-- Структура таблицы `complexes`
--

CREATE TABLE `complexes` (
  `id` bigint UNSIGNED NOT NULL,
  `images` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `stream_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `complexes`
--

INSERT INTO `complexes` (`id`, `images`, `title`, `description`, `type`, `description_image`, `city_id`, `created_at`, `updated_at`, `stream_link`) VALUES
(1, '[\"complexes\\\\March2024\\\\o7qrBAmkwsa2dGyzTknu.png\",\"complexes\\\\March2024\\\\JAd6ioh83hq9YHpEaGmy.png\"]', 'Жилой комплекс \"Belle View\"', '<p>О проекте</p>\r\n<p>&nbsp;</p>\r\n<p>&laquo;Квартал Герцена&raquo;&nbsp;&mdash; это жилой комплекс комфорт-класса с&nbsp;корпусами переменной этажности, собственной инфраструктурой и&nbsp;шикарными видами на&nbsp;Бирюлевский лесопарк.<br><br>Изучая локацию и&nbsp;продумывая концепцию проекта, мы&nbsp;вдохновлялись местной историей. Ее&nbsp;частью стал публицист и&nbsp;философ Александр Герцен, который проводил много времени в&nbsp;этом районе.</p>', 'in_sale', 'complexes\\March2024\\azAIRiDw9dyfdxwEBCFv.png', 1, '2024-03-11 16:50:06', '2024-03-11 16:55:49', NULL),
(2, '[\"complexes\\\\March2024\\\\o7qrBAmkwsa2dGyzTknu.png\",\"complexes\\\\March2024\\\\JAd6ioh83hq9YHpEaGmy.png\"]', 'Жилой комплекс \"Beerkhan View\"', '<p>О проекте</p>\r\n<p>&nbsp;</p>\r\n<p>&laquo;Квартал Герцена&raquo;&nbsp;&mdash; это жилой комплекс комфорт-класса с&nbsp;корпусами переменной этажности, собственной инфраструктурой и&nbsp;шикарными видами на&nbsp;Бирюлевский лесопарк.<br><br>Изучая локацию и&nbsp;продумывая концепцию проекта, мы&nbsp;вдохновлялись местной историей. Ее&nbsp;частью стал публицист и&nbsp;философ Александр Герцен, который проводил много времени в&nbsp;этом районе.</p>', 'in_sale', 'complexes\\March2024\\azAIRiDw9dyfdxwEBCFv.png', 1, '2024-03-11 16:50:06', '2024-03-11 16:55:49', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `complex_advantages`
--

CREATE TABLE `complex_advantages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `complex_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `complex_advantages`
--

INSERT INTO `complex_advantages` (`id`, `title`, `image`, `description`, `complex_id`, `created_at`, `updated_at`) VALUES
(1, 'Транспорт', 'complex-advantages\\March2024\\ZDa9Xxb27MYfTVfahjwA.png', '15 минут на автомобиле до ст. метро «Орехово» и «Царицыно»', 1, '2024-03-13 18:27:22', '2024-03-13 18:27:36'),
(2, 'Транспорт', 'complex-advantages\\March2024\\ZDa9Xxb27MYfTVfahjwA.png', '15 минут на автомобиле до ст. метро «Орехово» и «Царицыно»', 1, '2024-03-13 18:27:22', '2024-03-13 18:27:36'),
(3, 'Транспорт', 'complex-advantages\\March2024\\ZDa9Xxb27MYfTVfahjwA.png', '15 минут на автомобиле до ст. метро «Орехово» и «Царицыно»', 1, '2024-03-13 18:27:22', '2024-03-13 18:27:36'),
(4, 'Транспорт', 'complex-advantages\\March2024\\ZDa9Xxb27MYfTVfahjwA.png', '15 минут на автомобиле до ст. метро «Орехово» и «Царицыно»', 1, '2024-03-13 18:27:22', '2024-03-13 18:27:36');

-- --------------------------------------------------------

--
-- Структура таблицы `complex_peculiarities`
--

CREATE TABLE `complex_peculiarities` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complex_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `complex_peculiarities`
--

INSERT INTO `complex_peculiarities` (`id`, `title`, `image`, `complex_id`, `created_at`, `updated_at`) VALUES
(1, 'Инфраструктура', 'complex-peculiarities\\March2024\\ojKKpoNhfhzzNEb0iase.png', 1, '2024-03-13 18:31:38', '2024-03-13 18:32:41'),
(2, 'Инфраструктура', 'complex-peculiarities\\March2024\\ojKKpoNhfhzzNEb0iase.png', 1, '2024-03-13 18:31:38', '2024-03-13 18:32:41'),
(3, 'Инфраструктура', 'complex-peculiarities\\March2024\\ojKKpoNhfhzzNEb0iase.png', 1, '2024-03-13 18:31:38', '2024-03-13 18:32:41'),
(4, 'Инфраструктура', 'complex-peculiarities\\March2024\\ojKKpoNhfhzzNEb0iase.png', 1, '2024-03-13 18:31:38', '2024-03-13 18:32:41'),
(5, 'Инфраструктура', 'complex-peculiarities\\March2024\\ojKKpoNhfhzzNEb0iase.png', 1, '2024-03-13 18:31:38', '2024-03-13 18:32:41');

-- --------------------------------------------------------

--
-- Структура таблицы `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int UNSIGNED NOT NULL,
  `data_type_id` int UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `browse` tinyint(1) NOT NULL DEFAULT '1',
  `read` tinyint(1) NOT NULL DEFAULT '1',
  `edit` tinyint(1) NOT NULL DEFAULT '1',
  `add` tinyint(1) NOT NULL DEFAULT '1',
  `delete` tinyint(1) NOT NULL DEFAULT '1',
  `details` text COLLATE utf8mb4_unicode_ci,
  `order` int NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 4, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(23, 4, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 2),
(24, 4, 'title2', 'text_area', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 3),
(25, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(26, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(27, 5, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(28, 5, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 2),
(29, 5, 'description', 'text_area', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 3),
(30, 5, 'icon', 'image', 'Иконка', 1, 1, 1, 1, 1, 1, '{}', 4),
(31, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(32, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(33, 6, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(34, 6, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 2),
(35, 6, 'description', 'text_area', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 3),
(36, 6, 'image', 'image', 'Изображение', 1, 1, 1, 1, 1, 1, '{}', 4),
(37, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(38, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(39, 7, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(40, 7, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 2),
(41, 7, 'description', 'text', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 3),
(42, 7, 'image', 'image', 'Изображение', 1, 1, 1, 1, 1, 1, '{}', 4),
(43, 7, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(44, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(45, 8, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(46, 8, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 2),
(47, 8, 'description', 'text_area', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 3),
(48, 8, 'image', 'image', 'Изображение', 1, 1, 1, 1, 1, 1, '{}', 4),
(49, 8, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(50, 8, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(51, 10, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(52, 10, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 2),
(53, 10, 'description', 'text_area', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 3),
(54, 10, 'image', 'image', 'Изображение', 1, 1, 1, 1, 1, 1, '{}', 4),
(55, 10, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(56, 10, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(57, 11, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(58, 11, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 2),
(59, 11, 'description', 'text_area', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 3),
(60, 11, 'image', 'image', 'Изображение', 1, 1, 1, 1, 1, 1, '{}', 4),
(61, 11, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(62, 11, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(63, 12, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(64, 12, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 2),
(65, 12, 'description', 'text_area', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 3),
(66, 12, 'step', 'number', 'Шаг', 0, 1, 1, 1, 1, 1, '{}', 4),
(67, 12, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(68, 12, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(69, 13, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(70, 13, 'name', 'text', 'Название', 1, 1, 1, 1, 1, 1, '{}', 2),
(71, 13, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 3),
(72, 13, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 4),
(73, 14, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(74, 14, 'image', 'image', 'Изображение', 1, 1, 1, 1, 1, 1, '{}', 2),
(75, 14, 'phone', 'text', 'Номер Телефона', 1, 1, 1, 1, 1, 1, '{}', 3),
(76, 14, 'address', 'text', 'Адрес', 1, 1, 1, 1, 1, 1, '{}', 4),
(77, 14, 'time', 'text', 'Время работы', 1, 1, 1, 1, 1, 1, '{}', 5),
(78, 14, 'city_id', 'text', 'City Id', 0, 0, 0, 1, 0, 0, '{}', 6),
(79, 14, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 7),
(80, 14, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 8),
(81, 14, 'office_belongsto_city_relationship', 'relationship', 'Город', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 9),
(82, 15, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(83, 15, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 2),
(84, 15, 'description', 'text_area', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 3),
(85, 15, 'phone', 'text', 'Номер Телефона', 1, 1, 1, 1, 1, 1, '{}', 4),
(86, 15, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(87, 15, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(88, 14, 'coordinates', 'coordinates', 'Координаты', 0, 1, 1, 1, 1, 1, '{}', 6),
(89, 17, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(90, 17, 'images', 'multiple_images', 'Изображения', 1, 1, 1, 1, 1, 1, '{}', 2),
(91, 17, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 3),
(92, 17, 'description', 'rich_text_box', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 4),
(93, 17, 'type', 'select_dropdown', 'Тип', 1, 1, 1, 1, 1, 1, '{\"default\":\"\\u0412 \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0435\",\"options\":{\"in_sale\":\"\\u0412 \\u043f\\u0440\\u043e\\u0434\\u0430\\u0436\\u0435\",\"promising\":\"\\u041f\\u0435\\u0440\\u0441\\u043f\\u0435\\u043a\\u0442\\u0438\\u0432\\u043d\\u044b\\u0435\",\"implemented\":\"\\u0420\\u0435\\u0430\\u043b\\u0438\\u0437\\u043e\\u0432\\u0430\\u043d\\u043d\\u044b\\u0435\"}}', 5),
(94, 17, 'description_image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{}', 6),
(95, 17, 'city_id', 'text', 'City Id', 0, 0, 0, 1, 0, 0, '{}', 7),
(96, 17, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(97, 17, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(99, 16, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(100, 16, 'description', 'text', 'Description', 1, 1, 1, 1, 1, 1, '{}', 2),
(101, 16, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{}', 3),
(102, 16, 'job_title', 'text', 'Job Title', 1, 1, 1, 1, 1, 1, '{}', 4),
(103, 16, 'photo', 'text', 'Photo', 1, 1, 1, 1, 1, 1, '{}', 5),
(104, 16, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 1, 0, 1, '{}', 6),
(105, 16, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(106, 17, 'complex_belongsto_city_relationship', 'relationship', 'Город', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 10),
(107, 18, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(108, 18, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 3),
(109, 18, 'image', 'image', 'Изображение', 1, 1, 1, 1, 1, 1, '{}', 4),
(110, 18, 'description', 'text_area', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 5),
(111, 18, 'complex_id', 'text', 'Complex Id', 0, 0, 0, 1, 0, 0, '{}', 2),
(112, 18, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(113, 18, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(114, 20, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(115, 20, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 3),
(116, 20, 'image', 'image', 'Изображение', 1, 1, 1, 1, 1, 1, '{}', 4),
(117, 20, 'complex_id', 'text', 'Complex Id', 0, 0, 0, 1, 0, 0, '{}', 2),
(118, 20, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(119, 20, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(120, 18, 'complex_advantage_belongsto_complex_relationship', 'relationship', 'Проект', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Complex\",\"table\":\"complexes\",\"type\":\"belongsTo\",\"column\":\"complex_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(121, 20, 'complex_peculiarity_belongsto_complex_relationship', 'relationship', 'Проекты', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Complex\",\"table\":\"complexes\",\"type\":\"belongsTo\",\"column\":\"complex_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"banners\",\"pivot\":\"0\",\"taggable\":\"0\"}', 7),
(147, 24, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(148, 24, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 4),
(149, 24, 'plan_image', 'image', 'Планировка', 1, 1, 1, 1, 1, 1, '{}', 5),
(150, 24, 'floor_plan_image', 'image', 'План этажа', 1, 1, 1, 1, 1, 1, '{}', 6),
(151, 24, 'quadrature', 'number', 'Квадратура', 1, 1, 1, 1, 1, 1, '{}', 7),
(152, 24, 'floor', 'number', 'Этаж', 1, 1, 1, 1, 1, 1, '{}', 8),
(153, 24, 'entrance', 'number', 'Подьезд', 1, 1, 1, 1, 1, 1, '{}', 9),
(154, 24, 'rooms', 'number', 'Кол-во комнат', 1, 1, 1, 1, 1, 1, '{}', 10),
(155, 24, 'deadline', 'text', 'Срок сдачи', 0, 1, 1, 1, 1, 1, '{}', 11),
(156, 24, 'metro', 'text', 'Метро', 0, 1, 1, 1, 1, 1, '{}', 12),
(157, 24, 'type', 'select_dropdown', 'Тип', 0, 1, 1, 1, 1, 1, '{\"default\":\"\\u041d\\u0435 \\u0441\\u0434\\u0430\\u043d\",\"options\":{\"available\":\"\\u041d\\u0435 \\u0441\\u0434\\u0430\\u043d\",\"not_available\":\"\\u0421\\u0434\\u0430\\u043d\"}}', 13),
(158, 24, 'city_id', 'text', 'City Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(159, 24, 'complex_id', 'text', 'Complex Id', 0, 1, 1, 1, 1, 1, '{}', 3),
(160, 24, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 14),
(161, 24, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 15),
(162, 24, 'descritpion', 'text_area', 'Описание', 0, 1, 1, 1, 1, 1, '{}', 5),
(163, 24, 'appartment_belongsto_city_relationship', 'relationship', 'Город', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\City\",\"table\":\"cities\",\"type\":\"belongsTo\",\"column\":\"city_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"appartment_advantages\",\"pivot\":\"0\",\"taggable\":\"0\"}', 16),
(164, 24, 'appartment_belongsto_complex_relationship', 'relationship', 'Жилой комплекс', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Complex\",\"table\":\"complexes\",\"type\":\"belongsTo\",\"column\":\"complex_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"appartment_advantages\",\"pivot\":\"0\",\"taggable\":\"0\"}', 17),
(165, 25, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(166, 25, 'image', 'image', 'Изображение', 1, 1, 1, 1, 1, 1, '{}', 3),
(167, 25, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 4),
(168, 25, 'description', 'text_area', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 5),
(169, 25, 'appartment_id', 'text', 'Appartment Id', 0, 1, 1, 1, 1, 1, '{}', 2),
(170, 25, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(171, 25, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(172, 25, 'appartment_advantage_belongsto_appartment_relationship', 'relationship', 'Квартира', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Models\\\\Appartment\",\"table\":\"appartments\",\"type\":\"belongsTo\",\"column\":\"appartment_id\",\"key\":\"id\",\"label\":\"title\",\"pivot_table\":\"appartment_advantages\",\"pivot\":\"0\",\"taggable\":\"0\"}', 8),
(173, 17, 'stream_link', 'text', 'Трансляция', 0, 1, 1, 1, 1, 1, '{}', 10),
(174, 26, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(175, 26, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 2),
(176, 26, 'description', 'text_area', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 3),
(177, 26, 'link', 'text', 'Ссылка', 0, 1, 1, 1, 1, 1, '{}', 4),
(178, 26, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(179, 26, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(180, 27, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(181, 27, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 2),
(182, 27, 'image', 'text', 'Изображение', 1, 1, 1, 1, 1, 1, '{}', 3),
(183, 27, 'description', 'text_area', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 4),
(184, 27, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(185, 27, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(186, 28, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(187, 28, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 2),
(188, 28, 'description', 'text_area', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 3),
(189, 28, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(190, 28, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(191, 29, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(192, 29, 'type', 'select_dropdown', 'Тип', 1, 1, 1, 1, 1, 1, '{}', 2),
(193, 29, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 3),
(194, 29, 'image', 'image', 'Изображение', 0, 1, 1, 1, 1, 1, '{}', 4),
(195, 29, 'description', 'text_area', 'Оп', 1, 1, 1, 1, 1, 1, '{}', 5),
(196, 29, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(197, 29, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(198, 31, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(199, 31, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 2),
(200, 31, 'description', 'text_area', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 3),
(201, 31, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 4),
(202, 31, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 5),
(203, 32, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(204, 32, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 2),
(205, 32, 'description', 'text_area', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 3),
(206, 32, 'image', 'image', 'Изображение', 1, 1, 1, 1, 1, 1, '{}', 4),
(207, 32, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 5),
(208, 32, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 6),
(209, 33, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(210, 33, 'title', 'text', 'Оглавление', 1, 1, 1, 1, 1, 1, '{}', 2),
(211, 33, 'description', 'text_area', 'Описание', 1, 1, 1, 1, 1, 1, '{}', 3),
(212, 33, 'icon', 'image', 'Иконка', 1, 1, 1, 1, 1, 1, '{}', 4),
(213, 33, 'link', 'text', 'Ссылка', 1, 1, 1, 1, 1, 1, '{}', 5),
(214, 33, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 6),
(215, 33, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 7),
(216, 34, 'id', 'text', 'Id', 1, 0, 0, 0, 0, 0, '{}', 1),
(217, 34, 'address', 'text', 'Адрес', 0, 1, 1, 1, 1, 1, '{}', 2),
(218, 34, '2gis_link', 'text', '2Gis', 0, 1, 1, 1, 1, 1, '{}', 3),
(219, 34, 'phone_number', 'text', 'Номер телефона', 0, 1, 1, 1, 1, 1, '{}', 4),
(220, 34, 'email', 'text', 'E-mail', 0, 1, 1, 1, 1, 1, '{}', 5),
(221, 34, 'fb_link', 'text', 'Facebook', 0, 1, 1, 1, 1, 1, '{}', 6),
(222, 34, 'ig_link', 'text', 'Instagram', 0, 1, 1, 1, 1, 1, '{}', 7),
(223, 34, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, '{}', 8),
(224, 34, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, '{}', 9),
(225, 4, 'link', 'text', 'Ссылка', 0, 1, 1, 1, 1, 1, '{}', 6),
(226, 5, 'link', 'text', 'Ссылка', 0, 1, 1, 1, 1, 1, '{}', 7),
(227, 6, 'link', 'text', 'Ссылка', 1, 1, 1, 1, 1, 1, '{}', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `data_types`
--

CREATE TABLE `data_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT '0',
  `server_side` tinyint NOT NULL DEFAULT '0',
  `details` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, 'TCG\\Voyager\\Http\\Controllers\\VoyagerRoleController', '', 1, 0, NULL, '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(4, 'main_blocks', 'main-blocks', 'Ипотека', 'Ипотека', NULL, 'App\\Models\\MainBlock', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-09 18:59:29', '2024-03-22 18:58:00'),
(5, 'secondary_blocks', 'secondary-blocks', 'Типы', 'Типы', NULL, 'App\\Models\\SecondaryBlock', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-09 19:00:49', '2024-03-22 18:58:34'),
(6, 'sliders', 'sliders', 'Слайдер', 'Слайдер', NULL, 'App\\Models\\Slider', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-09 19:01:34', '2024-03-22 18:58:59'),
(7, 'purchasing_methods', 'purchasing-methods', 'Способы покупки', 'Способы покупки', NULL, 'App\\Models\\PurchasingMethod', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-09 19:02:27', '2024-03-09 19:02:27'),
(8, 'banners', 'banners', 'Баннер', 'Баннер', NULL, 'App\\Models\\Banner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-09 19:03:00', '2024-03-09 19:03:00'),
(10, 'mortgage_banners', 'mortgage-banners', 'Баннер', 'Баннер', NULL, 'App\\Models\\MortgageBanner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-09 19:55:14', '2024-03-09 19:55:14'),
(11, 'mortgage_advantages', 'mortgage-advantages', 'Преимущество', 'Преимущество', NULL, 'App\\Models\\MortgageAdvantage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-09 19:55:58', '2024-03-09 19:55:58'),
(12, 'mortgage_steps', 'mortgage-steps', 'Шаги', 'Шаги', NULL, 'App\\Models\\MortgageStep', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-09 19:56:40', '2024-03-09 20:03:56'),
(13, 'cities', 'cities', 'Города', 'Города', NULL, 'App\\Models\\City', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-09 20:28:57', '2024-03-11 16:09:48'),
(14, 'offices', 'offices', 'Офисы', 'Офисы', NULL, 'App\\Models\\Office', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-09 20:30:14', '2024-03-18 17:09:54'),
(15, 'helplines', 'helplines', 'Служба доверия', 'Служба доверия', NULL, 'App\\Models\\Helpline', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-09 20:48:28', '2024-03-11 16:49:16'),
(16, 'sales_departments', 'sales-departments', 'Sales Department', 'Sales Departments', NULL, 'App\\Models\\SalesDepartment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-09 21:05:13', '2024-03-11 16:49:24'),
(17, 'complexes', 'complexes', 'Проекты', 'Проекты', NULL, 'App\\Models\\Complex', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-11 16:34:52', '2024-03-22 17:28:42'),
(18, 'complex_advantages', 'complex-advantages', 'Преимущество', 'Преимущество', NULL, 'App\\Models\\ComplexAdvantage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-11 16:54:04', '2024-03-13 18:30:48'),
(20, 'complex_peculiarities', 'complex-peculiarities', 'Преимущество', 'Преимущество', NULL, 'App\\Models\\ComplexPeculiarity', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-11 16:54:44', '2024-03-13 18:32:13'),
(24, 'appartments', 'appartments', 'Квартиры', 'Квартиры', NULL, 'App\\Models\\Appartment', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-13 20:03:16', '2024-03-13 20:20:33'),
(25, 'appartment_advantages', 'appartment-advantages', 'Преимущество', 'Преимущество', NULL, 'App\\Models\\AppartmentAdvantage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-13 20:20:27', '2024-03-13 20:20:54'),
(26, 'about_us_banners', 'about-us-banners', 'Баннер', 'Баннер', NULL, 'App\\Models\\AboutUsBanner', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null,\"scope\":null}', '2024-03-22 18:05:59', '2024-03-22 18:09:31'),
(27, 'about_us_blocks', 'about-us-blocks', 'Блоки', 'Блоки', NULL, 'App\\Models\\AboutUsBlock', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-22 18:09:20', '2024-03-22 18:09:20'),
(28, 'about_us_descriptions', 'about-us-descriptions', 'Описание', 'Описание', NULL, 'App\\Models\\AboutUsDescription', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-22 18:10:09', '2024-03-22 18:10:09'),
(29, 'about_us_advantages', 'about-us-advantages', 'Пр', 'Преимущество', NULL, 'App\\Models\\AboutUsAdvantage', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-22 18:11:39', '2024-03-22 18:11:39'),
(31, 'about_us_geographies', 'about-us-geographies', 'География', 'География', NULL, 'App\\Models\\AboutUsGeography', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-22 18:12:30', '2024-03-22 18:12:30'),
(32, 'about_us_geography_districts', 'about-us-geography-districts', 'Районы', 'Районы', NULL, 'App\\Models\\AboutUsGeographyDistrict', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-22 18:13:07', '2024-03-22 18:13:07'),
(33, 'about_us_companies', 'about-us-companies', 'Компания', 'Компания', NULL, 'App\\Models\\AboutUsCompany', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-22 18:14:52', '2024-03-22 18:14:52'),
(34, 'footers', 'footers', 'Футер', 'Футер', NULL, 'App\\Models\\Footer', NULL, NULL, NULL, 1, 0, '{\"order_column\":null,\"order_display_column\":null,\"order_direction\":\"asc\",\"default_search_key\":null}', '2024-03-22 18:16:17', '2024-03-22 18:16:17');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `footers`
--

CREATE TABLE `footers` (
  `id` bigint UNSIGNED NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `2gis_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ig_link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `helplines`
--

CREATE TABLE `helplines` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `main_blocks`
--

CREATE TABLE `main_blocks` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title2` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `main_blocks`
--

INSERT INTO `main_blocks` (`id`, `title`, `title2`, `created_at`, `updated_at`, `link`) VALUES
(1, 'Ипотека 14,5%', 'Мы предоставляем выгодные условия приобретения жилья под низкий процент', '2024-03-09 19:06:12', '2024-03-09 19:06:12', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `menus`
--

CREATE TABLE `menus` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2024-03-09 18:56:00', '2024-03-09 18:56:00');

-- --------------------------------------------------------

--
-- Структура таблицы `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int UNSIGNED NOT NULL,
  `menu_id` int UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2024-03-09 18:56:00', '2024-03-09 18:56:00', 'voyager.dashboard', NULL),
(2, 1, 'Media', '', '_self', 'voyager-images', NULL, NULL, 4, '2024-03-09 18:56:00', '2024-03-09 19:04:16', 'voyager.media.index', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 3, '2024-03-09 18:56:00', '2024-03-09 18:56:00', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 2, '2024-03-09 18:56:00', '2024-03-09 18:56:00', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 5, '2024-03-09 18:56:00', '2024-03-09 19:04:16', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2024-03-09 18:56:00', '2024-03-09 19:04:16', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2024-03-09 18:56:00', '2024-03-09 19:04:16', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2024-03-09 18:56:00', '2024-03-09 19:04:16', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2024-03-09 18:56:00', '2024-03-09 19:04:16', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 6, '2024-03-09 18:56:00', '2024-03-09 19:04:16', 'voyager.settings.index', NULL),
(11, 1, 'Ипотека', '', '_self', NULL, NULL, 16, 1, '2024-03-09 18:59:29', '2024-03-09 19:04:18', 'voyager.main-blocks.index', NULL),
(12, 1, 'Типы', '', '_self', NULL, NULL, 16, 2, '2024-03-09 19:00:49', '2024-03-09 19:04:22', 'voyager.secondary-blocks.index', NULL),
(13, 1, 'Слайдер', '', '_self', NULL, NULL, 16, 3, '2024-03-09 19:01:34', '2024-03-09 19:04:26', 'voyager.sliders.index', NULL),
(14, 1, 'Способы покупки', '', '_self', NULL, NULL, 16, 4, '2024-03-09 19:02:27', '2024-03-09 19:04:28', 'voyager.purchasing-methods.index', NULL),
(15, 1, 'Баннер', '', '_self', NULL, NULL, 16, 5, '2024-03-09 19:03:00', '2024-03-09 19:04:29', 'voyager.banners.index', NULL),
(16, 1, 'Главная', '', '_self', 'voyager-list', '#000000', NULL, 7, '2024-03-09 19:04:11', '2024-03-09 19:04:16', NULL, ''),
(17, 1, 'Ипотека', '', '_self', 'voyager-dollar', '#000000', NULL, 8, '2024-03-09 19:54:01', '2024-03-09 19:54:01', NULL, ''),
(18, 1, 'Баннер', '', '_self', NULL, NULL, 17, 1, '2024-03-09 19:55:14', '2024-03-09 19:56:46', 'voyager.mortgage-banners.index', NULL),
(19, 1, 'Преимущество', '', '_self', NULL, NULL, 17, 2, '2024-03-09 19:55:58', '2024-03-09 19:56:47', 'voyager.mortgage-advantages.index', NULL),
(20, 1, 'Шаги', '', '_self', NULL, NULL, 17, 3, '2024-03-09 19:56:40', '2024-03-09 19:56:48', 'voyager.mortgage-steps.index', NULL),
(21, 1, 'Офисы', '', '_self', 'voyager-compass', '#000000', NULL, 9, '2024-03-09 20:28:31', '2024-03-09 20:28:31', NULL, ''),
(22, 1, 'Города', '', '_self', 'voyager-world', '#000000', NULL, 13, '2024-03-09 20:28:57', '2024-03-22 18:07:44', 'voyager.cities.index', 'null'),
(23, 1, 'Офисы', '', '_self', NULL, NULL, 21, 1, '2024-03-09 20:30:14', '2024-03-09 20:31:25', 'voyager.offices.index', NULL),
(24, 1, 'Служба доверия', '', '_self', NULL, NULL, 21, 2, '2024-03-09 20:48:28', '2024-03-09 21:03:17', 'voyager.helplines.index', NULL),
(25, 1, 'Сотрудник', '', '_self', NULL, '#000000', 21, 3, '2024-03-09 21:05:13', '2024-03-09 21:05:32', 'voyager.sales-departments.index', 'null'),
(26, 1, 'Проекты', '', '_self', 'voyager-company', '#000000', NULL, 10, '2024-03-11 16:31:11', '2024-03-11 16:38:02', NULL, ''),
(27, 1, 'Проекты', '', '_self', NULL, NULL, 26, 1, '2024-03-11 16:34:52', '2024-03-11 16:35:41', 'voyager.complexes.index', NULL),
(28, 1, 'Преимущество', '', '_self', NULL, NULL, 26, 2, '2024-03-11 16:54:04', '2024-03-11 16:56:31', 'voyager.complex-advantages.index', NULL),
(29, 1, 'Особенности', '', '_self', NULL, '#000000', 26, 3, '2024-03-11 16:54:44', '2024-03-11 17:00:24', 'voyager.complex-peculiarities.index', 'null'),
(33, 1, 'Квартиры', '', '_self', NULL, NULL, 35, 1, '2024-03-13 20:03:16', '2024-03-13 20:22:49', 'voyager.appartments.index', NULL),
(34, 1, 'Преимущество', '', '_self', NULL, NULL, 35, 2, '2024-03-13 20:20:27', '2024-03-13 20:22:50', 'voyager.appartment-advantages.index', NULL),
(35, 1, 'Апартаменты', '', '_self', 'voyager-home', '#000000', NULL, 11, '2024-03-13 20:22:41', '2024-03-13 20:22:46', NULL, ''),
(36, 1, 'Баннер', '', '_self', NULL, NULL, 37, 1, '2024-03-22 18:05:59', '2024-03-22 18:06:18', 'voyager.about-us-banners.index', NULL),
(37, 1, 'О нас', '', '_self', 'voyager-list', '#000000', NULL, 12, '2024-03-22 18:06:14', '2024-03-22 18:07:44', NULL, ''),
(38, 1, 'Блоки', '', '_self', NULL, NULL, 37, 2, '2024-03-22 18:09:20', '2024-03-22 18:16:28', 'voyager.about-us-blocks.index', NULL),
(39, 1, 'Описание', '', '_self', NULL, NULL, 37, 3, '2024-03-22 18:10:09', '2024-03-22 18:16:34', 'voyager.about-us-descriptions.index', NULL),
(40, 1, 'Преимущество', '', '_self', NULL, NULL, 37, 4, '2024-03-22 18:11:39', '2024-03-22 18:16:37', 'voyager.about-us-advantages.index', NULL),
(41, 1, 'География', '', '_self', NULL, NULL, 37, 5, '2024-03-22 18:12:30', '2024-03-22 18:16:39', 'voyager.about-us-geographies.index', NULL),
(42, 1, 'Районы', '', '_self', NULL, NULL, 37, 6, '2024-03-22 18:13:07', '2024-03-22 18:16:41', 'voyager.about-us-geography-districts.index', NULL),
(43, 1, 'Компания', '', '_self', NULL, NULL, 37, 7, '2024-03-22 18:14:52', '2024-03-22 18:16:44', 'voyager.about-us-companies.index', NULL),
(44, 1, 'Футер', '', '_self', 'voyager-download', '#000000', NULL, 14, '2024-03-22 18:16:17', '2024-03-22 18:17:11', 'voyager.footers.index', 'null');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(25, '2024_03_09_214848_create_main_blocks_table', 1),
(26, '2024_03_09_214903_create_secondary_blocks_table', 1),
(27, '2024_03_09_214909_create_sliders_table', 1),
(28, '2024_03_09_215032_create_purchasing_methods_table', 1),
(29, '2024_03_09_215035_create_banners_table', 1),
(30, '2024_03_09_224702_create_mortgage_banners_table', 2),
(31, '2024_03_09_224710_create_mortgage_advantages_table', 2),
(34, '2024_03_09_224717_create_mortgage_steps_table', 3),
(35, '2024_03_09_231445_create_cities_table', 4),
(51, '2024_03_09_232010_create_offices_table', 5),
(52, '2024_03_09_232036_create_helplines_table', 5),
(53, '2024_03_09_232510_create_sales_departments_table', 5),
(54, '2024_03_11_185704_create_complexes_table', 5),
(55, '2024_03_11_191134_create_complex_advantages_table', 5),
(56, '2024_03_11_191201_create_complex_peculiarities_table', 5),
(60, '2024_03_13_223237_create_appartments_table', 6),
(61, '2024_03_13_224307_create_appartment_advantages_table', 6),
(62, '2024_03_22_202619_add_stream_link_to_complex_table', 7),
(63, '2024_03_22_203631_create_about_us_banners_table', 8),
(64, '2024_03_22_204004_create_about_us_descriptions_table', 8),
(65, '2024_03_22_204408_create_about_us_advantages_table', 8),
(66, '2024_03_22_204936_create_about_us_blocks_table', 8),
(67, '2024_03_22_205120_create_about_us_geographies_table', 8),
(68, '2024_03_22_205140_create_about_us_geography_districts_table', 8),
(71, '2024_03_22_205834_create_about_us_companies_table', 9),
(72, '2024_03_22_205957_create_footers_table', 9),
(73, '2024_03_22_215515_add_link_field_to_main_blocks_table;', 10),
(74, '2024_03_22_215524_add_link_field_to_secondary_blocks_table;', 10),
(75, '2024_03_22_215531_add_link_field_to_sliders_table;', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `mortgage_advantages`
--

CREATE TABLE `mortgage_advantages` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mortgage_advantages`
--

INSERT INTO `mortgage_advantages` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Меньше на 91%', 'общая переплата', 'mortgage-advantages\\March2024\\RQB0yLDlYtcnWkC0Aacx.png', '2024-03-09 19:58:22', '2024-03-09 19:58:22'),
(2, 'Ниже на 77%', 'ежемесячный платеж', 'mortgage-advantages\\March2024\\PyJuBtCnITGxBWqTObq8.png', '2024-03-09 19:58:34', '2024-03-09 19:58:34'),
(3, 'Ставка 14,5%', 'на весь срок', 'mortgage-advantages\\March2024\\lRtq8ZjSkmLiayjp4UqE.png', '2024-03-09 19:58:48', '2024-03-09 19:58:48'),
(4, 'До 6 млн ₽', 'сумма кредита', 'mortgage-advantages\\March2024\\hnKNt9RBO5oZyJaFxQ97.png', '2024-03-09 19:59:01', '2024-03-09 19:59:01');

-- --------------------------------------------------------

--
-- Структура таблицы `mortgage_banners`
--

CREATE TABLE `mortgage_banners` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mortgage_banners`
--

INSERT INTO `mortgage_banners` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Ипотека 14,5%', 'Успейте купить квартиру с минимальной переплатой по уникальной ставке от 14,5%', 'mortgage-banners\\March2024\\tuBa9L95Ah4AjLgHPIRg.png', '2024-03-09 19:57:28', '2024-03-09 19:57:28');

-- --------------------------------------------------------

--
-- Структура таблицы `mortgage_steps`
--

CREATE TABLE `mortgage_steps` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `step` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `mortgage_steps`
--

INSERT INTO `mortgage_steps` (`id`, `title`, `description`, `step`, `created_at`, `updated_at`) VALUES
(1, 'Самое главное: переплата меньше', 'Переплата за квартиру может быть в несколько раз меньше, чем при стандартной ставке', '01', '2024-03-09 20:04:10', '2024-03-09 20:04:10'),
(2, 'Ставка фиксированная: на весь срок', 'Именно поэтому выгоду очень легко посчитать, а беспокоиться больше не о чем', '02', '2024-03-09 20:04:20', '2024-03-09 20:04:20'),
(3, 'Ежемесячный платеж: тоже меньше', 'Выплаты становятся проще, а ваша жизнь просторнее и все это на весь срок кредитования', '03', '2024-03-09 20:04:34', '2024-03-09 20:04:34'),
(4, 'Успейте купить квартиру мечты!', NULL, NULL, '2024-03-09 20:04:40', '2024-03-09 20:04:40');

-- --------------------------------------------------------

--
-- Структура таблицы `offices`
--

CREATE TABLE `offices` (
  `id` bigint UNSIGNED NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coordinates` point DEFAULT NULL,
  `city_id` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(2, 'browse_bread', NULL, '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(3, 'browse_database', NULL, '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(4, 'browse_media', NULL, '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(5, 'browse_compass', NULL, '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(6, 'browse_menus', 'menus', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(7, 'read_menus', 'menus', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(8, 'edit_menus', 'menus', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(9, 'add_menus', 'menus', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(10, 'delete_menus', 'menus', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(11, 'browse_roles', 'roles', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(12, 'read_roles', 'roles', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(13, 'edit_roles', 'roles', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(14, 'add_roles', 'roles', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(15, 'delete_roles', 'roles', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(16, 'browse_users', 'users', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(17, 'read_users', 'users', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(18, 'edit_users', 'users', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(19, 'add_users', 'users', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(20, 'delete_users', 'users', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(21, 'browse_settings', 'settings', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(22, 'read_settings', 'settings', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(23, 'edit_settings', 'settings', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(24, 'add_settings', 'settings', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(25, 'delete_settings', 'settings', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(26, 'browse_main_blocks', 'main_blocks', '2024-03-09 18:59:29', '2024-03-09 18:59:29'),
(27, 'read_main_blocks', 'main_blocks', '2024-03-09 18:59:29', '2024-03-09 18:59:29'),
(28, 'edit_main_blocks', 'main_blocks', '2024-03-09 18:59:29', '2024-03-09 18:59:29'),
(29, 'add_main_blocks', 'main_blocks', '2024-03-09 18:59:29', '2024-03-09 18:59:29'),
(30, 'delete_main_blocks', 'main_blocks', '2024-03-09 18:59:29', '2024-03-09 18:59:29'),
(31, 'browse_secondary_blocks', 'secondary_blocks', '2024-03-09 19:00:49', '2024-03-09 19:00:49'),
(32, 'read_secondary_blocks', 'secondary_blocks', '2024-03-09 19:00:49', '2024-03-09 19:00:49'),
(33, 'edit_secondary_blocks', 'secondary_blocks', '2024-03-09 19:00:49', '2024-03-09 19:00:49'),
(34, 'add_secondary_blocks', 'secondary_blocks', '2024-03-09 19:00:49', '2024-03-09 19:00:49'),
(35, 'delete_secondary_blocks', 'secondary_blocks', '2024-03-09 19:00:49', '2024-03-09 19:00:49'),
(36, 'browse_sliders', 'sliders', '2024-03-09 19:01:34', '2024-03-09 19:01:34'),
(37, 'read_sliders', 'sliders', '2024-03-09 19:01:34', '2024-03-09 19:01:34'),
(38, 'edit_sliders', 'sliders', '2024-03-09 19:01:34', '2024-03-09 19:01:34'),
(39, 'add_sliders', 'sliders', '2024-03-09 19:01:34', '2024-03-09 19:01:34'),
(40, 'delete_sliders', 'sliders', '2024-03-09 19:01:34', '2024-03-09 19:01:34'),
(41, 'browse_purchasing_methods', 'purchasing_methods', '2024-03-09 19:02:27', '2024-03-09 19:02:27'),
(42, 'read_purchasing_methods', 'purchasing_methods', '2024-03-09 19:02:27', '2024-03-09 19:02:27'),
(43, 'edit_purchasing_methods', 'purchasing_methods', '2024-03-09 19:02:27', '2024-03-09 19:02:27'),
(44, 'add_purchasing_methods', 'purchasing_methods', '2024-03-09 19:02:27', '2024-03-09 19:02:27'),
(45, 'delete_purchasing_methods', 'purchasing_methods', '2024-03-09 19:02:27', '2024-03-09 19:02:27'),
(46, 'browse_banners', 'banners', '2024-03-09 19:03:00', '2024-03-09 19:03:00'),
(47, 'read_banners', 'banners', '2024-03-09 19:03:00', '2024-03-09 19:03:00'),
(48, 'edit_banners', 'banners', '2024-03-09 19:03:00', '2024-03-09 19:03:00'),
(49, 'add_banners', 'banners', '2024-03-09 19:03:00', '2024-03-09 19:03:00'),
(50, 'delete_banners', 'banners', '2024-03-09 19:03:00', '2024-03-09 19:03:00'),
(51, 'browse_mortgage_banners', 'mortgage_banners', '2024-03-09 19:55:14', '2024-03-09 19:55:14'),
(52, 'read_mortgage_banners', 'mortgage_banners', '2024-03-09 19:55:14', '2024-03-09 19:55:14'),
(53, 'edit_mortgage_banners', 'mortgage_banners', '2024-03-09 19:55:14', '2024-03-09 19:55:14'),
(54, 'add_mortgage_banners', 'mortgage_banners', '2024-03-09 19:55:14', '2024-03-09 19:55:14'),
(55, 'delete_mortgage_banners', 'mortgage_banners', '2024-03-09 19:55:14', '2024-03-09 19:55:14'),
(56, 'browse_mortgage_advantages', 'mortgage_advantages', '2024-03-09 19:55:58', '2024-03-09 19:55:58'),
(57, 'read_mortgage_advantages', 'mortgage_advantages', '2024-03-09 19:55:58', '2024-03-09 19:55:58'),
(58, 'edit_mortgage_advantages', 'mortgage_advantages', '2024-03-09 19:55:58', '2024-03-09 19:55:58'),
(59, 'add_mortgage_advantages', 'mortgage_advantages', '2024-03-09 19:55:58', '2024-03-09 19:55:58'),
(60, 'delete_mortgage_advantages', 'mortgage_advantages', '2024-03-09 19:55:58', '2024-03-09 19:55:58'),
(61, 'browse_mortgage_steps', 'mortgage_steps', '2024-03-09 19:56:40', '2024-03-09 19:56:40'),
(62, 'read_mortgage_steps', 'mortgage_steps', '2024-03-09 19:56:40', '2024-03-09 19:56:40'),
(63, 'edit_mortgage_steps', 'mortgage_steps', '2024-03-09 19:56:40', '2024-03-09 19:56:40'),
(64, 'add_mortgage_steps', 'mortgage_steps', '2024-03-09 19:56:40', '2024-03-09 19:56:40'),
(65, 'delete_mortgage_steps', 'mortgage_steps', '2024-03-09 19:56:40', '2024-03-09 19:56:40'),
(66, 'browse_cities', 'cities', '2024-03-09 20:28:57', '2024-03-09 20:28:57'),
(67, 'read_cities', 'cities', '2024-03-09 20:28:57', '2024-03-09 20:28:57'),
(68, 'edit_cities', 'cities', '2024-03-09 20:28:57', '2024-03-09 20:28:57'),
(69, 'add_cities', 'cities', '2024-03-09 20:28:57', '2024-03-09 20:28:57'),
(70, 'delete_cities', 'cities', '2024-03-09 20:28:57', '2024-03-09 20:28:57'),
(71, 'browse_offices', 'offices', '2024-03-09 20:30:14', '2024-03-09 20:30:14'),
(72, 'read_offices', 'offices', '2024-03-09 20:30:14', '2024-03-09 20:30:14'),
(73, 'edit_offices', 'offices', '2024-03-09 20:30:14', '2024-03-09 20:30:14'),
(74, 'add_offices', 'offices', '2024-03-09 20:30:14', '2024-03-09 20:30:14'),
(75, 'delete_offices', 'offices', '2024-03-09 20:30:14', '2024-03-09 20:30:14'),
(76, 'browse_helplines', 'helplines', '2024-03-09 20:48:28', '2024-03-09 20:48:28'),
(77, 'read_helplines', 'helplines', '2024-03-09 20:48:28', '2024-03-09 20:48:28'),
(78, 'edit_helplines', 'helplines', '2024-03-09 20:48:28', '2024-03-09 20:48:28'),
(79, 'add_helplines', 'helplines', '2024-03-09 20:48:28', '2024-03-09 20:48:28'),
(80, 'delete_helplines', 'helplines', '2024-03-09 20:48:28', '2024-03-09 20:48:28'),
(81, 'browse_sales_departments', 'sales_departments', '2024-03-09 21:05:13', '2024-03-09 21:05:13'),
(82, 'read_sales_departments', 'sales_departments', '2024-03-09 21:05:13', '2024-03-09 21:05:13'),
(83, 'edit_sales_departments', 'sales_departments', '2024-03-09 21:05:13', '2024-03-09 21:05:13'),
(84, 'add_sales_departments', 'sales_departments', '2024-03-09 21:05:13', '2024-03-09 21:05:13'),
(85, 'delete_sales_departments', 'sales_departments', '2024-03-09 21:05:13', '2024-03-09 21:05:13'),
(86, 'browse_complexes', 'complexes', '2024-03-11 16:34:52', '2024-03-11 16:34:52'),
(87, 'read_complexes', 'complexes', '2024-03-11 16:34:52', '2024-03-11 16:34:52'),
(88, 'edit_complexes', 'complexes', '2024-03-11 16:34:52', '2024-03-11 16:34:52'),
(89, 'add_complexes', 'complexes', '2024-03-11 16:34:52', '2024-03-11 16:34:52'),
(90, 'delete_complexes', 'complexes', '2024-03-11 16:34:52', '2024-03-11 16:34:52'),
(91, 'browse_complex_advantages', 'complex_advantages', '2024-03-11 16:54:04', '2024-03-11 16:54:04'),
(92, 'read_complex_advantages', 'complex_advantages', '2024-03-11 16:54:04', '2024-03-11 16:54:04'),
(93, 'edit_complex_advantages', 'complex_advantages', '2024-03-11 16:54:04', '2024-03-11 16:54:04'),
(94, 'add_complex_advantages', 'complex_advantages', '2024-03-11 16:54:04', '2024-03-11 16:54:04'),
(95, 'delete_complex_advantages', 'complex_advantages', '2024-03-11 16:54:04', '2024-03-11 16:54:04'),
(96, 'browse_complex_peculiarities', 'complex_peculiarities', '2024-03-11 16:54:44', '2024-03-11 16:54:44'),
(97, 'read_complex_peculiarities', 'complex_peculiarities', '2024-03-11 16:54:44', '2024-03-11 16:54:44'),
(98, 'edit_complex_peculiarities', 'complex_peculiarities', '2024-03-11 16:54:44', '2024-03-11 16:54:44'),
(99, 'add_complex_peculiarities', 'complex_peculiarities', '2024-03-11 16:54:44', '2024-03-11 16:54:44'),
(100, 'delete_complex_peculiarities', 'complex_peculiarities', '2024-03-11 16:54:44', '2024-03-11 16:54:44'),
(111, 'browse_appartments', 'appartments', '2024-03-13 20:03:16', '2024-03-13 20:03:16'),
(112, 'read_appartments', 'appartments', '2024-03-13 20:03:16', '2024-03-13 20:03:16'),
(113, 'edit_appartments', 'appartments', '2024-03-13 20:03:16', '2024-03-13 20:03:16'),
(114, 'add_appartments', 'appartments', '2024-03-13 20:03:16', '2024-03-13 20:03:16'),
(115, 'delete_appartments', 'appartments', '2024-03-13 20:03:16', '2024-03-13 20:03:16'),
(116, 'browse_appartment_advantages', 'appartment_advantages', '2024-03-13 20:20:27', '2024-03-13 20:20:27'),
(117, 'read_appartment_advantages', 'appartment_advantages', '2024-03-13 20:20:27', '2024-03-13 20:20:27'),
(118, 'edit_appartment_advantages', 'appartment_advantages', '2024-03-13 20:20:27', '2024-03-13 20:20:27'),
(119, 'add_appartment_advantages', 'appartment_advantages', '2024-03-13 20:20:27', '2024-03-13 20:20:27'),
(120, 'delete_appartment_advantages', 'appartment_advantages', '2024-03-13 20:20:27', '2024-03-13 20:20:27'),
(121, 'browse_about_us_banners', 'about_us_banners', '2024-03-22 18:05:59', '2024-03-22 18:05:59'),
(122, 'read_about_us_banners', 'about_us_banners', '2024-03-22 18:05:59', '2024-03-22 18:05:59'),
(123, 'edit_about_us_banners', 'about_us_banners', '2024-03-22 18:05:59', '2024-03-22 18:05:59'),
(124, 'add_about_us_banners', 'about_us_banners', '2024-03-22 18:05:59', '2024-03-22 18:05:59'),
(125, 'delete_about_us_banners', 'about_us_banners', '2024-03-22 18:05:59', '2024-03-22 18:05:59'),
(126, 'browse_about_us_blocks', 'about_us_blocks', '2024-03-22 18:09:20', '2024-03-22 18:09:20'),
(127, 'read_about_us_blocks', 'about_us_blocks', '2024-03-22 18:09:20', '2024-03-22 18:09:20'),
(128, 'edit_about_us_blocks', 'about_us_blocks', '2024-03-22 18:09:20', '2024-03-22 18:09:20'),
(129, 'add_about_us_blocks', 'about_us_blocks', '2024-03-22 18:09:20', '2024-03-22 18:09:20'),
(130, 'delete_about_us_blocks', 'about_us_blocks', '2024-03-22 18:09:20', '2024-03-22 18:09:20'),
(131, 'browse_about_us_descriptions', 'about_us_descriptions', '2024-03-22 18:10:09', '2024-03-22 18:10:09'),
(132, 'read_about_us_descriptions', 'about_us_descriptions', '2024-03-22 18:10:09', '2024-03-22 18:10:09'),
(133, 'edit_about_us_descriptions', 'about_us_descriptions', '2024-03-22 18:10:09', '2024-03-22 18:10:09'),
(134, 'add_about_us_descriptions', 'about_us_descriptions', '2024-03-22 18:10:09', '2024-03-22 18:10:09'),
(135, 'delete_about_us_descriptions', 'about_us_descriptions', '2024-03-22 18:10:09', '2024-03-22 18:10:09'),
(136, 'browse_about_us_advantages', 'about_us_advantages', '2024-03-22 18:11:39', '2024-03-22 18:11:39'),
(137, 'read_about_us_advantages', 'about_us_advantages', '2024-03-22 18:11:39', '2024-03-22 18:11:39'),
(138, 'edit_about_us_advantages', 'about_us_advantages', '2024-03-22 18:11:39', '2024-03-22 18:11:39'),
(139, 'add_about_us_advantages', 'about_us_advantages', '2024-03-22 18:11:39', '2024-03-22 18:11:39'),
(140, 'delete_about_us_advantages', 'about_us_advantages', '2024-03-22 18:11:39', '2024-03-22 18:11:39'),
(141, 'browse_about_us_geographies', 'about_us_geographies', '2024-03-22 18:12:30', '2024-03-22 18:12:30'),
(142, 'read_about_us_geographies', 'about_us_geographies', '2024-03-22 18:12:30', '2024-03-22 18:12:30'),
(143, 'edit_about_us_geographies', 'about_us_geographies', '2024-03-22 18:12:30', '2024-03-22 18:12:30'),
(144, 'add_about_us_geographies', 'about_us_geographies', '2024-03-22 18:12:30', '2024-03-22 18:12:30'),
(145, 'delete_about_us_geographies', 'about_us_geographies', '2024-03-22 18:12:30', '2024-03-22 18:12:30'),
(146, 'browse_about_us_geography_districts', 'about_us_geography_districts', '2024-03-22 18:13:07', '2024-03-22 18:13:07'),
(147, 'read_about_us_geography_districts', 'about_us_geography_districts', '2024-03-22 18:13:07', '2024-03-22 18:13:07'),
(148, 'edit_about_us_geography_districts', 'about_us_geography_districts', '2024-03-22 18:13:07', '2024-03-22 18:13:07'),
(149, 'add_about_us_geography_districts', 'about_us_geography_districts', '2024-03-22 18:13:07', '2024-03-22 18:13:07'),
(150, 'delete_about_us_geography_districts', 'about_us_geography_districts', '2024-03-22 18:13:07', '2024-03-22 18:13:07'),
(151, 'browse_about_us_companies', 'about_us_companies', '2024-03-22 18:14:52', '2024-03-22 18:14:52'),
(152, 'read_about_us_companies', 'about_us_companies', '2024-03-22 18:14:52', '2024-03-22 18:14:52'),
(153, 'edit_about_us_companies', 'about_us_companies', '2024-03-22 18:14:52', '2024-03-22 18:14:52'),
(154, 'add_about_us_companies', 'about_us_companies', '2024-03-22 18:14:52', '2024-03-22 18:14:52'),
(155, 'delete_about_us_companies', 'about_us_companies', '2024-03-22 18:14:52', '2024-03-22 18:14:52'),
(156, 'browse_footers', 'footers', '2024-03-22 18:16:17', '2024-03-22 18:16:17'),
(157, 'read_footers', 'footers', '2024-03-22 18:16:17', '2024-03-22 18:16:17'),
(158, 'edit_footers', 'footers', '2024-03-22 18:16:17', '2024-03-22 18:16:17'),
(159, 'add_footers', 'footers', '2024-03-22 18:16:17', '2024-03-22 18:16:17'),
(160, 'delete_footers', 'footers', '2024-03-22 18:16:17', '2024-03-22 18:16:17');

-- --------------------------------------------------------

--
-- Структура таблицы `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(26, 2),
(27, 1),
(27, 2),
(28, 1),
(28, 2),
(29, 1),
(30, 1),
(31, 1),
(31, 2),
(32, 1),
(32, 2),
(33, 1),
(33, 2),
(34, 1),
(35, 1),
(36, 1),
(36, 2),
(37, 1),
(37, 2),
(38, 1),
(38, 2),
(39, 1),
(39, 2),
(40, 1),
(40, 2),
(41, 1),
(41, 2),
(42, 1),
(42, 2),
(43, 1),
(43, 2),
(44, 1),
(44, 2),
(45, 1),
(45, 2),
(46, 1),
(46, 2),
(47, 1),
(47, 2),
(48, 1),
(48, 2),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(65, 1),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(70, 1),
(71, 1),
(72, 1),
(73, 1),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1),
(89, 1),
(90, 1),
(91, 1),
(92, 1),
(93, 1),
(94, 1),
(95, 1),
(96, 1),
(97, 1),
(98, 1),
(99, 1),
(100, 1),
(111, 1),
(112, 1),
(113, 1),
(114, 1),
(115, 1),
(116, 1),
(117, 1),
(118, 1),
(119, 1),
(120, 1),
(121, 1),
(122, 1),
(123, 1),
(124, 1),
(125, 1),
(126, 1),
(127, 1),
(128, 1),
(129, 1),
(130, 1),
(131, 1),
(132, 1),
(133, 1),
(134, 1),
(135, 1),
(136, 1),
(137, 1),
(138, 1),
(139, 1),
(140, 1),
(141, 1),
(142, 1),
(143, 1),
(144, 1),
(145, 1),
(146, 1),
(147, 1),
(148, 1),
(149, 1),
(150, 1),
(151, 1),
(152, 1),
(153, 1),
(154, 1),
(155, 1),
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(160, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `purchasing_methods`
--

CREATE TABLE `purchasing_methods` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `purchasing_methods`
--

INSERT INTO `purchasing_methods` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Оплата наличными', 'со скидкой до 13%', 'purchasing-methods\\March2024\\0EAI7GcJ4cbY40gsuUem.png', '2024-03-09 19:10:43', '2024-03-09 19:10:43'),
(2, 'Рассрочка 0%', 'от застройщика', 'purchasing-methods\\March2024\\TBz0LQ9qhfUJkyYBx1Xb.png', '2024-03-09 19:10:57', '2024-03-09 19:10:57'),
(3, 'Ипотека 7-20-25', 'от Freedom Finance Bank', 'purchasing-methods\\March2024\\JXyQrGRwx5jI0pTTv2St.png', '2024-03-09 19:11:08', '2024-03-09 19:11:08'),
(4, 'Ипотека Отбасы Банк', '30/70', 'purchasing-methods\\March2024\\RpVgFRZCfBXUYkotduth.png', '2024-03-09 19:11:19', '2024-03-09 19:11:19');

-- --------------------------------------------------------

--
-- Структура таблицы `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2024-03-09 18:56:00', '2024-03-09 18:56:00'),
(2, 'user', 'Normal User', '2024-03-09 18:56:00', '2024-03-09 18:56:00');

-- --------------------------------------------------------

--
-- Структура таблицы `sales_departments`
--

CREATE TABLE `sales_departments` (
  `id` bigint UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `job_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `secondary_blocks`
--

CREATE TABLE `secondary_blocks` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `secondary_blocks`
--

INSERT INTO `secondary_blocks` (`id`, `title`, `description`, `icon`, `created_at`, `updated_at`, `link`) VALUES
(1, 'Жилье', 'Широкий выбор премиальных апартаментов', 'secondary-blocks\\March2024\\ttBRAZ7vE8Q5wEYDhmx0.png', '2024-03-09 19:07:18', '2024-03-09 19:07:18', NULL),
(2, 'Коммерция', 'Покупка коммерческих помещений под любой вид бизнеса', 'secondary-blocks\\March2024\\X4B5Ib2gxOFK3Pn9SEfD.png', '2024-03-09 19:07:43', '2024-03-09 19:07:43', NULL);

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `details` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '1',
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'Site Title', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', 'Site Description', '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', '', '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', '', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Voyager', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Welcome to Voyager. The Missing Admin for Laravel', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', '', '', 'text', 1, 'Admin');

-- --------------------------------------------------------

--
-- Структура таблицы `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `sliders`
--

INSERT INTO `sliders` (`id`, `title`, `description`, `image`, `created_at`, `updated_at`, `link`) VALUES
(1, 'Вершина вашего комфорта!', 'Премиальные апартаменты в Алматы', 'sliders\\March2024\\fy4ebr2qJeGFzoZb0ivE.jpg', '2024-03-09 19:08:29', '2024-03-09 19:08:29', ''),
(2, 'Вершина вашего комфорта!1', 'Премиальные апартаменты в Алматы111', 'sliders\\March2024\\fy4ebr2qJeGFzoZb0ivE.jpg', '2024-03-09 19:08:29', '2024-03-09 19:08:29', '');

-- --------------------------------------------------------

--
-- Структура таблицы `translations`
--

CREATE TABLE `translations` (
  `id` int UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'admin@gmail.com', 'users/default.png', NULL, '$2y$12$AksRqmdtQgZavOHKKuF9aucvsIcrAjb9iDLRC6i4vLIir86KSuTiC', '9L8qxXmXfXQxqoS3L6m7HYMG8rewTe6XaHyN73JNPFgKn6toQdcvjYHwT7M4', NULL, '2024-03-09 18:56:15', '2024-03-09 18:56:15');

-- --------------------------------------------------------

--
-- Структура таблицы `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `about_us_advantages`
--
ALTER TABLE `about_us_advantages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `about_us_banners`
--
ALTER TABLE `about_us_banners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `about_us_blocks`
--
ALTER TABLE `about_us_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `about_us_companies`
--
ALTER TABLE `about_us_companies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `about_us_descriptions`
--
ALTER TABLE `about_us_descriptions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `about_us_geographies`
--
ALTER TABLE `about_us_geographies`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `about_us_geography_districts`
--
ALTER TABLE `about_us_geography_districts`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `appartments`
--
ALTER TABLE `appartments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appartments_city_id_foreign` (`city_id`),
  ADD KEY `appartments_complex_id_foreign` (`complex_id`);

--
-- Индексы таблицы `appartment_advantages`
--
ALTER TABLE `appartment_advantages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `appartment_advantages_appartment_id_foreign` (`appartment_id`);

--
-- Индексы таблицы `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `complexes`
--
ALTER TABLE `complexes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complexes_city_id_foreign` (`city_id`);

--
-- Индексы таблицы `complex_advantages`
--
ALTER TABLE `complex_advantages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complex_advantages_complex_id_foreign` (`complex_id`);

--
-- Индексы таблицы `complex_peculiarities`
--
ALTER TABLE `complex_peculiarities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `complex_peculiarities_complex_id_foreign` (`complex_id`);

--
-- Индексы таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Индексы таблицы `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `footers`
--
ALTER TABLE `footers`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `helplines`
--
ALTER TABLE `helplines`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `main_blocks`
--
ALTER TABLE `main_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Индексы таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mortgage_advantages`
--
ALTER TABLE `mortgage_advantages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mortgage_banners`
--
ALTER TABLE `mortgage_banners`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `mortgage_steps`
--
ALTER TABLE `mortgage_steps`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `offices`
--
ALTER TABLE `offices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `offices_city_id_foreign` (`city_id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Индексы таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `purchasing_methods`
--
ALTER TABLE `purchasing_methods`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Индексы таблицы `sales_departments`
--
ALTER TABLE `sales_departments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `secondary_blocks`
--
ALTER TABLE `secondary_blocks`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Индексы таблицы `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Индексы таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `about_us_advantages`
--
ALTER TABLE `about_us_advantages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `about_us_banners`
--
ALTER TABLE `about_us_banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `about_us_blocks`
--
ALTER TABLE `about_us_blocks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `about_us_companies`
--
ALTER TABLE `about_us_companies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `about_us_descriptions`
--
ALTER TABLE `about_us_descriptions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `about_us_geographies`
--
ALTER TABLE `about_us_geographies`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `about_us_geography_districts`
--
ALTER TABLE `about_us_geography_districts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `appartments`
--
ALTER TABLE `appartments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `appartment_advantages`
--
ALTER TABLE `appartment_advantages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT для таблицы `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `complexes`
--
ALTER TABLE `complexes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `complex_advantages`
--
ALTER TABLE `complex_advantages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `complex_peculiarities`
--
ALTER TABLE `complex_peculiarities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT для таблицы `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `footers`
--
ALTER TABLE `footers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `helplines`
--
ALTER TABLE `helplines`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `main_blocks`
--
ALTER TABLE `main_blocks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT для таблицы `mortgage_advantages`
--
ALTER TABLE `mortgage_advantages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `mortgage_banners`
--
ALTER TABLE `mortgage_banners`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT для таблицы `mortgage_steps`
--
ALTER TABLE `mortgage_steps`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `offices`
--
ALTER TABLE `offices`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=161;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `purchasing_methods`
--
ALTER TABLE `purchasing_methods`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `sales_departments`
--
ALTER TABLE `sales_departments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `secondary_blocks`
--
ALTER TABLE `secondary_blocks`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблицы `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `appartments`
--
ALTER TABLE `appartments`
  ADD CONSTRAINT `appartments_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `appartments_complex_id_foreign` FOREIGN KEY (`complex_id`) REFERENCES `complexes` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `appartment_advantages`
--
ALTER TABLE `appartment_advantages`
  ADD CONSTRAINT `appartment_advantages_appartment_id_foreign` FOREIGN KEY (`appartment_id`) REFERENCES `appartments` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `complexes`
--
ALTER TABLE `complexes`
  ADD CONSTRAINT `complexes_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `complex_advantages`
--
ALTER TABLE `complex_advantages`
  ADD CONSTRAINT `complex_advantages_complex_id_foreign` FOREIGN KEY (`complex_id`) REFERENCES `complexes` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `complex_peculiarities`
--
ALTER TABLE `complex_peculiarities`
  ADD CONSTRAINT `complex_peculiarities_complex_id_foreign` FOREIGN KEY (`complex_id`) REFERENCES `complexes` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ограничения внешнего ключа таблицы `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `offices`
--
ALTER TABLE `offices`
  ADD CONSTRAINT `offices_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `cities` (`id`) ON DELETE SET NULL;

--
-- Ограничения внешнего ключа таблицы `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Ограничения внешнего ключа таблицы `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Ограничения внешнего ключа таблицы `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
