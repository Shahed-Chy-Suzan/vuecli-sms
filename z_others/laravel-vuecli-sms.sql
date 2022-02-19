-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2022 at 09:00 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-vuecli-sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('02c738ecc4603fcff945656df4b37b5182eea28d7eca720604695c052f5c346229f2ff0e03d240ef', 1, 3, 'userToken', '[]', 0, '2022-02-16 00:35:28', '2022-02-16 00:35:28', '2023-02-16 06:35:28'),
('05f2aaa9135a0589eceff397f6b36285e1c94b36f95a2a02c69e575b8225be3cf26d75d104838909', 1, 3, 'userToken', '[]', 0, '2022-02-19 01:03:26', '2022-02-19 01:03:26', '2023-02-19 07:03:26'),
('1c633949b15e1f9647b51e53ffd91e83b05c9627cca6059ca9d0ca1e2dc4b570fac298476cff9462', 1, 3, 'userToken', '[]', 0, '2022-02-19 01:28:18', '2022-02-19 01:28:18', '2023-02-19 07:28:18'),
('29ecc4ab640c63c74505327a5ccd53a4206c1052a4899686ac3a43ee308614cdc7fcc58a4f6ef26b', 1, 3, 'userToken', '[]', 1, '2022-02-16 00:30:34', '2022-02-16 00:30:34', '2023-02-16 06:30:34'),
('2f7ffe9e3488f7f10941f4c0c3ac2f4a610dca607d9aabd90431c9cc79b9354cd37c1c34b99c1481', 1, 3, 'userToken', '[]', 0, '2022-02-15 23:23:33', '2022-02-15 23:23:33', '2023-02-16 05:23:33'),
('346e23d926c0032e3abc3e37e049391bfd2a0d03665ea3db67270235e1434d4d24331a1170289cc4', 1, 3, 'userToken', '[]', 0, '2022-02-19 01:46:22', '2022-02-19 01:46:22', '2023-02-19 07:46:22'),
('36e5642458a1c7aaeac1abcaece5b35169c43377744fb607eb1fd08394a6299bc51d034e654bd78f', 1, 3, 'userToken', '[]', 0, '2022-02-15 23:21:39', '2022-02-15 23:21:39', '2023-02-16 05:21:39'),
('3c1ee044b554d26b5e2dde4cf1e715024c3f33f58a570604f583c5dc4227bbcece1ee7c1f8e123ca', 1, 3, 'userToken', '[]', 1, '2022-02-16 00:35:33', '2022-02-16 00:35:33', '2023-02-16 06:35:33'),
('49d87d64228d2cc60356050c8740aafe625313a61adfd6f752351cc5f31e61cf82c8fdddb049ee38', 3, 3, 'userToken', '[]', 0, '2022-02-15 23:27:01', '2022-02-15 23:27:01', '2023-02-16 05:27:01'),
('5f159b877d5e0d5996e6ee50b83026437be2cec0d63338e49bbf3d1db4e27c55e924a89a6e53744c', 1, 3, 'userToken', '[]', 1, '2022-02-16 00:32:52', '2022-02-16 00:32:52', '2023-02-16 06:32:52'),
('5f17528502ccf0e6a3b34f329d65ee0be5eb31d6bae55b4adaacd7dcaf40b9271b1a605c296ad113', 1, 3, 'userToken', '[]', 1, '2022-02-16 00:42:02', '2022-02-16 00:42:02', '2023-02-16 06:42:02'),
('5f69ca0f8f6ec238e816d8a4073594505bdce72968a85deecaa68addeb5f0db0decba4e1065b71b0', 1, 3, 'userToken', '[]', 0, '2022-02-19 01:03:58', '2022-02-19 01:03:58', '2023-02-19 07:03:58'),
('6707a7fde266750fff94c9383c4ac134f25f1bbbc862c1ce8491dba899097836181a3a00d9d0ed9b', 1, 3, 'userToken', '[]', 0, '2022-02-19 01:03:28', '2022-02-19 01:03:28', '2023-02-19 07:03:28'),
('7f35dc276ccd41c9fdcc3cbe2365fe53c6371e8bb72de53b055c3f93a0881f215240cfe07f44c9e3', 1, 3, 'userToken', '[]', 1, '2022-02-15 15:40:52', '2022-02-15 15:40:52', '2023-02-15 21:40:52'),
('88daff75301df4c29087e596aeb158ad7f6d2db546d7bb5a08f6a37537654032d3d604e959c11b4a', 1, 3, 'userToken', '[]', 0, '2022-02-16 00:32:14', '2022-02-16 00:32:14', '2023-02-16 06:32:14'),
('963dcf153232375df64963195db2c46376884f1c909ac9551587c0d12e0740056c678f7a97604de7', 1, 3, 'userToken', '[]', 0, '2022-02-19 01:03:31', '2022-02-19 01:03:31', '2023-02-19 07:03:31'),
('981fc76f654666592580a4f86fad1d45b68472b563592633458d044eaaff2a1336fe86fd2f04c09b', 1, 3, 'userToken', '[]', 0, '2022-02-16 00:43:59', '2022-02-16 00:43:59', '2023-02-16 06:43:59'),
('b257d6565b0743b15011aa7ce896ff1b380e87d587a974b3a44be6b5d7e6404208a6e874f32f63c8', 1, 3, 'userToken', '[]', 0, '2022-02-16 00:32:50', '2022-02-16 00:32:50', '2023-02-16 06:32:50'),
('bbceed851233bf715ac38fdea3ec831d799a051ba46da039979028e235c99e25a000a880ebbcb4c3', 1, 3, 'userToken', '[]', 0, '2022-02-15 15:25:28', '2022-02-15 15:25:28', '2023-02-15 21:25:28'),
('d3a749ba03700adcea674fc9f8ffaf2e82561454e4ed35b762cc8a8e81108dc2015e282cea12b70a', 2, 3, 'userToken', '[]', 0, '2022-02-19 01:48:17', '2022-02-19 01:48:17', '2023-02-19 07:48:17'),
('e21cb2e071abb72c23356ea05b5923a388ae5ffd91a5881d31b857060f442aefbd8414365ae931b2', 1, 3, 'userToken', '[]', 0, '2022-02-15 23:14:49', '2022-02-15 23:14:49', '2023-02-16 05:14:49');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'zi4fDwUiwn6RR4B1cOQ30qJcCH2WtjiDoW55T2Ny', NULL, 'http://localhost', 1, 0, 0, '2022-02-15 13:29:11', '2022-02-15 13:29:11'),
(2, NULL, 'Laravel Password Grant Client', 'JLsWQD0OQ7LZJrANXpSYI40FxT6v6yt3HR2jSiOF', 'users', 'http://localhost', 0, 1, 0, '2022-02-15 13:29:11', '2022-02-15 13:29:11'),
(3, NULL, 'Laravel Personal Access Client', 'mEwK4MfoTSLYMF7EHKtXcKKdxkoGH4QlZjC7Nrpt', NULL, 'http://localhost', 1, 0, 0, '2022-02-15 14:08:43', '2022-02-15 14:08:43'),
(4, NULL, 'Laravel Password Grant Client', '6IqVEEwaauM7G4yNs0Pi1kPTfu1z7HyJL0IEjyPx', 'users', 'http://localhost', 0, 1, 0, '2022-02-15 14:08:44', '2022-02-15 14:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2022-02-15 13:29:11', '2022-02-15 13:29:11'),
(2, 3, '2022-02-15 14:08:44', '2022-02-15 14:08:44');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `phone`, `image`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'user', 'user@gmail.com', '01700000000', NULL, NULL, '$2y$10$fyzvHDa/IDlMVtooc6B5euSGfAU65AAdd79mXO4bekxflB.IuEfka', NULL, NULL, NULL),
(2, 'admin', 'admin@gmail.com', '01800000000', NULL, NULL, '$2y$10$swdaXIzbHWNxwqCUHgEZtOrM2dcsx1xOvm7RkggixhNIoJVP6nskW', NULL, NULL, NULL),
(3, 'Suzan', 'suzan@gmail.com', '01811111111', NULL, NULL, '$2y$10$xiuh5HtDHiSbGFAjUvPmaOZ/V32O6S9E7w4R3U9Bm9ukOCzwsmDI.', NULL, '2022-02-15 23:27:01', '2022-02-15 23:27:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_phone_unique` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
