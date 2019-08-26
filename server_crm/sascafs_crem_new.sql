-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 18, 2019 at 12:11 PM
-- Server version: 5.6.41-log
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sascafs_crem_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `account_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `branch` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `swift_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `user_id`, `account_name`, `account_no`, `bank_name`, `branch`, `type`, `swift_code`, `created_at`, `updated_at`) VALUES
(2, 1, 'Some Name', '32113123', 'Prime Bank', 'Mohakhali', 'Checking', 'ed323rerD32', '2019-02-11 04:08:11', '2019-02-11 04:08:11');

-- --------------------------------------------------------

--
-- Table structure for table `comissions`
--

CREATE TABLE `comissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double NOT NULL,
  `expense_date` date NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `account` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expenses`
--

INSERT INTO `expenses` (`id`, `title`, `amount`, `expense_date`, `category`, `customer_id`, `account`, `description`, `created_at`, `updated_at`) VALUES
(3, 'Some Title', 12.23, '2019-02-13', 'Some Category', 11, 'an account', 'This is the second expense.', '2019-02-11 02:36:24', '2019-02-11 02:37:24');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(11) NOT NULL,
  `serial_no` int(11) NOT NULL,
  `invoice_no` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `due_note` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `due_date` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `customer_id`, `serial_no`, `invoice_no`, `issue_date`, `due_note`, `due_date`, `created_at`, `updated_at`) VALUES
(3, 9, 111, 222, '2019-02-11', 'some note edited', '2019-02-12', '2019-02-11 01:45:22', '2019-02-11 01:47:03');

-- --------------------------------------------------------

--
-- Table structure for table `leads`
--

CREATE TABLE `leads` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_web` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_contacted` date NOT NULL,
  `lead_tags` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lead_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `leads`
--

INSERT INTO `leads` (`id`, `title`, `name`, `company_name`, `user_id`, `status`, `source`, `phone`, `email`, `customer_web`, `country`, `state`, `city`, `zip`, `address`, `description`, `date_contacted`, `lead_tags`, `lead_type`, `created_at`, `updated_at`) VALUES
(2, 'Custom Lead', 'shyon', 'Shiny Gleam', 6, 'High', 'N/A', '1789944562', 'shiny@ibw.com', 'Shinygleam.com', 'Bangladesh', 'Dhaka', 'Dhaka', '1209', 'Gulshan Dhaka-1209', 'wfgeghwhwh.', '2019-02-19', 'N/A', 'Sales', '2019-02-10 04:12:02', '2019-02-10 04:12:02'),
(3, 'Some Title', 'Some Name', 'A Company', 3, 'Some Status', 'A source', '123456789', 'email@gmail.com', 'A web', 'Bangladesh', 'Dhaka', 'Dhaka', '1216', 'Some Address', 'This is the second lead.', '2019-02-11', 'Some Tag', 'Public', '2019-02-10 23:30:03', '2019-02-11 00:58:49');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(109, '2014_10_12_000000_create_users_table', 1),
(110, '2014_10_12_100000_create_password_resets_table', 1),
(111, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(112, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(113, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(114, '2016_06_01_000004_create_oauth_clients_table', 1),
(115, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(116, '2019_02_03_093152_create_permission_tables', 1),
(131, '2019_02_05_141342_create_leads_table', 2),
(130, '2019_02_05_055352_create_tickets_table', 2),
(129, '2019_02_05_054916_create_proposals_table', 2),
(123, '2019_02_05_055259_customer', 1),
(124, '2019_02_05_055317_comission', 1),
(125, '2019_02_05_055336_account', 1),
(128, '2019_02_05_054902_create_tasks_table', 2),
(132, '2019_02_05_141956_create_invoices_table', 2),
(133, '2019_02_05_150234_create_expenses_table', 2),
(134, '2019_02_05_151807_create_orders_table', 2),
(135, '2019_02_06_082243_create_projects_table', 2),
(136, '2019_02_06_122440_create_products_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int(10) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 5),
(3, 'App\\User', 4),
(6, 'App\\User', 9),
(6, 'App\\User', 11),
(7, 'App\\User', 2),
(7, 'App\\User', 3),
(7, 'App\\User', 6),
(7, 'App\\User', 7);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `issue_date` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `open_till` date NOT NULL,
  `details` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `subject`, `customer_id`, `issue_date`, `staff_id`, `status`, `open_till`, `details`, `created_at`, `updated_at`) VALUES
(7, 'Some Subject', 9, '2019-02-11', 6, 'Some Status', '2019-02-20', 'some details', '2019-02-11 02:31:34', '2019-02-11 02:32:26');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(2, 'role-create', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(3, 'role-edit', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(4, 'role-delete', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(5, 'Account-list', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(6, 'Account-create', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(7, 'Account-edit', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(8, 'Account-delete', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(9, 'Comission-list', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(10, 'Comission-create', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(11, 'Comission-edit', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(12, 'Comission-delete', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(13, 'Customer-list', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(14, 'Customer-create', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(15, 'Customer-edit', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(16, 'Customer-delete', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(17, 'Expense-list', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(18, 'Expense-create', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(19, 'Expense-edit', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(20, 'Expense-delete', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(21, 'Invoice-list', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(22, 'Invoice-create', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(23, 'Invoice-edit', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(24, 'Invoice-delete', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(25, 'Lead-list', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(26, 'Lead-create', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(27, 'Lead-edit', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(28, 'Lead-delete', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(29, 'Order-list', 'web', '2019-02-05 01:06:11', '2019-02-05 01:06:11'),
(30, 'Order-create', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(31, 'Order-edit', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(32, 'Order-delete', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(33, 'Project-list', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(34, 'Project-create', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(35, 'Project-edit', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(36, 'Project-delete', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(37, 'Proposal-list', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(38, 'Proposal-create', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(39, 'Proposal-edit', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(40, 'Proposal-delete', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(41, 'Task-list', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(42, 'Task-create', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(43, 'Task-edit', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(44, 'Task-delete', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(45, 'Ticket-list', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(46, 'Ticket-create', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(47, 'Ticket-edit', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(48, 'Ticket-delete', 'web', '2019-02-05 01:06:12', '2019-02-05 01:06:12'),
(49, 'User-list', 'web', '2019-02-02 18:00:00', '2019-02-02 18:00:00'),
(50, 'User-create', 'web', '2019-02-02 18:00:00', '2019-02-02 18:00:00'),
(51, 'User-edit', 'web', '2019-02-02 18:00:00', '2019-02-02 18:00:00'),
(52, 'User-delete', 'web', '2019-02-02 18:00:00', '2019-02-02 18:00:00'),
(53, 'Product-list', 'web', '2019-02-02 18:00:00', '2019-02-02 18:00:00'),
(54, 'Product-create', 'web', '2019-02-02 18:00:00', '2019-02-02 18:00:00'),
(55, 'Product-edit', 'web', '2019-02-02 18:00:00', '2019-02-10 18:00:00'),
(56, 'Product-delete', 'web', '2019-02-10 18:00:00', '2019-02-02 18:00:00'),
(57, 'Report-list', 'web', '2019-02-02 18:00:00', '2019-02-02 18:00:00'),
(58, 'Report-create', 'web', '2019-02-02 18:00:00', '2019-02-02 18:00:00'),
(59, 'Report-edit', 'web', '2019-02-02 18:00:00', '2019-02-10 18:00:00'),
(60, 'Report-delete', 'web', '2019-02-10 18:00:00', '2019-02-02 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `purchase_price` double(8,2) NOT NULL,
  `sales_price` double(8,2) NOT NULL,
  `product_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax` double NOT NULL,
  `in_stock` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `product_name`, `purchase_price`, `sales_price`, `product_code`, `tax`, `in_stock`, `details`, `created_at`, `updated_at`) VALUES
(2, 'T-Shirt', 500000.00, 200000.00, 'T-101', 100, '500', 'hhcjhfgvkk.', '2019-02-10 02:58:42', '2019-02-10 02:58:42');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `name`, `customer_id`, `start_date`, `end_date`, `details`, `created_at`, `updated_at`) VALUES
(4, 'A Project Name', 9, '2019-02-11', '2019-02-13', 'This is the first project.', '2019-02-10 23:47:46', '2019-02-10 23:47:46'),
(5, 'Some Name', 9, '2019-02-05', '2019-02-08', 'this is the second project.', '2019-02-11 02:51:59', '2019-02-11 02:56:28');

-- --------------------------------------------------------

--
-- Table structure for table `proposals`
--

CREATE TABLE `proposals` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proposals`
--

INSERT INTO `proposals` (`id`, `subject`, `customer_id`, `staff_id`, `status`, `start_date`, `end_date`, `details`, `created_at`, `updated_at`) VALUES
(2, 'IBW', 9, 7, 'High', '2019-02-08', '2019-02-27', 'Some details', '2019-02-09 04:52:06', '2019-02-11 02:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2019-02-05 01:13:19', '2019-02-05 01:13:19'),
(7, 'Staff', 'web', '2019-02-11 00:40:55', '2019-02-11 00:40:55'),
(6, 'Customer', 'web', '2019-02-09 04:54:35', '2019-02-09 04:54:35');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(1, 2),
(2, 1),
(2, 2),
(3, 1),
(3, 2),
(4, 1),
(4, 2),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 3),
(10, 1),
(10, 3),
(11, 1),
(11, 3),
(12, 1),
(12, 3),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(14, 5),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(16, 5),
(17, 1),
(17, 4),
(18, 1),
(18, 4),
(19, 1),
(19, 4),
(20, 1),
(20, 4),
(21, 1),
(21, 2),
(21, 3),
(21, 4),
(21, 5),
(22, 1),
(22, 2),
(22, 3),
(22, 4),
(22, 5),
(22, 6),
(23, 1),
(23, 2),
(23, 3),
(23, 4),
(23, 5),
(23, 6),
(24, 1),
(24, 2),
(24, 3),
(24, 4),
(24, 5),
(24, 6),
(25, 1),
(25, 3),
(25, 4),
(26, 1),
(26, 3),
(26, 4),
(27, 1),
(27, 3),
(27, 4),
(28, 1),
(28, 3),
(28, 4),
(29, 1),
(29, 2),
(29, 3),
(29, 4),
(30, 1),
(30, 2),
(30, 3),
(30, 4),
(31, 1),
(31, 2),
(31, 3),
(31, 4),
(32, 1),
(32, 2),
(32, 3),
(32, 4),
(33, 1),
(33, 3),
(34, 1),
(34, 3),
(35, 1),
(35, 3),
(36, 1),
(36, 3),
(37, 1),
(37, 3),
(37, 4),
(38, 1),
(38, 3),
(38, 4),
(38, 6),
(39, 1),
(39, 3),
(39, 4),
(39, 6),
(40, 1),
(40, 3),
(40, 4),
(40, 6),
(41, 1),
(41, 2),
(41, 3),
(41, 4),
(41, 5),
(42, 1),
(42, 2),
(42, 3),
(42, 4),
(42, 5),
(43, 1),
(43, 2),
(43, 3),
(43, 4),
(43, 5),
(44, 1),
(44, 2),
(44, 3),
(44, 4),
(44, 5),
(45, 1),
(45, 3),
(45, 4),
(45, 5),
(45, 7),
(46, 1),
(46, 3),
(46, 4),
(46, 5),
(46, 6),
(46, 7),
(47, 1),
(47, 3),
(47, 4),
(47, 5),
(47, 6),
(47, 7),
(48, 1),
(48, 3),
(48, 4),
(48, 5),
(48, 6),
(48, 7),
(49, 1),
(49, 2),
(49, 5),
(50, 1),
(50, 2),
(50, 5),
(51, 1),
(51, 2),
(51, 5),
(52, 1),
(52, 2),
(52, 5),
(53, 1),
(53, 2),
(53, 3),
(54, 1),
(54, 2),
(54, 3),
(55, 1),
(55, 2),
(55, 3),
(56, 1),
(56, 2),
(56, 3),
(57, 1),
(57, 2),
(57, 3),
(57, 4),
(57, 5),
(58, 1),
(58, 2),
(58, 3),
(58, 4),
(58, 5),
(59, 1),
(59, 2),
(59, 3),
(59, 4),
(59, 5),
(60, 1),
(60, 2),
(60, 3),
(60, 4),
(60, 5);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `key` varchar(191) NOT NULL,
  `value` varchar(191) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `project` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `due_date` date NOT NULL,
  `staff_id` int(11) NOT NULL,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `type`, `project`, `customer_id`, `start_date`, `due_date`, `staff_id`, `priority`, `status`, `details`, `created_at`, `updated_at`) VALUES
(6, 'Some relation type', 'A Project', 11, '2019-02-26', '2019-02-21', 6, 'High', 'Some Status', 'This is the second task.', '2019-02-11 03:04:51', '2019-02-11 03:06:45');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

CREATE TABLE `tickets` (
  `id` int(10) UNSIGNED NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `customer_id` int(11) NOT NULL,
  `contact` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `department` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `subject`, `customer_id`, `contact`, `department`, `priority`, `details`, `created_at`, `updated_at`) VALUES
(3, 'Tickets', 2, 'Sumon abc', 'Sales', 'Medium', 'This is the first Tickets.', '2019-02-09 01:43:51', '2019-02-10 23:48:26'),
(4, 'Some Subject', 9, 'some contact', 'A department 2', 'High', 'This is the second details.', '2019-02-11 02:58:56', '2019-02-11 02:59:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Ashraful', 'shyon@ibw.com', '$2y$10$r2RGJ0bPZtJSyI9H13m.ResVs22mD1vXBG.bp2LFCT4btExk0hTlO', '0eCb4ruYJLYTSHvBq3izj3v66fyH7FgqekXbWg4KEfYQ8MDTpuhLEifCz20Q', '2019-02-05 01:13:58', '2019-02-09 03:58:17'),
(2, 'Test User Sale', 'sales@ibw.com', '$2y$10$06FFUS0jMMs5yL3TExE2w.a3q3lJ94p4yswQiqyh20Uj66nYYd1PK', '83tOKG5zamEG6hI25K3uBi5Lf3AKZb56Bjx6YEb1XkMM42q2kN0n4cfEJjCg', '2019-02-09 01:01:17', '2019-02-09 01:01:17'),
(3, 'Test User Sales Manager', 'salesmanagers@ibw.com', '$2y$10$hPBbl.Oo2TwctRqyGBA24OOa6GVwV3xWHf57UoTeavfS5VggY6OJ6', NULL, '2019-02-09 01:02:06', '2019-02-09 01:02:06'),
(6, 'Test User Business Development Manager', 'business@ibw.com', '$2y$10$3pxjZaO2/OStqw80nEmmmeXHcKwXrqcgc/ZF3Lm2yFz9oC4D4tUpy', 'BVyeQrLUUp5HzMb105UONd0CpTMjAykMHIX5VnrVqyMgRXPbXfHpp02mwXtv', '2019-02-09 01:03:00', '2019-02-09 01:03:00'),
(7, 'Business Test User Development Supervisors', 'businessdevelopment@ibw.com', '$2y$10$tUwCKQFGJ2CVE.ag/5dpme3.N6Dcd9Cj9il59eWS5oU7555sd.xF.', NULL, '2019-02-09 01:04:08', '2019-02-09 01:04:08'),
(10, 'flytesoln', 'flytesoln@gmail.com', '$2y$10$OT8ZfLDz5iVN42IVZ6rMJu9.sFvYjEOF55WEs05zIpkM3Ez3DeAzK', NULL, '2019-02-11 00:52:59', '2019-02-11 00:52:59'),
(9, 'Test User Customer', 'customer@ibw.com', '$2y$10$OWTnNOZ2fFsq/eVjgU7S5ehFfK80JiB64qMSBKDj0E3Dd0G6k7Odi', NULL, '2019-02-09 04:55:21', '2019-02-09 04:55:21'),
(11, 'Test Customer 2', 'testcustomer2@gmail.ocm', '$2y$10$ZzsesqlrcctZHygIDUQ74OiFg7alTFsEHKMCdx.8GLPY3YQFgXV3W', NULL, '2019-02-11 01:48:24', '2019-02-11 01:48:24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comissions`
--
ALTER TABLE `comissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expenses_user_id_foreign` (`customer_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_id_foreign` (`customer_id`);

--
-- Indexes for table `leads`
--
ALTER TABLE `leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `leads_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_type_model_id_index` (`model_type`,`model_id`);

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
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`customer_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `proposals`
--
ALTER TABLE `proposals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `comissions`
--
ALTER TABLE `comissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `leads`
--
ALTER TABLE `leads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=137;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `proposals`
--
ALTER TABLE `proposals`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
