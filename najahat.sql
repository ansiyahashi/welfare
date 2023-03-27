-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 04, 2021 at 04:58 AM
-- Server version: 5.7.23-23
-- PHP Version: 7.3.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `truelane_najahat`
--

-- --------------------------------------------------------

--
-- Table structure for table `carcaresurveys`
--

CREATE TABLE `carcaresurveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_category_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response1_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response2_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carcaresurveys`
--

INSERT INTO `carcaresurveys` (`id`, `question_category`, `question_type`, `question`, `response1`, `response2`, `question_category_ar`, `question_ar`, `response1_ar`, `response2_ar`, `created_at`, `updated_at`) VALUES
(1, 'Test Question', 'Yes/No', 'Testing car care survey question', 'Good', 'Bad', 'سؤال الاختبار', 'سؤال فحص العناية بالسيارات', 'حسن', 'سيء', '2021-10-29 09:35:02', '2021-10-29 09:35:02');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `firebases`
--

CREATE TABLE `firebases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `token_val` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `firebases`
--

INSERT INTO `firebases` (`id`, `user_id`, `token_val`, `created_at`, `updated_at`) VALUES
(1, 6, 'eAe57AC0QguAW-mmRvBZV0:APA91bGeYtY43eDeZBKNNT6EVVZxFnLW0zwUyjHooiNqpdgIGEaB8K6yj1cdlVLAM3fDkTUJA1ICdJyXkAPi9MzayHLku_XhHn72W-94rPYuma0EfgyhaErF_0rjY9sfX498clC6NJKm', '2021-10-19 17:59:06', '2021-12-04 11:38:27'),
(2, 10, 'ebs6qoIiRPKP_S2xvJiIFv:APA91bEieJLwiNq7uu8zmhQVdUS2zVLw4-mzkt9VCFQ6KGiQn0r2Nt2FwCoaLuzCXDqCYx3rqADv2QGLQTNmHu0Mm8_kMlD9A6SOOpsPQFSpKhg1MWEraPbwY8ATBnqb7kfjUYsdI_Fa', '2021-10-20 15:32:09', '2021-11-30 12:40:57'),
(3, 11, 'fYLR0oP0Syyd5co2DIDxB-:APA91bFx9iC6LHTOkSWvWjOGtIWKTYU6vqoJOvIjl_QnnHr2VUwScuVLayvPIpH17plEPpmSQZTX7XqYjVVidL9BXT7MnNEFzAFfpUfWTD3U0WEb2mGqA0sJSQye8Z7LRI_GBGnPa4Ss', '2021-10-21 11:22:14', '2021-11-24 12:14:21'),
(4, 2, 'fFZIfOoeRZWebK8fq3YcD_:APA91bFrV5Nv2i-FF1_WNR6WT3hsceYt-IVRh-lXKUukYKJEHUPUlecMYLONVGvsaBa1QrLDdMga9fDTBMGgJwN_Q0vis7beTGvlnoY0Epxs7eKWTS1CwBIcWXuH-vaZ2b1w_nMi8xs1', '2021-10-22 15:22:03', '2021-10-22 15:22:03'),
(5, 16, 'eJrutvM_RO--yMLRWYmPc2:APA91bGcyC19ipeqwYumxUMxckuggho1vxD_K42xDUqUNb-BMvmku1AxGkGsQyIFnXLX9dCpsyKs2auNPe9-0aNtbaH3KcwjASJUSrds6SdDKFsNmHPg8T7xyyFpQA_Q3WNOOSa3quAc', '2021-10-27 09:37:06', '2021-11-29 12:33:52'),
(6, 18, 'eJrutvM_RO--yMLRWYmPc2:APA91bGcyC19ipeqwYumxUMxckuggho1vxD_K42xDUqUNb-BMvmku1AxGkGsQyIFnXLX9dCpsyKs2auNPe9-0aNtbaH3KcwjASJUSrds6SdDKFsNmHPg8T7xyyFpQA_Q3WNOOSa3quAc', '2021-10-27 15:06:15', '2021-11-29 12:18:06'),
(7, 20, 'f79SRswkSEavyynK1QFwor:APA91bExGI9sn842JyJxEP7ezRQhwhX-eaA0F3mfQgEyNrxG_lr7QRBxrS8VQVKpzPqXQKrL2gJvcQR0s02hkOEnqQJV8ZSLewDO2oGth2rIA0Vmv9f47HMHGNVZzQIOqjZtPdJMfCsF', '2021-10-28 12:20:15', '2021-12-01 11:14:40'),
(8, 1, 'eUfRuDXCSGGPMMxczescMY:APA91bE8P1m0u4OmEeyRhVM__EVlPT-0JrwIXGfovXJfRGqJiFbQKiu93gbnJO2h971UC75rzlfyTYhUByXSvvbmhNGSATI_N7WP-s2G4coEtDVcYgdB0xD_KMANcpANfic3aFD5UrD0', '2021-11-22 10:26:40', '2021-11-22 10:26:40');

-- --------------------------------------------------------

--
-- Table structure for table `f_m_r_s`
--

CREATE TABLE `f_m_r_s` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` int(11) NOT NULL,
  `issue_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `employee_notes` text COLLATE utf8mb4_unicode_ci,
  `employee_images` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `station_id` int(11) NOT NULL,
  `supervisor` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `report_num` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fmr_manager` int(11) DEFAULT NULL,
  `fmr_employee` int(11) DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transport` int(11) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `f_m_r_s`
--

INSERT INTO `f_m_r_s` (`id`, `category`, `issue_type`, `priority`, `notes`, `images`, `employee_notes`, `employee_images`, `status`, `station_id`, `supervisor`, `deadline`, `report_num`, `fmr_manager`, `fmr_employee`, `date`, `transport`, `created_at`, `updated_at`) VALUES
(15, 1, '1', 'Low', 'Please set the required needs', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/102220211203410fa458b1-6537-4b90-a734-f4555b7c8564.JPEG\",\"id\":\"1634904214310\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/102220211203410fa458b1-6537-4b90-a734-f4555b7c8564.JPEG\"}]', 'Process in delayWill complete in 2 days', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/10312021111954c3db8c6e-3ecc-498c-b55b-6f502117ef52.JPEG\",\"id\":\"1635679176571\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/10312021111954c3db8c6e-3ecc-498c-b55b-6f502117ef52.JPEG\"}]', 'Completed', 4, '6', '2021-10-27 10:16:53', '#5817880101', 10, 11, '2021-10-22', 0, '2021-10-22 22:33:41', '2021-10-31 16:19:55'),
(16, 1, '1', 'Low', 'Gg', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/1023202109210453b92791-4692-4da7-a0f7-4229c9a36b1a.JPEG\",\"id\":\"1634980859453\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/1023202109210453b92791-4692-4da7-a0f7-4229c9a36b1a.JPEG\"}]', NULL, NULL, 'New', 4, '6', '2021-10-27 11:32:04', '#4053373896', 10, 11, '2021-10-23', 0, '2021-10-23 19:51:05', '2021-10-25 11:06:26'),
(17, 1, '1', 'Low', 'For testing the app of Najahat', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/10252021045749fc03c454-bdc9-494d-a410-72e2ddbaa9c9.JPEG\",\"id\":\"1635137829546\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/10252021045749fc03c454-bdc9-494d-a410-72e2ddbaa9c9.JPEG\"}]', NULL, NULL, 'New', 1, '6', '2021-11-02 14:16:37', '#3667818813', 10, 11, '2021-10-25', 0, '2021-10-25 12:57:50', '2021-10-31 16:16:55'),
(18, 1, '1', 'Low', 'For testing Notification', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/10252021060116bfad82e2-14f7-4022-8b33-76a0c6685efc.JPEG\",\"id\":\"1635141672216\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/10252021060116bfad82e2-14f7-4022-8b33-76a0c6685efc.JPEG\"}]', NULL, NULL, 'New', 4, '6', '2021-11-16 10:01:53', '#6146901070', 10, 11, '2021-10-25', 0, '2021-10-25 14:01:16', '2021-11-14 13:02:16'),
(19, 1, '1', 'High', 'Checking notification', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/10252021061148e34a366b-48a9-439e-a6c6-987036402633.JPEG\",\"id\":\"1635142305106\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/10252021061148e34a366b-48a9-439e-a6c6-987036402633.JPEG\"}]', NULL, NULL, 'New', 4, '6', '2021-11-23 15:06:52', '#3539731518', 10, 11, '2021-10-25', 0, '2021-10-25 14:11:49', '2021-11-21 18:07:16'),
(20, 1, '1', 'Low', 'testing notification', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/10252021064230614ef664-832d-4134-a146-8ea19df132f6.JPEG\",\"id\":\"1635144146019\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/10252021064230614ef664-832d-4134-a146-8ea19df132f6.JPEG\"}]', NULL, NULL, 'New', 4, '6', NULL, '#6179531222', 10, NULL, '2021-10-25', 0, '2021-10-25 11:42:31', '2021-10-25 11:42:31'),
(21, 1, '1', 'High', 'zd', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/10272021121515e87c10c2-4b63-43a8-9dc1-15e6f60fd471.JPEG\",\"id\":\"1635336910033\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/10272021121515e87c10c2-4b63-43a8-9dc1-15e6f60fd471.JPEG\"}]', NULL, NULL, 'New', 4, '6', '2021-11-07 10:52:08', '#1970437424', 10, 11, '2021-10-27', 0, '2021-10-27 22:45:16', '2021-11-05 14:13:03'),
(22, 1, '1', 'High', 'Hi \nCheckout the station\nAnd cleaning\nFor testing the app\nDo the required needs', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/1028202105125942b85fc2-26ff-4f0f-8d2d-f0b931dcfb6b.JPEG\",\"id\":\"1635397975173\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/1028202105125942b85fc2-26ff-4f0f-8d2d-f0b931dcfb6b.JPEG\"}]', NULL, NULL, 'New', 4, '6', NULL, '#2071118162', 10, NULL, '2021-10-28', 0, '2021-10-28 10:13:00', '2021-10-28 10:13:00'),
(23, 1, '1', 'High', 'Fgg', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/1030202110302151699943-84e9-4859-ba08-c0e460d005a2.JPEG\",\"id\":\"1635589813265\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/1030202110302151699943-84e9-4859-ba08-c0e460d005a2.JPEG\"}]', NULL, NULL, 'New', 4, '6', NULL, '#4786155668', 10, NULL, '2021-10-30', 0, '2021-10-30 15:30:22', '2021-10-30 15:30:22'),
(24, 1, '1', 'High', 'Tre', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/103120211115026b655de6-8af5-4077-b365-8940c10d6c2d.JPEG\",\"id\":\"1635678891908\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/103120211115026b655de6-8af5-4077-b365-8940c10d6c2d.JPEG\"}]', NULL, NULL, 'New', 4, '6', NULL, '#8043772734', 10, NULL, '2021-10-31', 0, '2021-10-31 16:15:03', '2021-10-31 16:15:03'),
(25, 1, '1', 'High', 'Pls checkout the needs', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/11012021092100409ad601-0f4d-4298-be99-bc2fc02c19df.JPEG\",\"id\":\"1635758450414\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/11012021092100409ad601-0f4d-4298-be99-bc2fc02c19df.JPEG\"}]', NULL, NULL, 'New', 4, '6', NULL, '#6454515559', 10, NULL, '2021-11-01', 0, '2021-11-01 14:21:01', '2021-11-01 14:21:01'),
(26, 1, '1', 'High', 'Sh', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/11012021094959e41ff049-1dcc-4111-b3c6-06b4dac44214.JPEG\",\"id\":\"1635760194793\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/11012021094959e41ff049-1dcc-4111-b3c6-06b4dac44214.JPEG\"}]', NULL, NULL, 'New', 4, '6', NULL, '#4565721849', 10, NULL, '2021-11-01', 0, '2021-11-01 14:50:00', '2021-11-01 14:50:00'),
(27, 1, '1', 'High', 'Gdnfbdh', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/11012021100433f9bd09ad-0a02-4795-9227-c2085909badb.JPEG\",\"id\":\"1635761066413\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/11012021100433f9bd09ad-0a02-4795-9227-c2085909badb.JPEG\"}]', NULL, NULL, 'New', 4, '6', NULL, '#3683931430', 10, NULL, '2021-11-01', 0, '2021-11-01 15:04:34', '2021-11-01 15:04:34'),
(28, 1, '1', 'Low', 'Fchh', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/110120211022578b6ea5b1-bfa4-45fc-820a-addb52089382.JPEG\",\"id\":\"1635762174316\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/110120211022578b6ea5b1-bfa4-45fc-820a-addb52089382.JPEG\"}]', NULL, NULL, 'New', 4, '6', NULL, '#4736733107', 10, NULL, '2021-11-01', 0, '2021-11-01 15:22:58', '2021-11-01 15:22:58'),
(29, 1, '1', 'Low', 'Gf', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/11012021102334be9ebc30-2d6f-4bad-bed9-c490fc897f12.JPEG\",\"id\":\"1635762205868\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/11012021102334be9ebc30-2d6f-4bad-bed9-c490fc897f12.JPEG\"}]', NULL, NULL, 'New', 4, '6', NULL, '#9530912209', 10, NULL, '2021-11-01', 0, '2021-11-01 15:23:34', '2021-11-01 15:23:34'),
(30, 1, '1', 'High', 'Rrt', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/11032021123508390a394b-9cf3-4c82-b944-3831b8f36240.JPEG\",\"id\":\"1635942881342\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/11032021123508390a394b-9cf3-4c82-b944-3831b8f36240.JPEG\"},{\"uri\":\"http://najahat.adoxapp.com/public/uploads/1103202112350829ad2a83-0db2-4ae3-92f4-9ac74882c67d.JPEG\",\"id\":\"1635942887565\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/1103202112350829ad2a83-0db2-4ae3-92f4-9ac74882c67d.JPEG\"},{\"uri\":\"http://najahat.adoxapp.com/public/uploads/110320211235083a5d25af-cbb8-4a6e-aa11-f9a6da05b937.JPEG\",\"id\":\"1635942897007\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/110320211235083a5d25af-cbb8-4a6e-aa11-f9a6da05b937.JPEG\"}]', NULL, NULL, 'New', 1, '20', '2021-11-05 15:36:55', '#8840137443', 10, 11, '2021-11-03', 0, '2021-11-03 20:35:09', '2021-11-03 17:37:07'),
(31, 1, '1', 'High', 'Testing Transport FMR', '[\"https:\\/\\/najahat.adoxapp.com\\/uploads\\/11042021105449logo (2).png\"]', 'testingggg', NULL, 'New', 4, '21', '2021-11-09T15:14', '#2388160511', 22, 0, '2021-11-04', 1, '2021-11-04 15:54:49', '2021-11-05 15:06:41'),
(33, 1, '1', 'High', 'Testinggggggggggggggggggg', '[\"https:\\/\\/najahat.adoxapp.com\\/uploads\\/11052021100956logo (2).png\"]', NULL, NULL, 'New', 1, '21', NULL, '#8052530099', 22, NULL, '2021-11-05', 1, '2021-11-05 15:09:56', '2021-11-05 15:09:56'),
(34, 1, '3', 'High', 'Testinggggggggggg', '[\"https:\\/\\/najahat.adoxapp.com\\/uploads\\/11052021101230logo (2).png\"]', NULL, NULL, 'New', 1, '21', NULL, '#4768030998', 22, NULL, '2021-11-05', 1, '2021-11-05 15:12:30', '2021-11-05 15:12:30'),
(35, 1, '3', 'High', 'testinggggggg', '[\"https:\\/\\/najahat.adoxapp.com\\/uploads\\/11052021101648logo (2).png\"]', NULL, NULL, 'New', 1, '21', NULL, '#6060361773', 22, NULL, '2021-11-05', 1, '2021-11-05 15:16:48', '2021-11-05 15:16:48'),
(36, 1, '3', 'High', 'testinggggggg', '[\"https:\\/\\/najahat.adoxapp.com\\/uploads\\/11052021101758logo (2).png\"]', NULL, NULL, 'New', 1, '21', NULL, '#2739282946', 22, NULL, '2021-11-05', 1, '2021-11-05 15:17:58', '2021-11-05 15:17:58'),
(37, 1, '1', 'High', 'testing', '[\"https:\\/\\/najahat.adoxapp.com\\/uploads\\/11052021101826logo (2).png\"]', NULL, NULL, 'New', 1, '21', NULL, '#5682527397', 22, NULL, '2021-11-05', 1, '2021-11-05 15:18:26', '2021-11-05 15:18:26'),
(38, 3, '1', 'High', 'Testing', '[\"https:\\/\\/najahat.adoxapp.com\\/uploads\\/11052021102047logo (2).png\"]', NULL, NULL, 'New', 1, '21', NULL, '#8288095162', 22, NULL, '2021-11-05', 1, '2021-11-05 15:20:47', '2021-11-05 15:20:47'),
(39, 1, '1', 'High', 'testing', '[\"https:\\/\\/najahat.adoxapp.com\\/uploads\\/11052021102702logo (2).png\"]', 'Testinggggggggg', '[\"https:\\/\\/najahat.adoxapp.com\\/uploads\\/11052021103357logo (2).png\"]', 'Completed', 1, '21', '2021-11-10T16:01', '#6225861921', 22, 23, '2021-11-05', 1, '2021-11-05 15:27:02', '2021-11-05 15:33:57'),
(40, 1, '1', 'High', 'Gdjsjdj gdgdhdhh   111111', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/110820211603490443e361-c0e0-4c5a-b3bd-e676fd525fcf.JPEG\",\"id\":\"1636387368113\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/110820211603490443e361-c0e0-4c5a-b3bd-e676fd525fcf.JPEG\"}]', NULL, NULL, 'New', 4, '6', NULL, '#4193556497', 10, NULL, '2021-11-08', 0, '2021-11-08 22:03:49', '2021-11-08 22:03:49'),
(41, 1, '1', 'High', 'Testinggg', '[\"https:\\/\\/najahat.adoxapp.com\\/uploads\\/11152021082225logo.png\"]', NULL, NULL, 'New', 1, '21', NULL, '#8916210766', 22, NULL, '2021-11-15', 1, '2021-11-15 14:22:25', '2021-11-15 14:22:25'),
(42, 1, '1', 'High', 'Testinggg', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/1122202104234816a369d7-1c67-4e9d-98ea-7d3506e279bb.JPEG\",\"id\":\"1637555024501\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/1122202104234816a369d7-1c67-4e9d-98ea-7d3506e279bb.JPEG\"}]', 'Testing', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/11222021042612d3da8f24-7035-4ec7-ae28-a5ed21e83193.JPEG\",\"id\":\"1637555114979\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/11222021042612d3da8f24-7035-4ec7-ae28-a5ed21e83193.JPEG\"}]', 'Ongoing', 4, '6', '2021-11-24 09:54:24', '#2628580507', 10, 11, '2021-11-22', 0, '2021-11-22 15:53:49', '2021-11-22 10:26:13'),
(43, 1, '1', 'High', 'Sample Arabic for testing', '[{\"uri\":\"http://najahat.adoxapp.com/public/uploads/11252021041517594a7086-ed2c-4e16-90d2-905cfa715e0a.JPEG\",\"id\":\"1637813703834\",\"imgname\":\"http://najahat.adoxapp.com/public/uploads/11252021041517594a7086-ed2c-4e16-90d2-905cfa715e0a.JPEG\"}]', NULL, NULL, 'New', 1, '6', NULL, '#4475995467', 10, NULL, '2021-11-25', 0, '2021-11-25 10:15:17', '2021-11-25 10:15:17');

-- --------------------------------------------------------

--
-- Table structure for table `issuecategories`
--

CREATE TABLE `issuecategories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issuecategories`
--

INSERT INTO `issuecategories` (`id`, `category_name`, `category_name_ar`, `created_at`, `updated_at`) VALUES
(1, 'General Site', 'الموقع العام', '2021-10-16 01:40:35', '2021-10-16 01:45:01'),
(3, 'Mosque and toilets', 'المسجد ودورات المياة', '2021-10-16 01:42:10', '2021-10-16 01:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `issuetypes`
--

CREATE TABLE `issuetypes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `issue_category` int(11) NOT NULL,
  `issue_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `issue_type_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `issuetypes`
--

INSERT INTO `issuetypes` (`id`, `issue_category`, `issue_type`, `issue_type_ar`, `created_at`, `updated_at`) VALUES
(1, 1, 'Electrical malfunctions', 'اعطال سباكة', '2021-10-17 15:37:39', '2021-10-17 15:39:59'),
(3, 1, 'Test', 'اختبار', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(6, '2021_09_30_175859_create_sessions_table', 2),
(7, '2021_09_30_192227_create_roles_table', 3),
(8, '2021_10_01_115908_create_stations_table', 4),
(9, '2021_10_04_080930_add_more_fields_to_users_table', 5),
(10, '2021_10_14_180624_create_surveyquestions_table', 6),
(11, '2021_10_16_054527_create_issuecategories_table', 7),
(12, '2021_10_16_062545_create_issuetypes_table', 7);

-- --------------------------------------------------------

--
-- Table structure for table `order_fuels`
--

CREATE TABLE `order_fuels` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `station_manager` int(11) DEFAULT NULL,
  `station_id` int(11) DEFAULT NULL,
  `fuel_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `capacity` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_no` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'fuel required date',
  `time` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_fuels`
--

INSERT INTO `order_fuels` (`id`, `station_manager`, `station_id`, `fuel_type`, `capacity`, `order_no`, `status`, `date`, `time`, `created_at`, `updated_at`) VALUES
(70, 16, 4, 'Diesel', '32000', '#579002813846964', 'Completed', '30 Nov 2021', '06:00 am', '2021-11-30 11:08:32', '2021-12-02 12:48:52'),
(71, 16, 4, '91', '42000', '#723208542022055', 'Completed', '30 Nov 2021', '05:00 PM', '2021-11-30 11:15:23', '2021-12-02 12:48:17'),
(77, NULL, NULL, '', '', '', 'Processing', NULL, NULL, '2021-12-02 12:36:12', '2021-12-02 12:36:12'),
(78, NULL, NULL, '', '', '', 'Processing', NULL, NULL, '2021-12-02 12:36:40', '2021-12-02 12:36:40'),
(79, NULL, NULL, '', '', '', 'Completed', NULL, NULL, '2021-12-02 12:44:44', '2021-12-02 12:44:44');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('shibila.aysha@gmail.com', '$2y$10$uTixucZy0MtPKGN4CaG3beingQsCzvC5VB6fiuaLXwcfHswtarf/i', '2021-11-06 11:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 2, 'auth_token', 'c0af5f03e8b24adfda0aa05d3864ded028f6a9b16e961b27a474a34e671d15b0', '[\"*\"]', NULL, '2021-10-17 23:37:31', '2021-10-17 23:37:31'),
(2, 'App\\Models\\User', 2, 'auth_token', '15545a0150b9a71bc114a67811eaf1e3c08fd5b8de0ca4b9eca2576c77ca24c8', '[\"*\"]', NULL, '2021-10-18 00:19:21', '2021-10-18 00:19:21'),
(3, 'App\\Models\\User', 2, 'auth_token', 'd4c118d1e1a69f6e5653e7cdaa1f4a162b914460c165fc92b6d8e747f1f90fad', '[\"*\"]', NULL, '2021-10-18 00:19:45', '2021-10-18 00:19:45'),
(4, 'App\\Models\\User', 2, 'auth_token', '9c9da91472db504c611c5a784d4ab175d1ce23df5b3b942f1a04fa33dde93b1c', '[\"*\"]', NULL, '2021-10-18 00:20:52', '2021-10-18 00:20:52'),
(5, 'App\\Models\\User', 2, 'auth_token', '3f645cd5b849f3f52e2132de2adecdb6a3299b8ba518e5fa1a448c2a152c68db', '[\"*\"]', NULL, '2021-10-18 00:21:27', '2021-10-18 00:21:27'),
(6, 'App\\Models\\User', 2, 'auth_token', '5459617dbdc7303f6fb3840bcdc229690e82fc24efc8b4bb429a4eed5fba95cb', '[\"*\"]', NULL, '2021-10-18 11:00:07', '2021-10-18 11:00:07'),
(7, 'App\\Models\\User', 2, 'auth_token', '18e3eb6839b956e1128eb2ae863ce6c8e92c53b6251117025c45015b4597c54e', '[\"*\"]', NULL, '2021-10-18 11:01:10', '2021-10-18 11:01:10'),
(8, 'App\\Models\\User', 2, 'auth_token', '3d7fd4c8c5f7bed2328276928b0fa792b433153555de1985e8316edcae128e90', '[\"*\"]', NULL, '2021-10-18 11:26:17', '2021-10-18 11:26:17'),
(9, 'App\\Models\\User', 2, 'auth_token', '4d103b66ba4636f6f50145b5472589d5afe27fbd12b18617fb9c3e2df8e456cc', '[\"*\"]', NULL, '2021-10-18 11:26:33', '2021-10-18 11:26:33'),
(10, 'App\\Models\\User', 2, 'auth_token', '990cc801122bfc77b527661a33eaa614d13a405ee8b99c2839b22ab3ee966ed2', '[\"*\"]', NULL, '2021-10-18 11:26:59', '2021-10-18 11:26:59'),
(11, 'App\\Models\\User', 2, 'auth_token', '77c3867c177a08d1ca6b1678115eb2708354bec27d413ef407af93a3a5248455', '[\"*\"]', NULL, '2021-10-18 11:40:10', '2021-10-18 11:40:10'),
(12, 'App\\Models\\User', 2, 'auth_token', 'dd38946e0427272297c08dd447087f101052f468f5dee4ce3c4b7260e4046009', '[\"*\"]', NULL, '2021-10-18 12:08:41', '2021-10-18 12:08:41'),
(13, 'App\\Models\\User', 2, 'auth_token', '8893fe1eb1093deca3874b9c42383378add6a2810430ffb664814d79302abad2', '[\"*\"]', NULL, '2021-10-18 12:15:51', '2021-10-18 12:15:51'),
(14, 'App\\Models\\User', 2, 'auth_token', '0020a8fadcdd88c0c6bfa0b753be185ba2117e53a1a7a4fe27793549e12d19c4', '[\"*\"]', NULL, '2021-10-18 12:18:29', '2021-10-18 12:18:29'),
(15, 'App\\Models\\User', 2, 'auth_token', 'ec3a705875e97fb076c3ff2533a8db767de4b01570460ab974cfaa7167c05fe5', '[\"*\"]', NULL, '2021-10-18 12:40:51', '2021-10-18 12:40:51'),
(16, 'App\\Models\\User', 2, 'auth_token', 'cf657e860367a12d545686ccc186ca9d2026245b623f88fd26266a56985ba746', '[\"*\"]', NULL, '2021-10-18 12:41:57', '2021-10-18 12:41:57'),
(17, 'App\\Models\\User', 2, 'auth_token', '7bc3d1b421759ad214b9ace9e7caf484a76a1ea146592735cdbdbf4cc0582450', '[\"*\"]', NULL, '2021-10-18 12:42:09', '2021-10-18 12:42:09'),
(18, 'App\\Models\\User', 2, 'auth_token', '1830d78019a8447afdbd93a96e5d5558c31846880c1d80ea8630547b64f47496', '[\"*\"]', NULL, '2021-10-18 12:48:26', '2021-10-18 12:48:26'),
(19, 'App\\Models\\User', 2, 'auth_token', '018fbb532e0ed51da91ec579d81c2f206540a84c951df969f619f37993bc8773', '[\"*\"]', NULL, '2021-10-18 12:49:10', '2021-10-18 12:49:10'),
(20, 'App\\Models\\User', 2, 'auth_token', '952ba05350388345a57586c10ff790b650b92d19c14d248485416f097972ec06', '[\"*\"]', NULL, '2021-10-18 12:51:04', '2021-10-18 12:51:04'),
(21, 'App\\Models\\User', 2, 'auth_token', '5a5467e685d9cc063de2d23c280b3fe116fa44a82127b4be0d3a0f074ad8e63a', '[\"*\"]', NULL, '2021-10-18 12:53:24', '2021-10-18 12:53:24'),
(22, 'App\\Models\\User', 2, 'auth_token', '4d8349a50f59ccc39f3d0cc90973c738207cc4e207c7cb5779d4e6f8904f20f2', '[\"*\"]', NULL, '2021-10-18 12:57:15', '2021-10-18 12:57:15'),
(23, 'App\\Models\\User', 2, 'auth_token', '8a874a135b6c961c89763dc32848d6cefe7f3c764ff14162d82d008c8f63c28c', '[\"*\"]', NULL, '2021-10-18 12:58:51', '2021-10-18 12:58:51'),
(24, 'App\\Models\\User', 2, 'auth_token', '2a796d7db10f89f4b92534efc3cc2b0682d2db433b7a458b03bcd0ab322c0db9', '[\"*\"]', NULL, '2021-10-18 12:59:55', '2021-10-18 12:59:55'),
(25, 'App\\Models\\User', 2, 'auth_token', '72ee0345e66b7d51a658a9ac527b07a62c1080f3df3e86f3b54b32e16eb846a6', '[\"*\"]', NULL, '2021-10-18 13:00:04', '2021-10-18 13:00:04'),
(26, 'App\\Models\\User', 2, 'auth_token', '7f22aa22139712bee958abbbdb40c89f10f90fc53f0c387e0ffe9be4ccfd5cdd', '[\"*\"]', NULL, '2021-10-18 13:03:45', '2021-10-18 13:03:45'),
(27, 'App\\Models\\User', 2, 'auth_token', '98434fdb25182cb5a7317e509e3af597005d9a21ab7f272d14be0131218838b4', '[\"*\"]', NULL, '2021-10-18 13:04:15', '2021-10-18 13:04:15'),
(28, 'App\\Models\\User', 6, 'auth_token', '8f2738cb8ca995e5f5ac8dbb9c14420572b9fb2563fea05a50ee14bbf89dddcf', '[\"*\"]', NULL, '2021-10-18 13:26:45', '2021-10-18 13:26:45'),
(29, 'App\\Models\\User', 6, 'auth_token', 'a705180f72b08d6918dcc5a1290410a550d48736f0953bfbffb638233974dc88', '[\"*\"]', NULL, '2021-10-18 15:11:46', '2021-10-18 15:11:46'),
(30, 'App\\Models\\User', 2, 'auth_token', '5b3d9ea5850920b4445a90cf1f4a5d923ad881d610902677b1d02d831d016d5b', '[\"*\"]', NULL, '2021-10-18 15:14:17', '2021-10-18 15:14:17'),
(31, 'App\\Models\\User', 2, 'auth_token', 'a69b5678720dbb5e5198c1ffe6d8028b49cab2e007794218756cef0d80fe257b', '[\"*\"]', NULL, '2021-10-18 15:16:30', '2021-10-18 15:16:30'),
(32, 'App\\Models\\User', 2, 'auth_token', '1ca0a1a344c68bae742f26bfb12fc11184b6bb578fc50c3c3cab6dec732b936b', '[\"*\"]', NULL, '2021-10-18 15:19:04', '2021-10-18 15:19:04'),
(33, 'App\\Models\\User', 2, 'auth_token', 'fe76d716c0066a3b11c8564fead8e0bc54d27fab32f3a9a135342dbaa6ff621a', '[\"*\"]', NULL, '2021-10-18 15:24:42', '2021-10-18 15:24:42'),
(34, 'App\\Models\\User', 2, 'auth_token', 'a716b7b871b8b7bd1ab3a84bed44f2a7fa61e9ed4c1705dbdd6b0946ba08a73d', '[\"*\"]', NULL, '2021-10-18 15:31:04', '2021-10-18 15:31:04'),
(35, 'App\\Models\\User', 6, 'auth_token', 'a4f77a119cc58bc891e12214282ffe23172a4a0a8cb0944e90abfa182282beff', '[\"*\"]', NULL, '2021-10-18 15:47:48', '2021-10-18 15:47:48'),
(36, 'App\\Models\\User', 6, 'auth_token', 'b6cc437a5182f053b789e981db697f5ade41ccc18f49b60dda57bacca04bc46b', '[\"*\"]', NULL, '2021-10-18 15:49:03', '2021-10-18 15:49:03'),
(37, 'App\\Models\\User', 6, 'auth_token', '18d3f68b7f1a05fa5cd5ace5ccdd3d21aa6f3a26c84ff4d861b2ca34bfb41b54', '[\"*\"]', NULL, '2021-10-18 15:52:49', '2021-10-18 15:52:49'),
(38, 'App\\Models\\User', 6, 'auth_token', 'ca0f78f6e7e0a35bd3f78a6860fc8c05bfff11dd9dad051fed62adafd8bea7d0', '[\"*\"]', NULL, '2021-10-18 16:19:28', '2021-10-18 16:19:28'),
(39, 'App\\Models\\User', 6, 'auth_token', 'a2b4c234968acafe1d9cde65e4be9098076960e40efd7bacc2b62c92875527fa', '[\"*\"]', NULL, '2021-10-18 16:24:35', '2021-10-18 16:24:35'),
(40, 'App\\Models\\User', 6, 'auth_token', 'ecded50645fa2c624404e1a8eb1707fe5344a0ec9474ed9c242fea05e9452af0', '[\"*\"]', NULL, '2021-10-18 16:30:24', '2021-10-18 16:30:24'),
(41, 'App\\Models\\User', 6, 'auth_token', '2609ad9e87127bd5d91f7f5e44832690ec297b42d5877683eab113227d9f7b4f', '[\"*\"]', NULL, '2021-10-18 17:37:20', '2021-10-18 17:37:20'),
(42, 'App\\Models\\User', 6, 'auth_token', 'a0a897a91247550a4510c73812a66538aa548bf2df9db013897c387cfd1dd697', '[\"*\"]', NULL, '2021-10-18 17:51:11', '2021-10-18 17:51:11'),
(43, 'App\\Models\\User', 6, 'auth_token', '6ae6c92c4c7dc047eff04d88a62b48fa43658285cdaac584609d05c57e16d8b2', '[\"*\"]', NULL, '2021-10-19 10:22:40', '2021-10-19 10:22:40'),
(44, 'App\\Models\\User', 6, 'auth_token', '043e5163ded15a0046a93d255a92b6797eb68231945282f68ced6be0dbb9dca0', '[\"*\"]', NULL, '2021-10-19 10:26:49', '2021-10-19 10:26:49'),
(45, 'App\\Models\\User', 2, 'auth_token', 'c6b8c24f95d47e7410700f069b4fb474554fdedae00aea2a9e5cb2f59f1d97b0', '[\"*\"]', NULL, '2021-10-19 10:27:37', '2021-10-19 10:27:37'),
(46, 'App\\Models\\User', 6, 'auth_token', 'e6d4bac8f5ba388d40677d8119ea7a005dd38122dd04e9b54efa769ea6568964', '[\"*\"]', NULL, '2021-10-19 10:30:55', '2021-10-19 10:30:55'),
(47, 'App\\Models\\User', 6, 'auth_token', '98fed3c5efe74f98b1b6fff216abf104f65179de11d96e8a6c75f19d83fb6e59', '[\"*\"]', NULL, '2021-10-19 11:14:15', '2021-10-19 11:14:15'),
(48, 'App\\Models\\User', 6, 'auth_token', '6e40e2fd211a82388c94b6a706b2c54ddcd731da414a82d5dd0a9e5dd20349eb', '[\"*\"]', '2021-10-19 15:52:51', '2021-10-19 11:17:47', '2021-10-19 15:52:51'),
(49, 'App\\Models\\User', 6, 'auth_token', 'ae6e64c08afb6e46057230e41e66be8eeb8492e08d59cbeb3144b5b4239f174c', '[\"*\"]', '2021-10-20 09:52:26', '2021-10-19 11:41:00', '2021-10-20 09:52:26'),
(50, 'App\\Models\\User', 6, 'auth_token', '2e8e3019604cc008a3c81c779b8feb9f7124a1526dd9370ae0250c5b51d87e70', '[\"*\"]', NULL, '2021-10-19 13:01:09', '2021-10-19 13:01:09'),
(51, 'App\\Models\\User', 6, 'auth_token', 'd28bf74c66c234daff74592c5147b6f714c558e1cf3f711c5e803d4069de54f1', '[\"*\"]', NULL, '2021-10-19 14:20:08', '2021-10-19 14:20:08'),
(52, 'App\\Models\\User', 6, 'auth_token', '1b1ee949313d79b73ecee5e9362384a765926751d67cf8df2f2d94e9ae347072', '[\"*\"]', NULL, '2021-10-19 15:11:44', '2021-10-19 15:11:44'),
(53, 'App\\Models\\User', 1, 'auth_token', 'aeb8d215df756e53ac0db6be51c34716650d70b10673a9e47a6d6230b5e701aa', '[\"*\"]', '2021-10-19 15:51:06', '2021-10-19 15:45:29', '2021-10-19 15:51:06'),
(54, 'App\\Models\\User', 1, 'auth_token', 'c92c48ef71158e9c05e9c3fe9e9223a97ba8dfdb72bda8c278fc25c854100ff9', '[\"*\"]', '2021-10-19 15:53:05', '2021-10-19 15:51:17', '2021-10-19 15:53:05'),
(55, 'App\\Models\\User', 6, 'auth_token', 'cf613b29a8d81fd1025567e62e1299930464cd3b032cb7b6f49c55fbf8e3e6d9', '[\"*\"]', '2021-10-19 15:57:51', '2021-10-19 15:57:00', '2021-10-19 15:57:51'),
(56, 'App\\Models\\User', 6, 'auth_token', '955f4f058477eef8c87bf96ad071ee4dcd59cf11548d0303a7e80b1587737f5c', '[\"*\"]', '2021-10-19 17:42:19', '2021-10-19 17:41:57', '2021-10-19 17:42:19'),
(57, 'App\\Models\\User', 6, 'auth_token', '4fb925ac76c339c5e3340fea2431947fe0a727aa255ce9aa75c5d609a21d505b', '[\"*\"]', NULL, '2021-10-19 17:58:36', '2021-10-19 17:58:36'),
(58, 'App\\Models\\User', 6, 'auth_token', '1084d0fe17c11d9a5aa95d926a31293ea933fd8023d75a5ce9b8750204773ff6', '[\"*\"]', NULL, '2021-10-19 17:59:06', '2021-10-19 17:59:06'),
(59, 'App\\Models\\User', 6, 'auth_token', '27af6a8158efed3182458a71c2c45cdfc82547cdfc4d1d6ef0ad905389c10968', '[\"*\"]', NULL, '2021-10-19 17:59:29', '2021-10-19 17:59:29'),
(60, 'App\\Models\\User', 6, 'auth_token', 'fa6a85d4f4dbf0e0b0026748f46d0b7dd270ffb3d5d48b331864f6c049d95b84', '[\"*\"]', NULL, '2021-10-19 17:59:50', '2021-10-19 17:59:50'),
(61, 'App\\Models\\User', 6, 'auth_token', '5d3b85b8155cbf5a85e8881f80691932f50c435219d192101601988a760cc91a', '[\"*\"]', NULL, '2021-10-19 18:00:12', '2021-10-19 18:00:12'),
(62, 'App\\Models\\User', 6, 'auth_token', 'c7b2994cf573841bea6360f25bb6d226d851e24412e45d6071cca5df5df3f4fe', '[\"*\"]', '2021-10-21 10:10:48', '2021-10-19 18:01:44', '2021-10-21 10:10:48'),
(63, 'App\\Models\\User', 6, 'auth_token', '031b7e9ff57adb05d4629cf213fd7c9dc711939c9426fc53dbb9a3611a95e29e', '[\"*\"]', '2021-10-20 15:30:31', '2021-10-20 09:51:10', '2021-10-20 15:30:31'),
(64, 'App\\Models\\User', 6, 'auth_token', 'fe9296324c7644e01d4d3b61918fdd6514b7dc98040d7886135de4090bfaff0b', '[\"*\"]', '2021-10-20 14:33:31', '2021-10-20 09:53:04', '2021-10-20 14:33:31'),
(65, 'App\\Models\\User', 10, 'auth_token', 'dfbc215700f15455192002798feb967ea06e6da9adaf3df879296a8030f86841', '[\"*\"]', '2021-10-20 15:43:29', '2021-10-20 15:32:09', '2021-10-20 15:43:29'),
(66, 'App\\Models\\User', 10, 'auth_token', '1d4bd6d424f0938d50c546e3b2affb612a5b1ff678b9e161caa47bff6ac1396d', '[\"*\"]', '2021-10-20 16:08:13', '2021-10-20 16:04:05', '2021-10-20 16:08:13'),
(67, 'App\\Models\\User', 6, 'auth_token', 'f058832501f8221cddd48fdbc28a5555ce4ac9765d164b3d71f4a6e5b40e4349', '[\"*\"]', '2021-10-20 16:09:27', '2021-10-20 16:05:10', '2021-10-20 16:09:27'),
(68, 'App\\Models\\User', 10, 'auth_token', '12e4d5526bd7e2fd42cbdc9bc3a2fa942ff2bc222b86f103e279a959c5ac160b', '[\"*\"]', '2021-10-21 09:19:44', '2021-10-20 16:37:34', '2021-10-21 09:19:44'),
(69, 'App\\Models\\User', 6, 'auth_token', '70f66cc76fd921e749c48b0808cc2c300fec4a8a90dcf1e51320c9fc7b603644', '[\"*\"]', '2021-10-22 14:40:56', '2021-10-20 17:43:47', '2021-10-22 14:40:56'),
(70, 'App\\Models\\User', 6, 'auth_token', '6d245b855a22d43a5dee986f7f67e10a8f401a0421ec5af997021b543f5e5734', '[\"*\"]', '2021-10-20 18:20:21', '2021-10-20 18:17:27', '2021-10-20 18:20:21'),
(71, 'App\\Models\\User', 10, 'auth_token', '27be005fca395baef912df8fd1244178eb1637b98dee9c1966b88ccda0bf68f7', '[\"*\"]', '2021-10-21 09:23:22', '2021-10-20 18:20:29', '2021-10-21 09:23:22'),
(72, 'App\\Models\\User', 6, 'auth_token', '6da377ae4bd00e0263ca6cd0f1cfaebbc11a4a2a797c990f0ceb02f484f77f03', '[\"*\"]', '2021-10-21 09:35:01', '2021-10-21 09:25:24', '2021-10-21 09:35:01'),
(73, 'App\\Models\\User', 6, 'auth_token', '02404e88e033035a15dfbba51298f71f31d763a30462352f597df176a4567206', '[\"*\"]', '2021-10-21 09:50:31', '2021-10-21 09:31:26', '2021-10-21 09:50:31'),
(74, 'App\\Models\\User', 10, 'auth_token', '67c21b90e8d07a6bed1eb9dc9608aebe50694e81ff2fb122ec994fd9a54bde1c', '[\"*\"]', '2021-10-25 05:55:36', '2021-10-21 09:35:26', '2021-10-25 05:55:36'),
(75, 'App\\Models\\User', 10, 'auth_token', '57bc69407365cef4d68423a7255bd852f5e46f84e928dc5b20550b1d55806dd3', '[\"*\"]', '2021-10-21 09:52:55', '2021-10-21 09:52:52', '2021-10-21 09:52:55'),
(76, 'App\\Models\\User', 10, 'auth_token', '678a6169bc5a588005d8dba45a7074a5848ef379ed1c397dd0234dcf45838a2d', '[\"*\"]', '2021-10-21 09:56:38', '2021-10-21 09:56:36', '2021-10-21 09:56:38'),
(77, 'App\\Models\\User', 6, 'auth_token', '4c06966a47f311307aa2697988ea5f606d00c0e4398d7950e214ec50e9f54e57', '[\"*\"]', '2021-10-21 10:41:11', '2021-10-21 09:58:09', '2021-10-21 10:41:11'),
(78, 'App\\Models\\User', 10, 'auth_token', 'f5382fa6f4531608369964b933410e511546c9d1f2c63f076bac829725b98db0', '[\"*\"]', '2021-10-21 10:24:37', '2021-10-21 10:11:25', '2021-10-21 10:24:37'),
(79, 'App\\Models\\User', 10, 'auth_token', 'f3b3c1051dd7d683e508ed1cf23abebac8a9ab6075f40ea041cf63a0eabf55b2', '[\"*\"]', '2021-10-21 11:31:36', '2021-10-21 10:41:38', '2021-10-21 11:31:36'),
(80, 'App\\Models\\User', 11, 'auth_token', '0b54c11ca22915e8f89048d3c828537651fcdecb45afe7f0af0fe09201ce2aca', '[\"*\"]', '2021-10-21 11:25:21', '2021-10-21 11:22:14', '2021-10-21 11:25:21'),
(81, 'App\\Models\\User', 11, 'auth_token', '3f10c0367ffc2f51d83f87c9512feb6654310c213c1dc97a6b9d991bf5266621', '[\"*\"]', '2021-10-21 11:30:17', '2021-10-21 11:30:16', '2021-10-21 11:30:17'),
(82, 'App\\Models\\User', 10, 'auth_token', 'e6e81e7c6f45388945f7d5b7fcc500110d793e4ba43a345a4dfed4bbbe7c053b', '[\"*\"]', '2021-10-21 11:59:22', '2021-10-21 11:32:42', '2021-10-21 11:59:22'),
(83, 'App\\Models\\User', 11, 'auth_token', '2871fda9376dc04125c040bf8e4c96b13cc3b0b146795f1f02b3c64c50840183', '[\"*\"]', '2021-10-22 15:12:27', '2021-10-21 12:05:27', '2021-10-22 15:12:27'),
(84, 'App\\Models\\User', 6, 'auth_token', '5ec999faf61d40f870688d720941efbac85c1d8567891e7b34092c2bd68209dd', '[\"*\"]', '2021-10-21 15:38:45', '2021-10-21 14:30:37', '2021-10-21 15:38:45'),
(85, 'App\\Models\\User', 6, 'auth_token', 'aa85298926175cb5dcd85884dea5f2380a5fa00036399b8d777077d869abd4d4', '[\"*\"]', '2021-10-22 09:26:09', '2021-10-21 15:39:29', '2021-10-22 09:26:09'),
(86, 'App\\Models\\User', 10, 'auth_token', 'c4f785eb64682f8f29302f9d6497fea552c71b1851bcd5442af56ab8c68124a7', '[\"*\"]', '2021-10-22 17:38:16', '2021-10-22 09:26:37', '2021-10-22 17:38:16'),
(87, 'App\\Models\\User', 11, 'auth_token', 'a2fd33ab0b7fcfa018c02ee89303cb5da2dedb641c47c3fb1f730321b266b83b', '[\"*\"]', '2021-10-22 14:08:58', '2021-10-22 14:05:21', '2021-10-22 14:08:58'),
(88, 'App\\Models\\User', 10, 'auth_token', 'f9e585e51c00e43b8c3bb200bf8e93ce247f700dbca9e7c38a54108c34773171', '[\"*\"]', '2021-10-22 14:42:00', '2021-10-22 14:41:18', '2021-10-22 14:42:00'),
(89, 'App\\Models\\User', 11, 'auth_token', '4992018e8aba3b2d463e7217e75334c088fd4c9046147c297e6772715bf0004d', '[\"*\"]', '2021-10-22 17:02:05', '2021-10-22 14:42:57', '2021-10-22 17:02:05'),
(90, 'App\\Models\\User', 11, 'auth_token', 'f3dce970dd54a4575d8ba0721c71268ae91108fb6e63b7fa90e6aa9871baf3d1', '[\"*\"]', '2021-10-22 15:09:08', '2021-10-22 15:07:16', '2021-10-22 15:09:08'),
(91, 'App\\Models\\User', 2, 'auth_token', '17e4989bb7b04bad28f5095aebee8b64904a33ef017fd5cb48a21ca9a965bfaf', '[\"*\"]', NULL, '2021-10-22 15:21:48', '2021-10-22 15:21:48'),
(92, 'App\\Models\\User', 2, 'auth_token', 'dfb934679bf58ace0c4a2ce11ed223000dda777a05b16fc63d3fa41922af7bfe', '[\"*\"]', NULL, '2021-10-22 15:22:03', '2021-10-22 15:22:03'),
(93, 'App\\Models\\User', 6, 'auth_token', '7cf54774d494e2bc27e0b5779a7bdc117c046c82e0a886afa09dcab5ea3fea33', '[\"*\"]', '2021-10-23 14:36:33', '2021-10-22 17:01:07', '2021-10-23 14:36:33'),
(94, 'App\\Models\\User', 10, 'auth_token', '321dcc61deeeb1ab25c7b9bcddd18a829ba5c4bf82304b8b79f25d123f04afa6', '[\"*\"]', '2021-10-23 12:19:14', '2021-10-22 17:02:45', '2021-10-23 12:19:14'),
(95, 'App\\Models\\User', 6, 'auth_token', 'e164d0ddba3f97b55e215440d0acf02c7f512ede77ebd84c63d995bb8fd18036', '[\"*\"]', '2021-10-23 16:44:25', '2021-10-23 11:16:29', '2021-10-23 16:44:25'),
(96, 'App\\Models\\User', 6, 'auth_token', '700caaab39edaf1b9b2ebdaae2bd0a9cd66271a7718130e88e28d9aa10d4ef50', '[\"*\"]', '2021-10-23 14:22:05', '2021-10-23 14:16:45', '2021-10-23 14:22:05'),
(97, 'App\\Models\\User', 10, 'auth_token', '34c49dcfa5a3936a54e79de6eb08463aa9c6d4e1b81d820c64466bcf43f1adf1', '[\"*\"]', '2021-10-23 14:24:18', '2021-10-23 14:23:28', '2021-10-23 14:24:18'),
(98, 'App\\Models\\User', 6, 'auth_token', '9a466898ba03b8787f15d979d83ee2f4be01c12db20606a3a18e448d1f8ecf4f', '[\"*\"]', '2021-10-25 11:01:16', '2021-10-23 14:59:44', '2021-10-25 11:01:16'),
(99, 'App\\Models\\User', 10, 'auth_token', '7da1fc8569e389b827c081d21746314bf1a91c49bcb03be3ba287cb61e204146', '[\"*\"]', '2021-10-23 16:54:53', '2021-10-23 16:54:28', '2021-10-23 16:54:53'),
(100, 'App\\Models\\User', 11, 'auth_token', '79c6bc0f90c0563f68eb296fa4b3c1457180de4aa113e3ece9c2ae6e16771b64', '[\"*\"]', '2021-10-23 17:02:21', '2021-10-23 16:55:07', '2021-10-23 17:02:21'),
(101, 'App\\Models\\User', 6, 'auth_token', '666e421ff06faa2eb988e1edbc4e1b00c14c8be88460e63509dea8894ac296d8', '[\"*\"]', '2021-10-25 09:44:40', '2021-10-23 17:14:57', '2021-10-25 09:44:40'),
(102, 'App\\Models\\User', 2, 'auth_token', '3042e5bebc0e6b9d400e90fa083cfa6ccb50fa15d81562bc3a2cb1ec706ca553', '[\"*\"]', NULL, '2021-10-23 17:23:22', '2021-10-23 17:23:22'),
(103, 'App\\Models\\User', 11, 'auth_token', '0a573fc7d5864e211c596f2104048e79e14606f75a4cde8498e75a8291b307a1', '[\"*\"]', NULL, '2021-10-23 17:24:19', '2021-10-23 17:24:19'),
(104, 'App\\Models\\User', 6, 'auth_token', 'e09f2b6d11ae7e6cbd0bce0d8912ea1a7f40b4a225c33415b8a3fe4dd672580f', '[\"*\"]', NULL, '2021-10-23 17:25:36', '2021-10-23 17:25:36'),
(105, 'App\\Models\\User', 10, 'auth_token', '73a4b13560d1f3f4be0895758c8dfdccda69999f581381bf9520775ea8c97978', '[\"*\"]', NULL, '2021-10-23 17:26:22', '2021-10-23 17:26:22'),
(106, 'App\\Models\\User', 6, 'auth_token', '31084ba885e87fbdf71a6353376e7fcbb67fdff8898681af7319ce8e716c9c1c', '[\"*\"]', '2021-10-25 05:56:05', '2021-10-25 05:55:54', '2021-10-25 05:56:05'),
(107, 'App\\Models\\User', 10, 'auth_token', '6c6864f72a34b7e8ddb852f2d26628ba5092502408587deb5f76e673dedf3f71', '[\"*\"]', '2021-10-25 05:56:26', '2021-10-25 05:56:24', '2021-10-25 05:56:26'),
(108, 'App\\Models\\User', 11, 'auth_token', 'abd4e879a236997342503ee93c2df1b38b54bb6d4210f4b8b2b7e27ed3a61227', '[\"*\"]', '2021-10-25 05:57:31', '2021-10-25 05:57:16', '2021-10-25 05:57:31'),
(109, 'App\\Models\\User', 10, 'auth_token', '31c05001554506a9091687056b579509cebc4a162a7ae12b32085a509a6497ba', '[\"*\"]', '2021-10-25 10:26:18', '2021-10-25 09:45:56', '2021-10-25 10:26:18'),
(110, 'App\\Models\\User', 6, 'auth_token', 'b15a2c7abd090ff4008579cfbd45ba6872093fa3d8fa6a9c914c88dff22763a5', '[\"*\"]', '2021-10-25 10:27:17', '2021-10-25 10:27:16', '2021-10-25 10:27:17'),
(111, 'App\\Models\\User', 10, 'auth_token', '4a71c2b1e12dcdf21d85963d284e19ee0837ba3204a723050a2cd91138af003c', '[\"*\"]', '2021-10-25 11:01:37', '2021-10-25 10:27:34', '2021-10-25 11:01:37'),
(112, 'App\\Models\\User', 10, 'auth_token', 'bc26b46517a6e2bd434dd81be8df63eb2ae17d18043a3bb79c6e1bf8de71b41d', '[\"*\"]', '2021-10-25 11:06:30', '2021-10-25 11:01:59', '2021-10-25 11:06:30'),
(113, 'App\\Models\\User', 11, 'auth_token', '94ddf801ef8fbba031b2f235fd372d74a2ef14332f54ef681be8b38f53860c1c', '[\"*\"]', '2021-10-25 11:06:58', '2021-10-25 11:06:56', '2021-10-25 11:06:58'),
(114, 'App\\Models\\User', 6, 'auth_token', 'b722deacf06ab6163e79382aaf079c456cd53e686f2453cab15249610ec3cfe9', '[\"*\"]', '2021-10-25 11:11:49', '2021-10-25 11:07:17', '2021-10-25 11:11:49'),
(115, 'App\\Models\\User', 6, 'auth_token', '23813d0ac3ffa9a88648da800d8444de6e85019ffe37ffd3b0b194b450c25290', '[\"*\"]', '2021-10-25 11:19:24', '2021-10-25 11:13:22', '2021-10-25 11:19:24'),
(116, 'App\\Models\\User', 6, 'auth_token', 'ead2c2fc875a45887629ff47d901d0d7a35cba372ea28d1e0ab6472caf8aa990', '[\"*\"]', '2021-10-25 11:22:27', '2021-10-25 11:22:25', '2021-10-25 11:22:27'),
(117, 'App\\Models\\User', 10, 'auth_token', '9c5b660206d0d959707109df26d55031da3864d43ce37ff019e264355a66b307', '[\"*\"]', '2021-10-25 11:24:33', '2021-10-25 11:24:31', '2021-10-25 11:24:33'),
(118, 'App\\Models\\User', 10, 'auth_token', '4d714194cc383c06f6cfcb0c82401984889e76ea88645ac67a89d9d7272baf1a', '[\"*\"]', '2021-10-25 11:25:54', '2021-10-25 11:25:51', '2021-10-25 11:25:54'),
(119, 'App\\Models\\User', 6, 'auth_token', '2a2284e6b12c255d56b2d57e2ce11a9d1ae3b7db8ba0f3e21ac291faf7ebb95d', '[\"*\"]', '2021-10-27 09:47:29', '2021-10-25 11:26:32', '2021-10-27 09:47:29'),
(120, 'App\\Models\\User', 10, 'auth_token', 'efbd767405f5c0c50792b8078f58f13b0e761012e90738e6f4cf713763b114b9', '[\"*\"]', '2021-10-25 22:17:21', '2021-10-25 11:27:43', '2021-10-25 22:17:21'),
(121, 'App\\Models\\User', 6, 'auth_token', '337771a7afd9e1f077854bb256b52f44167b4cf06c7e1c197d52dbf35b6d0da7', '[\"*\"]', '2021-10-26 10:00:40', '2021-10-26 09:54:34', '2021-10-26 10:00:40'),
(122, 'App\\Models\\User', 16, 'auth_token', 'ead7bc32d269bb56253213ef137aed986c8bc9b221b106c48ca7f8cdddc3ff08', '[\"*\"]', '2021-11-08 16:06:34', '2021-10-27 09:37:06', '2021-11-08 16:06:34'),
(123, 'App\\Models\\User', 16, 'auth_token', 'cfd96c9efde9ae4322c45be82373c65f17b08ac14fc60789a90116305640b413', '[\"*\"]', '2021-10-27 09:53:43', '2021-10-27 09:53:41', '2021-10-27 09:53:43'),
(124, 'App\\Models\\User', 10, 'auth_token', '6d440e00966f97f15677bda48ed26f0b2220973573c90c246af9cdd23b31f18e', '[\"*\"]', '2021-10-27 10:07:57', '2021-10-27 09:54:10', '2021-10-27 10:07:57'),
(125, 'App\\Models\\User', 6, 'auth_token', '887df009e9a238fd9902dbfd7d695fdba10fbfea6137d103350eb3cd98933db4', '[\"*\"]', '2021-10-27 11:22:42', '2021-10-27 10:16:55', '2021-10-27 11:22:42'),
(126, 'App\\Models\\User', 10, 'auth_token', '2d692e9798de85d7fa14ec6c1c83bc1b1baf2a31031ef5723635bb17702c6de6', '[\"*\"]', '2021-10-27 11:24:01', '2021-10-27 11:23:28', '2021-10-27 11:24:01'),
(127, 'App\\Models\\User', 11, 'auth_token', '11d4f49ef3a863e4ec380bf0ceebe907a803d610303be4154b7382d341340737', '[\"*\"]', '2021-10-27 11:27:58', '2021-10-27 11:24:17', '2021-10-27 11:27:58'),
(128, 'App\\Models\\User', 6, 'auth_token', '045d78bca2850e98ba14751b54056a08f583f6d9206f2167730ed7f203b3b463', '[\"*\"]', '2021-10-27 11:29:15', '2021-10-27 11:28:23', '2021-10-27 11:29:15'),
(129, 'App\\Models\\User', 10, 'auth_token', '638a189ff312db201ee90e8bd9395bebf5fda854d8d96c39a51f9d7c23683860', '[\"*\"]', '2021-10-27 11:34:45', '2021-10-27 11:30:16', '2021-10-27 11:34:45'),
(130, 'App\\Models\\User', 6, 'auth_token', 'a0672577fe4ef4995edcdd1fbdeb5757a4ec2ac4f553c353c17a0e1182a851c7', '[\"*\"]', '2021-10-27 11:35:27', '2021-10-27 11:35:06', '2021-10-27 11:35:27'),
(131, 'App\\Models\\User', 6, 'auth_token', 'e154a0981dcf808cddde415ab02a9ca60dc162b25632ec2c2d5f7a5a5fa2ed52', '[\"*\"]', '2021-10-27 11:36:19', '2021-10-27 11:35:59', '2021-10-27 11:36:19'),
(132, 'App\\Models\\User', 6, 'auth_token', '2a04061b45fe5a612743f53546685f68046d243acd7ac7156dfb0c0369080ba1', '[\"*\"]', '2021-10-27 11:39:37', '2021-10-27 11:37:36', '2021-10-27 11:39:37'),
(133, 'App\\Models\\User', 10, 'auth_token', '2ebc77e58d8c5a94fbe2c2eff92d47c50b3c538b98ea33a4790e2472e0d4826b', '[\"*\"]', '2021-10-27 11:40:17', '2021-10-27 11:39:57', '2021-10-27 11:40:17'),
(134, 'App\\Models\\User', 6, 'auth_token', '207a863550daae8bb0c7de4da4f1941f8b5c6e911cb2294a75ecc75c1e32094f', '[\"*\"]', '2021-10-27 13:43:11', '2021-10-27 11:41:02', '2021-10-27 13:43:11'),
(135, 'App\\Models\\User', 16, 'auth_token', '2adc36334b7db6d6b09a46fb02f3c1ea83f337f53bd0d92724e803edd2b0fcc0', '[\"*\"]', '2021-10-27 17:05:04', '2021-10-27 13:43:46', '2021-10-27 17:05:04'),
(136, 'App\\Models\\User', 18, 'auth_token', 'da7d54ab903c37f52c731cc04351763d886d0c1f49764ba52c33bfb8fd58bbfe', '[\"*\"]', '2021-10-28 15:58:23', '2021-10-27 15:06:15', '2021-10-28 15:58:23'),
(137, 'App\\Models\\User', 16, 'auth_token', '70008203263b7c3d0faa42397b3594a790953f97d2867fafbf170bb087937742', '[\"*\"]', '2021-10-27 16:17:59', '2021-10-27 15:06:59', '2021-10-27 16:17:59'),
(138, 'App\\Models\\User', 6, 'auth_token', '65cd37595a011a86f4ee0adc8f998e56b3d064bb1e48568e4e7289c1b5d2fb0b', '[\"*\"]', '2021-10-27 16:55:55', '2021-10-27 16:54:33', '2021-10-27 16:55:55'),
(139, 'App\\Models\\User', 16, 'auth_token', '4bc27501d8af91c15d6da5e220ed4e02b7887de2f7c1787eea7886dccd0ff10e', '[\"*\"]', '2021-10-27 16:56:52', '2021-10-27 16:56:18', '2021-10-27 16:56:52'),
(140, 'App\\Models\\User', 10, 'auth_token', 'ad1b370e79e8d5fb3ebb117ea7c02d2d4cbd4c061524b03c212982f7d247ee2f', '[\"*\"]', '2021-10-28 09:15:04', '2021-10-27 17:12:49', '2021-10-28 09:15:04'),
(141, 'App\\Models\\User', 6, 'auth_token', 'cdcd21179a445f65bda0de4684848daef5aa128472de0f8815865f1c2a229f35', '[\"*\"]', '2021-10-28 09:17:33', '2021-10-27 17:14:12', '2021-10-28 09:17:33'),
(142, 'App\\Models\\User', 6, 'auth_token', '64f5d875538041caf5fbc8709023190eb34a0a60cc919037517dadd1a7253bfa', '[\"*\"]', '2021-10-30 15:30:22', '2021-10-27 21:42:46', '2021-10-30 15:30:22'),
(143, 'App\\Models\\User', 6, 'auth_token', '7a6aa4745837e9c7b3e3fd6393ac3e2067505ebd2de3860c3e91c19d66a1a5d6', '[\"*\"]', '2021-10-28 07:53:51', '2021-10-27 23:09:11', '2021-10-28 07:53:51'),
(144, 'App\\Models\\User', 6, 'auth_token', '02a9413ee4ed2486bfcaec1a95ffbdcf8b4d7a9061cebe73572c0308523a08b3', '[\"*\"]', '2021-10-28 09:19:25', '2021-10-28 09:15:53', '2021-10-28 09:19:25'),
(145, 'App\\Models\\User', 16, 'auth_token', 'b14c1b58f71c01f43783a6923fb61965a23f40c781d7e8e385036c2d01e8dc10', '[\"*\"]', '2021-10-28 09:20:21', '2021-10-28 09:19:42', '2021-10-28 09:20:21'),
(146, 'App\\Models\\User', 16, 'auth_token', 'bcc092e00b67c60e85b02e9613d210d4aafbdb784b69e3b2542f12e10d76d103', '[\"*\"]', '2021-10-28 15:19:01', '2021-10-28 09:21:39', '2021-10-28 15:19:01'),
(147, 'App\\Models\\User', 16, 'auth_token', '898ba473f13b64197536bbc6d46821474944ee6af716141015b531c4737ee616', '[\"*\"]', '2021-10-28 09:34:15', '2021-10-28 09:26:53', '2021-10-28 09:34:15'),
(148, 'App\\Models\\User', 6, 'auth_token', 'adbfb619cb0aea2fd60990a20fb13f946ae07e85ba5409ff658411e250bea0e2', '[\"*\"]', '2021-10-28 09:44:18', '2021-10-28 09:41:59', '2021-10-28 09:44:18'),
(149, 'App\\Models\\User', 10, 'auth_token', 'da5849ffdbf6e98c611b14c01293751c18d85c5033c9ff691adce5d6a7885524', '[\"*\"]', '2021-10-28 10:07:41', '2021-10-28 09:44:44', '2021-10-28 10:07:41'),
(150, 'App\\Models\\User', 6, 'auth_token', '51ef9b9a2d4b4fca56a362448cefc785a53176acf5f57279fa14dfe79065df99', '[\"*\"]', '2021-10-28 10:15:36', '2021-10-28 10:11:23', '2021-10-28 10:15:36'),
(151, 'App\\Models\\User', 10, 'auth_token', '70ef84ede8b071ac951f504e599087d0a105b9ffdeac033ad531b1e9cc1d8283', '[\"*\"]', '2021-10-28 10:17:02', '2021-10-28 10:15:55', '2021-10-28 10:17:02'),
(152, 'App\\Models\\User', 11, 'auth_token', 'b6fae46b17e081bf3c02bd723addeebb42ee922a196a4a265c05dea533d1d849', '[\"*\"]', '2021-10-28 10:19:04', '2021-10-28 10:17:29', '2021-10-28 10:19:04'),
(153, 'App\\Models\\User', 6, 'auth_token', 'c8f004e12d46a05aff4ccdb50296f94a862f73f602ebc1eeed272f28606e1143', '[\"*\"]', '2021-10-28 13:56:28', '2021-10-28 10:47:54', '2021-10-28 13:56:28'),
(154, 'App\\Models\\User', 20, 'auth_token', '079975b45cc91a2d4b49cf1c0df214061c0390943fc8c7fe1f8d9eb214e06064', '[\"*\"]', NULL, '2021-10-28 12:20:15', '2021-10-28 12:20:15'),
(155, 'App\\Models\\User', 16, 'auth_token', 'b7f32db34aed9273c0ff9c44af3c117330d659146b9df5370d345e6003e266d4', '[\"*\"]', '2021-10-28 14:15:11', '2021-10-28 14:10:38', '2021-10-28 14:15:11'),
(156, 'App\\Models\\User', 10, 'auth_token', '5bf2a4e36f501a44c1488966f517427343865d7ad1ae98e815ad682836f25bf9', '[\"*\"]', '2021-10-28 16:05:08', '2021-10-28 14:57:33', '2021-10-28 16:05:08'),
(157, 'App\\Models\\User', 6, 'auth_token', '59ff95f557e7effda2faa394ab5d4ad98a3199a56860ec5842ffdbce27935c34', '[\"*\"]', '2021-10-28 16:55:58', '2021-10-28 16:17:14', '2021-10-28 16:55:58'),
(158, 'App\\Models\\User', 6, 'auth_token', 'd3917844ab9f1872f001001f5fe573761337309acb88d5ee66b98bf49d3bbd38', '[\"*\"]', '2021-10-29 09:44:40', '2021-10-29 09:20:39', '2021-10-29 09:44:40'),
(159, 'App\\Models\\User', 6, 'auth_token', '66362b769f3bc4658ab5e94825e0fe693632863e8e0137e3e6a1791637d11d95', '[\"*\"]', '2021-10-29 09:35:56', '2021-10-29 09:35:55', '2021-10-29 09:35:56'),
(160, 'App\\Models\\User', 18, 'auth_token', 'c606c79b4dec5e2944a88947b8151fe77a1002ad19c8f1120ab2e952aa8bef86', '[\"*\"]', '2021-10-29 09:41:12', '2021-10-29 09:36:55', '2021-10-29 09:41:12'),
(161, 'App\\Models\\User', 10, 'auth_token', '0145fccf030bc6e177a7533c2b07ce8a309cecde718403f5274d1a21d6db4bb6', '[\"*\"]', '2021-10-29 09:43:25', '2021-10-29 09:43:06', '2021-10-29 09:43:25'),
(162, 'App\\Models\\User', 18, 'auth_token', 'c0591eec918a8d183f3fa882b3960679cad316c16f63d9e81711d55dbe2fc97a', '[\"*\"]', '2021-10-29 14:10:59', '2021-10-29 09:44:22', '2021-10-29 14:10:59'),
(163, 'App\\Models\\User', 20, 'auth_token', '1c56dda9965061f422537df83421ddff14c1e93351e60b83e1ce77435eedbc02', '[\"*\"]', NULL, '2021-10-29 09:45:06', '2021-10-29 09:45:06'),
(164, 'App\\Models\\User', 20, 'auth_token', '820e848bf0357472be0ff602d81e25f0397e2523a1c5a92308d15621e67c110d', '[\"*\"]', '2021-11-15 16:42:35', '2021-10-29 09:46:02', '2021-11-15 16:42:35'),
(165, 'App\\Models\\User', 10, 'auth_token', '330a713bd0d02b6a0417a03eee23121d98ba4cb9b5cb5f9d3d466df7a5db5634', '[\"*\"]', '2021-10-29 14:11:46', '2021-10-29 14:11:42', '2021-10-29 14:11:46'),
(166, 'App\\Models\\User', 6, 'auth_token', '7b3ec6665aa60f238017f5a9c638027e1aa31c68a69def025894d640f57f7095', '[\"*\"]', '2021-10-29 14:14:43', '2021-10-29 14:12:45', '2021-10-29 14:14:43'),
(167, 'App\\Models\\User', 20, 'auth_token', 'f9f216cbc8c451b7d109fbc2f248c7cf7351c7d145c14ba9ddcc4f2b52dd3784', '[\"*\"]', '2021-10-29 14:52:07', '2021-10-29 14:27:50', '2021-10-29 14:52:07'),
(168, 'App\\Models\\User', 6, 'auth_token', 'af4ab1bafa3dd4c11060f2b04a641580e871d340e224a67707559d25f608417a', '[\"*\"]', '2021-10-29 14:56:02', '2021-10-29 14:53:29', '2021-10-29 14:56:02'),
(169, 'App\\Models\\User', 20, 'auth_token', '2da3e6784ab31e5780977932bc8c5eda381e0edfa8286e652d81c304af6665bd', '[\"*\"]', '2021-10-29 15:02:52', '2021-10-29 15:02:51', '2021-10-29 15:02:52'),
(170, 'App\\Models\\User', 10, 'auth_token', '0dc2f2c2f94bba95169d9deee8c0ff3ff2b545d4f5e9ea41a5ca9572d4a728c4', '[\"*\"]', '2021-10-29 15:03:13', '2021-10-29 15:03:12', '2021-10-29 15:03:13'),
(171, 'App\\Models\\User', 6, 'auth_token', '440a0c687921cd5f71f6f7c65da3445e06d44f6c88d9b837974ed60b37798f60', '[\"*\"]', '2021-10-29 16:06:33', '2021-10-29 16:06:32', '2021-10-29 16:06:33'),
(172, 'App\\Models\\User', 6, 'auth_token', 'daba43f8846e53ef865c2ee0aa46ae75e8042c121a6e003f01418b52c12ac1e8', '[\"*\"]', '2021-10-29 16:07:51', '2021-10-29 16:07:50', '2021-10-29 16:07:51'),
(173, 'App\\Models\\User', 6, 'auth_token', '689aa3b53eb3be958671464232225c1a3ed53c6c8fbf6a19b7137f282896e2c9', '[\"*\"]', '2021-10-29 16:11:30', '2021-10-29 16:09:04', '2021-10-29 16:11:30'),
(174, 'App\\Models\\User', 20, 'auth_token', '7b663f3155ca7e230c1664b936be8e6f67566b219535c03cacf4ba4aa82ec3c5', '[\"*\"]', '2021-10-29 16:12:40', '2021-10-29 16:12:38', '2021-10-29 16:12:40'),
(175, 'App\\Models\\User', 6, 'auth_token', '4d23449e7e2c789026f54a9a50c21e201bc83332dda6d27bd6b96256c0dc1ae1', '[\"*\"]', '2021-10-29 16:13:47', '2021-10-29 16:13:45', '2021-10-29 16:13:47'),
(176, 'App\\Models\\User', 11, 'auth_token', '66eb0c857a8aa5f456b2fb1cbdbfcd00a683347d1d2abb5e4566f6a56cf03289', '[\"*\"]', '2021-10-29 16:14:28', '2021-10-29 16:14:26', '2021-10-29 16:14:28'),
(177, 'App\\Models\\User', 10, 'auth_token', '021aa5ed3a566c753356bfaa2da8a13b28ac811e8bc045d66b9bf30054797969', '[\"*\"]', '2021-10-29 16:19:49', '2021-10-29 16:15:18', '2021-10-29 16:19:49'),
(178, 'App\\Models\\User', 6, 'auth_token', '8a6c5bcfac27b36a9bfc7d8c5744c2ce03b83988e93433d64e9509785539b2dc', '[\"*\"]', '2021-10-29 16:20:19', '2021-10-29 16:20:17', '2021-10-29 16:20:19'),
(179, 'App\\Models\\User', 20, 'auth_token', '5014054def34ad3ebeb1f22aa2e4361bd3da388ec3471b69f3bdfe6ab12394e0', '[\"*\"]', '2021-10-29 16:24:06', '2021-10-29 16:24:05', '2021-10-29 16:24:06'),
(180, 'App\\Models\\User', 6, 'auth_token', 'a1e78765bd99c124d7e26ac45cc124d4e766a16a498c1f2829b638c6e97750b0', '[\"*\"]', '2021-10-29 16:26:14', '2021-10-29 16:26:12', '2021-10-29 16:26:14'),
(181, 'App\\Models\\User', 20, 'auth_token', 'aafe90a8e8c5a99b42203cf0b95ab479fc950a41f01fe82fede68bb942b97364', '[\"*\"]', '2021-10-29 16:26:32', '2021-10-29 16:26:31', '2021-10-29 16:26:32'),
(182, 'App\\Models\\User', 10, 'auth_token', '66a85f60d5f2e5b6659cfb77f6e6153a80c96a0b83719a7cd30e1ed2404dbd6f', '[\"*\"]', '2021-10-29 16:27:59', '2021-10-29 16:27:34', '2021-10-29 16:27:59'),
(183, 'App\\Models\\User', 11, 'auth_token', '6cb95f3e3ae17a82e0d21bcc3f2091ccc6f5d87712c7026c77606a307a793a12', '[\"*\"]', '2021-10-29 16:28:15', '2021-10-29 16:28:14', '2021-10-29 16:28:15'),
(184, 'App\\Models\\User', 6, 'auth_token', 'b8373647472d5f394db99fa942c6c4fd0d8d77c347cfa77ef46b375c93960d56', '[\"*\"]', '2021-10-29 16:58:11', '2021-10-29 16:58:10', '2021-10-29 16:58:11'),
(185, 'App\\Models\\User', 10, 'auth_token', 'ad5c212e418781a04c8c64adadf95f1c8253ea8c925db11a74bd892060b32ea2', '[\"*\"]', '2021-10-29 16:58:34', '2021-10-29 16:58:33', '2021-10-29 16:58:34'),
(186, 'App\\Models\\User', 6, 'auth_token', '0b77b06931cef4a3b295f818e0c9c17ee6ecf6563e01baf4a0ef5073f56c2ad6', '[\"*\"]', '2021-10-30 15:25:00', '2021-10-29 17:19:08', '2021-10-30 15:25:00'),
(187, 'App\\Models\\User', 6, 'auth_token', '18bca0c1a723d06489cd918a187523915fec0909e0373bf8bdf0891b6c1e5739', '[\"*\"]', '2021-10-30 16:47:54', '2021-10-30 15:37:47', '2021-10-30 16:47:54'),
(188, 'App\\Models\\User', 16, 'auth_token', 'e1c45c657be2cc63c5a08bd62ea75a8da7e8bc155d0e8fccb93302b054c79464', '[\"*\"]', '2021-10-30 16:58:55', '2021-10-30 16:58:23', '2021-10-30 16:58:55'),
(189, 'App\\Models\\User', 11, 'auth_token', 'f52b769b8f9fdd8d7f4b1e6b8690060bb2796e37930652ad97a1bc4cecfe74aa', '[\"*\"]', '2021-10-30 17:00:17', '2021-10-30 16:59:53', '2021-10-30 17:00:17'),
(190, 'App\\Models\\User', 6, 'auth_token', '413b0a540c5e0b9cb7dfa0c9876cf01c20567343167ca971cdd6d48800a80acf', '[\"*\"]', '2021-10-30 17:28:17', '2021-10-30 17:23:31', '2021-10-30 17:28:17'),
(191, 'App\\Models\\User', 6, 'auth_token', 'f5081dbb6da7a7f77bf1a728a5520daafae1a53ff8cb1a8abc2028d00842523b', '[\"*\"]', '2021-10-31 16:15:20', '2021-10-31 16:02:32', '2021-10-31 16:15:20'),
(192, 'App\\Models\\User', 10, 'auth_token', '8eeac986e60b8c0168f4cf338f5716bfa48eb462e0cecea0dfe9134cd215cc9f', '[\"*\"]', '2021-10-31 16:17:45', '2021-10-31 16:16:04', '2021-10-31 16:17:45'),
(193, 'App\\Models\\User', 11, 'auth_token', '4a1ec0058df4f6cfd83ef7896825d1198f9e8d6abad660dcc7569a45deeba7b6', '[\"*\"]', '2021-10-31 16:27:44', '2021-10-31 16:19:02', '2021-10-31 16:27:44'),
(194, 'App\\Models\\User', 6, 'auth_token', '51141a7a52525debaaf19b7bcd36607da2c3b23715831d1731f797b0270a50dd', '[\"*\"]', '2021-11-01 10:10:37', '2021-11-01 09:29:19', '2021-11-01 10:10:37'),
(195, 'App\\Models\\User', 20, 'auth_token', 'f3cf456bda9c9cb6e8651c295b501e572e7279132ff05475bf30eace758737ca', '[\"*\"]', '2021-11-01 10:00:08', '2021-11-01 09:59:10', '2021-11-01 10:00:08'),
(196, 'App\\Models\\User', 6, 'auth_token', 'a6b60994e7d71ae75d32ea508bfef1c9db8ad18f02178b6cd62630328367eafe', '[\"*\"]', '2021-11-01 10:08:35', '2021-11-01 09:59:49', '2021-11-01 10:08:35'),
(197, 'App\\Models\\User', 20, 'auth_token', '2e65920683ec892345cf0b587971339fd986e1374115d082c52dc3c822f3512a', '[\"*\"]', '2021-11-15 16:42:06', '2021-11-01 10:08:55', '2021-11-15 16:42:06'),
(198, 'App\\Models\\User', 6, 'auth_token', '4883a90b286cdf30f1df61bfecfa5eebe20571450bfc748f5b8674b8f9c8c751', '[\"*\"]', '2021-11-01 11:18:04', '2021-11-01 10:14:21', '2021-11-01 11:18:04'),
(199, 'App\\Models\\User', 10, 'auth_token', '71aa48f156828f7ef83b781af81cf40db91d70239b585cdb724c7324bdc41109', '[\"*\"]', '2021-11-01 11:41:41', '2021-11-01 11:30:58', '2021-11-01 11:41:41'),
(200, 'App\\Models\\User', 11, 'auth_token', '69bdd5790136b7ba84caa6578e478a545df67fdffb29c77ba945405f2cebd684', '[\"*\"]', '2021-11-01 11:48:20', '2021-11-01 11:43:22', '2021-11-01 11:48:20'),
(201, 'App\\Models\\User', 16, 'auth_token', '00d48be1c25dfb625f8236d5d11a7595e3323d7fc5eb11fbae53e2ed3bd6b182', '[\"*\"]', '2021-11-01 11:52:51', '2021-11-01 11:49:09', '2021-11-01 11:52:51'),
(202, 'App\\Models\\User', 18, 'auth_token', 'e595f2a30c10e3f7ef5006e842fd42141d9ad9ce3917d76f73fef186fee31178', '[\"*\"]', '2021-11-01 11:58:08', '2021-11-01 11:56:24', '2021-11-01 11:58:08'),
(203, 'App\\Models\\User', 20, 'auth_token', '443c1df2219f53772ea1dc1f3ddb6de85093c9a516845088bab434ce537cc715', '[\"*\"]', '2021-11-01 11:59:22', '2021-11-01 11:58:32', '2021-11-01 11:59:22'),
(204, 'App\\Models\\User', 10, 'auth_token', '24caf48743021b61789c0e70640a626dc56fb688fbd8b5632771fb3babcc89dd', '[\"*\"]', '2021-11-01 12:26:39', '2021-11-01 11:59:43', '2021-11-01 12:26:39'),
(205, 'App\\Models\\User', 10, 'auth_token', 'b73614e419d12eb7bba09106ca853f096ee1298f13baaaefbb2f0e65ebccc7fa', '[\"*\"]', '2021-11-01 14:21:24', '2021-11-01 14:19:46', '2021-11-01 14:21:24'),
(206, 'App\\Models\\User', 6, 'auth_token', 'e61f2a1c8ef3160c043c35464eb9e29fc980824603482a0caadaf57d0c5daa40', '[\"*\"]', '2021-11-01 15:23:34', '2021-11-01 14:20:16', '2021-11-01 15:23:34'),
(207, 'App\\Models\\User', 10, 'auth_token', '79868a20a9a2cb7d27ced0ede378c2ac0a7b012a0ff3758fbb82eda03d149a9f', '[\"*\"]', '2021-11-01 14:50:14', '2021-11-01 14:48:54', '2021-11-01 14:50:14'),
(208, 'App\\Models\\User', 10, 'auth_token', '7f7b8a881be55a40f4591ee34a69e172df8f4b3cc562b002064b04624cfd2d15', '[\"*\"]', '2021-11-03 10:02:18', '2021-11-01 15:22:27', '2021-11-03 10:02:18'),
(209, 'App\\Models\\User', 16, 'auth_token', '31c08469583363157ab066346410b748ee8ed0fb5fca1ff261ccb22dfbcfd979', '[\"*\"]', '2021-11-02 15:48:52', '2021-11-02 15:48:06', '2021-11-02 15:48:52'),
(210, 'App\\Models\\User', 18, 'auth_token', 'f510d9da6315f9c1fc32b5e514e894082ec28fe191a0ad9816c61da72cfc0d0b', '[\"*\"]', '2021-11-02 15:50:30', '2021-11-02 15:49:17', '2021-11-02 15:50:30'),
(211, 'App\\Models\\User', 20, 'auth_token', '4e6440bd38fb46ebf26aac5bcaa1001f3c2ac9176a2e65a505ea3396ffbc52e4', '[\"*\"]', '2021-11-04 08:22:40', '2021-11-02 15:51:18', '2021-11-04 08:22:40'),
(212, 'App\\Models\\User', 18, 'auth_token', 'b03d246ad561e3265a6f8416ee3010b222826263b6ce6b4abd29273c332a28cf', '[\"*\"]', '2021-11-03 10:16:37', '2021-11-03 10:03:29', '2021-11-03 10:16:37'),
(213, 'App\\Models\\User', 16, 'auth_token', '278891f0f607a8f8b5ebc4e2a3303f2b566200fac49d569c960e3b6b0d2b93e2', '[\"*\"]', '2021-11-03 10:18:27', '2021-11-03 10:17:57', '2021-11-03 10:18:27'),
(214, 'App\\Models\\User', 18, 'auth_token', '088b1fead4f6077a967d2c2843ac1aaf7e3f82ad70852a9e850d6a7be6d4b7d1', '[\"*\"]', '2021-11-03 10:20:19', '2021-11-03 10:19:04', '2021-11-03 10:20:19'),
(215, 'App\\Models\\User', 16, 'auth_token', 'd5529ebeabcd1b8a500a2a47b6c0b22da260d757f7dbf944d3f3bb06ef3d488e', '[\"*\"]', '2021-11-03 14:03:44', '2021-11-03 10:27:42', '2021-11-03 14:03:44'),
(216, 'App\\Models\\User', 16, 'auth_token', 'e04592f7b508c6ec606d73876e1d8f6ce56a69d5e12308290ce1a8419184a2bc', '[\"*\"]', '2021-11-08 15:53:54', '2021-11-03 11:47:37', '2021-11-08 15:53:54'),
(217, 'App\\Models\\User', 18, 'auth_token', '4b48335f178e8ba28fe058a383444a714e3b4c16aff51caf5d41ee5b3f30ed4a', '[\"*\"]', '2021-11-03 15:25:01', '2021-11-03 11:53:05', '2021-11-03 15:25:01'),
(218, 'App\\Models\\User', 20, 'auth_token', '9d347dd4f9b73c3d86a2172463fa7960891b1b98e0f9559edfd94afdc48cdf58', '[\"*\"]', '2021-11-03 14:09:31', '2021-11-03 14:05:18', '2021-11-03 14:09:31'),
(219, 'App\\Models\\User', 16, 'auth_token', '2d95ea52001c971ad3300a3c1a6e13a6d45a03562d346277431db3444ddd2fa9', '[\"*\"]', '2021-11-03 14:10:21', '2021-11-03 14:10:20', '2021-11-03 14:10:21'),
(220, 'App\\Models\\User', 18, 'auth_token', '20559268842af1c07f73e933061b34a476607260290cf57dfca57c1cbd9f507f', '[\"*\"]', '2021-11-03 14:28:41', '2021-11-03 14:11:28', '2021-11-03 14:28:41'),
(221, 'App\\Models\\User', 16, 'auth_token', '84243a806478bcfead0e20dd673a43b0987b298d407466e9483dd6679d41d344', '[\"*\"]', '2021-11-03 14:46:31', '2021-11-03 14:46:26', '2021-11-03 14:46:31'),
(222, 'App\\Models\\User', 18, 'auth_token', 'cfc580f338c2b5488a2878a52aa4bc77f55ce95b1db56679608a3f54e9afbe76', '[\"*\"]', '2021-11-05 10:54:52', '2021-11-03 14:46:44', '2021-11-05 10:54:52'),
(223, 'App\\Models\\User', 16, 'auth_token', '2d0e85444239c187ba5b7b5438addba16387bc609083f54815e98e7ac6d5e2fe', '[\"*\"]', '2021-11-03 15:36:36', '2021-11-03 15:36:30', '2021-11-03 15:36:36'),
(224, 'App\\Models\\User', 18, 'auth_token', '58bae7717a31aad85247abd2f30138a0057a8fb84043c7edd5e3b2a009a96bee', '[\"*\"]', '2021-11-03 15:38:02', '2021-11-03 15:37:58', '2021-11-03 15:38:02'),
(225, 'App\\Models\\User', 16, 'auth_token', '53f0fb5fd992ddc187d23120642ec0dfa5498902fcde68a2a9e4a4262a5921a6', '[\"*\"]', '2021-11-08 14:43:32', '2021-11-03 17:07:35', '2021-11-08 14:43:32'),
(226, 'App\\Models\\User', 16, 'auth_token', 'f9493278af78207b05fae2947e6a12641c0af2cf1daaf001f2c4497e7d6b4018', '[\"*\"]', '2021-11-03 17:23:41', '2021-11-03 17:22:12', '2021-11-03 17:23:41'),
(227, 'App\\Models\\User', 18, 'auth_token', '7ba0479140edc2cc3fca968dd639526a7a700dfec71d60461bfa7576a7921622', '[\"*\"]', '2021-11-03 17:25:57', '2021-11-03 17:24:49', '2021-11-03 17:25:57'),
(228, 'App\\Models\\User', 20, 'auth_token', '5b92e763c7e6afc6adf5eed352cac5ad208c4cb07dfaeb587f9fe10f3ee7f3fe', '[\"*\"]', '2021-11-03 17:35:24', '2021-11-03 17:26:44', '2021-11-03 17:35:24'),
(229, 'App\\Models\\User', 10, 'auth_token', '31978b99ded89313a25c2117cb6babb238d4f1e1b460a0ca50e72f763a916bd9', '[\"*\"]', '2021-11-21 18:05:26', '2021-11-03 17:36:07', '2021-11-21 18:05:26'),
(230, 'App\\Models\\User', 6, 'auth_token', 'fbdd69897a055c1701eed8bc5319996e0fbb9a018722a41522f6783833116ead', '[\"*\"]', '2021-11-04 13:53:36', '2021-11-04 13:53:35', '2021-11-04 13:53:36'),
(231, 'App\\Models\\User', 6, 'auth_token', '2d6a60f26515894216407d6431317701cf16d2b11cb7678e4cc9d6dd832155f4', '[\"*\"]', '2021-11-05 10:21:26', '2021-11-05 10:20:55', '2021-11-05 10:21:26'),
(232, 'App\\Models\\User', 10, 'auth_token', 'd25663a8fd1207b5fc07c93688c92027027d1ed16444c50123088bc84808dfba', '[\"*\"]', '2021-11-05 14:13:04', '2021-11-05 10:21:47', '2021-11-05 14:13:04'),
(233, 'App\\Models\\User', 16, 'auth_token', '8aace639157caaa9d8b1dcfd71518850d1ed5cf89cc105a5263a5f1a4ead5e4a', '[\"*\"]', '2021-11-06 09:19:48', '2021-11-05 10:55:06', '2021-11-06 09:19:48'),
(234, 'App\\Models\\User', 11, 'auth_token', '59671da240a82920bcdcf0d27c47c3b9121fc15a0764ad56e225fc08339f2ab5', '[\"*\"]', '2021-11-08 13:18:26', '2021-11-05 14:13:23', '2021-11-08 13:18:26'),
(235, 'App\\Models\\User', 16, 'auth_token', 'f9297ee671a681586c70f7e3ab03165d1bbbf3037ef777eff52b458b88524cc8', '[\"*\"]', '2021-11-08 17:04:23', '2021-11-06 09:22:04', '2021-11-08 17:04:23'),
(236, 'App\\Models\\User', 16, 'auth_token', '415f804bb4b18c480cd0ffb13f02c31cabf1ebe8733e70fc95493a6e8729ccf6', '[\"*\"]', '2021-11-06 15:58:25', '2021-11-06 15:57:43', '2021-11-06 15:58:25'),
(237, 'App\\Models\\User', 6, 'auth_token', '0ddb679770b73543bf8682b0b4b2bce3c04b7e234af1e53091a6cb006f67aaf8', '[\"*\"]', '2021-11-06 16:06:46', '2021-11-06 16:06:36', '2021-11-06 16:06:46'),
(238, 'App\\Models\\User', 16, 'auth_token', '5746092a18eef60b616657acfeeaa0595af8a044a87b2166f65cfca8f498a645', '[\"*\"]', '2021-11-06 16:32:12', '2021-11-06 16:08:17', '2021-11-06 16:32:12'),
(239, 'App\\Models\\User', 16, 'auth_token', '0b637b12a0b6adebacb5bcec6e5622919b9000ee966a27765df25546d869ccfb', '[\"*\"]', '2021-11-09 12:11:06', '2021-11-06 16:49:56', '2021-11-09 12:11:06'),
(240, 'App\\Models\\User', 16, 'auth_token', 'e4634566ec223944eca051438c633c8cb986023ca98cdeaaa71bfea0084ef9ae', '[\"*\"]', '2021-11-07 12:37:54', '2021-11-07 12:36:54', '2021-11-07 12:37:54'),
(241, 'App\\Models\\User', 20, 'auth_token', 'd5253c357c715375e36d12182682ab6a4827475c67d5cc6870833c542ddb35cb', '[\"*\"]', '2021-11-08 08:53:44', '2021-11-07 12:39:05', '2021-11-08 08:53:44'),
(242, 'App\\Models\\User', 18, 'auth_token', 'a3511f78925d71e9c11bbbf80cbfdcd7295558c4274d183647f82cedbee32b1f', '[\"*\"]', '2021-11-08 14:34:45', '2021-11-08 08:54:16', '2021-11-08 14:34:45'),
(243, 'App\\Models\\User', 6, 'auth_token', '0040a133947fa5c2f0249d41417f6408a47bfb4fc7dede2a098336d39dbd6c28', '[\"*\"]', '2021-11-08 13:20:11', '2021-11-08 13:19:08', '2021-11-08 13:20:11'),
(244, 'App\\Models\\User', 16, 'auth_token', 'ee65a7d6929bee4bf1bcd59d3a871fc30ff30dc061309ace481901deafeb5b68', '[\"*\"]', '2021-11-08 14:35:04', '2021-11-08 14:35:03', '2021-11-08 14:35:04'),
(245, 'App\\Models\\User', 18, 'auth_token', 'cec619e05cd2eb34d0b8cfdc01043ddda59ed7d777f40b8f134693cf6f0388bc', '[\"*\"]', '2021-11-08 17:07:34', '2021-11-08 17:07:11', '2021-11-08 17:07:34'),
(246, 'App\\Models\\User', 6, 'auth_token', 'c7ca37b5e697d6096bf04bcb358b07e749249d5ccd74fab5bb7db76ddbe23cad', '[\"*\"]', '2021-11-08 17:08:29', '2021-11-08 17:08:02', '2021-11-08 17:08:29'),
(247, 'App\\Models\\User', 16, 'auth_token', '2936272eca91c5bc12af5e27b7e69c7a567e488a7853ca11113b6c7b443fa301', '[\"*\"]', '2021-11-08 17:21:02', '2021-11-08 17:09:28', '2021-11-08 17:21:02'),
(248, 'App\\Models\\User', 6, 'auth_token', 'd419bb7165800296008d449d0d5e8c85bf23dd1bfcad025884fcf32dbbbd4e8f', '[\"*\"]', '2021-11-08 17:54:54', '2021-11-08 17:54:40', '2021-11-08 17:54:54'),
(249, 'App\\Models\\User', 16, 'auth_token', 'aea8963f6035b4751b1b1c00b6a3036821d358de8d5887f8bde6eb351d6790bd', '[\"*\"]', '2021-11-09 12:15:16', '2021-11-08 17:55:24', '2021-11-09 12:15:16'),
(250, 'App\\Models\\User', 16, 'auth_token', 'b282ee553e5ca2a6ae5024d0160c1d5607706ec372bd210cbe72c8c0f02b9760', '[\"*\"]', '2021-11-14 20:33:13', '2021-11-08 20:48:00', '2021-11-14 20:33:13'),
(251, 'App\\Models\\User', 6, 'auth_token', '2bc81d9f6e20152ea8342b9c01135fbe47f1f9286fc100f38241910e55daec5a', '[\"*\"]', '2021-11-14 12:17:05', '2021-11-08 22:01:12', '2021-11-14 12:17:05'),
(252, 'App\\Models\\User', 6, 'auth_token', 'c4d756c269fdd7b3741de6a84f3e10400137b6c3f5f99bdf5a8c1e9aa4dacd74', '[\"*\"]', '2021-11-12 11:04:34', '2021-11-09 12:11:21', '2021-11-12 11:04:34'),
(253, 'App\\Models\\User', 16, 'auth_token', 'c4811d6ca8c89a2c0ca5f8a0e990e2ee439a982d0f148124052be8a2c291d902', '[\"*\"]', '2021-11-09 12:13:34', '2021-11-09 12:13:04', '2021-11-09 12:13:34'),
(254, 'App\\Models\\User', 6, 'auth_token', '43f4ec6c5c30baa3e9e5566e455e1b70ca1eb824d15d0793fc38392b00e7898c', '[\"*\"]', '2021-11-09 14:44:51', '2021-11-09 12:14:09', '2021-11-09 14:44:51'),
(255, 'App\\Models\\User', 6, 'auth_token', '671159b9e1b39ea33732cdca23d3bd734d859888b67480582e35674ef51165f7', '[\"*\"]', '2021-11-17 16:11:50', '2021-11-09 12:15:39', '2021-11-17 16:11:50'),
(256, 'App\\Models\\User', 16, 'auth_token', 'ca70445f13e4247c8dada5217af0f924c087b7e1b7dbc4892e05992881f330cb', '[\"*\"]', '2021-11-09 14:46:41', '2021-11-09 14:46:04', '2021-11-09 14:46:41'),
(257, 'App\\Models\\User', 10, 'auth_token', 'd530974c898030cbe3350a81cbc856fa5724b6f13806dd3d02e146ce1b47bbcd', '[\"*\"]', '2021-11-09 14:48:21', '2021-11-09 14:47:03', '2021-11-09 14:48:21'),
(258, 'App\\Models\\User', 11, 'auth_token', 'dfad1d031c78684d6b4549b7e457e2f9808d3eae3a986d62dd49d28050170268', '[\"*\"]', '2021-11-09 14:49:37', '2021-11-09 14:48:59', '2021-11-09 14:49:37'),
(259, 'App\\Models\\User', 10, 'auth_token', '6f68da4d33ee2994ae37e339de9181133a7fe231f6620e4f68125ec365994ba3', '[\"*\"]', '2021-11-12 11:05:20', '2021-11-12 11:05:02', '2021-11-12 11:05:20'),
(260, 'App\\Models\\User', 11, 'auth_token', '8be8e5f51b5a3423323cc8f68e162fa4ed95e6d3582ea9f26216a5a6f6aedf7d', '[\"*\"]', '2021-11-17 12:11:47', '2021-11-12 11:06:08', '2021-11-17 12:11:47'),
(261, 'App\\Models\\User', 10, 'auth_token', 'd563fb1c8709517e5883cda78d22c3283d4e5321ff1e6488e4fb2b21bb8f5844', '[\"*\"]', '2021-11-14 09:03:01', '2021-11-14 09:02:36', '2021-11-14 09:03:01'),
(262, 'App\\Models\\User', 10, 'auth_token', 'a55ce714bd6fdcf197c1413bf7d2c14e869fab32dbb3bb08c2275ccd2c883e2d', '[\"*\"]', '2021-11-14 13:02:20', '2021-11-14 12:18:15', '2021-11-14 13:02:20'),
(263, 'App\\Models\\User', 11, 'auth_token', '1d6c649df76a8457faddccc34f8bc383dd91eab1debe892d3493ed2ec2101d04', '[\"*\"]', '2021-11-14 13:03:02', '2021-11-14 13:03:00', '2021-11-14 13:03:02'),
(264, 'App\\Models\\User', 16, 'auth_token', '06f5d025ca26d965cb5741f13460af7032bc528fc74ea12655077ee4a12d947f', '[\"*\"]', '2021-11-14 13:04:53', '2021-11-14 13:03:56', '2021-11-14 13:04:53'),
(265, 'App\\Models\\User', 18, 'auth_token', '8387f79e42aa5075b836a89458ce647647575260576fe60e608518bff8e25177', '[\"*\"]', '2021-11-14 13:11:09', '2021-11-14 13:09:16', '2021-11-14 13:11:09'),
(266, 'App\\Models\\User', 20, 'auth_token', '0bdc726c06e2f60cc4d4e166e62b09b64ba066b0e40919716738d04a61ba158a', '[\"*\"]', '2021-11-14 13:12:33', '2021-11-14 13:11:54', '2021-11-14 13:12:33');
INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(267, 'App\\Models\\User', 10, 'auth_token', '8913bf7c61809e1b03154b0578db32c8e4dfc67ff2068f8178710c17e9d9f48c', '[\"*\"]', '2021-11-14 17:33:44', '2021-11-14 13:13:12', '2021-11-14 17:33:44'),
(268, 'App\\Models\\User', 20, 'auth_token', '0f2168727b7d5828453ee97144962d6f5c74695cc17b519693fe33e558943850', '[\"*\"]', '2021-11-21 12:56:33', '2021-11-14 17:33:58', '2021-11-21 12:56:33'),
(269, 'App\\Models\\User', 6, 'auth_token', '0112d8a61a770b1c863b5caeb8cdd61935da3c136481f65a8d3b78e49cd47377', '[\"*\"]', '2021-11-15 16:48:50', '2021-11-15 16:33:06', '2021-11-15 16:48:50'),
(270, 'App\\Models\\User', 6, 'auth_token', '8ad5bc1ee1ffbca171f8024f7927655bd1b0be215bef8260af16e4b55220448e', '[\"*\"]', '2021-11-15 16:48:20', '2021-11-15 16:43:05', '2021-11-15 16:48:20'),
(271, 'App\\Models\\User', 16, 'auth_token', '977e6bef5181f0c6c8f901b94fb97bfda2e14f0e74371b4d46eff88446d452f0', '[\"*\"]', '2021-11-17 12:56:27', '2021-11-17 11:09:32', '2021-11-17 12:56:27'),
(272, 'App\\Models\\User', 20, 'auth_token', '08ffed6fcaaadd1fc137db43f5c2d9fc501ddbd1742bf1498877e60e82826781', '[\"*\"]', '2021-11-22 12:46:40', '2021-11-17 12:12:14', '2021-11-22 12:46:40'),
(273, 'App\\Models\\User', 20, 'auth_token', 'c4df6add4501c210ce3402604a572a90776a29d6a8d921372a0d6b49616fb4c4', '[\"*\"]', '2021-11-17 13:15:55', '2021-11-17 12:59:31', '2021-11-17 13:15:55'),
(274, 'App\\Models\\User', 18, 'auth_token', 'c82814e11fdefe0c530f7a19421c77b1ef84fe939f5d5571302d506f660cf051', '[\"*\"]', '2021-11-17 14:51:29', '2021-11-17 13:17:34', '2021-11-17 14:51:29'),
(275, 'App\\Models\\User', 16, 'auth_token', '4a0255c00c5ab343d6e376df7af8bc00d4a1f45cb991ff569c25e4dcda6a3167', '[\"*\"]', '2021-11-18 10:17:36', '2021-11-17 14:52:29', '2021-11-18 10:17:36'),
(276, 'App\\Models\\User', 16, 'auth_token', '3fe56779d528ef68fabbb648d054d4f7ebad4fdd6f4bf1e0f0e8c1889b8de792', '[\"*\"]', '2021-11-17 17:11:20', '2021-11-17 17:10:05', '2021-11-17 17:11:20'),
(277, 'App\\Models\\User', 16, 'auth_token', '24e6d4da8b28b82acdca4d14537f201b2365caeea7cce4625e7fd9df8bea8a85', '[\"*\"]', '2021-11-18 09:59:00', '2021-11-18 09:40:46', '2021-11-18 09:59:00'),
(278, 'App\\Models\\User', 6, 'auth_token', 'd91cf0cfb3de56ee219867ec4377bd13b26dd7c5552e217eced00542fec8467e', '[\"*\"]', '2021-11-18 10:06:27', '2021-11-18 09:59:46', '2021-11-18 10:06:27'),
(279, 'App\\Models\\User', 6, 'auth_token', '39b95800f1c5630c8fe2d4c468c1172c68ead38e2e14b26dae37420a58ca5d86', '[\"*\"]', '2021-11-18 10:08:02', '2021-11-18 10:08:01', '2021-11-18 10:08:02'),
(280, 'App\\Models\\User', 18, 'auth_token', '328731f8c7735c41ac07e24a5b0d02937b62b08803433773c67f23982f08d840', '[\"*\"]', '2021-11-18 10:09:57', '2021-11-18 10:08:59', '2021-11-18 10:09:57'),
(281, 'App\\Models\\User', 20, 'auth_token', '7d8369d67fafe71caec9d826cf50f8e5b7c7d9c337a418b79f04828125061c88', '[\"*\"]', '2021-11-18 10:19:13', '2021-11-18 10:10:36', '2021-11-18 10:19:13'),
(282, 'App\\Models\\User', 20, 'auth_token', 'cb1fecb43d7c0ebe5d58941dd70d5223f83d478c1a1dee27e35e90f00b9c3a10', '[\"*\"]', '2021-11-18 10:18:26', '2021-11-18 10:18:02', '2021-11-18 10:18:26'),
(283, 'App\\Models\\User', 10, 'auth_token', '45faecf64bf88eb1c1cb5c07dd9dfe5c1289d33564b7ac8a9119f26e106615ad', '[\"*\"]', '2021-11-18 10:19:52', '2021-11-18 10:19:32', '2021-11-18 10:19:52'),
(284, 'App\\Models\\User', 10, 'auth_token', '87a000076e87a6a21243443d9b9b60ae6e04c70a364a5cb19c75f3fd265f2290', '[\"*\"]', '2021-11-18 10:22:09', '2021-11-18 10:20:15', '2021-11-18 10:22:09'),
(285, 'App\\Models\\User', 11, 'auth_token', '1f111e873ede5cf8766740d9a7e8ce44fa52bbf3795d40727d20e5ea13d8920f', '[\"*\"]', '2021-11-18 10:24:17', '2021-11-18 10:23:10', '2021-11-18 10:24:17'),
(286, 'App\\Models\\User', 10, 'auth_token', 'd66f483c8d2a49b963dda6a1448667d471501727ab0a414404556344d39f9f5e', '[\"*\"]', '2021-11-18 10:56:15', '2021-11-18 10:38:43', '2021-11-18 10:56:15'),
(287, 'App\\Models\\User', 10, 'auth_token', '4e144069c05cfda71c25a4a1a728f1fdef58b560cec1d5406beb36e1689e5174', '[\"*\"]', '2021-11-22 10:10:53', '2021-11-18 10:54:01', '2021-11-22 10:10:53'),
(288, 'App\\Models\\User', 11, 'auth_token', '08961699a14d3babc5c0537831b462e9138e79c9545ee7b25928765e668dbd9f', '[\"*\"]', '2021-11-22 10:16:42', '2021-11-18 10:56:25', '2021-11-22 10:16:42'),
(289, 'App\\Models\\User', 20, 'auth_token', '69cd9186d5a83b1feba390b8b68087fc2e83548de0400c9a5774d7b2e29259f0', '[\"*\"]', '2021-11-23 16:54:31', '2021-11-19 01:18:03', '2021-11-23 16:54:31'),
(290, 'App\\Models\\User', 16, 'auth_token', '953925af96c855507f357a2dfacd84f3074aa4023eed4197c81fe9ab58a53751', '[\"*\"]', '2021-11-21 13:03:05', '2021-11-21 12:57:17', '2021-11-21 13:03:05'),
(291, 'App\\Models\\User', 16, 'auth_token', '5cea748093630b861160dc2ba7dcec67cbaa677d137bf2f365823591683fc515', '[\"*\"]', '2021-11-21 13:03:07', '2021-11-21 13:03:06', '2021-11-21 13:03:07'),
(292, 'App\\Models\\User', 10, 'auth_token', '852aee4fe718b5acbacfd65144e3ace80f0d94c38a9ce9fa7225cf38247c85a3', '[\"*\"]', '2021-11-23 17:17:46', '2021-11-21 13:03:32', '2021-11-23 17:17:46'),
(293, 'App\\Models\\User', 10, 'auth_token', 'a5e205c0cf48270e04e6024a4f160f52a835ac9ee9e716e87b98fdb96829f336', '[\"*\"]', '2021-12-02 17:02:08', '2021-11-21 18:06:39', '2021-12-02 17:02:08'),
(294, 'App\\Models\\User', 11, 'auth_token', '389bdaab21ef57c4411e57e3d7dc5fad7d002d92f24bc050019e5557605b09c7', '[\"*\"]', '2021-11-22 10:11:52', '2021-11-22 10:11:50', '2021-11-22 10:11:52'),
(295, 'App\\Models\\User', 10, 'auth_token', '30b9869fbaaeca6899b66e5bc09847f3b717d4084213701d1130f0a23c7d22d5', '[\"*\"]', '2021-11-24 11:43:16', '2021-11-22 10:17:06', '2021-11-24 11:43:16'),
(296, 'App\\Models\\User', 10, 'auth_token', 'd97321007549526c2944d57e69afd8bd9869c421d01363b4d5fa2fa7f02df18b', '[\"*\"]', '2021-11-22 11:29:40', '2021-11-22 10:17:36', '2021-11-22 11:29:40'),
(297, 'App\\Models\\User', 6, 'auth_token', '2f1220b28385dec30b801a3fb28efa6628d14f09c2320b789d758b5a2ce08d5f', '[\"*\"]', '2021-11-22 10:23:49', '2021-11-22 10:22:06', '2021-11-22 10:23:49'),
(298, 'App\\Models\\User', 10, 'auth_token', 'c990261ea35f6a3005cad243504d9e1d3a002c42039b98e69164c1b2d4778ef2', '[\"*\"]', '2021-11-22 10:24:37', '2021-11-22 10:24:12', '2021-11-22 10:24:37'),
(299, 'App\\Models\\User', 11, 'auth_token', '182fa526f6de9b4ac034f904172ac5cabed5dd016590f70e7497cebcca4cfdf7', '[\"*\"]', '2021-11-22 10:26:25', '2021-11-22 10:24:51', '2021-11-22 10:26:25'),
(300, 'App\\Models\\User', 1, 'auth_token', '7f41eff88c69fcfe04b42365fa6ca04ce936804f366d85dd5db2f3e137fe9175', '[\"*\"]', '2021-11-22 20:51:03', '2021-11-22 10:26:40', '2021-11-22 20:51:03'),
(301, 'App\\Models\\User', 6, 'auth_token', '28da7f7878a74e3cebfb7087909b690b945f44502785d3721c1057794c79c668', '[\"*\"]', '2021-11-22 13:49:01', '2021-11-22 11:28:20', '2021-11-22 13:49:01'),
(302, 'App\\Models\\User', 6, 'auth_token', '3a1f0ba0c157b952db9638614d49c695e62319c50cffd250e1e8c76127405014', '[\"*\"]', '2021-11-22 14:55:21', '2021-11-22 12:50:53', '2021-11-22 14:55:21'),
(303, 'App\\Models\\User', 6, 'auth_token', 'f283ea16fc3615ecd9abc3269548dcc7eab4734fe79395f46bf81ccc99f81f3f', '[\"*\"]', '2021-11-23 13:59:29', '2021-11-22 14:57:34', '2021-11-23 13:59:29'),
(304, 'App\\Models\\User', 6, 'auth_token', 'd608f97cedb62256c54e5e96a3b783f8b99a4315e2a750932f997cda59702fb7', '[\"*\"]', '2021-11-24 11:09:56', '2021-11-23 11:31:24', '2021-11-24 11:09:56'),
(305, 'App\\Models\\User', 10, 'auth_token', '22957f5290b0d3d07e9c94075ad949370394395fea5be7ee489c15b7a5532288', '[\"*\"]', '2021-11-23 17:18:44', '2021-11-23 17:18:25', '2021-11-23 17:18:44'),
(306, 'App\\Models\\User', 6, 'auth_token', '248bdce4bc52985070fb29ed5315c97109be15d6ab8406245c051fbde9079007', '[\"*\"]', '2021-11-25 11:20:34', '2021-11-23 17:19:10', '2021-11-25 11:20:34'),
(307, 'App\\Models\\User', 11, 'auth_token', '5949a4abf5612a065231e1ef0fab99a31558b2ee8597e607307cc3dcd4c3e036', '[\"*\"]', '2021-11-24 12:14:22', '2021-11-24 12:14:21', '2021-11-24 12:14:22'),
(308, 'App\\Models\\User', 6, 'auth_token', '059096dbe673f79ec4295db30a7769b5a77245691382eec9bd31acfa8127fad7', '[\"*\"]', '2021-11-25 11:39:17', '2021-11-25 10:07:10', '2021-11-25 11:39:17'),
(309, 'App\\Models\\User', 6, 'auth_token', '3d99ad8395c324b81adc3e9503735be10481364555e0f928df29e2677ac415f5', '[\"*\"]', '2021-11-29 11:44:56', '2021-11-25 12:24:34', '2021-11-29 11:44:56'),
(310, 'App\\Models\\User', 20, 'auth_token', '949fabcdc3f4788c0d60c6cf58d63dde6ca369e318c3656feb01e3ea9a47aad2', '[\"*\"]', '2021-11-25 18:10:46', '2021-11-25 18:08:06', '2021-11-25 18:10:46'),
(311, 'App\\Models\\User', 6, 'auth_token', '4ee0311d04ff87e259863980a6a2be9d15fec81b98d80328e85d1b71a72e7bce', '[\"*\"]', '2021-11-26 14:17:47', '2021-11-25 18:11:14', '2021-11-26 14:17:47'),
(312, 'App\\Models\\User', 18, 'auth_token', 'e377c1fd9fb7a4fd55cfe41a5c5e155006d1fc3d6e44d2d3be5cd0df0b63cdd0', '[\"*\"]', '2021-11-27 11:15:41', '2021-11-27 11:10:51', '2021-11-27 11:15:41'),
(313, 'App\\Models\\User', 18, 'auth_token', '24cfbb48dc89c9eaee7933a3792a9e27a6732f65eab7b91de46c56069de03172', '[\"*\"]', '2021-11-29 12:18:37', '2021-11-29 12:18:06', '2021-11-29 12:18:37'),
(314, 'App\\Models\\User', 16, 'auth_token', 'd6661c5104ff7e1d10270ff25968ed57d3e97f91cf68933587e0a91402999617', '[\"*\"]', '2021-11-29 12:54:18', '2021-11-29 12:33:52', '2021-11-29 12:54:18'),
(315, 'App\\Models\\User', 6, 'auth_token', '322076b265d50b36e83cf2c02f2e3fe1279460887295c87772eed1fdd49b42c8', '[\"*\"]', '2021-11-30 10:50:21', '2021-11-29 12:54:35', '2021-11-30 10:50:21'),
(316, 'App\\Models\\User', 16, 'auth_token', '2e00311308565a3280ad34b3eea66847476ba563a0154ae205b63611cd74a142', '[\"*\"]', '2021-11-30 11:21:07', '2021-11-30 10:51:44', '2021-11-30 11:21:07'),
(317, 'App\\Models\\User', 6, 'auth_token', 'a95260311eeab1c5bf92dedb8aa5792e2d5dd7a1e8d66a2e456b89d3764ee4ba', '[\"*\"]', '2021-11-30 11:43:21', '2021-11-30 11:21:56', '2021-11-30 11:43:21'),
(318, 'App\\Models\\User', 6, 'auth_token', '98e8a52e035a9b95427e1b5628819ab64027bdb42e8fd90361c0c5351d30b5ed', '[\"*\"]', '2021-11-30 12:09:58', '2021-11-30 12:08:55', '2021-11-30 12:09:58'),
(319, 'App\\Models\\User', 10, 'auth_token', '074882b29024edc5c630e4ca1d50fc8bcff86076e07d1c273a66bf368a8021b4', '[\"*\"]', '2021-11-30 12:35:55', '2021-11-30 12:10:19', '2021-11-30 12:35:55'),
(320, 'App\\Models\\User', 10, 'auth_token', '20896d65f3eef438808a47812880c143d6a0fe8e0181a16f9ccf27db46889b8f', '[\"*\"]', '2021-11-30 12:52:19', '2021-11-30 12:23:49', '2021-11-30 12:52:19'),
(321, 'App\\Models\\User', 10, 'auth_token', '437108554bcbfd677e0cba936a0bf1e3bbf7146008700ff249dfbc2e3cb8f3ca', '[\"*\"]', '2021-11-30 12:41:21', '2021-11-30 12:40:57', '2021-11-30 12:41:21'),
(322, 'App\\Models\\User', 6, 'auth_token', '9b67ebc818a1504dda649d7a1a009125e37c41f5612b67c2bdfc6079b76c376b', '[\"*\"]', '2021-12-03 17:20:09', '2021-11-30 13:08:31', '2021-12-03 17:20:09'),
(323, 'App\\Models\\User', 20, 'auth_token', 'f27d6d659f523e29974604be18b34e25c9c914bff5326794c5290d67729d8220', '[\"*\"]', '2021-12-01 11:42:54', '2021-12-01 11:14:40', '2021-12-01 11:42:54'),
(324, 'App\\Models\\User', 6, 'auth_token', '0edab825d96e40450be9c60ca5cdad40ffbbe6f66e7441e96a40ad075dfad818', '[\"*\"]', '2021-12-04 11:15:52', '2021-12-04 11:15:51', '2021-12-04 11:15:52'),
(325, 'App\\Models\\User', 6, 'auth_token', '3ff161bf134beb0f22eaf10eea848ade96a839e521dce3a91f2ad4eaece2d0c0', '[\"*\"]', '2021-12-04 15:06:32', '2021-12-04 11:38:27', '2021-12-04 15:06:32');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `station_id` int(11) NOT NULL,
  `project_supervisor` int(11) NOT NULL,
  `project_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `station_id`, `project_supervisor`, `project_name`, `notes`, `images`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 18, 'Test', 'Test', 'Test', 'New', '2021-10-27 15:28:59', '2021-10-27 15:28:59'),
(2, 1, 18, 'Test Name', 'Test Notes', 'Test Images', 'Processing', '2021-10-27 15:29:58', '2021-10-27 15:29:58'),
(3, 1, 18, 'Test Name', 'Test Notes', 'Test Images', 'Processing', '2021-10-28 15:58:23', '2021-10-28 15:58:23'),
(4, 1, 18, 'Project 1', 'Dcc', '[null]', 'Completed', '2021-10-29 13:37:20', '2021-10-29 13:37:20'),
(5, 1, 18, 'Project 2', 'Vshsb', '[null]', 'Completed', '2021-10-29 13:40:14', '2021-10-29 13:40:14'),
(6, 4, 18, 'Project 1', 'Test', '[null]', 'Ongoing', '2021-11-02 15:50:20', '2021-11-02 15:50:20'),
(7, 1, 18, 'Project 1', 'Hello', '[null]', 'Completed', '2021-11-03 14:13:55', '2021-11-03 14:13:55'),
(8, 1, 18, 'Project 1', 'Hdhdhdh', '[null]', 'Ongoing', '2021-11-03 17:25:57', '2021-11-03 17:25:57'),
(9, 1, 18, 'Project 2', 'Yyyyy', '[null]', 'Delayed', '2021-11-14 13:10:18', '2021-11-14 13:10:18'),
(10, 4, 18, 'Project 3', 'Hjgufryghiohh', '[null]', 'Ongoing', '2021-11-14 13:11:00', '2021-11-14 13:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `projectsnames`
--

CREATE TABLE `projectsnames` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `project_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stations` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projectsnames`
--

INSERT INTO `projectsnames` (`id`, `project_name`, `stations`, `created_at`, `updated_at`) VALUES
(1, 'Project 1', '1', '2021-10-29 10:37:44', '2021-10-29 10:43:09'),
(3, 'Project 2', '3', '2021-10-29 10:43:21', '2021-10-29 10:43:21'),
(4, 'Project 3', '4', '2021-10-29 10:43:32', '2021-10-29 10:43:32'),
(5, 'Project 4', '1,3', '2021-11-27 10:58:20', '2021-11-27 10:58:20');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `role`, `created_at`, `updated_at`) VALUES
(1, 'Admin', '2021-09-30 23:35:16', '2021-10-01 14:20:15'),
(2, 'Station Supervisor', '2021-09-30 23:35:40', '2021-10-01 00:02:45'),
(3, 'Facility Manager', '2021-09-30 23:36:10', '2021-09-30 23:36:10'),
(4, 'Facility Labour', '2021-09-30 23:36:52', '2021-09-30 23:36:52'),
(5, 'Station Manager', '2021-09-30 23:37:13', '2021-09-30 23:37:13'),
(6, 'Car Care Supervisor', '2021-09-30 23:38:46', '2021-09-30 23:38:46'),
(7, 'Project Supervisor', '2021-09-30 23:39:30', '2021-09-30 23:39:30'),
(8, 'Transport Manager', '2021-09-30 23:39:58', '2021-09-30 23:39:58'),
(9, 'Manager', '2021-10-01 00:03:08', '2021-10-01 00:03:08'),
(10, 'Business Owners', '2021-10-01 00:03:24', '2021-10-01 00:03:24'),
(11, 'Transport FMR Manager', '2021-10-01 00:04:12', '2021-10-01 00:04:12'),
(13, 'Transport Employee', '2021-10-01 00:04:33', '2021-10-01 00:04:33'),
(16, 'Car Care Manager', '2021-10-28 11:21:43', '2021-10-28 11:21:43');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0UFdGyh0RrzEtlpICbh6vChkANcQPYM38z2O0CPw', 1, '103.147.209.139', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/96.0.4664.45 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiWDBOUDhVYkxJVHEya1dEdmh4aVNmalQ0bGZETXhINEs4UEwyQmRmMSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHBzOi8vbmFqYWhhdC5hZG94YXBwLmNvbS91c2VycyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjE7czoxNzoicGFzc3dvcmRfaGFzaF93ZWIiO3M6NjA6IiQyeSQxMCRCd3YxVDBMLndBLlRBUHhpaEZYSUsueHJiRUlSU01sQkphZVhEVlJtL21HQUVleEx6UUJxYSI7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTAkQnd2MVQwTC53QS5UQVB4aWhGWElLLnhyYkVJUlNNbEJKYWVYRFZSbS9tR0FFZXhMelFCcWEiO30=', 1638615287);

-- --------------------------------------------------------

--
-- Table structure for table `stations`
--

CREATE TABLE `stations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `station_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `station_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `station_name_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `region` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `questions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stations`
--

INSERT INTO `stations` (`id`, `station_code`, `station_name`, `station_name_ar`, `region`, `phone`, `image`, `lat`, `lng`, `address`, `address_ar`, `questions`, `created_at`, `updated_at`) VALUES
(1, 'CR002', 'MVPI Station - Riyadh 1', 'محطة عناية', 'North', '8943437618', 'http://najahat.adoxapp.com/uploads/10252021044343najahat2.jpeg', '11.3160169', '75.9979955', 'MVPI Station - Riyadh', 'MVPI Station - Riyadh', '1,2', '2021-10-03 23:48:59', '2021-10-25 09:43:43'),
(3, 'CR002', 'MVPI Station - Riyadh 2', 'محطة عناية', 'North', '8943437618', 'http://najahat.adoxapp.com/uploads/10252021052528najahat2.jpeg', '24.774265', '46.738586', 'MVPI Station - Riyadh', 'MVPI Station - Riyadh', '1,2', '2021-10-04 00:57:20', '2021-11-15 16:45:32'),
(4, 'CR003', 'MVPI Station - Riyadh 3', 'محطة عناية', 'North', '8943437618', 'http://najahat.adoxapp.com/uploads/10252021044143najahat1.jpeg', '32.42865739641981', '55.600888899360655', 'MVPI Station - Riyadh', 'MVPI Station - Riyadh', '1,2', '2021-10-04 00:59:44', '2021-11-15 16:45:43');

-- --------------------------------------------------------

--
-- Table structure for table `surveyquestions`
--

CREATE TABLE `surveyquestions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_category` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_type` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_category_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `question_ar` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `response1_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `response2_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surveyquestions`
--

INSERT INTO `surveyquestions` (`id`, `question_category`, `question_type`, `question`, `response1`, `response2`, `question_category_ar`, `question_ar`, `response1_ar`, `response2_ar`, `created_at`, `updated_at`) VALUES
(1, 'General Site', 'Yes/No', 'Ensure the safety of entrance and exit,and the asence of excavations and obstacles', 'Good', 'Bad', 'الموقع العام', 'التأكد من سلامة المدخل والمخرج وعدم وجود حفريات ومعوقات', 'حسن', 'سيء', '2021-10-14 23:48:54', '2021-10-14 23:49:21'),
(2, 'General Site', 'Yes/No', 'Ensure that the general site is clean', 'Good', 'Bad', 'الموقع العام', 'تأكد من نظافة الموقع العام', 'حسن', 'سيء', '2021-10-14 23:50:12', '2021-10-14 23:50:12');

-- --------------------------------------------------------

--
-- Table structure for table `surveys`
--

CREATE TABLE `surveys` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `supervisor` int(11) NOT NULL,
  `station` int(11) NOT NULL,
  `survey_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `survey_response` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` int(11) DEFAULT '0' COMMENT '0-station',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `surveys`
--

INSERT INTO `surveys` (`id`, `supervisor`, `station`, `survey_no`, `survey_response`, `date`, `status`, `type`, `created_at`, `updated_at`) VALUES
(1, 6, 6, '#338665884739480', 'jkjk', '2021-10-19', 'Completed', 0, '2021-10-19 10:37:58', '2021-10-19 10:37:58'),
(3, 6, 6, '#989771713273822', 'jkjk', '2021-10-19', 'Completed', 0, '2021-10-19 18:26:56', '2021-10-19 18:26:56'),
(4, 6, 1, '#163123819068702', '{\"General Site\":[{\"id\":1,\"question_category\":\"General Site\",\"question_type\":\"Yes/No\",\"question\":\"Ensure the safety of entrance and exit,and the asence of excavations and obstacles\",\"response1\":\"Good\",\"response2\":\"Bad\",\"created_at\":\"2021-10-14T18:48:54.000000Z\",\"updated_at\":\"2021-10-14T18:49:21.000000Z\",\"notes\":\"Test\",\"buttonValue\":\"Good\",\"question_id\":1,\"label_answer\":\"Good\",\"images\":\"[{\\\"uri\\\":\\\"http://najahat.adoxapp.com/public/uploads/10232021091935bd2d8e19-f5ac-4fcc-b46a-4c5c07ef8037.JPEG\\\",\\\"id\\\":\\\"1634980762098\\\",\\\"imgname\\\":\\\"http://najahat.adoxapp.com/public/uploads/10232021091935bd2d8e19-f5ac-4fcc-b46a-4c5c07ef8037.JPEG\\\"}]\"},{\"id\":2,\"question_category\":\"General Site\",\"question_type\":\"Yes/No\",\"question\":\"Ensure that the general site is clean\",\"response1\":\"Good\",\"response2\":\"Bad\",\"created_at\":\"2021-10-14T18:50:12.000000Z\",\"updated_at\":\"2021-10-14T18:50:12.000000Z\",\"notes\":\"Twst\",\"buttonValue\":\"Good\",\"question_id\":2,\"label_answer\":\"Good\",\"images\":\"[{\\\"uri\\\":\\\"http://najahat.adoxapp.com/public/uploads/10232021091935780f6059-edba-4b82-96c2-f51f32878cd6.JPEG\\\",\\\"id\\\":\\\"1634980773329\\\",\\\"imgname\\\":\\\"http://najahat.adoxapp.com/public/uploads/10232021091935780f6059-edba-4b82-96c2-f51f32878cd6.JPEG\\\"}]\"}]}', '2021-10-23', 'Completed', 0, '2021-10-23 14:19:36', '2021-10-23 14:19:36'),
(5, 6, 1, '#133730108857989', '{\"General Site\":[{\"id\":1,\"question_category\":\"General Site\",\"question_type\":\"Yes/No\",\"question\":\"Ensure the safety of entrance and exit,and the asence of excavations and obstacles\",\"response1\":\"Good\",\"response2\":\"Bad\",\"created_at\":\"2021-10-14T18:48:54.000000Z\",\"updated_at\":\"2021-10-14T18:49:21.000000Z\",\"notes\":\"Test\",\"buttonValue\":\"Good\",\"question_id\":1,\"label_answer\":\"Good\",\"images\":\"[{\\\"uri\\\":\\\"http://najahat.adoxapp.com/public/uploads/10272021181133b1e87c67-04c6-4361-af82-a4d1cb44a169.JPEG\\\",\\\"id\\\":\\\"1635358268574\\\",\\\"imgname\\\":\\\"http://najahat.adoxapp.com/public/uploads/10272021181133b1e87c67-04c6-4361-af82-a4d1cb44a169.JPEG\\\"}]\"},{\"id\":2,\"question_category\":\"General Site\",\"question_type\":\"Yes/No\",\"question\":\"Ensure that the general site is clean\",\"response1\":\"Good\",\"response2\":\"Bad\",\"created_at\":\"2021-10-14T18:50:12.000000Z\",\"updated_at\":\"2021-10-14T18:50:12.000000Z\",\"notes\":\"Test\",\"buttonValue\":\"Good\",\"question_id\":2,\"label_answer\":\"Good\",\"images\":\"[{\\\"uri\\\":\\\"http://najahat.adoxapp.com/public/uploads/10272021181133fd69a347-9f5b-44f1-a4bc-cf6c3e0fe986.JPEG\\\",\\\"id\\\":\\\"1635358282449\\\",\\\"imgname\\\":\\\"http://najahat.adoxapp.com/public/uploads/10272021181133fd69a347-9f5b-44f1-a4bc-cf6c3e0fe986.JPEG\\\"}]\"}]}', '2021-10-27', 'Completed', 0, '2021-10-27 23:11:34', '2021-10-27 23:11:34'),
(7, 6, 1, '#660561949957739', '{\"General Site\":[{\"id\":1,\"question_category\":\"General Site\",\"question_type\":\"Yes/No\",\"question\":\"Ensure the safety of entrance and exit,and the asence of excavations and obstacles\",\"response1\":\"Good\",\"response2\":\"Bad\",\"created_at\":\"2021-10-14T18:48:54.000000Z\",\"updated_at\":\"2021-10-14T18:49:21.000000Z\",\" notes\":\"Rrr\",\"buttonValue\":\"Good\",\"question_id\":1,\"label_answer\":\"Good\",\"images\":\"[{\\\"uri\\\":\\\"http://najahat.adoxapp.com/public/uploads/10302021102922bb2aa139-c3c5-4ce5-968c-fccd289874aa.JPEG\\\",\\\"id\\\":\\\"1635589744832\\\",\\\"imgname\\\":\\\"http://najahat.adoxapp.com/public/uploads/10302021102922bb2aa139-c3c5-4ce5-968c-fccd289874aa.JPEG\\\"}]\"},{\"id\":2,\"question_category\":\"General Site\",\"question_type\":\"Yes/No\",\"question\":\"Ensure that the general site is clean\",\"response1\":\"Good\",\"response2\":\"Bad\",\"created_at\":\"2021-10-14T18:50:12.000000Z\",\"updated_at\":\"2021-10-14T18:50:12.000000Z\",\"notes\":\"\",\"buttonValue\":\"\",\"question_id\":2,\"label_answer\":\"\",\"images\":\"[]\"}]}', '2021-10-30', 'Completed', 0, '2021-10-30 15:29:22', '2021-10-30 15:29:22'),
(8, 6, 1, '#907231384447528', '{\"General Site\":[{\"id\":1,\"question_category\":\"General Site\",\"question_type\":\"Yes/No\",\"question\":\"Ensure the safety of entrance and exit,and the asence of excavations and obstacles\",\"response1\":\"Good\",\"response2\":\"Bad\",\"created_at\":\"2021-10-14T18:48:54.000000Z\",\"updated_at\":\"2021-10-14T18:49:21.000000Z\",\"notes\":\"Rtr\",\"buttonValue\":\"Good\",\"question_id\":1,\"label_answer\":\"Good\",\"images\":\"[{\\\"uri\\\":\\\"http://najahat.adoxapp.com/public/uploads/103120211111320c6914d8-a7ac-460c-80c9-8f3318649fbf.JPEG\\\",\\\"id\\\":\\\"1635678651333\\\",\\\"imgname\\\":\\\"http://najahat.adoxapp.com/public/uploads/103120211111320c6914d8-a7ac-460c-80c9-8f3318649fbf.JPEG\\\"}]\"},{\"id\":2,\"question_category\":\"General Site\",\"question_type\":\"Yes/No\",\"question\":\"Ensure that the general site is clean\",\"response1\":\"Good\",\"response2\":\"Bad\",\"created_at\":\"2021-10-14T18:50:12.000000Z\",\"updated_at\":\"2021-10-14T18:50:12.000000Z\",\"notes\":\"For\\n\",\"buttonValue\":\"Bad\",\"question_id\":2,\"label_answer\":\"Bad\",\"images\":\"[{\\\"uri\\\":\\\"http://najahat.adoxapp.com/public/uploads/10312021111132115f3bea-26e6-49de-bf11-76322d4b14ec.JPEG\\\",\\\"id\\\":\\\"1635678686131\\\",\\\"imgname\\\":\\\"http://najahat.adoxapp.com/public/uploads/10312021111132115f3bea-26e6-49de-bf11-76322d4b14ec.JPEG\\\"}]\"}]}', '2021-10-31', 'Completed', 0, '2021-10-31 16:11:33', '2021-10-31 16:11:33'),
(9, 20, 1, '#703634514602014', '{\"Test Question\":[{\"id\":1,\"question_category\":\"Test Question\",\"question_type\":\"Yes/No\",\"question\":\"Testing car care survey question\",\"response1\":\"Good\",\"response2\":\"Bad\",\"created_at\":\"2021-10-29T04:35:02.000000Z\",\"updated_at\":\"2021-10-29T04:35:02.000000Z\",\"notes\":\"Tea\",\"buttonValue\":\"Good\",\"question_id\":1,\"label_answer\":\"Good\",\"images\":\"[{\\\"uri\\\":\\\"http://najahat.adoxapp.com/public/uploads/11032021123137e0616e51-7628-4cb7-8727-9df0f938f209.JPEG\\\",\\\"id\\\":\\\"1635942694725\\\",\\\"imgname\\\":\\\"http://najahat.adoxapp.com/public/uploads/11032021123137e0616e51-7628-4cb7-8727-9df0f938f209.JPEG\\\"}]\"}]}', '2021-11-03', 'Completed', 1, '2021-11-03 17:31:38', '2021-11-03 17:31:38'),
(10, 20, 1, '#593270927339947', '{\"Test Question\":[{\"id\":1,\"question_category\":\"Test Question\",\"question_type\":\"Yes/No\",\"question\":\"Testing car care survey question\",\"response1\":\"Good\",\"response2\":\"Bad\",\"created_at\":\"2021-10-29T04:35:02.000000Z\",\"updated_at\":\"2021-10-29T04:35:02.000000Z\",\"notes\":\"Gdd\",\"buttonValue\":\"Bad\",\"question_id\":1,\"label_answer\":\"Bad\",\"images\":\"[{\\\"uri\\\":\\\"http://najahat.adoxapp.com/public/uploads/11042021032221c0fe18f3-4569-4873-931e-689278993dd5.JPEG\\\",\\\"id\\\":\\\"1635996135767\\\",\\\"imgname\\\":\\\"http://najahat.adoxapp.com/public/uploads/11042021032221c0fe18f3-4569-4873-931e-689278993dd5.JPEG\\\"}]\"}]}', '2021-11-04', 'Completed', 1, '2021-11-04 08:22:22', '2021-11-04 08:22:22'),
(11, 6, 1, '#406849079718032', '{\"\":[{\"id\":1,\"question_category\":\"الموقع العام\",\"question_type\":\"Yes/No\",\"question\":\"التأكد من سلامة المدخل والمخرج وعدم وجود حفريات ومعوقات\",\"response1\":\"حسن\",\"button_label2\":\"سيء\",\"created_at\":\"2021-10-14T18:48:54.000000Z\",\"updated_at\":\"2021-10-14T18:49:21.000000Z\",\"notes\":\"اىاات\",\"buttonValue\":\"حسن\",\"question_id\":1,\"label_answer\":\"حسن\",\"images\":\"[{\\\"uri\\\":\\\"http://najahat.adoxapp.com/public/uploads/11142021061704dcf026f5-c55b-422f-8c06-cec20be52b0d.JPEG\\\",\\\"id\\\":\\\"1636870617556\\\",\\\"imgname\\\":\\\"http://najahat.adoxapp.com/public/uploads/11142021061704dcf026f5-c55b-422f-8c06-cec20be52b0d.JPEG\\\"}]\"},{\"id\":2,\"question_category\":\"الموقع العام\",\"question_type\":\"Yes/No\",\"question\":\"سيء\",\"response1\":\"حسن\",\"button_label2\":\"سيء\",\"created_at\":\"2021-10-14T18:50:12.000000Z\",\"updated_at\":\"2021-10-14T18:50:12.000000Z\",\"notes\":\"اال\",\"buttonValue\":\"حسن\",\"question_id\":2,\"label_answer\":\"حسن\",\"images\":\"[{\\\"uri\\\":\\\"http://najahat.adoxapp.com/public/uploads/11142021061704b8823a77-efdb-4e1e-a976-e23188514ab5.JPEG\\\",\\\"id\\\":\\\"1636870599734\\\",\\\"imgname\\\":\\\"http://najahat.adoxapp.com/public/uploads/11142021061704b8823a77-efdb-4e1e-a976-e23188514ab5.JPEG\\\"}]\"}]}', '2021-11-14', 'Completed', 0, '2021-11-14 12:17:05', '2021-11-14 12:17:05'),
(12, 20, 1, '#475073482304068', '{\"Test Question\":[{\"id\":1,\"question_category\":\"Test Question\",\"question_type\":\"Yes/No\",\"question\":\"Testing car care survey question\",\"response1\":\"حسن\",\"button_label2\":\"سيء\",\"created_at\":\"2021-10-29T04:35:02.000000Z\",\"updated_at\":\"2021-10-29T04:35:02.000000Z\",\"notes\":\"Gfgff\",\"buttonValue\":\"حسن\",\"question_id\":1,\"label_answer\":\"حسن\",\"images\":\"[{\\\"uri\\\":\\\"http://najahat.adoxapp.com/public/uploads/11142021071232e9e5500b-6851-473a-9258-67a19057c851.JPEG\\\",\\\"id\\\":\\\"1636873950233\\\",\\\"imgname\\\":\\\"http://najahat.adoxapp.com/public/uploads/11142021071232e9e5500b-6851-473a-9258-67a19057c851.JPEG\\\"}]\"}]}', '2021-11-14', 'Completed', 0, '2021-11-14 13:12:33', '2021-11-14 13:12:33'),
(13, 20, 4, '#546536974350904', '{\"Test Question\":[{\"id\":1,\"question_category\":\"Test Question\",\"question_type\":\"Yes/No\",\"question\":\"Testing car care survey question\",\"response1\":\"حسن\",\"button_label2\":\"سيء\",\"created_at\":\"2021-10-29T04:35:02.000000Z\",\"updated_at\":\"2021-10-29T04:35:02.000000Z\",\"notes\":\"ززتهما٧تبفلبب\",\"buttonValue\":\"حسن\",\"question_id\":1,\"label_answer\":\"حسن\",\"images\":\"[{\\\"uri\\\":\\\"http://najahat.adoxapp.com/public/uploads/11212021064649244ef532-cc34-41a4-8ede-6b0960670574.JPEG\\\",\\\"id\\\":\\\"1637477195122\\\",\\\"imgname\\\":\\\"http://najahat.adoxapp.com/public/uploads/11212021064649244ef532-cc34-41a4-8ede-6b0960670574.JPEG\\\"}]\"}]}', '2021-11-21', 'Completed', 0, '2021-11-21 12:46:50', '2021-11-21 12:46:50'),
(14, 20, 1, '#487644043133054', '{\"Test Question\":[{\"id\":1,\"question_category\":\"Test Question\",\"question_type\":\"Yes/No\",\"question\":\"Testing car care survey question\",\"response1\":\"حسن\",\"button_label2\":\"سيء\",\"created_at\":\"2021-10-29T04:35:02.000000Z\",\"updated_at\":\"2021-10-29T04:35:02.000000Z\",\"notes\":\"T\",\"buttonValue\":\"حسن\",\"question_id\":1,\"label_answer\":\"حسن\",\"images\":\"[{\\\"uri\\\":\\\"http://najahat.adoxapp.com/public/uploads/11212021070143fe5fabb0-af31-4949-a52e-ea4c839c9a79.JPEG\\\",\\\"id\\\":\\\"1637478097145\\\",\\\"imgname\\\":\\\"http://najahat.adoxapp.com/public/uploads/11212021070143fe5fabb0-af31-4949-a52e-ea4c839c9a79.JPEG\\\"}]\"}]}', '2021-11-21', 'Completed', 0, '2021-11-21 13:01:44', '2021-11-21 13:01:44'),
(15, 20, 1, '#731770844135389', '{\"Test Question\":[{\"id\":1,\"question_category\":\"Test Question\",\"question_type\":\"Yes/No\",\"question\":\"Testing car care survey question\",\"response1\":\"حسن\",\"button_label2\":\"سيء\",\"created_at\":\"2021-10-29T04:35:02.000000Z\",\"updated_at\":\"2021-10-29T04:35:02.000000Z\",\"notes\":\"H\",\"buttonValue\":\"حسن\",\"question_id\":1,\"label_answer\":\"حسن\",\"images\":\"[{\\\"uri\\\":\\\"http://najahat.adoxapp.com/public/uploads/11212021070204c27c2da6-76af-43ab-bf3f-00c190a6d86f.JPEG\\\",\\\"id\\\":\\\"1637478118782\\\",\\\"imgname\\\":\\\"http://najahat.adoxapp.com/public/uploads/11212021070204c27c2da6-76af-43ab-bf3f-00c190a6d86f.JPEG\\\"}]\"}]}', '2021-11-21', 'Completed', 0, '2021-11-21 13:02:05', '2021-11-21 13:02:05');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `firstname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `firstname_ar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname_ar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stations` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `api_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `profile_pic` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manager` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'supervisor incase of station manager'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `email`, `email_verified_at`, `username`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `created_at`, `updated_at`, `firstname_ar`, `lastname`, `lastname_ar`, `mobile`, `login_type`, `stations`, `api_token`, `profile_pic`, `manager`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, 'admin', '$2y$10$Bwv1T0L.wA.TAPxihFXIK.xrbEIRSMlBJaeXDVRm/mGAEexLzQBqa', NULL, NULL, 'PBBG6gOl0Zf92J5GJ8hUW5jnHS47POiM8AbttEYgJmldTlMYAP1ig8bweuEW', '2021-09-30 12:44:09', '2021-11-22 10:26:40', '', '', '', '', 'Admin', '', '300|etfiDsPpvTrBaMJUpk3H96hsUnkMHzSxXwRBaDYa', 'http://127.0.0.1:8000/uploads/101220210518141.PNG', ''),
(2, 'Shibila', 'shibila.aysha@gmail.com', NULL, 'shibila', '$2y$10$p8Ib3e/Be5nJxTa.3neDZuEeaPNz9o/0rI3l8l8MokOzDKVDOysFC', NULL, NULL, NULL, '2021-10-05 09:44:03', '2021-10-23 17:23:22', NULL, 'Basheer', 'Basheer', NULL, 'Manager', NULL, '102|NSoMBgtA4X4xuOmfVWe7ZVxtZHbJ7R9yRAeA0as1', 'http://127.0.0.1:8000/uploads/101220210518141.PNG', NULL),
(3, 'Manager1', 'manager1@gmail.com', NULL, 'manager1', '$2y$10$.mCxb6/MIuoDYh3l8X.bIeuuuXT8fd2ms/kwXErDfDTy3hnKz831y', NULL, NULL, NULL, '2021-10-11 07:35:51', '2021-10-11 07:35:51', NULL, 'Manager1', 'Manager1', NULL, 'Manager', '4', NULL, 'http://127.0.0.1:8000/uploads/101120211305511.PNG', NULL),
(4, 'Manager2', 'manager2@gmail.com', NULL, 'manager2', '$2y$10$.mCxb6/MIuoDYh3l8X.bIeuuuXT8fd2ms/kwXErDfDTy3hnKz831y', NULL, NULL, NULL, '2021-10-11 07:39:16', '2021-10-11 07:39:16', NULL, 'Manager2', 'Manager2', NULL, 'Manager', '3,1,4', NULL, 'http://127.0.0.1:8000/uploads/101120211309161.PNG', NULL),
(6, 'Station', 'stationsupervisor1@gmail.com', NULL, 'stationsupervisor1', '$2y$10$.mCxb6/MIuoDYh3l8X.bIeuuuXT8fd2ms/kwXErDfDTy3hnKz831y', NULL, NULL, NULL, '2021-10-11 23:48:14', '2021-12-04 11:38:27', 'Station ', 'Supervisor1', 'Supervisor1', '9999999999', 'Station Supervisor', '4,1', '325|sPDRDU0HSbCTe20XVGKUod5OlQX2SUBi5ZaS14CQ', 'http://127.0.0.1:8000/uploads/101220210518141.PNG', '4'),
(10, 'FMR', 'fmrmanager1@gmail.com', NULL, 'fmrmanager1', '$2y$10$.mCxb6/MIuoDYh3l8X.bIeuuuXT8fd2ms/kwXErDfDTy3hnKz831y', NULL, NULL, NULL, '2021-10-19 12:24:28', '2021-11-30 12:40:57', 'FMR ', 'Manager1', 'Manager1', NULL, 'Facility Manager', '1,4,3', '321|QKasXrqf5jJAjcIKEZk8z0VWwzAeXA702ngITIgT', 'https://najahat.adoxapp.com/uploads/101920210724281.PNG', ''),
(11, 'Employee', 'employee1@gmail.com', NULL, 'employee1', '$2y$10$.mCxb6/MIuoDYh3l8X.bIeuuuXT8fd2ms/kwXErDfDTy3hnKz831y', NULL, NULL, NULL, '2021-10-21 11:06:11', '2021-11-24 12:14:21', 'Employee', '1', '1', NULL, 'Facility Labour', '1,4', '307|Li22LT8d27FO3BKP6ldGUnLny9gM7zIVDB1Yn0ka', 'https://najahat.adoxapp.com/uploads/102120210606111.PNG', '10'),
(15, 'Station Supervisor2', 'stationsupervisor2@gmail.com', NULL, 'stationsupervisor2', '$2y$10$.mCxb6/MIuoDYh3l8X.bIeuuuXT8fd2ms/kwXErDfDTy3hnKz831y', NULL, NULL, NULL, '2021-10-23 17:22:33', '2021-10-23 17:22:33', 'Station Supervisor2', 'Station Supervisor2', 'Station Supervisor2', NULL, 'Station Supervisor', '4', NULL, 'https://najahat.adoxapp.com/uploads/10232021122233logo (2).png', '3'),
(16, 'Station', 'stationmanager1', NULL, 'stationmanager1', '$2y$10$.mCxb6/MIuoDYh3l8X.bIeuuuXT8fd2ms/kwXErDfDTy3hnKz831y', NULL, NULL, NULL, NULL, '2021-11-30 10:51:44', 'Station', 'Manager 1', 'Manager 1', '8934126754', 'Station Mananger', '4', '316|aFPjbi2CXldsar6i75bdmTtBYpMAMS1JQ8C2Ffsh', NULL, '6'),
(18, 'Project', 'projectsupervisor1@gmail.com', NULL, 'projectsupervisor1', '$2y$10$w8/ETCLajxMJS5ONR2qMn.zUZqIytti6PmqlhS3pDkTuG8VAbuIwK', NULL, NULL, NULL, '2021-10-27 15:05:54', '2021-11-29 12:18:06', 'Project', 'Supervisor1', 'Supervisor1', NULL, 'Project Supervisor', '1,3,4', '313|WtfAYCqODA8QATw3FsD8tHBPRnDWum8yjqgyHcuD', 'https://najahat.adoxapp.com/uploads/10272021100553logo (2).png', ''),
(19, 'Car Care', 'carcaremanager1@gmail.com', NULL, 'carcaremanager1', '$2y$10$zMqzPstEY1oMkP0lfYuiJeLqfki.3bZw8c3fer24WnbgEW1d5fs7q', NULL, NULL, NULL, '2021-10-28 11:28:08', '2021-10-28 11:28:08', 'Car Care', 'Manager 1', 'Manager 1', NULL, 'Car Care Manager', '1,4', NULL, 'https://najahat.adoxapp.com/uploads/10282021062808logo (2).png', ''),
(20, 'Car Care', 'carcaresupervisor1@gmail.com', NULL, 'carcaresupervisor1', '$2y$10$yOvHpp32wi5xtdNvcL2iSeCbmPn1v4S.frfKBwGggyQdptooqYJzK', NULL, NULL, NULL, '2021-10-28 12:19:53', '2021-12-01 11:14:40', 'Car Care', 'Supervisor 1', 'Supervisor 1', NULL, 'Car Care Supervisor', '1,4', '323|vD9zrcZoE9gnMQZpwEwmZ8uvqnBno18dQBIEjhy7', 'https://najahat.adoxapp.com/uploads/10282021071953logo (2).png', '19'),
(21, 'tmanager1', 'tmanager1@gmail.com', NULL, 'tmanager1', '$2y$10$7D0hati5cnm0jQaoYlY5Q.qTfjA95GPDUZsouX2o56S7dK5qFeR6.', NULL, NULL, NULL, '2021-11-04 15:39:29', '2021-11-04 15:39:29', 'tmanager1', 'tmanager1', 'tmanager1', NULL, 'Transport Manager', '1,3,4', NULL, 'https://najahat.adoxapp.com/uploads/11042021103929logo (2).png', ''),
(22, 'tfmrmanager1', 'tfmrmanager1@gmail.com', NULL, 'tfmrmanager1', '$2y$10$4WeFIaK3ZRAuJNihRnARqu65MmwknwiPCAdROM9lhQzve8bxBwN0m', NULL, NULL, NULL, '2021-11-04 15:40:19', '2021-11-04 15:40:19', 'tfmrmanager1', 'tfmrmanager1', 'tfmrmanager1', NULL, 'Transport FMR Manager', '1,3,4', NULL, 'https://najahat.adoxapp.com/uploads/11042021104019logo (2).png', ''),
(23, 'temployee1', 'temployee1@gmail.com', NULL, 'temployee1', '$2y$10$1pP8FzaNP97DwnYnAorPl.CYWaGI69oAGRG7ld7xHyBMQYGDNaSw2', NULL, NULL, NULL, '2021-11-05 12:55:24', '2021-11-05 12:55:24', 'temployee1', 'temployee1', 'temployee1', NULL, 'Transport Employee', '1,3,4', NULL, 'https://najahat.adoxapp.com/uploads/11052021075524logo (2).png', '22'),
(26, 'bowners1', 'bowners1@gmail.com', NULL, 'bowners1', '$2y$10$SH.uM8rmEZks7t8yg/faVOcrO6Qzf2/.qKhNV21nbLZ2f9yWV1Yci', NULL, NULL, NULL, '2021-11-08 17:08:02', '2021-11-08 17:08:02', 'bowners1', 'bowners1', 'bowners1', NULL, 'Business Owners', '', NULL, 'https://najahat.adoxapp.com/uploads/11082021110802logo.png', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carcaresurveys`
--
ALTER TABLE `carcaresurveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `firebases`
--
ALTER TABLE `firebases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `f_m_r_s`
--
ALTER TABLE `f_m_r_s`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issuecategories`
--
ALTER TABLE `issuecategories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `issuetypes`
--
ALTER TABLE `issuetypes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `issue_category` (`issue_category`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_fuels`
--
ALTER TABLE `order_fuels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projectsnames`
--
ALTER TABLE `projectsnames`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `stations`
--
ALTER TABLE `stations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveyquestions`
--
ALTER TABLE `surveyquestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `surveys`
--
ALTER TABLE `surveys`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carcaresurveys`
--
ALTER TABLE `carcaresurveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `firebases`
--
ALTER TABLE `firebases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `f_m_r_s`
--
ALTER TABLE `f_m_r_s`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `issuecategories`
--
ALTER TABLE `issuecategories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `issuetypes`
--
ALTER TABLE `issuetypes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_fuels`
--
ALTER TABLE `order_fuels`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=326;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `projectsnames`
--
ALTER TABLE `projectsnames`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `stations`
--
ALTER TABLE `stations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `surveyquestions`
--
ALTER TABLE `surveyquestions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `surveys`
--
ALTER TABLE `surveys`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
