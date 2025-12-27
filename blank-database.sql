-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Dec 27, 2025 at 12:29 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `byteinventory`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

DROP TABLE IF EXISTS `accounts`;
CREATE TABLE IF NOT EXISTS `accounts` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `group_id` bigint UNSIGNED NOT NULL,
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `debit_amt` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `credit_amt` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `unique_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deletable` tinyint(1) NOT NULL DEFAULT '1',
  `payment_type_bank_id` bigint UNSIGNED DEFAULT NULL,
  `expense_category_id` bigint UNSIGNED DEFAULT NULL,
  `party_id` bigint UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `accounts_group_id_foreign` (`group_id`),
  KEY `accounts_created_by_foreign` (`created_by`),
  KEY `accounts_updated_by_foreign` (`updated_by`),
  KEY `accounts_payment_type_bank_id_foreign` (`payment_type_bank_id`),
  KEY `accounts_expense_category_id_foreign` (`expense_category_id`),
  KEY `accounts_party_id_foreign` (`party_id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`id`, `group_id`, `number`, `name`, `description`, `debit_amt`, `credit_amt`, `unique_code`, `created_by`, `updated_by`, `created_at`, `updated_at`, `is_deletable`, `payment_type_bank_id`, `expense_category_id`, `party_id`) VALUES
(1, 3, NULL, 'Stock-in-Hand', 'Total Current Stock Value', 0.0000, 0.0000, 'STOCK_IN_HAND', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0, NULL, NULL, NULL),
(2, 8, NULL, 'Input CCGT', 'Records Input Tax/GST', 0.0000, 0.0000, 'INPUT_CGST', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0, NULL, NULL, NULL),
(3, 8, NULL, 'Input CCGT', 'Records Input Tax/GST', 0.0000, 0.0000, 'INPUT_SGST', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0, NULL, NULL, NULL),
(4, 8, NULL, 'Input Tax All', 'Records Input Taxes', 0.0000, 0.0000, 'INPUT_TAX_ALL', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0, NULL, NULL, NULL),
(5, 20, NULL, 'Output CCGT', 'Records Output Tax/GST', 0.0000, 0.0000, 'OUTPUT_CGST', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0, NULL, NULL, NULL),
(6, 20, NULL, 'Output CCGT', 'Records Output Tax/GST', 0.0000, 0.0000, 'OUTPUT_SGST', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0, NULL, NULL, NULL),
(7, 20, NULL, 'Output Tax All', 'Records Output Tax All', 0.0000, 0.0000, 'OUTPUT_TAX_ALL', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0, NULL, NULL, NULL),
(8, 5, NULL, 'Cash In Hand', 'Children of Cash Account', 0.0000, 0.0000, 'CASH_IN_HAND', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0, NULL, NULL, NULL),
(9, 17, NULL, 'Unwithdrawn Cheques', 'Children of Other Current Liabilities', 0.0000, 0.0000, 'UNWITHDRAWN_CHEQUES', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0, NULL, NULL, NULL),
(10, 14, NULL, 'Net Income(Profit)', 'Children of Reserves & Surplus', 0.0000, 0.0000, 'NET_INCOME_OR_PROFIT', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0, NULL, NULL, NULL),
(11, 13, NULL, 'Opening Stock Balance', 'Children of Opening Balance Equity', 0.0000, 0.0000, 'OPENING_STOCK_BALANCE', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0, NULL, NULL, NULL),
(12, 4, NULL, 'Sundry Debtors List', 'Children of Sundry Debtors', 0.0000, 0.0000, 'SUNDRY_DEBTORS_LIST', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0, NULL, NULL, NULL),
(13, 18, NULL, 'Sundry Creditors List', 'Children of Sundry Creditors', 0.0000, 0.0000, 'SUNDRY_CREDITORS_LIST', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0, NULL, NULL, NULL),
(14, 18, NULL, 'Party Opening Balance', 'Children of Opening Balance Equity', 0.0000, 0.0000, 'PARTY_OPENING_BALANCE', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0, NULL, NULL, NULL),
(15, 9, NULL, 'Advance Paid for Purchase Order', 'Children of Other Current Assets', 0.0000, 0.0000, 'ADVANCE_PAID_FOR_PURCHASE_ORDER', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0, NULL, NULL, NULL),
(16, 22, NULL, 'Purchases', 'Children of Purchase Accounts', 0.0000, 0.0000, 'PURCHASES', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0, NULL, NULL, NULL),
(19, 23, NULL, 'দোকান ভাড়া', NULL, 0.0000, 0.0000, NULL, 1, 1, '2025-11-11 19:21:09', '2025-11-11 19:21:09', 0, NULL, 2, NULL),
(20, 6, NULL, 'Bank', NULL, 0.0000, 0.0000, NULL, 2, 2, '2025-11-14 13:19:39', '2025-11-26 19:40:49', 0, 4, NULL, NULL),
(22, 23, NULL, 'বেতন', NULL, 0.0000, 0.0000, NULL, 4, 4, '2025-11-23 17:14:16', '2025-11-23 17:16:38', 0, NULL, 3, NULL),
(23, 23, NULL, 'কমিশন', NULL, 0.0000, 0.0000, NULL, 4, 4, '2025-11-23 17:14:42', '2025-11-23 17:14:42', 0, NULL, 4, NULL),
(24, 23, NULL, 'ট্রান্সপোর্ট খরচ', NULL, 0.0000, 0.0000, NULL, 4, 4, '2025-11-23 17:15:00', '2025-11-23 17:15:00', 0, NULL, 5, NULL),
(26, 23, NULL, 'আপ্যায়ন খরচ', NULL, 0.0000, 0.0000, NULL, 2, 2, '2025-11-25 20:12:09', '2025-11-25 20:12:09', 0, NULL, 6, NULL),
(27, 23, NULL, 'লংকা বাংলা কিস্তি', NULL, 0.0000, 0.0000, NULL, 6, 6, '2025-12-03 02:05:00', '2025-12-03 02:05:00', 0, NULL, 7, NULL),
(28, 23, NULL, 'ব্রাক ব্যাংক কিস্তি', NULL, 0.0000, 0.0000, NULL, 6, 6, '2025-12-03 02:05:42', '2025-12-03 02:05:42', 0, NULL, 8, NULL),
(29, 6, NULL, 'DUE', NULL, 0.0000, 0.0000, NULL, 6, 6, '2025-12-04 01:27:29', '2025-12-04 01:27:29', 0, 7, NULL, NULL),
(30, 23, NULL, 'নাইট গার্ড', NULL, 0.0000, 0.0000, NULL, 6, 6, '2025-12-08 23:56:20', '2025-12-08 23:56:20', 0, NULL, 9, NULL),
(31, 23, NULL, 'মিচুয়াল ট্রাস্ট ব্যাংকের কিস্তি', NULL, 0.0000, 0.0000, NULL, 4, 4, '2025-12-10 23:46:14', '2025-12-10 23:46:14', 0, NULL, 10, NULL),
(32, 23, NULL, 'বিল', NULL, 0.0000, 0.0000, NULL, 5, 5, '2025-12-13 21:19:46', '2025-12-13 21:19:46', 0, NULL, 11, NULL),
(33, 23, NULL, 'বিভিন্ন খরচ', NULL, 0.0000, 0.0000, NULL, 5, 5, '2025-12-15 01:55:56', '2025-12-16 20:02:42', 0, NULL, 12, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `account_groups`
--

DROP TABLE IF EXISTS `account_groups`;
CREATE TABLE IF NOT EXISTS `account_groups` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `parent_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `balance` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `unique_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_deletable` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `account_groups_created_by_foreign` (`created_by`),
  KEY `account_groups_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `account_groups`
--

INSERT INTO `account_groups` (`id`, `parent_id`, `number`, `name`, `description`, `balance`, `unique_code`, `created_by`, `updated_by`, `created_at`, `updated_at`, `is_deletable`) VALUES
(1, 0, NULL, 'Assets', 'Assets are anything valuable that your company owns, whether it’s equipment, land, buildings, or intellectual property.', 0.0000, 'ASSETS', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(2, 1, NULL, 'Fixed Assets', 'Children of Assets', 0.0000, 'FIXED_ASSETS', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(3, 1, NULL, 'Current Assets', 'Children of Assets', 0.0000, 'CURRENT_ASSETS', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(4, 3, NULL, 'Sundry Debtors', 'Children of Current Assets', 0.0000, 'SUNDRY_DEBTORS', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(5, 3, NULL, 'Cash Account', 'Children of Current Assets', 0.0000, 'CASH_ACCOUNT', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(6, 3, NULL, 'Bank Accounts', 'Children of Current Assets', 0.0000, 'BANK_ACCOUNT', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(7, 3, NULL, 'Input Duties & Taxes', 'Children of Current Assets', 0.0000, 'INPUT_DUTIES_AND_TAXES', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(8, 7, NULL, 'Input Tax', 'Children of Current Assets', 0.0000, 'INPUT_TAX', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(9, 3, NULL, 'Other Current Assets', 'Children of Current Assets', 0.0000, 'OTHER_CURRENT_ASSETS', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(10, 0, NULL, 'Equities & Liabilities', 'Your liabilities are any debts your company has, whether it’s bank loans, mortgages, unpaid bills, IOUs, or any other sum of money that you owe someone else. If you’ve promised to pay someone in the future, and haven’t paid them yet, that’s a liability.', 0.0000, 'EQUITIES_AND_LIABILITIES', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(11, 10, NULL, 'Capital Account', 'Child of Equities & Liabilities', 0.0000, 'CAPITAL_ACCOUNT', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(12, 11, NULL, 'Owner\'s Equity', 'Child of Capital Account', 0.0000, 'OWNERS_EQUITY', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(13, 12, NULL, 'Opening Balance Equity', 'Owner\'s Equity', 0.0000, 'OPENING_BALANCE_EQUITY', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(14, 11, NULL, 'Reserves & Surplus', 'Child of Capital Account', 0.0000, 'RESERVES_AND_SURPLUS', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(15, 10, NULL, 'Long-term Liabilities', 'Child of Equities & Liabilities', 0.0000, 'LONG_TERM_EQUITIES_AND_LIABILITIES', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(16, 10, NULL, 'Current Liabilities', 'Child of Equities & Liabilities', 0.0000, 'CURRENT_LIABILITIES', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(17, 16, NULL, 'Other Current Liabilities', 'Child of Equities & Liabilities', 0.0000, 'OTHER_CURRENT_LIABILITIES', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(18, 16, NULL, 'Sundry Creditors', 'Child of Equities & Liabilities', 0.0000, 'SUNDRY_CREDITORS', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(19, 16, NULL, 'Outward Duties & Taxes', 'Child of Equities & Liabilities', 0.0000, 'OUTWARD_DUTIES_AND_TAXES', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(20, 19, NULL, 'Output Tax', 'Child of Outward Duties & Taxes', 0.0000, 'OUTPUT_TAX', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(21, 0, NULL, 'Expenses', '', 0.0000, 'EXPENSES', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(22, 21, NULL, 'Purchase Accounts', '', 0.0000, 'PURCHASE_ACCOUNTS', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(23, 21, NULL, 'Direct Expenses', '', 0.0000, 'DIRECT_EXPENSES', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0),
(24, 21, NULL, 'Indirect Expenses', '', 0.0000, 'INDIRECT_EXPENSES', NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31', 0);

-- --------------------------------------------------------

--
-- Table structure for table `account_transactions`
--

DROP TABLE IF EXISTS `account_transactions`;
CREATE TABLE IF NOT EXISTS `account_transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `transaction_date` date NOT NULL,
  `transaction_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` bigint UNSIGNED NOT NULL,
  `account_id` bigint UNSIGNED DEFAULT NULL,
  `debit_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `credit_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `account_transactions_transaction_type_transaction_id_index` (`transaction_type`,`transaction_id`),
  KEY `account_transactions_account_id_foreign` (`account_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `app_settings`
--

DROP TABLE IF EXISTS `app_settings`;
CREATE TABLE IF NOT EXISTS `app_settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `application_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `footer_text` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `colored_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `light_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_sms_api` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `fevicon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_id` bigint UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `app_settings_language_id_foreign` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `app_settings`
--

INSERT INTO `app_settings` (`id`, `application_name`, `footer_text`, `colored_logo`, `light_logo`, `active_sms_api`, `created_at`, `updated_at`, `fevicon`, `language_id`) VALUES
(1, 'আবিদ ট্রেডার্স', 'Copyright©ProjuktiSheba-2025', '691347cb0b84e.png', NULL, NULL, '2025-11-03 09:02:31', '2025-11-11 19:27:23', '691347cb0aa1c.png', 4);

-- --------------------------------------------------------

--
-- Table structure for table `bank_adjustments`
--

DROP TABLE IF EXISTS `bank_adjustments`;
CREATE TABLE IF NOT EXISTS `bank_adjustments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `adjustment_date` date NOT NULL,
  `adjustment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_type_id` (`payment_type_id`),
  KEY `created_by` (`created_by`),
  KEY `updated_by` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

DROP TABLE IF EXISTS `brands`;
CREATE TABLE IF NOT EXISTS `brands` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `brands_created_by_foreign` (`created_by`),
  KEY `brands_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carriers`
--

DROP TABLE IF EXISTS `carriers`;
CREATE TABLE IF NOT EXISTS `carriers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carriers_created_by_foreign` (`created_by`),
  KEY `carriers_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cash_adjustments`
--

DROP TABLE IF EXISTS `cash_adjustments`;
CREATE TABLE IF NOT EXISTS `cash_adjustments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `adjustment_date` date NOT NULL,
  `adjustment_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_type_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cash_adjustments_payment_type_id_foreign` (`payment_type_id`),
  KEY `cash_adjustments_created_by_foreign` (`created_by`),
  KEY `cash_adjustments_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cheque_transactions`
--

DROP TABLE IF EXISTS `cheque_transactions`;
CREATE TABLE IF NOT EXISTS `cheque_transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `transaction_date` date NOT NULL,
  `transfer_date` date DEFAULT NULL,
  `cheque_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_transaction_id` bigint UNSIGNED NOT NULL,
  `payment_type_id` bigint UNSIGNED NOT NULL,
  `transfer_to_payment_type_id` bigint UNSIGNED DEFAULT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cheque_transactions_payment_transaction_id_foreign` (`payment_transaction_id`),
  KEY `cheque_transactions_payment_type_id_foreign` (`payment_type_id`),
  KEY `cheque_transactions_transfer_to_payment_type_id_foreign` (`transfer_to_payment_type_id`),
  KEY `cheque_transactions_created_by_foreign` (`created_by`),
  KEY `cheque_transactions_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
CREATE TABLE IF NOT EXISTS `company` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `state_id` bigint UNSIGNED DEFAULT NULL,
  `bank_details` text COLLATE utf8mb4_unicode_ci,
  `tax_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `colored_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `light_logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `signature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active_sms_api` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_precision` int NOT NULL DEFAULT '2',
  `quantity_precision` int NOT NULL DEFAULT '2',
  `show_hsn` tinyint(1) NOT NULL DEFAULT '1',
  `show_sku` int NOT NULL DEFAULT '1',
  `show_mrp` int NOT NULL DEFAULT '1',
  `restrict_to_sell_above_mrp` tinyint(1) NOT NULL DEFAULT '0',
  `restrict_to_sell_below_msp` tinyint(1) NOT NULL DEFAULT '0',
  `auto_update_sale_price` tinyint(1) NOT NULL DEFAULT '0',
  `auto_update_purchase_price` tinyint(1) NOT NULL DEFAULT '0',
  `auto_update_average_purchase_price` tinyint(1) NOT NULL DEFAULT '0',
  `enable_serial_tracking` int NOT NULL DEFAULT '1',
  `enable_batch_tracking` int NOT NULL DEFAULT '2',
  `is_batch_compulsory` tinyint(1) NOT NULL DEFAULT '0',
  `enable_mfg_date` int NOT NULL DEFAULT '1',
  `enable_exp_date` int NOT NULL DEFAULT '1',
  `enable_model` int NOT NULL DEFAULT '0',
  `enable_color` int NOT NULL DEFAULT '0',
  `enable_size` int NOT NULL DEFAULT '0',
  `show_tax_summary` int NOT NULL DEFAULT '1',
  `tax_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'tax',
  `show_signature_on_invoice` int NOT NULL DEFAULT '1',
  `show_brand_on_invoice` tinyint(1) NOT NULL DEFAULT '1',
  `show_tax_number_on_invoice` tinyint(1) NOT NULL DEFAULT '1',
  `show_terms_and_conditions_on_invoice` int NOT NULL DEFAULT '1',
  `terms_and_conditions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_format` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_format` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_enable_crm` tinyint(1) NOT NULL DEFAULT '0',
  `is_enable_carrier` tinyint(1) NOT NULL DEFAULT '1',
  `is_enable_carrier_charge` tinyint(1) NOT NULL DEFAULT '1',
  `show_party_due_payment` tinyint(1) NOT NULL DEFAULT '1',
  `show_discount` tinyint(1) NOT NULL DEFAULT '1',
  `allow_negative_stock_billing` tinyint(1) NOT NULL DEFAULT '1',
  `is_enable_secondary_currency` tinyint(1) NOT NULL DEFAULT '1',
  `is_item_name_unique` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `company_state_id_foreign` (`state_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `mobile`, `email`, `address`, `state_id`, `bank_details`, `tax_number`, `colored_logo`, `light_logo`, `signature`, `language_code`, `language_name`, `active_sms_api`, `number_precision`, `quantity_precision`, `show_hsn`, `show_sku`, `show_mrp`, `restrict_to_sell_above_mrp`, `restrict_to_sell_below_msp`, `auto_update_sale_price`, `auto_update_purchase_price`, `auto_update_average_purchase_price`, `enable_serial_tracking`, `enable_batch_tracking`, `is_batch_compulsory`, `enable_mfg_date`, `enable_exp_date`, `enable_model`, `enable_color`, `enable_size`, `show_tax_summary`, `tax_type`, `show_signature_on_invoice`, `show_brand_on_invoice`, `show_tax_number_on_invoice`, `show_terms_and_conditions_on_invoice`, `terms_and_conditions`, `created_at`, `updated_at`, `timezone`, `date_format`, `time_format`, `is_enable_crm`, `is_enable_carrier`, `is_enable_carrier_charge`, `show_party_due_payment`, `show_discount`, `allow_negative_stock_billing`, `is_enable_secondary_currency`, `is_item_name_unique`) VALUES
(1, 'আবিদ ট্রেডার্স', '01612921216, 01911106742', 'msh.shaddam93@gmail.com', 'বারহাট্টা রোড, নেত্রকোনা।', NULL, NULL, NULL, '691f246b3b7cb.png', NULL, NULL, NULL, NULL, NULL, 2, 0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'no-tax', 0, 0, 0, 1, 'বিক্রিত মাল ফেরত নেওয়া হয় না।', '2025-11-03 09:02:31', '2025-11-29 19:36:39', 'Asia/Dhaka', 'd-m-Y', '12', 0, 0, 0, 1, 0, 0, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

DROP TABLE IF EXISTS `currencies`;
CREATE TABLE IF NOT EXISTS `currencies` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange_rate` decimal(15,6) NOT NULL DEFAULT '1.000000',
  `is_company_currency` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `currencies_name_unique` (`name`),
  UNIQUE KEY `currencies_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `name`, `symbol`, `code`, `exchange_rate`, `is_company_currency`, `created_at`, `updated_at`) VALUES
(1, 'Bangladeshi Taka', '৳', 'BDT', 1.000000, 1, '2025-11-03 09:02:32', '2025-11-03 15:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `prefix_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `customers_email_unique` (`email`),
  KEY `customers_created_by_foreign` (`created_by`),
  KEY `customers_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `domains`
--

DROP TABLE IF EXISTS `domains`;
CREATE TABLE IF NOT EXISTS `domains` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `domain` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tenant_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `domains_domain_unique` (`domain`),
  KEY `domains_tenant_id_foreign` (`tenant_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `email_templates`
--

DROP TABLE IF EXISTS `email_templates`;
CREATE TABLE IF NOT EXISTS `email_templates` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keys` text COLLATE utf8mb4_unicode_ci,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `email_templates`
--

INSERT INTO `email_templates` (`id`, `name`, `subject`, `content`, `keys`, `delete_flag`, `created_at`, `updated_at`) VALUES
(1, 'SALE INVOICE', 'Invoice #[Invoice Number] - [Customer Name]', 'Dear [Customer Name],\n\nPlease find attached the invoice for your recent sale.\n\nInvoice Details:\n\n   Invoice Number: [Invoice Number]\n   Sale Date: [Sale Date]\n   Due Date: [Due Date]\n   Total: [Total Amount]\n   Paid Amount: [Paid Amount]\n   Invoice Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n[Your Company Name]\n[Your Mobile Number]', '[Invoice Number]\n\n[Customer Name]\n\n[Sale Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(2, 'SALE ORDER', 'Sale Order #[Order Number] - [Customer Name]', 'Dear [Customer Name],\n\nPlease find attached the details of sale order.\n\nOrder Details:\n\n    Order Number: [Order Number]\n\n    Order Date: [Order Date]\n\n    Due Date: [Due Date]\n\n    Total: [Total Amount]\n\n    Paid Amount: [Paid Amount]\n\n    Invoice Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n\n[Your Company Name]\n\n[Your Mobile Number]', '[Order Number]\n\n[Customer Name]\n\n[Order Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(3, 'SALE RETURN', 'Sale Return/Credit Note #[Return Number] - [Customer Name]', 'Dear [Customer Name],\n\nPlease find attached the details of sale return/credit note.\n\nSale Return Details:\n\n    Return Number: [Return Number]\n\n    Return Date: [Return Date]\n\n    Total: [Total Amount]\n\n    Return Amount: [Return Amount]\n\n    Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n\n[Your Company Name]\n\n[Your Mobile Number]', '[Return Number]\n\n[Customer Name]\n\n[Return Date]\n\n[Total Amount]\n\n[Return Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(4, 'PURCHASE BILL', 'Purchase Bill #[Bill Number] - [Supplier Name]', 'Dear [Supplier Name],\n\nPlease find attached the bill for your recent purchase.\n\nBill Details:\n\n   Bill Number: [Bill Number]\n   Purchase Date: [Purchase Date]\n   Total: [Total Amount]\n   Paid Amount: [Paid Amount]\n   Bill Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n[Your Company Name]\n[Your Mobile Number]', '[Bill Number]\n\n[Supplier Name]\n\n[Purchase Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(5, 'PURCHASE ORDER', 'Purchase Order #[Order Number] - [Supplier Name]', 'Dear [Supplier Name],\n\nPlease find attached the details of purchase order.\n\nPurchase Order Details:\n\n    Order Number: [Order Number]\n\n    Order Date: [Order Date]\n\n    Due Date: [Due Date]\n\n    Total: [Total Amount]\n\n    Paid Amount: [Paid Amount]\n\n    Bill Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n\n[Your Company Name]\n\n[Your Mobile Number]', '[Order Number]\n\n[Customer Name]\n\n[Order Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(6, 'PURCHASE RETURN', 'Purchase Return/Debit Note #[Return Number] - [Supplier Name]', 'Dear [Supplier Name],\n\nPlease find attached the details of purchase return/credit note.\n\nPurchase Return Details:\n\n    Return Number: [Return Number]\n\n    Return Date: [Return Date]\n\n    Total: [Total Amount]\n\n    Return Amount: [Return Amount]\n\n    Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n\n[Your Company Name]\n\n[Your Mobile Number]', '[Return Number]\n\n[Supplier Name]\n\n[Return Date]\n\n[Total Amount]\n\n[Return Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(7, 'QUOTATION', 'Quotation #[Quotation Number] - [Customer Name]', 'Dear [Customer Name],\n\nPlease find attached the details of Quotation.\n\nQuotation Details:\n\n    Quotation Number: [Quotation Number]\n\n    Quotation Date: [Quotation Date]\n\n    Total: [Total Amount]\n\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n\n[Your Company Name]\n\n[Your Mobile Number]', '[Quotation Number]\n\n[Customer Name]\n\n[Quotation Date]\n\n[Total Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-03 09:02:32', '2025-11-03 09:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

DROP TABLE IF EXISTS `expenses`;
CREATE TABLE IF NOT EXISTS `expenses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `expense_date` date NOT NULL,
  `prefix_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense_category_id` bigint UNSIGNED NOT NULL,
  `expense_subcategory_id` bigint UNSIGNED DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `round_off` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `grand_total` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `paid_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expenses_expense_category_id_foreign` (`expense_category_id`),
  KEY `expenses_created_by_foreign` (`created_by`),
  KEY `expenses_updated_by_foreign` (`updated_by`),
  KEY `expenses_expense_subcategory_id_foreign` (`expense_subcategory_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

DROP TABLE IF EXISTS `expense_categories`;
CREATE TABLE IF NOT EXISTS `expense_categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `account_group_id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expense_categories_account_group_id_foreign` (`account_group_id`),
  KEY `expense_categories_created_by_foreign` (`created_by`),
  KEY `expense_categories_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_items`
--

DROP TABLE IF EXISTS `expense_items`;
CREATE TABLE IF NOT EXISTS `expense_items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `expense_id` bigint UNSIGNED NOT NULL,
  `expense_item_master_id` bigint UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `unit_price` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'original price(without tax)',
  `quantity` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `tax_id` bigint UNSIGNED DEFAULT NULL,
  `tax_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inclusive',
  `tax_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'fixed or percentage',
  `discount_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expense_items_expense_id_foreign` (`expense_id`),
  KEY `expense_items_expense_item_master_id_foreign` (`expense_item_master_id`),
  KEY `expense_items_tax_id_foreign` (`tax_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_item_master`
--

DROP TABLE IF EXISTS `expense_item_master`;
CREATE TABLE IF NOT EXISTS `expense_item_master` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `unit_price` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `tax_id` bigint UNSIGNED DEFAULT NULL,
  `tax_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inclusive',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expense_item_master_tax_id_foreign` (`tax_id`),
  KEY `expense_item_master_created_by_foreign` (`created_by`),
  KEY `expense_item_master_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_subcategories`
--

DROP TABLE IF EXISTS `expense_subcategories`;
CREATE TABLE IF NOT EXISTS `expense_subcategories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `expense_subcategories_created_by_foreign` (`created_by`),
  KEY `expense_subcategories_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

DROP TABLE IF EXISTS `items`;
CREATE TABLE IF NOT EXISTS `items` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `prefix_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `hsn` text COLLATE utf8mb4_unicode_ci,
  `sku` text COLLATE utf8mb4_unicode_ci,
  `is_service` tinyint(1) NOT NULL DEFAULT '0',
  `item_category_id` bigint UNSIGNED DEFAULT NULL,
  `brand_id` bigint UNSIGNED DEFAULT NULL,
  `base_unit_id` bigint UNSIGNED DEFAULT NULL,
  `secondary_unit_id` bigint UNSIGNED DEFAULT NULL,
  `conversion_rate` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `sale_price` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `is_sale_price_with_tax` tinyint(1) NOT NULL,
  `sale_price_discount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `sale_price_discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wholesale_price` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `is_wholesale_price_with_tax` tinyint(1) NOT NULL DEFAULT '0',
  `purchase_price` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `is_purchase_price_with_tax` tinyint(1) NOT NULL,
  `profit_margin` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'In % Percentage',
  `mrp` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `msp` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `tax_id` bigint UNSIGNED DEFAULT NULL,
  `tracking_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `min_stock` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `current_stock` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `items_item_category_id_foreign` (`item_category_id`),
  KEY `items_base_unit_id_foreign` (`base_unit_id`),
  KEY `items_secondary_unit_id_foreign` (`secondary_unit_id`),
  KEY `items_tax_id_foreign` (`tax_id`),
  KEY `items_created_by_foreign` (`created_by`),
  KEY `items_updated_by_foreign` (`updated_by`),
  KEY `items_brand_id_foreign` (`brand_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_batch_masters`
--

DROP TABLE IF EXISTS `item_batch_masters`;
CREATE TABLE IF NOT EXISTS `item_batch_masters` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` bigint UNSIGNED NOT NULL,
  `batch_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mfg_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `model_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mrp` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_batch_masters_item_id_foreign` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_batch_quantities`
--

DROP TABLE IF EXISTS `item_batch_quantities`;
CREATE TABLE IF NOT EXISTS `item_batch_quantities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` bigint UNSIGNED NOT NULL,
  `warehouse_id` bigint UNSIGNED NOT NULL,
  `item_batch_master_id` bigint UNSIGNED NOT NULL,
  `quantity` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_batch_quantities_item_id_foreign` (`item_id`),
  KEY `item_batch_quantities_warehouse_id_foreign` (`warehouse_id`),
  KEY `item_batch_quantities_item_batch_master_id_foreign` (`item_batch_master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_batch_transactions`
--

DROP TABLE IF EXISTS `item_batch_transactions`;
CREATE TABLE IF NOT EXISTS `item_batch_transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `unique_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_transaction_id` bigint UNSIGNED NOT NULL,
  `item_batch_master_id` bigint UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `quantity` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_batch_transactions_item_transaction_id_foreign` (`item_transaction_id`),
  KEY `item_batch_transactions_item_batch_master_id_foreign` (`item_batch_master_id`),
  KEY `item_batch_transactions_warehouse_id_foreign` (`warehouse_id`),
  KEY `item_batch_transactions_item_id_foreign` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_categories`
--

DROP TABLE IF EXISTS `item_categories`;
CREATE TABLE IF NOT EXISTS `item_categories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deletable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_categories_created_by_foreign` (`created_by`),
  KEY `item_categories_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_general_quantities`
--

DROP TABLE IF EXISTS `item_general_quantities`;
CREATE TABLE IF NOT EXISTS `item_general_quantities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` bigint UNSIGNED NOT NULL,
  `warehouse_id` bigint UNSIGNED NOT NULL,
  `quantity` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_general_quantities_item_id_foreign` (`item_id`),
  KEY `item_general_quantities_warehouse_id_foreign` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_serial_masters`
--

DROP TABLE IF EXISTS `item_serial_masters`;
CREATE TABLE IF NOT EXISTS `item_serial_masters` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` bigint UNSIGNED NOT NULL,
  `serial_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_serial_masters_item_id_foreign` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_serial_quantities`
--

DROP TABLE IF EXISTS `item_serial_quantities`;
CREATE TABLE IF NOT EXISTS `item_serial_quantities` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `item_id` bigint UNSIGNED NOT NULL,
  `warehouse_id` bigint UNSIGNED NOT NULL,
  `item_serial_master_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_serial_quantities_item_id_foreign` (`item_id`),
  KEY `item_serial_quantities_warehouse_id_foreign` (`warehouse_id`),
  KEY `item_serial_quantities_item_serial_master_id_foreign` (`item_serial_master_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_serial_transactions`
--

DROP TABLE IF EXISTS `item_serial_transactions`;
CREATE TABLE IF NOT EXISTS `item_serial_transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `unique_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_transaction_id` bigint UNSIGNED NOT NULL,
  `item_serial_master_id` bigint UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_serial_transactions_item_transaction_id_foreign` (`item_transaction_id`),
  KEY `item_serial_transactions_item_serial_master_id_foreign` (`item_serial_master_id`),
  KEY `item_serial_transactions_warehouse_id_foreign` (`warehouse_id`),
  KEY `item_serial_transactions_item_id_foreign` (`item_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_stock_transfers`
--

DROP TABLE IF EXISTS `item_stock_transfers`;
CREATE TABLE IF NOT EXISTS `item_stock_transfers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `stock_transfer_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `from_warehouse_id` bigint UNSIGNED NOT NULL,
  `to_warehouse_id` bigint UNSIGNED NOT NULL,
  `from_item_transaction_id` bigint UNSIGNED NOT NULL,
  `to_item_transaction_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_stock_transfers_stock_transfer_id_foreign` (`stock_transfer_id`),
  KEY `item_stock_transfers_item_id_foreign` (`item_id`),
  KEY `item_stock_transfers_from_warehouse_id_foreign` (`from_warehouse_id`),
  KEY `item_stock_transfers_to_warehouse_id_foreign` (`to_warehouse_id`),
  KEY `item_stock_transfers_from_item_transaction_id_foreign` (`from_item_transaction_id`),
  KEY `item_stock_transfers_to_item_transaction_id_foreign` (`to_item_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `item_transactions`
--

DROP TABLE IF EXISTS `item_transactions`;
CREATE TABLE IF NOT EXISTS `item_transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `transaction_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` bigint UNSIGNED NOT NULL,
  `unique_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_date` date NOT NULL,
  `warehouse_id` bigint UNSIGNED NOT NULL,
  `item_id` bigint UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tracking_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `unit_id` bigint UNSIGNED NOT NULL,
  `mrp` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `quantity` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `unit_price` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `discount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `discount_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'percentage',
  `tax_id` bigint UNSIGNED DEFAULT NULL,
  `tax_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inclusive',
  `tax_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `charge_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `charge_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `charge_tax_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(20,4) NOT NULL DEFAULT '0.0000' COMMENT 'Including (Discount) - (with or without Tax) ',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `item_transactions_transaction_type_transaction_id_index` (`transaction_type`,`transaction_id`),
  KEY `item_transactions_warehouse_id_foreign` (`warehouse_id`),
  KEY `item_transactions_item_id_foreign` (`item_id`),
  KEY `item_transactions_unit_id_foreign` (`unit_id`),
  KEY `item_transactions_tax_id_foreign` (`tax_id`),
  KEY `item_transactions_created_by_foreign` (`created_by`),
  KEY `item_transactions_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint UNSIGNED NOT NULL,
  `reserved_at` int UNSIGNED DEFAULT NULL,
  `available_at` int UNSIGNED NOT NULL,
  `created_at` int UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
CREATE TABLE IF NOT EXISTS `languages` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `direction` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `emoji` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `languages_code_unique` (`code`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `code`, `name`, `direction`, `emoji`, `status`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English', 'ltr', 'flag-icon-us', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(2, 'hi', 'Hindi', 'ltr', 'flag-icon-in', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(3, 'ar', 'Arabic', 'rtl', 'flag-icon-ae', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(4, 'bn', 'Bangla', 'ltr', 'flag-icon-bd', 1, '2025-11-09 14:53:58', '2025-11-09 18:33:32');

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_actionscheduler_actions`
--

DROP TABLE IF EXISTS `lladlqq4_actionscheduler_actions`;
CREATE TABLE IF NOT EXISTS `lladlqq4_actionscheduler_actions` (
  `action_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `hook` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT NULL,
  `scheduled_date_local` datetime DEFAULT NULL,
  `priority` tinyint UNSIGNED NOT NULL DEFAULT '10',
  `args` varchar(191) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `schedule` longtext COLLATE utf8mb4_unicode_520_ci,
  `group_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `attempts` int NOT NULL DEFAULT '0',
  `last_attempt_gmt` datetime DEFAULT NULL,
  `last_attempt_local` datetime DEFAULT NULL,
  `claim_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  PRIMARY KEY (`action_id`),
  KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  KEY `args` (`args`),
  KEY `group_id` (`group_id`),
  KEY `last_attempt_gmt` (`last_attempt_gmt`),
  KEY `claim_id_status_priority_scheduled_date_gmt` (`claim_id`,`status`,`priority`,`scheduled_date_gmt`),
  KEY `status_last_attempt_gmt` (`status`,`last_attempt_gmt`),
  KEY `status_claim_id` (`status`,`claim_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lladlqq4_actionscheduler_actions`
--

INSERT INTO `lladlqq4_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `priority`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(11, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-12-26 16:02:10', '2025-12-26 16:02:10', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1766764930;s:18:\"\0*\0first_timestamp\";i:1766764930;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1766764930;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-12-26 16:02:10', '2025-12-26 16:02:10', 1, NULL),
(12, 'action_scheduler/migration_hook', 'complete', '2025-12-26 16:03:10', '2025-12-26 16:03:10', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1766764990;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1766764990;}', 2, 1, '2025-12-26 16:03:18', '2025-12-26 16:03:18', 4, NULL),
(13, 'action_scheduler_run_recurring_actions_schedule_hook', 'pending', '2025-12-27 16:02:10', '2025-12-27 16:02:10', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1766851330;s:18:\"\0*\0first_timestamp\";i:1766764930;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1766851330;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 0, NULL, NULL, 0, NULL),
(14, 'wpforms_process_forms_locator_scan', 'complete', '2025-12-26 16:03:19', '2025-12-26 16:03:19', 10, '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1766764999;s:18:\"\0*\0first_timestamp\";i:1766764999;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1766764999;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2025-12-26 16:03:19', '2025-12-26 16:03:19', 6, NULL),
(15, 'wpforms_process_purge_spam', 'complete', '2025-12-26 16:03:19', '2025-12-26 16:03:19', 10, '{\"tasks_meta_id\":2}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1766764999;s:18:\"\0*\0first_timestamp\";i:1766764999;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1766764999;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 1, '2025-12-26 16:03:19', '2025-12-26 16:03:19', 6, NULL),
(16, 'wpforms_email_summaries_fetch_info_blocks', 'complete', '2025-12-23 11:29:13', '2025-12-23 11:29:13', 10, '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1766489353;s:18:\"\0*\0first_timestamp\";i:1766489353;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1766489353;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 1, '2025-12-26 16:03:19', '2025-12-26 16:03:19', 6, NULL),
(17, 'wpforms_email_summaries_fetch_info_blocks', 'pending', '2026-01-02 16:03:19', '2026-01-02 16:03:19', 10, '{\"tasks_meta_id\":null}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1767369799;s:18:\"\0*\0first_timestamp\";i:1766489353;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1767369799;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 3, 0, NULL, NULL, 0, NULL),
(18, 'wpforms_process_forms_locator_scan', 'pending', '2025-12-27 16:03:19', '2025-12-27 16:03:19', 10, '{\"tasks_meta_id\":1}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1766851399;s:18:\"\0*\0first_timestamp\";i:1766764999;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1766851399;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 0, NULL, NULL, 0, NULL),
(19, 'wpforms_process_purge_spam', 'pending', '2025-12-27 16:03:19', '2025-12-27 16:03:19', 10, '{\"tasks_meta_id\":2}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1766851399;s:18:\"\0*\0first_timestamp\";i:1766764999;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1766851399;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 3, 0, NULL, NULL, 0, NULL),
(20, 'wpforms_admin_notifications_update', 'complete', '2025-12-26 16:04:19', '2025-12-26 16:04:19', 10, '{\"tasks_meta_id\":3}', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 3, 1, '2025-12-26 16:04:20', '2025-12-26 16:04:20', 9, NULL),
(21, 'action_scheduler/migration_hook', 'complete', '2025-12-26 17:48:35', '2025-12-26 17:48:35', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1766771315;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1766771315;}', 2, 1, '2025-12-26 17:49:03', '2025-12-26 17:49:03', 103, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_actionscheduler_claims`
--

DROP TABLE IF EXISTS `lladlqq4_actionscheduler_claims`;
CREATE TABLE IF NOT EXISTS `lladlqq4_actionscheduler_claims` (
  `claim_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `date_created_gmt` datetime DEFAULT NULL,
  PRIMARY KEY (`claim_id`),
  KEY `date_created_gmt` (`date_created_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=144 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_actionscheduler_groups`
--

DROP TABLE IF EXISTS `lladlqq4_actionscheduler_groups`;
CREATE TABLE IF NOT EXISTS `lladlqq4_actionscheduler_groups` (
  `group_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `slug` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`group_id`),
  KEY `slug` (`slug`(191))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lladlqq4_actionscheduler_groups`
--

INSERT INTO `lladlqq4_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'ActionScheduler'),
(2, 'action-scheduler-migration'),
(3, 'wpforms');

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_actionscheduler_logs`
--

DROP TABLE IF EXISTS `lladlqq4_actionscheduler_logs`;
CREATE TABLE IF NOT EXISTS `lladlqq4_actionscheduler_logs` (
  `log_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `action_id` bigint UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `log_date_gmt` datetime DEFAULT NULL,
  `log_date_local` datetime DEFAULT NULL,
  PRIMARY KEY (`log_id`),
  KEY `action_id` (`action_id`),
  KEY `log_date_gmt` (`log_date_gmt`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lladlqq4_actionscheduler_logs`
--

INSERT INTO `lladlqq4_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 11, 'action created', '2025-12-26 16:02:10', '2025-12-26 16:02:10'),
(2, 12, 'action created', '2025-12-26 16:02:10', '2025-12-26 16:02:10'),
(3, 11, 'action started via WP Cron', '2025-12-26 16:02:10', '2025-12-26 16:02:10'),
(4, 11, 'action complete via WP Cron', '2025-12-26 16:02:10', '2025-12-26 16:02:10'),
(5, 13, 'action created', '2025-12-26 16:02:10', '2025-12-26 16:02:10'),
(6, 12, 'action started via Async Request', '2025-12-26 16:03:18', '2025-12-26 16:03:18'),
(7, 12, 'action complete via Async Request', '2025-12-26 16:03:18', '2025-12-26 16:03:18'),
(8, 14, 'action created', '2025-12-26 16:03:19', '2025-12-26 16:03:19'),
(9, 15, 'action created', '2025-12-26 16:03:19', '2025-12-26 16:03:19'),
(10, 16, 'action created', '2025-12-26 16:03:19', '2025-12-26 16:03:19'),
(11, 16, 'action started via WP Cron', '2025-12-26 16:03:19', '2025-12-26 16:03:19'),
(12, 16, 'action complete via WP Cron', '2025-12-26 16:03:19', '2025-12-26 16:03:19'),
(13, 17, 'action created', '2025-12-26 16:03:19', '2025-12-26 16:03:19'),
(14, 14, 'action started via WP Cron', '2025-12-26 16:03:19', '2025-12-26 16:03:19'),
(15, 14, 'action complete via WP Cron', '2025-12-26 16:03:19', '2025-12-26 16:03:19'),
(16, 18, 'action created', '2025-12-26 16:03:19', '2025-12-26 16:03:19'),
(17, 15, 'action started via WP Cron', '2025-12-26 16:03:19', '2025-12-26 16:03:19'),
(18, 15, 'action complete via WP Cron', '2025-12-26 16:03:19', '2025-12-26 16:03:19'),
(19, 19, 'action created', '2025-12-26 16:03:19', '2025-12-26 16:03:19'),
(20, 20, 'action created', '2025-12-26 16:04:19', '2025-12-26 16:04:19'),
(21, 20, 'action started via Async Request', '2025-12-26 16:04:20', '2025-12-26 16:04:20'),
(22, 20, 'action complete via Async Request', '2025-12-26 16:04:20', '2025-12-26 16:04:20'),
(23, 21, 'action created', '2025-12-26 17:47:35', '2025-12-26 17:47:35'),
(24, 21, 'action started via Async Request', '2025-12-26 17:49:03', '2025-12-26 17:49:03'),
(25, 21, 'action complete via Async Request', '2025-12-26 17:49:03', '2025-12-26 17:49:03');

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_commentmeta`
--

DROP TABLE IF EXISTS `lladlqq4_commentmeta`;
CREATE TABLE IF NOT EXISTS `lladlqq4_commentmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `comment_id` (`comment_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_comments`
--

DROP TABLE IF EXISTS `lladlqq4_comments`;
CREATE TABLE IF NOT EXISTS `lladlqq4_comments` (
  `comment_ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `comment_post_ID` bigint UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime DEFAULT NULL,
  `comment_date_gmt` datetime DEFAULT NULL,
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`comment_ID`),
  KEY `comment_post_ID` (`comment_post_ID`),
  KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  KEY `comment_date_gmt` (`comment_date_gmt`),
  KEY `comment_parent` (`comment_parent`),
  KEY `comment_author_email` (`comment_author_email`(10))
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lladlqq4_comments`
--

INSERT INTO `lladlqq4_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2025-12-26 04:47:04', '2025-12-26 04:47:04', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_e_events`
--

DROP TABLE IF EXISTS `lladlqq4_e_events`;
CREATE TABLE IF NOT EXISTS `lladlqq4_e_events` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `event_data` text COLLATE utf8mb4_unicode_520_ci,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `created_at_index` (`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lladlqq4_e_events`
--

INSERT INTO `lladlqq4_e_events` (`id`, `event_data`, `created_at`) VALUES
(1, '{\"event\":\"modal load\",\"version\":\"\",\"details\":\"{\\\"placement\\\":\\\"Onboarding wizard\\\",\\\"step\\\":\\\"account\\\",\\\"user_state\\\":\\\"anon\\\"}\",\"ts\":\"2025-12-26T18:50:55.624-06:00\"}', '2025-12-26 18:50:55'),
(2, '{\"event\":\"modal load\",\"version\":\"\",\"details\":\"{\\\"placement\\\":\\\"Onboarding wizard\\\",\\\"step\\\":\\\"account\\\",\\\"user_state\\\":\\\"anon\\\"}\",\"ts\":\"2025-12-26T18:50:55.630-06:00\"}', '2025-12-26 18:50:55');

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_links`
--

DROP TABLE IF EXISTS `lladlqq4_links`;
CREATE TABLE IF NOT EXISTS `lladlqq4_links` (
  `link_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int NOT NULL DEFAULT '0',
  `link_updated` datetime DEFAULT NULL,
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`link_id`),
  KEY `link_visible` (`link_visible`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_options`
--

DROP TABLE IF EXISTS `lladlqq4_options`;
CREATE TABLE IF NOT EXISTS `lladlqq4_options` (
  `option_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes',
  PRIMARY KEY (`option_id`),
  UNIQUE KEY `option_name` (`option_name`),
  KEY `autoload` (`autoload`)
) ENGINE=InnoDB AUTO_INCREMENT=1359 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lladlqq4_options`
--

INSERT INTO `lladlqq4_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:14:{i:1766828890;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1766832424;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1766839910;a:1:{s:28:\"elementor/tracker/send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1766854089;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1766859424;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1766861224;a:1:{s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1766897224;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1766897289;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1766897290;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1766966400;a:2:{s:28:\"wpforms_email_summaries_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}s:33:\"wpforms_weekly_entries_count_cron\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1767001562;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1767329313;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1767415624;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'https://azharulislam.asrmart.com', 'on'),
(3, 'home', 'https://azharulislam.asrmart.com', 'on'),
(4, 'blogname', 'Azharul Islam', 'on'),
(5, 'blogdescription', '', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'admin@azharulislam.asrmart.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:112:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:46:\"e-floating-buttons/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:56:\"e-floating-buttons/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:76:\"e-floating-buttons/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"e-floating-buttons/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:71:\"e-floating-buttons/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:52:\"e-floating-buttons/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:35:\"e-floating-buttons/([^/]+)/embed/?$\";s:51:\"index.php?e-floating-buttons=$matches[1]&embed=true\";s:39:\"e-floating-buttons/([^/]+)/trackback/?$\";s:45:\"index.php?e-floating-buttons=$matches[1]&tb=1\";s:47:\"e-floating-buttons/([^/]+)/page/?([0-9]{1,})/?$\";s:58:\"index.php?e-floating-buttons=$matches[1]&paged=$matches[2]\";s:54:\"e-floating-buttons/([^/]+)/comment-page-([0-9]{1,})/?$\";s:58:\"index.php?e-floating-buttons=$matches[1]&cpage=$matches[2]\";s:43:\"e-floating-buttons/([^/]+)(?:/([0-9]+))?/?$\";s:57:\"index.php?e-floating-buttons=$matches[1]&page=$matches[2]\";s:35:\"e-floating-buttons/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"e-floating-buttons/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"e-floating-buttons/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"e-floating-buttons/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"e-floating-buttons/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"e-floating-buttons/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:12:\"robots\\.txt$\";s:18:\"index.php?robots=1\";s:13:\"favicon\\.ico$\";s:19:\"index.php?favicon=1\";s:12:\"sitemap\\.xml\";s:23:\"index.php?sitemap=index\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=6&cpage=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:4:{i:0;s:37:\"royal-elementor-addons/wpr-addons.php\";i:1;s:23:\"elementor/elementor.php\";i:2;s:65:\"essential-addons-for-elementor-lite/essential_adons_elementor.php\";i:4;s:24:\"wpforms-lite/wpforms.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'astra', 'on'),
(42, 'stylesheet', 'astra', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60717', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'page', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:1:{s:23:\"elementor/elementor.php\";a:2:{i:0;s:21:\"Elementor\\Maintenance\";i:1;s:9:\"uninstall\";}}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '6', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '0', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1782276424', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'wp_notes_notify', '1', 'on'),
(102, 'initial_db_version', '60717', 'on'),
(103, 'llAdlqQ4_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(104, 'fresh_site', '0', 'off'),
(105, 'user_count', '1', 'off'),
(106, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(107, 'sidebars_widgets', 'a:9:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:15:\"footer-widget-1\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:15:\"footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-1\";a:0:{}s:24:\"advanced-footer-widget-2\";a:0:{}s:24:\"advanced-footer-widget-3\";a:0:{}s:24:\"advanced-footer-widget-4\";a:0:{}s:13:\"array_version\";i:3;}', 'auto'),
(108, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(122, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:3:\"6.9\";s:5:\"files\";a:584:{i:0;s:31:\"accordion-heading/style-rtl.css\";i:1;s:35:\"accordion-heading/style-rtl.min.css\";i:2;s:27:\"accordion-heading/style.css\";i:3;s:31:\"accordion-heading/style.min.css\";i:4;s:28:\"accordion-item/style-rtl.css\";i:5;s:32:\"accordion-item/style-rtl.min.css\";i:6;s:24:\"accordion-item/style.css\";i:7;s:28:\"accordion-item/style.min.css\";i:8;s:29:\"accordion-panel/style-rtl.css\";i:9;s:33:\"accordion-panel/style-rtl.min.css\";i:10;s:25:\"accordion-panel/style.css\";i:11;s:29:\"accordion-panel/style.min.css\";i:12;s:23:\"accordion/style-rtl.css\";i:13;s:27:\"accordion/style-rtl.min.css\";i:14;s:19:\"accordion/style.css\";i:15;s:23:\"accordion/style.min.css\";i:16;s:23:\"archives/editor-rtl.css\";i:17;s:27:\"archives/editor-rtl.min.css\";i:18;s:19:\"archives/editor.css\";i:19;s:23:\"archives/editor.min.css\";i:20;s:22:\"archives/style-rtl.css\";i:21;s:26:\"archives/style-rtl.min.css\";i:22;s:18:\"archives/style.css\";i:23;s:22:\"archives/style.min.css\";i:24;s:20:\"audio/editor-rtl.css\";i:25;s:24:\"audio/editor-rtl.min.css\";i:26;s:16:\"audio/editor.css\";i:27;s:20:\"audio/editor.min.css\";i:28;s:19:\"audio/style-rtl.css\";i:29;s:23:\"audio/style-rtl.min.css\";i:30;s:15:\"audio/style.css\";i:31;s:19:\"audio/style.min.css\";i:32;s:19:\"audio/theme-rtl.css\";i:33;s:23:\"audio/theme-rtl.min.css\";i:34;s:15:\"audio/theme.css\";i:35;s:19:\"audio/theme.min.css\";i:36;s:21:\"avatar/editor-rtl.css\";i:37;s:25:\"avatar/editor-rtl.min.css\";i:38;s:17:\"avatar/editor.css\";i:39;s:21:\"avatar/editor.min.css\";i:40;s:20:\"avatar/style-rtl.css\";i:41;s:24:\"avatar/style-rtl.min.css\";i:42;s:16:\"avatar/style.css\";i:43;s:20:\"avatar/style.min.css\";i:44;s:21:\"button/editor-rtl.css\";i:45;s:25:\"button/editor-rtl.min.css\";i:46;s:17:\"button/editor.css\";i:47;s:21:\"button/editor.min.css\";i:48;s:20:\"button/style-rtl.css\";i:49;s:24:\"button/style-rtl.min.css\";i:50;s:16:\"button/style.css\";i:51;s:20:\"button/style.min.css\";i:52;s:22:\"buttons/editor-rtl.css\";i:53;s:26:\"buttons/editor-rtl.min.css\";i:54;s:18:\"buttons/editor.css\";i:55;s:22:\"buttons/editor.min.css\";i:56;s:21:\"buttons/style-rtl.css\";i:57;s:25:\"buttons/style-rtl.min.css\";i:58;s:17:\"buttons/style.css\";i:59;s:21:\"buttons/style.min.css\";i:60;s:22:\"calendar/style-rtl.css\";i:61;s:26:\"calendar/style-rtl.min.css\";i:62;s:18:\"calendar/style.css\";i:63;s:22:\"calendar/style.min.css\";i:64;s:25:\"categories/editor-rtl.css\";i:65;s:29:\"categories/editor-rtl.min.css\";i:66;s:21:\"categories/editor.css\";i:67;s:25:\"categories/editor.min.css\";i:68;s:24:\"categories/style-rtl.css\";i:69;s:28:\"categories/style-rtl.min.css\";i:70;s:20:\"categories/style.css\";i:71;s:24:\"categories/style.min.css\";i:72;s:19:\"code/editor-rtl.css\";i:73;s:23:\"code/editor-rtl.min.css\";i:74;s:15:\"code/editor.css\";i:75;s:19:\"code/editor.min.css\";i:76;s:18:\"code/style-rtl.css\";i:77;s:22:\"code/style-rtl.min.css\";i:78;s:14:\"code/style.css\";i:79;s:18:\"code/style.min.css\";i:80;s:18:\"code/theme-rtl.css\";i:81;s:22:\"code/theme-rtl.min.css\";i:82;s:14:\"code/theme.css\";i:83;s:18:\"code/theme.min.css\";i:84;s:22:\"columns/editor-rtl.css\";i:85;s:26:\"columns/editor-rtl.min.css\";i:86;s:18:\"columns/editor.css\";i:87;s:22:\"columns/editor.min.css\";i:88;s:21:\"columns/style-rtl.css\";i:89;s:25:\"columns/style-rtl.min.css\";i:90;s:17:\"columns/style.css\";i:91;s:21:\"columns/style.min.css\";i:92;s:33:\"comment-author-name/style-rtl.css\";i:93;s:37:\"comment-author-name/style-rtl.min.css\";i:94;s:29:\"comment-author-name/style.css\";i:95;s:33:\"comment-author-name/style.min.css\";i:96;s:29:\"comment-content/style-rtl.css\";i:97;s:33:\"comment-content/style-rtl.min.css\";i:98;s:25:\"comment-content/style.css\";i:99;s:29:\"comment-content/style.min.css\";i:100;s:26:\"comment-date/style-rtl.css\";i:101;s:30:\"comment-date/style-rtl.min.css\";i:102;s:22:\"comment-date/style.css\";i:103;s:26:\"comment-date/style.min.css\";i:104;s:31:\"comment-edit-link/style-rtl.css\";i:105;s:35:\"comment-edit-link/style-rtl.min.css\";i:106;s:27:\"comment-edit-link/style.css\";i:107;s:31:\"comment-edit-link/style.min.css\";i:108;s:32:\"comment-reply-link/style-rtl.css\";i:109;s:36:\"comment-reply-link/style-rtl.min.css\";i:110;s:28:\"comment-reply-link/style.css\";i:111;s:32:\"comment-reply-link/style.min.css\";i:112;s:30:\"comment-template/style-rtl.css\";i:113;s:34:\"comment-template/style-rtl.min.css\";i:114;s:26:\"comment-template/style.css\";i:115;s:30:\"comment-template/style.min.css\";i:116;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:117;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:118;s:38:\"comments-pagination-numbers/editor.css\";i:119;s:42:\"comments-pagination-numbers/editor.min.css\";i:120;s:34:\"comments-pagination/editor-rtl.css\";i:121;s:38:\"comments-pagination/editor-rtl.min.css\";i:122;s:30:\"comments-pagination/editor.css\";i:123;s:34:\"comments-pagination/editor.min.css\";i:124;s:33:\"comments-pagination/style-rtl.css\";i:125;s:37:\"comments-pagination/style-rtl.min.css\";i:126;s:29:\"comments-pagination/style.css\";i:127;s:33:\"comments-pagination/style.min.css\";i:128;s:29:\"comments-title/editor-rtl.css\";i:129;s:33:\"comments-title/editor-rtl.min.css\";i:130;s:25:\"comments-title/editor.css\";i:131;s:29:\"comments-title/editor.min.css\";i:132;s:23:\"comments/editor-rtl.css\";i:133;s:27:\"comments/editor-rtl.min.css\";i:134;s:19:\"comments/editor.css\";i:135;s:23:\"comments/editor.min.css\";i:136;s:22:\"comments/style-rtl.css\";i:137;s:26:\"comments/style-rtl.min.css\";i:138;s:18:\"comments/style.css\";i:139;s:22:\"comments/style.min.css\";i:140;s:20:\"cover/editor-rtl.css\";i:141;s:24:\"cover/editor-rtl.min.css\";i:142;s:16:\"cover/editor.css\";i:143;s:20:\"cover/editor.min.css\";i:144;s:19:\"cover/style-rtl.css\";i:145;s:23:\"cover/style-rtl.min.css\";i:146;s:15:\"cover/style.css\";i:147;s:19:\"cover/style.min.css\";i:148;s:22:\"details/editor-rtl.css\";i:149;s:26:\"details/editor-rtl.min.css\";i:150;s:18:\"details/editor.css\";i:151;s:22:\"details/editor.min.css\";i:152;s:21:\"details/style-rtl.css\";i:153;s:25:\"details/style-rtl.min.css\";i:154;s:17:\"details/style.css\";i:155;s:21:\"details/style.min.css\";i:156;s:20:\"embed/editor-rtl.css\";i:157;s:24:\"embed/editor-rtl.min.css\";i:158;s:16:\"embed/editor.css\";i:159;s:20:\"embed/editor.min.css\";i:160;s:19:\"embed/style-rtl.css\";i:161;s:23:\"embed/style-rtl.min.css\";i:162;s:15:\"embed/style.css\";i:163;s:19:\"embed/style.min.css\";i:164;s:19:\"embed/theme-rtl.css\";i:165;s:23:\"embed/theme-rtl.min.css\";i:166;s:15:\"embed/theme.css\";i:167;s:19:\"embed/theme.min.css\";i:168;s:19:\"file/editor-rtl.css\";i:169;s:23:\"file/editor-rtl.min.css\";i:170;s:15:\"file/editor.css\";i:171;s:19:\"file/editor.min.css\";i:172;s:18:\"file/style-rtl.css\";i:173;s:22:\"file/style-rtl.min.css\";i:174;s:14:\"file/style.css\";i:175;s:18:\"file/style.min.css\";i:176;s:23:\"footnotes/style-rtl.css\";i:177;s:27:\"footnotes/style-rtl.min.css\";i:178;s:19:\"footnotes/style.css\";i:179;s:23:\"footnotes/style.min.css\";i:180;s:23:\"freeform/editor-rtl.css\";i:181;s:27:\"freeform/editor-rtl.min.css\";i:182;s:19:\"freeform/editor.css\";i:183;s:23:\"freeform/editor.min.css\";i:184;s:22:\"gallery/editor-rtl.css\";i:185;s:26:\"gallery/editor-rtl.min.css\";i:186;s:18:\"gallery/editor.css\";i:187;s:22:\"gallery/editor.min.css\";i:188;s:21:\"gallery/style-rtl.css\";i:189;s:25:\"gallery/style-rtl.min.css\";i:190;s:17:\"gallery/style.css\";i:191;s:21:\"gallery/style.min.css\";i:192;s:21:\"gallery/theme-rtl.css\";i:193;s:25:\"gallery/theme-rtl.min.css\";i:194;s:17:\"gallery/theme.css\";i:195;s:21:\"gallery/theme.min.css\";i:196;s:20:\"group/editor-rtl.css\";i:197;s:24:\"group/editor-rtl.min.css\";i:198;s:16:\"group/editor.css\";i:199;s:20:\"group/editor.min.css\";i:200;s:19:\"group/style-rtl.css\";i:201;s:23:\"group/style-rtl.min.css\";i:202;s:15:\"group/style.css\";i:203;s:19:\"group/style.min.css\";i:204;s:19:\"group/theme-rtl.css\";i:205;s:23:\"group/theme-rtl.min.css\";i:206;s:15:\"group/theme.css\";i:207;s:19:\"group/theme.min.css\";i:208;s:21:\"heading/style-rtl.css\";i:209;s:25:\"heading/style-rtl.min.css\";i:210;s:17:\"heading/style.css\";i:211;s:21:\"heading/style.min.css\";i:212;s:19:\"html/editor-rtl.css\";i:213;s:23:\"html/editor-rtl.min.css\";i:214;s:15:\"html/editor.css\";i:215;s:19:\"html/editor.min.css\";i:216;s:20:\"image/editor-rtl.css\";i:217;s:24:\"image/editor-rtl.min.css\";i:218;s:16:\"image/editor.css\";i:219;s:20:\"image/editor.min.css\";i:220;s:19:\"image/style-rtl.css\";i:221;s:23:\"image/style-rtl.min.css\";i:222;s:15:\"image/style.css\";i:223;s:19:\"image/style.min.css\";i:224;s:19:\"image/theme-rtl.css\";i:225;s:23:\"image/theme-rtl.min.css\";i:226;s:15:\"image/theme.css\";i:227;s:19:\"image/theme.min.css\";i:228;s:29:\"latest-comments/style-rtl.css\";i:229;s:33:\"latest-comments/style-rtl.min.css\";i:230;s:25:\"latest-comments/style.css\";i:231;s:29:\"latest-comments/style.min.css\";i:232;s:27:\"latest-posts/editor-rtl.css\";i:233;s:31:\"latest-posts/editor-rtl.min.css\";i:234;s:23:\"latest-posts/editor.css\";i:235;s:27:\"latest-posts/editor.min.css\";i:236;s:26:\"latest-posts/style-rtl.css\";i:237;s:30:\"latest-posts/style-rtl.min.css\";i:238;s:22:\"latest-posts/style.css\";i:239;s:26:\"latest-posts/style.min.css\";i:240;s:18:\"list/style-rtl.css\";i:241;s:22:\"list/style-rtl.min.css\";i:242;s:14:\"list/style.css\";i:243;s:18:\"list/style.min.css\";i:244;s:22:\"loginout/style-rtl.css\";i:245;s:26:\"loginout/style-rtl.min.css\";i:246;s:18:\"loginout/style.css\";i:247;s:22:\"loginout/style.min.css\";i:248;s:19:\"math/editor-rtl.css\";i:249;s:23:\"math/editor-rtl.min.css\";i:250;s:15:\"math/editor.css\";i:251;s:19:\"math/editor.min.css\";i:252;s:18:\"math/style-rtl.css\";i:253;s:22:\"math/style-rtl.min.css\";i:254;s:14:\"math/style.css\";i:255;s:18:\"math/style.min.css\";i:256;s:25:\"media-text/editor-rtl.css\";i:257;s:29:\"media-text/editor-rtl.min.css\";i:258;s:21:\"media-text/editor.css\";i:259;s:25:\"media-text/editor.min.css\";i:260;s:24:\"media-text/style-rtl.css\";i:261;s:28:\"media-text/style-rtl.min.css\";i:262;s:20:\"media-text/style.css\";i:263;s:24:\"media-text/style.min.css\";i:264;s:19:\"more/editor-rtl.css\";i:265;s:23:\"more/editor-rtl.min.css\";i:266;s:15:\"more/editor.css\";i:267;s:19:\"more/editor.min.css\";i:268;s:30:\"navigation-link/editor-rtl.css\";i:269;s:34:\"navigation-link/editor-rtl.min.css\";i:270;s:26:\"navigation-link/editor.css\";i:271;s:30:\"navigation-link/editor.min.css\";i:272;s:29:\"navigation-link/style-rtl.css\";i:273;s:33:\"navigation-link/style-rtl.min.css\";i:274;s:25:\"navigation-link/style.css\";i:275;s:29:\"navigation-link/style.min.css\";i:276;s:33:\"navigation-submenu/editor-rtl.css\";i:277;s:37:\"navigation-submenu/editor-rtl.min.css\";i:278;s:29:\"navigation-submenu/editor.css\";i:279;s:33:\"navigation-submenu/editor.min.css\";i:280;s:25:\"navigation/editor-rtl.css\";i:281;s:29:\"navigation/editor-rtl.min.css\";i:282;s:21:\"navigation/editor.css\";i:283;s:25:\"navigation/editor.min.css\";i:284;s:24:\"navigation/style-rtl.css\";i:285;s:28:\"navigation/style-rtl.min.css\";i:286;s:20:\"navigation/style.css\";i:287;s:24:\"navigation/style.min.css\";i:288;s:23:\"nextpage/editor-rtl.css\";i:289;s:27:\"nextpage/editor-rtl.min.css\";i:290;s:19:\"nextpage/editor.css\";i:291;s:23:\"nextpage/editor.min.css\";i:292;s:24:\"page-list/editor-rtl.css\";i:293;s:28:\"page-list/editor-rtl.min.css\";i:294;s:20:\"page-list/editor.css\";i:295;s:24:\"page-list/editor.min.css\";i:296;s:23:\"page-list/style-rtl.css\";i:297;s:27:\"page-list/style-rtl.min.css\";i:298;s:19:\"page-list/style.css\";i:299;s:23:\"page-list/style.min.css\";i:300;s:24:\"paragraph/editor-rtl.css\";i:301;s:28:\"paragraph/editor-rtl.min.css\";i:302;s:20:\"paragraph/editor.css\";i:303;s:24:\"paragraph/editor.min.css\";i:304;s:23:\"paragraph/style-rtl.css\";i:305;s:27:\"paragraph/style-rtl.min.css\";i:306;s:19:\"paragraph/style.css\";i:307;s:23:\"paragraph/style.min.css\";i:308;s:35:\"post-author-biography/style-rtl.css\";i:309;s:39:\"post-author-biography/style-rtl.min.css\";i:310;s:31:\"post-author-biography/style.css\";i:311;s:35:\"post-author-biography/style.min.css\";i:312;s:30:\"post-author-name/style-rtl.css\";i:313;s:34:\"post-author-name/style-rtl.min.css\";i:314;s:26:\"post-author-name/style.css\";i:315;s:30:\"post-author-name/style.min.css\";i:316;s:25:\"post-author/style-rtl.css\";i:317;s:29:\"post-author/style-rtl.min.css\";i:318;s:21:\"post-author/style.css\";i:319;s:25:\"post-author/style.min.css\";i:320;s:33:\"post-comments-count/style-rtl.css\";i:321;s:37:\"post-comments-count/style-rtl.min.css\";i:322;s:29:\"post-comments-count/style.css\";i:323;s:33:\"post-comments-count/style.min.css\";i:324;s:33:\"post-comments-form/editor-rtl.css\";i:325;s:37:\"post-comments-form/editor-rtl.min.css\";i:326;s:29:\"post-comments-form/editor.css\";i:327;s:33:\"post-comments-form/editor.min.css\";i:328;s:32:\"post-comments-form/style-rtl.css\";i:329;s:36:\"post-comments-form/style-rtl.min.css\";i:330;s:28:\"post-comments-form/style.css\";i:331;s:32:\"post-comments-form/style.min.css\";i:332;s:32:\"post-comments-link/style-rtl.css\";i:333;s:36:\"post-comments-link/style-rtl.min.css\";i:334;s:28:\"post-comments-link/style.css\";i:335;s:32:\"post-comments-link/style.min.css\";i:336;s:26:\"post-content/style-rtl.css\";i:337;s:30:\"post-content/style-rtl.min.css\";i:338;s:22:\"post-content/style.css\";i:339;s:26:\"post-content/style.min.css\";i:340;s:23:\"post-date/style-rtl.css\";i:341;s:27:\"post-date/style-rtl.min.css\";i:342;s:19:\"post-date/style.css\";i:343;s:23:\"post-date/style.min.css\";i:344;s:27:\"post-excerpt/editor-rtl.css\";i:345;s:31:\"post-excerpt/editor-rtl.min.css\";i:346;s:23:\"post-excerpt/editor.css\";i:347;s:27:\"post-excerpt/editor.min.css\";i:348;s:26:\"post-excerpt/style-rtl.css\";i:349;s:30:\"post-excerpt/style-rtl.min.css\";i:350;s:22:\"post-excerpt/style.css\";i:351;s:26:\"post-excerpt/style.min.css\";i:352;s:34:\"post-featured-image/editor-rtl.css\";i:353;s:38:\"post-featured-image/editor-rtl.min.css\";i:354;s:30:\"post-featured-image/editor.css\";i:355;s:34:\"post-featured-image/editor.min.css\";i:356;s:33:\"post-featured-image/style-rtl.css\";i:357;s:37:\"post-featured-image/style-rtl.min.css\";i:358;s:29:\"post-featured-image/style.css\";i:359;s:33:\"post-featured-image/style.min.css\";i:360;s:34:\"post-navigation-link/style-rtl.css\";i:361;s:38:\"post-navigation-link/style-rtl.min.css\";i:362;s:30:\"post-navigation-link/style.css\";i:363;s:34:\"post-navigation-link/style.min.css\";i:364;s:27:\"post-template/style-rtl.css\";i:365;s:31:\"post-template/style-rtl.min.css\";i:366;s:23:\"post-template/style.css\";i:367;s:27:\"post-template/style.min.css\";i:368;s:24:\"post-terms/style-rtl.css\";i:369;s:28:\"post-terms/style-rtl.min.css\";i:370;s:20:\"post-terms/style.css\";i:371;s:24:\"post-terms/style.min.css\";i:372;s:31:\"post-time-to-read/style-rtl.css\";i:373;s:35:\"post-time-to-read/style-rtl.min.css\";i:374;s:27:\"post-time-to-read/style.css\";i:375;s:31:\"post-time-to-read/style.min.css\";i:376;s:24:\"post-title/style-rtl.css\";i:377;s:28:\"post-title/style-rtl.min.css\";i:378;s:20:\"post-title/style.css\";i:379;s:24:\"post-title/style.min.css\";i:380;s:26:\"preformatted/style-rtl.css\";i:381;s:30:\"preformatted/style-rtl.min.css\";i:382;s:22:\"preformatted/style.css\";i:383;s:26:\"preformatted/style.min.css\";i:384;s:24:\"pullquote/editor-rtl.css\";i:385;s:28:\"pullquote/editor-rtl.min.css\";i:386;s:20:\"pullquote/editor.css\";i:387;s:24:\"pullquote/editor.min.css\";i:388;s:23:\"pullquote/style-rtl.css\";i:389;s:27:\"pullquote/style-rtl.min.css\";i:390;s:19:\"pullquote/style.css\";i:391;s:23:\"pullquote/style.min.css\";i:392;s:23:\"pullquote/theme-rtl.css\";i:393;s:27:\"pullquote/theme-rtl.min.css\";i:394;s:19:\"pullquote/theme.css\";i:395;s:23:\"pullquote/theme.min.css\";i:396;s:39:\"query-pagination-numbers/editor-rtl.css\";i:397;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:398;s:35:\"query-pagination-numbers/editor.css\";i:399;s:39:\"query-pagination-numbers/editor.min.css\";i:400;s:31:\"query-pagination/editor-rtl.css\";i:401;s:35:\"query-pagination/editor-rtl.min.css\";i:402;s:27:\"query-pagination/editor.css\";i:403;s:31:\"query-pagination/editor.min.css\";i:404;s:30:\"query-pagination/style-rtl.css\";i:405;s:34:\"query-pagination/style-rtl.min.css\";i:406;s:26:\"query-pagination/style.css\";i:407;s:30:\"query-pagination/style.min.css\";i:408;s:25:\"query-title/style-rtl.css\";i:409;s:29:\"query-title/style-rtl.min.css\";i:410;s:21:\"query-title/style.css\";i:411;s:25:\"query-title/style.min.css\";i:412;s:25:\"query-total/style-rtl.css\";i:413;s:29:\"query-total/style-rtl.min.css\";i:414;s:21:\"query-total/style.css\";i:415;s:25:\"query-total/style.min.css\";i:416;s:20:\"query/editor-rtl.css\";i:417;s:24:\"query/editor-rtl.min.css\";i:418;s:16:\"query/editor.css\";i:419;s:20:\"query/editor.min.css\";i:420;s:19:\"quote/style-rtl.css\";i:421;s:23:\"quote/style-rtl.min.css\";i:422;s:15:\"quote/style.css\";i:423;s:19:\"quote/style.min.css\";i:424;s:19:\"quote/theme-rtl.css\";i:425;s:23:\"quote/theme-rtl.min.css\";i:426;s:15:\"quote/theme.css\";i:427;s:19:\"quote/theme.min.css\";i:428;s:23:\"read-more/style-rtl.css\";i:429;s:27:\"read-more/style-rtl.min.css\";i:430;s:19:\"read-more/style.css\";i:431;s:23:\"read-more/style.min.css\";i:432;s:18:\"rss/editor-rtl.css\";i:433;s:22:\"rss/editor-rtl.min.css\";i:434;s:14:\"rss/editor.css\";i:435;s:18:\"rss/editor.min.css\";i:436;s:17:\"rss/style-rtl.css\";i:437;s:21:\"rss/style-rtl.min.css\";i:438;s:13:\"rss/style.css\";i:439;s:17:\"rss/style.min.css\";i:440;s:21:\"search/editor-rtl.css\";i:441;s:25:\"search/editor-rtl.min.css\";i:442;s:17:\"search/editor.css\";i:443;s:21:\"search/editor.min.css\";i:444;s:20:\"search/style-rtl.css\";i:445;s:24:\"search/style-rtl.min.css\";i:446;s:16:\"search/style.css\";i:447;s:20:\"search/style.min.css\";i:448;s:20:\"search/theme-rtl.css\";i:449;s:24:\"search/theme-rtl.min.css\";i:450;s:16:\"search/theme.css\";i:451;s:20:\"search/theme.min.css\";i:452;s:24:\"separator/editor-rtl.css\";i:453;s:28:\"separator/editor-rtl.min.css\";i:454;s:20:\"separator/editor.css\";i:455;s:24:\"separator/editor.min.css\";i:456;s:23:\"separator/style-rtl.css\";i:457;s:27:\"separator/style-rtl.min.css\";i:458;s:19:\"separator/style.css\";i:459;s:23:\"separator/style.min.css\";i:460;s:23:\"separator/theme-rtl.css\";i:461;s:27:\"separator/theme-rtl.min.css\";i:462;s:19:\"separator/theme.css\";i:463;s:23:\"separator/theme.min.css\";i:464;s:24:\"shortcode/editor-rtl.css\";i:465;s:28:\"shortcode/editor-rtl.min.css\";i:466;s:20:\"shortcode/editor.css\";i:467;s:24:\"shortcode/editor.min.css\";i:468;s:24:\"site-logo/editor-rtl.css\";i:469;s:28:\"site-logo/editor-rtl.min.css\";i:470;s:20:\"site-logo/editor.css\";i:471;s:24:\"site-logo/editor.min.css\";i:472;s:23:\"site-logo/style-rtl.css\";i:473;s:27:\"site-logo/style-rtl.min.css\";i:474;s:19:\"site-logo/style.css\";i:475;s:23:\"site-logo/style.min.css\";i:476;s:27:\"site-tagline/editor-rtl.css\";i:477;s:31:\"site-tagline/editor-rtl.min.css\";i:478;s:23:\"site-tagline/editor.css\";i:479;s:27:\"site-tagline/editor.min.css\";i:480;s:26:\"site-tagline/style-rtl.css\";i:481;s:30:\"site-tagline/style-rtl.min.css\";i:482;s:22:\"site-tagline/style.css\";i:483;s:26:\"site-tagline/style.min.css\";i:484;s:25:\"site-title/editor-rtl.css\";i:485;s:29:\"site-title/editor-rtl.min.css\";i:486;s:21:\"site-title/editor.css\";i:487;s:25:\"site-title/editor.min.css\";i:488;s:24:\"site-title/style-rtl.css\";i:489;s:28:\"site-title/style-rtl.min.css\";i:490;s:20:\"site-title/style.css\";i:491;s:24:\"site-title/style.min.css\";i:492;s:26:\"social-link/editor-rtl.css\";i:493;s:30:\"social-link/editor-rtl.min.css\";i:494;s:22:\"social-link/editor.css\";i:495;s:26:\"social-link/editor.min.css\";i:496;s:27:\"social-links/editor-rtl.css\";i:497;s:31:\"social-links/editor-rtl.min.css\";i:498;s:23:\"social-links/editor.css\";i:499;s:27:\"social-links/editor.min.css\";i:500;s:26:\"social-links/style-rtl.css\";i:501;s:30:\"social-links/style-rtl.min.css\";i:502;s:22:\"social-links/style.css\";i:503;s:26:\"social-links/style.min.css\";i:504;s:21:\"spacer/editor-rtl.css\";i:505;s:25:\"spacer/editor-rtl.min.css\";i:506;s:17:\"spacer/editor.css\";i:507;s:21:\"spacer/editor.min.css\";i:508;s:20:\"spacer/style-rtl.css\";i:509;s:24:\"spacer/style-rtl.min.css\";i:510;s:16:\"spacer/style.css\";i:511;s:20:\"spacer/style.min.css\";i:512;s:20:\"table/editor-rtl.css\";i:513;s:24:\"table/editor-rtl.min.css\";i:514;s:16:\"table/editor.css\";i:515;s:20:\"table/editor.min.css\";i:516;s:19:\"table/style-rtl.css\";i:517;s:23:\"table/style-rtl.min.css\";i:518;s:15:\"table/style.css\";i:519;s:19:\"table/style.min.css\";i:520;s:19:\"table/theme-rtl.css\";i:521;s:23:\"table/theme-rtl.min.css\";i:522;s:15:\"table/theme.css\";i:523;s:19:\"table/theme.min.css\";i:524;s:24:\"tag-cloud/editor-rtl.css\";i:525;s:28:\"tag-cloud/editor-rtl.min.css\";i:526;s:20:\"tag-cloud/editor.css\";i:527;s:24:\"tag-cloud/editor.min.css\";i:528;s:23:\"tag-cloud/style-rtl.css\";i:529;s:27:\"tag-cloud/style-rtl.min.css\";i:530;s:19:\"tag-cloud/style.css\";i:531;s:23:\"tag-cloud/style.min.css\";i:532;s:28:\"template-part/editor-rtl.css\";i:533;s:32:\"template-part/editor-rtl.min.css\";i:534;s:24:\"template-part/editor.css\";i:535;s:28:\"template-part/editor.min.css\";i:536;s:27:\"template-part/theme-rtl.css\";i:537;s:31:\"template-part/theme-rtl.min.css\";i:538;s:23:\"template-part/theme.css\";i:539;s:27:\"template-part/theme.min.css\";i:540;s:24:\"term-count/style-rtl.css\";i:541;s:28:\"term-count/style-rtl.min.css\";i:542;s:20:\"term-count/style.css\";i:543;s:24:\"term-count/style.min.css\";i:544;s:30:\"term-description/style-rtl.css\";i:545;s:34:\"term-description/style-rtl.min.css\";i:546;s:26:\"term-description/style.css\";i:547;s:30:\"term-description/style.min.css\";i:548;s:23:\"term-name/style-rtl.css\";i:549;s:27:\"term-name/style-rtl.min.css\";i:550;s:19:\"term-name/style.css\";i:551;s:23:\"term-name/style.min.css\";i:552;s:28:\"term-template/editor-rtl.css\";i:553;s:32:\"term-template/editor-rtl.min.css\";i:554;s:24:\"term-template/editor.css\";i:555;s:28:\"term-template/editor.min.css\";i:556;s:27:\"term-template/style-rtl.css\";i:557;s:31:\"term-template/style-rtl.min.css\";i:558;s:23:\"term-template/style.css\";i:559;s:27:\"term-template/style.min.css\";i:560;s:27:\"text-columns/editor-rtl.css\";i:561;s:31:\"text-columns/editor-rtl.min.css\";i:562;s:23:\"text-columns/editor.css\";i:563;s:27:\"text-columns/editor.min.css\";i:564;s:26:\"text-columns/style-rtl.css\";i:565;s:30:\"text-columns/style-rtl.min.css\";i:566;s:22:\"text-columns/style.css\";i:567;s:26:\"text-columns/style.min.css\";i:568;s:19:\"verse/style-rtl.css\";i:569;s:23:\"verse/style-rtl.min.css\";i:570;s:15:\"verse/style.css\";i:571;s:19:\"verse/style.min.css\";i:572;s:20:\"video/editor-rtl.css\";i:573;s:24:\"video/editor-rtl.min.css\";i:574;s:16:\"video/editor.css\";i:575;s:20:\"video/editor.min.css\";i:576;s:19:\"video/style-rtl.css\";i:577;s:23:\"video/style-rtl.min.css\";i:578;s:15:\"video/style.css\";i:579;s:19:\"video/style.min.css\";i:580;s:19:\"video/theme-rtl.css\";i:581;s:23:\"video/theme-rtl.min.css\";i:582;s:15:\"video/theme.css\";i:583;s:19:\"video/theme.min.css\";}}', 'on'),
(125, 'nonce_key', 'x)|),|OU*/vB*G?LD0/-h?MtPixcx1}xjNDe1LxDo<fkT3Mil-q0wfX,w?@pe~S*', 'off'),
(126, 'nonce_salt', 'THNv* %sW6EbO_!&*<h:XBtCo$R{3p?mwV}eE1$~ITy4y>(rN6:b~>w;bIApoT?n', 'off');
INSERT INTO `lladlqq4_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(127, 'theme_mods_twentytwentyfive', 'a:4:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1766753330;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}s:19:\"wp_classic_sidebars\";a:7:{s:13:\"right-sidebar\";a:11:{s:4:\"name\";s:14:\"Sidebar Option\";s:2:\"id\";s:13:\"right-sidebar\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:10:\"</section>\";s:12:\"before_title\";s:25:\"<h2 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:9:\"sidebar-2\";a:11:{s:4:\"name\";s:11:\"Sidebar Two\";s:2:\"id\";s:9:\"sidebar-2\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:10:\"</section>\";s:12:\"before_title\";s:25:\"<h2 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:9:\"sidebar-3\";a:11:{s:4:\"name\";s:13:\"Sidebar Three\";s:2:\"id\";s:9:\"sidebar-3\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:10:\"</section>\";s:12:\"before_title\";s:25:\"<h2 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:8:\"footer-1\";a:11:{s:4:\"name\";s:15:\"Footer Widget 1\";s:2:\"id\";s:8:\"footer-1\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h3 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h3>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:8:\"footer-2\";a:11:{s:4:\"name\";s:15:\"Footer Widget 2\";s:2:\"id\";s:8:\"footer-2\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h3 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h3>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:8:\"footer-3\";a:11:{s:4:\"name\";s:15:\"Footer Widget 3\";s:2:\"id\";s:8:\"footer-3\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h3 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h3>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:8:\"footer-4\";a:11:{s:4:\"name\";s:15:\"Footer Widget 4\";s:2:\"id\";s:8:\"footer-4\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h3 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h3>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}}s:18:\"nav_menu_locations\";a:0:{}}', 'off'),
(128, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"3199e2537fbad380fa221e097719f7c6\";s:6:\"blocks\";a:6:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:0:\"\";s:18:\"core/term-template\";s:0:\"\";s:12:\"core/columns\";s:0:\"\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(130, 'recovery_keys', 'a:0:{}', 'off'),
(131, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.9.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:57:\"https://downloads.wordpress.org/release/wordpress-6.9.zip\";s:10:\"no_content\";s:68:\"https://downloads.wordpress.org/release/wordpress-6.9-no-content.zip\";s:11:\"new_bundled\";s:69:\"https://downloads.wordpress.org/release/wordpress-6.9-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.9\";s:7:\"version\";s:3:\"6.9\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1766828733;s:15:\"version_checked\";s:3:\"6.9\";s:12:\"translations\";a:0:{}}', 'off'),
(138, '_site_transient_timeout_browser_89db729cfcdc129111f017b0e7ac324a', '1767329289', 'off'),
(139, '_site_transient_browser_89db729cfcdc129111f017b0e7ac324a', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"143.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(140, '_site_transient_timeout_php_check_986ab27a5c44eb5941b7e3b238532f66', '1767329290', 'off'),
(141, '_site_transient_php_check_986ab27a5c44eb5941b7e3b238532f66', 'a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(145, 'can_compress_scripts', '1', 'on'),
(161, 'finished_updating_comment_type', '1', 'auto'),
(170, 'current_theme', 'Astra', 'auto'),
(171, 'theme_mods_graphic-design-portfolio', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1766753167;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'off'),
(172, 'theme_switched', '', 'auto'),
(173, 'widget_graphic_design_portfolio_social_links', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(176, 'downloaded_font_files', 'a:19:{s:75:\"https://fonts.gstatic.com/s/unbounded/v12/Yq6W-LOTXCb04q32xlpwtsZfrxE.woff2\";s:101:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/unbounded/Yq6W-LOTXCb04q32xlpwtsZfrxE.woff2\";s:75:\"https://fonts.gstatic.com/s/unbounded/v12/Yq6W-LOTXCb04q32xlpwv8ZfrxE.woff2\";s:101:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/unbounded/Yq6W-LOTXCb04q32xlpwv8ZfrxE.woff2\";s:75:\"https://fonts.gstatic.com/s/unbounded/v12/Yq6W-LOTXCb04q32xlpwtMZfrxE.woff2\";s:101:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/unbounded/Yq6W-LOTXCb04q32xlpwtMZfrxE.woff2\";s:75:\"https://fonts.gstatic.com/s/unbounded/v12/Yq6W-LOTXCb04q32xlpwtcZfrxE.woff2\";s:101:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/unbounded/Yq6W-LOTXCb04q32xlpwtcZfrxE.woff2\";s:72:\"https://fonts.gstatic.com/s/unbounded/v12/Yq6W-LOTXCb04q32xlpwu8Zf.woff2\";s:98:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/unbounded/Yq6W-LOTXCb04q32xlpwu8Zf.woff2\";s:68:\"https://fonts.gstatic.com/s/inter/v20/UcCm3FwrK3iLTcvnUwkT9nA2.woff2\";s:94:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/inter/UcCm3FwrK3iLTcvnUwkT9nA2.woff2\";s:68:\"https://fonts.gstatic.com/s/inter/v20/UcCm3FwrK3iLTcvnUwAT9nA2.woff2\";s:94:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/inter/UcCm3FwrK3iLTcvnUwAT9nA2.woff2\";s:68:\"https://fonts.gstatic.com/s/inter/v20/UcCm3FwrK3iLTcvnUwgT9nA2.woff2\";s:94:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/inter/UcCm3FwrK3iLTcvnUwgT9nA2.woff2\";s:68:\"https://fonts.gstatic.com/s/inter/v20/UcCm3FwrK3iLTcvnUwcT9nA2.woff2\";s:94:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/inter/UcCm3FwrK3iLTcvnUwcT9nA2.woff2\";s:68:\"https://fonts.gstatic.com/s/inter/v20/UcCm3FwrK3iLTcvnUwsT9nA2.woff2\";s:94:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/inter/UcCm3FwrK3iLTcvnUwsT9nA2.woff2\";s:68:\"https://fonts.gstatic.com/s/inter/v20/UcCm3FwrK3iLTcvnUwoT9nA2.woff2\";s:94:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/inter/UcCm3FwrK3iLTcvnUwoT9nA2.woff2\";s:66:\"https://fonts.gstatic.com/s/inter/v20/UcCm3FwrK3iLTcvnUwQT9g.woff2\";s:92:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/inter/UcCm3FwrK3iLTcvnUwQT9g.woff2\";s:66:\"https://fonts.gstatic.com/s/inter/v20/UcCo3FwrK3iLTcvvYwYL8g.woff2\";s:92:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/inter/UcCo3FwrK3iLTcvvYwYL8g.woff2\";s:66:\"https://fonts.gstatic.com/s/inter/v20/UcCo3FwrK3iLTcvmYwYL8g.woff2\";s:92:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/inter/UcCo3FwrK3iLTcvmYwYL8g.woff2\";s:66:\"https://fonts.gstatic.com/s/inter/v20/UcCo3FwrK3iLTcvuYwYL8g.woff2\";s:92:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/inter/UcCo3FwrK3iLTcvuYwYL8g.woff2\";s:66:\"https://fonts.gstatic.com/s/inter/v20/UcCo3FwrK3iLTcvhYwYL8g.woff2\";s:92:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/inter/UcCo3FwrK3iLTcvhYwYL8g.woff2\";s:66:\"https://fonts.gstatic.com/s/inter/v20/UcCo3FwrK3iLTcvtYwYL8g.woff2\";s:92:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/inter/UcCo3FwrK3iLTcvtYwYL8g.woff2\";s:66:\"https://fonts.gstatic.com/s/inter/v20/UcCo3FwrK3iLTcvsYwYL8g.woff2\";s:92:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/inter/UcCo3FwrK3iLTcvsYwYL8g.woff2\";s:63:\"https://fonts.gstatic.com/s/inter/v20/UcCo3FwrK3iLTcviYwY.woff2\";s:89:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content//fonts/inter/UcCo3FwrK3iLTcviYwY.woff2\";}', 'off'),
(234, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(235, 'recently_activated', 'a:1:{s:23:\"wp-dark-mode/plugin.php\";i:1766771255;}', 'off'),
(244, 'theme_mods_agencygrove-dark', 'a:5:{i:0;b:0;s:19:\"wp_classic_sidebars\";a:7:{s:13:\"right-sidebar\";a:11:{s:4:\"name\";s:14:\"Sidebar Option\";s:2:\"id\";s:13:\"right-sidebar\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:10:\"</section>\";s:12:\"before_title\";s:25:\"<h2 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:9:\"sidebar-2\";a:11:{s:4:\"name\";s:11:\"Sidebar Two\";s:2:\"id\";s:9:\"sidebar-2\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:10:\"</section>\";s:12:\"before_title\";s:25:\"<h2 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:9:\"sidebar-3\";a:11:{s:4:\"name\";s:13:\"Sidebar Three\";s:2:\"id\";s:9:\"sidebar-3\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:10:\"</section>\";s:12:\"before_title\";s:25:\"<h2 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h2>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:8:\"footer-1\";a:11:{s:4:\"name\";s:15:\"Footer Widget 1\";s:2:\"id\";s:8:\"footer-1\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h3 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h3>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:8:\"footer-2\";a:11:{s:4:\"name\";s:15:\"Footer Widget 2\";s:2:\"id\";s:8:\"footer-2\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h3 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h3>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:8:\"footer-3\";a:11:{s:4:\"name\";s:15:\"Footer Widget 3\";s:2:\"id\";s:8:\"footer-3\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h3 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h3>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}s:8:\"footer-4\";a:11:{s:4:\"name\";s:15:\"Footer Widget 4\";s:2:\"id\";s:8:\"footer-4\";s:11:\"description\";s:0:\"\";s:5:\"class\";s:0:\"\";s:13:\"before_widget\";s:39:\"<section id=\"%1$s\" class=\"widget %2$s\">\";s:12:\"after_widget\";s:8:\"</aside>\";s:12:\"before_title\";s:25:\"<h3 class=\"widget-title\">\";s:11:\"after_title\";s:5:\"</h3>\";s:14:\"before_sidebar\";s:0:\"\";s:13:\"after_sidebar\";s:0:\"\";s:12:\"show_in_rest\";b:0;}}s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1766764490;s:4:\"data\";a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:13:\"right-sidebar\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}s:9:\"sidebar-3\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'off'),
(253, 'elementor_active_kit', '9', 'auto'),
(254, 'elementor_font_display', 'swap', 'auto'),
(258, 'elementor_landing_pages_activation', '0', 'auto'),
(259, 'elementor_checklist', '{\"last_opened_timestamp\":1766765668,\"first_closed_checklist_in_editor\":false,\"is_popup_minimized\":false,\"steps\":{\"add_logo\":{\"is_marked_completed\":false,\"is_immutable_completed\":false},\"set_fonts_and_colors\":{\"is_marked_completed\":false,\"is_immutable_completed\":false},\"create_pages\":{\"is_marked_completed\":false,\"is_immutable_completed\":false},\"setup_header\":{\"is_marked_completed\":false,\"is_immutable_completed\":false},\"assign_homepage\":{\"is_marked_completed\":false,\"is_immutable_completed\":false}},\"should_open_in_editor\":true}', 'auto'),
(260, 'elementor_version', '3.34.0', 'auto'),
(261, 'elementor_install_history', 'a:1:{s:6:\"3.34.0\";i:1766753510;}', 'auto'),
(262, 'elementor_events_db_version', '1.0.0', 'off'),
(263, '_elementor_ab_testing_data', 'a:2:{s:7:\"timeout\";i:1766772493;s:5:\"value\";s:274:\"[{\"coreOnboarding\":{\"emphasizeConnectBenefits101\":false,\"embedConnectInOnboarding102\":false,\"onboardingStartsWithLogin103\":false,\"offerThemeChoicesHelloBiz201\":false,\"emphasizeThemeValueAudience202\":false,\"updateCopyVisuals401\":false,\"reduceHierarchyBlankOption402\":false}}]\";}', 'off'),
(264, 'elementor_onboarded', '1', 'auto'),
(265, '_elementor_installed_time', '1766753539', 'auto'),
(266, 'elementor_connect_site_key', '417861a2b284350c2469474a0f82b638', 'auto'),
(267, 'elementor_remote_info_feed_data', 'a:3:{i:0;a:5:{s:5:\"title\";s:79:\"Introducing Elementor 3.33: Variables Manager, Custom CSS, Blend Modes, & more!\";s:7:\"excerpt\";s:340:\"Elementor 3.33 builds on the foundation of Editor V4, continuing our mission to create a faster, more scalable, and more intuitive design experience for Web Creators. With the addition of the Variables Manager, element-level Custom CSS, Background Clipping, and Blend Modes, designers have more creative precision and consistency than ever.\";s:7:\"created\";i:1762944115;s:5:\"badge\";s:3:\"NEW\";s:3:\"url\";s:145:\"https://elementor.com/blog/elementor-333-v4-variables-manager-custom-css/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed\";}i:1;a:5:{s:5:\"title\";s:76:\"Introducing Elementor 3.32: Transitions, Transform, Size Variables, and More\";s:7:\"excerpt\";s:250:\"Elementor 3.32 is here, accelerating Editor V4 Alpha with transform controls and layered transitions, system-wide Size Variables and streamlined class management. This release empowers you to build more consistent, dynamic, and professional websites.\";s:7:\"created\";i:1759243152;s:5:\"badge\";s:3:\"NEW\";s:3:\"url\";s:138:\"https://elementor.com/blog/elementor-332-v4-transform-transitions/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed\";}i:2;a:5:{s:5:\"title\";s:70:\"Introducing Elementor 3.31: New Editor V4 Variables, Filters, and More\";s:7:\"excerpt\";s:294:\"Elementor 3.31 is here, pushing Editor V4 forward with powerful design system enhancements and modern visual styling tools. From Variables and Filters to smarter editing workflows and semantic markup, this version makes it easier than ever to design beautiful, performant, and accessible sites.\";s:7:\"created\";i:1755094220;s:5:\"badge\";s:3:\"NEW\";s:3:\"url\";s:140:\"https://elementor.com/blog/elementor-331-v4-alpha-variables-filters/?utm_source=wp-overview-widget&utm_medium=wp-dash&utm_campaign=news-feed\";}}', 'off'),
(301, 'e_editor_counter', '14', 'auto'),
(304, '_elementor_free_to_pro_upsell', 'a:2:{s:7:\"timeout\";i:1766771732;s:5:\"value\";s:723:\"[{\"id\":\"animated_headline\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/free-to-pro-upsell\\/v1\\/images\\/animated_headline.jpg\"},{\"id\":\"video_playlist\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/free-to-pro-upsell\\/v1\\/images\\/video_playlist.jpg\"},{\"id\":\"cta\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/free-to-pro-upsell\\/v1\\/images\\/cta.jpg\"},{\"id\":\"testimonial_widget\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/free-to-pro-upsell\\/v1\\/images\\/testimonial_widget.jpg\"},{\"id\":\"image_carousel\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/free-to-pro-upsell\\/v1\\/images\\/image_carousel.jpg\"},{\"id\":\"connect-pro-upgrade\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/free-to-pro-upsell\\/v1\\/images\\/connect-pro-upgrade.jpg\"}]\";}', 'off'),
(305, '_elementor_notifications_data', 'a:2:{s:7:\"timeout\";i:1766771732;s:5:\"value\";s:10799:\"[{\"id\":\"variables-manager-3.33\",\"title\":\"Variables Manager\",\"description\":\"Centralize and control all your color, typography, and size tokens for consistent, scalable design systems.\",\"topic\":\"Editor V4\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/3.33-variables-manager.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.33-blog\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"custom-css-3.33\",\"title\":\"Custom CSS\",\"description\":\"Write isolated, responsive, and state-based CSS directly inside atomic elements for pixel-perfect control.\",\"topic\":\"Elementor Pro 3.33\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/3.33-custom-css.png\",\"chipPlan\":\"Pro\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.33-blog\\/\",\"readMoreText\":\"Learn More\",\"conditions\":[[{\"type\":\"plugin\",\"plugin\":\"elementor-pro\\/elementor-pro.php\"}]]},{\"id\":\"custom-css-3.33\",\"title\":\"Custom CSS\",\"description\":\"Write isolated, responsive, and state-based CSS directly inside atomic elements for pixel-perfect control.\",\"topic\":\"Elementor Pro 3.33\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/3.33-custom-css.png\",\"chipTags\":[\"New Feature\"],\"cta\":\"Upgrade now\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.33-custom-css\\/\"},{\"id\":\"blend-mode-3.33\",\"title\":\"Blend Mode\",\"description\":\"Layer and blend visuals to create depth, contrast, and cinematic design effects.\",\"topic\":\"Editor V4\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/3.33-blend.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.33-blog\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"transform-3.32\",\"title\":\"Design with depth using Transform\",\"description\":\"Move, scale, rotate, and skew any element with ease. Transform controls add depth, stacked effects, and seamless States for hover, focus, and active micro-interactions.\",\"topic\":\"Editor V4\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/3.32-transform.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.32-blog\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"size-variable-3.32\",\"title\":\"Consistency with Size Variables\",\"description\":\"Define reusable values for properties like spacing or typography, then update them once to scale changes instantly across your site.\",\"topic\":\"Elementor Pro 3.32\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/3.32-size-variables.png\",\"chipPlan\":\"Pro\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.32-blog\\/\",\"readMoreText\":\"Learn More\",\"conditions\":[[{\"type\":\"plugin\",\"plugin\":\"elementor-pro\\/elementor-pro.php\"}]]},{\"id\":\"size-variable-3.32\",\"title\":\"Consistency with Size Variables\",\"description\":\"Define reusable values for properties like spacing or typography, then update them once to scale changes instantly across your site.\",\"topic\":\"Elementor Pro 3.32\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/3.32-size-variables.png\",\"chipTags\":[\"New Feature\"],\"cta\":\"Upgrade now\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.32-size-variable\\/\"},{\"id\":\"transitions-3.32\",\"title\":\"Smooth interactions with Transitions\",\"description\":\"Bring polish to every interaction. Transitions let you animate style changes smoothly between states. In Pro, layer multiple transitions by property for refined, modern micro-animations.\",\"topic\":\"Editor V4\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/3.32-transition.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.32-blog\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"variables-3.31\",\"title\":\"Scalable design with Variables\",\"description\":\"Define once, reuse everywhere. Color & Font Variables help you build consistent, scalable design systems that update globally and are perfect for large sites or teams.\",\"topic\":\"Editor V4\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/3.31-variables.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.31-v4-blog\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"filters-3.31\",\"title\":\"Visual effects with Filters and Backdrop Filters\",\"description\":\"Apply multiple Filters like blur, brightness, and contrast. Stack, reorder, and preview in real time without writing a line of code.\",\"topic\":\"Editor V4\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/3.31-filters.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.31-v4-blog\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"ally-assistant\",\"title\":\"New! Fix accessibility issues with Ally Assistant\",\"description\":\"Scan any page for accessibility issues and fix them in one click. From color contrast to missing alt text, Ally Assistant provides guided steps or AI-powered fixes to make your site more inclusive.\",\"topic\":\"Ally by Elementor\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/ally-assistant.png\",\"chipTags\":[\"New Feature\"],\"cta\":\"Scan for free\",\"ctaLink\":\"http:\\/\\/go.elementor.com\\/acc-assistant-launch-whats-new\",\"conditions\":[[{\"type\":\"plugin\",\"operator\":\"!=\",\"plugin\":\"pojo-accessibility\\/pojo-accessibility.php\"}]]},{\"id\":\"classes-3.31\",\"title\":\"Smarter Class Manager tools\",\"description\":\"Quickly locate and manage Global Classes with usage counts, a new locator panel, and full class search. Perfect for scaling and refactoring complex design systems.\",\"topic\":\"Editor V4\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/3.31-classes.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.31-v4-blog\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"attributes-3.31\",\"title\":\"Add semantic HTML with Attributes\",\"description\":\"Add custom HTML attributes like aria-*, data-*, and role to any element. Structure your markup for better accessibility, performance, and compliance.\",\"topic\":\"Elementor Pro 3.31\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/3.31-attributes.png\",\"chipPlan\":\"Pro\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.31-v4-blog\\/\",\"readMoreText\":\"Learn More\",\"conditions\":[[{\"type\":\"plugin\",\"plugin\":\"elementor-pro\\/elementor-pro.php\"}]]},{\"id\":\"attributes-3.31\",\"title\":\"Add semantic HTML with Attributes\",\"description\":\"Add custom HTML attributes like aria-*, data-*, and role to any element. Structure your markup for better accessibility, performance, and compliance.\",\"topic\":\"Elementor Pro 3.31\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/3.31-attributes.png\",\"chipTags\":[\"New Feature\"],\"cta\":\"Upgrade now\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.31-attributes\\/\"},{\"id\":\"cloud-websites-3.30\",\"title\":\"Full Website Templates in the cloud\",\"description\":\"Save and apply entire websites, including multiple pages, styles, site settings, media, and layout configurations - directly from the cloud.\",\"topic\":\"Elementor Pro 3.30\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/cloud-3.30.png\",\"chipPlan\":\"Pro\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.39-v4-blog\\/\",\"readMoreText\":\"Learn More\",\"conditions\":[[{\"type\":\"plugin\",\"plugin\":\"elementor-pro\\/elementor-pro.php\"}]]},{\"id\":\"cloud-websites-3.30\",\"title\":\"Full Website Templates in the cloud\",\"description\":\"Save and apply entire websites, including multiple pages, styles, site settings, media, and layout configurations - directly from the cloud.\",\"topic\":\"Elementor Pro 3.30\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/cloud-3.30.png\",\"chipTags\":[\"New Feature\"],\"cta\":\"Upgrade now\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/go-pro-notification-3.30-cloud-websites\\/\"},{\"id\":\"ally-notification\",\"title\":\"Just released! Ally - a new plugin for web accessibility & usability\",\"description\":\"Ally simplifies the complexities of making your website more accessible. With new regulations here and coming, making your website more usable and inclusive is no longer just an option, but a must.\",\"topic\":\"Ally by Elementor\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/ally-notification.png\",\"chipTags\":[\"New plugin\"],\"cta\":\"Get it free\",\"ctaLink\":\"https:\\/\\/wordpress.org\\/plugins\\/pojo-accessibility\\/\",\"conditions\":[[{\"type\":\"plugin\",\"operator\":\"!=\",\"plugin\":\"pojo-accessibility\\/pojo-accessibility.php\"}]]},{\"id\":\"ai-site-planner\",\"title\":\"Instant Sitemaps & Wireframes\",\"description\":\"Get your website plan in minutes with AI Site Planner. Describe your desired site and AI will generate a sitemap, brief and wireframe populated with initial content, ready for you to customize.\",\"topic\":\"Elementor AI\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/aI-site-planner.png\",\"chipTags\":[\"New Feature\"],\"link\":\"https:\\/\\/go.elementor.com\\/ai-notification-site-planner\\/\",\"readMoreText\":\"Learn More\"},{\"id\":\"image-optimizer-3.19\",\"title\":\"Effortlessly optimize images for a stunning, high-speed website with the Image Optimizer plugin.\",\"description\":\"Image Optimizer perfectly balances between image quality and performance to boost your website.  Resize, compress, and convert images to WebP, for faster loading times and and better user experience.\",\"topic\":\"Image Optimizer Plugin by Elementor\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/image-optimizer-3.19.png\",\"chipTags\":[\"New plugin\"],\"cta\":\"Get the Image Optimizer\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/io-notification-wp-dash-learn-more\\/\",\"conditions\":[[{\"type\":\"plugin\",\"operator\":\"!=\",\"plugin\":\"image-optimization\\/image-optimization.php\"}]]},{\"id\":\"5-star-rating-prompt\",\"title\":\"Love the New Features? Let Us Know with 5 Stars!\",\"description\":\"Help spread the word by telling the world what you love about Elementor.\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/5-star-rating-prompt.png\",\"cta\":\"Leave a Review\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/wp-dash-notification-five-stars\\/\"},{\"id\":\"site-mailer-introducing\",\"title\":\"Introducing Site Mailer\",\"description\":\"Keep your WordPress emails out of the spam folder with improved deliverability and an easy setup\\u2014no need for an SMTP plugin or complicated configurations.\",\"topic\":\"Site Mailer Plugin by Elementor\",\"imageSrc\":\"https:\\/\\/assets.elementor.com\\/notifications\\/v1\\/images\\/Site-mailer.png\",\"chipTags\":[\"New plugin\"],\"cta\":\"Start Free Trial\",\"ctaLink\":\"https:\\/\\/go.elementor.com\\/sm-wp-dash-whatsnew\\/\",\"conditions\":[[{\"type\":\"plugin\",\"operator\":\"!=\",\"plugin\":\"site-mailer\\/site-mailer.php\"}]]}]\";}', 'off'),
(315, 'theme_mods_astra', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:6;}s:18:\"custom_css_post_id\";i:-1;}', 'on'),
(319, 'astra-settings', 'a:2:{s:18:\"theme-auto-version\";s:7:\"4.11.18\";s:22:\"is_theme_queue_running\";b:0;}', 'auto'),
(320, 'astra_analytics_installed_time', '1766764491', 'off'),
(328, 'action_scheduler_hybrid_store_demarkation', '10', 'auto'),
(329, 'schema-ActionScheduler_StoreSchema', '8.0.1766764930', 'auto'),
(330, 'schema-ActionScheduler_LoggerSchema', '3.0.1766764930', 'auto'),
(331, 'wpforms_version', '1.9.8.7', 'auto'),
(332, 'wpforms_version_lite', '1.9.8.7', 'auto'),
(333, 'wpforms_activated', 'a:1:{s:4:\"lite\";i:1766764930;}', 'auto'),
(339, 'action_scheduler_lock_async-request-runner', '694ecf064746c3.77736044|1766772546', 'no'),
(340, 'wpforms_versions_lite', 'a:16:{s:5:\"1.5.9\";i:0;s:7:\"1.6.7.2\";i:0;s:5:\"1.6.8\";i:0;s:5:\"1.7.5\";i:0;s:7:\"1.7.5.1\";i:0;s:5:\"1.7.7\";i:0;s:5:\"1.8.2\";i:0;s:5:\"1.8.3\";i:0;s:5:\"1.8.4\";i:0;s:5:\"1.8.6\";i:0;s:5:\"1.8.7\";i:0;s:5:\"1.9.1\";i:0;s:5:\"1.9.2\";i:0;s:5:\"1.9.7\";i:0;s:7:\"1.9.8.6\";i:0;s:7:\"1.9.8.7\";i:1766764930;}', 'auto'),
(341, 'wpforms_constant_contact_version', '3', 'auto'),
(342, 'widget_wpforms-widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(343, '_transient_timeout_as-post-store-dependencies-met', '1766851330', 'off'),
(344, '_transient_as-post-store-dependencies-met', 'yes', 'off'),
(345, 'wpforms_settings', 'a:3:{s:13:\"modern-markup\";s:1:\"1\";s:20:\"modern-markup-is-set\";b:1;s:26:\"modern-markup-hide-setting\";b:1;}', 'auto'),
(347, 'wpforms_admin_notices', 'a:1:{s:14:\"review_request\";a:2:{s:4:\"time\";i:1766764930;s:9:\"dismissed\";b:0;}}', 'auto'),
(348, '_wpforms_transient_timeout_addons.json', '1767369731', 'off'),
(349, '_wpforms_transient_addons.json', '1766764931', 'off'),
(350, '_wpforms_transient_timeout_splash.json', '1767369732', 'off'),
(351, '_wpforms_transient_splash.json', '1766764932', 'off'),
(352, '_wpforms_transient_upload_htaccess_file', 'a:3:{s:4:\"size\";i:737;s:5:\"mtime\";i:1766764932;s:5:\"ctime\";i:1766764932;}', 'on'),
(353, '_wpforms_transient_wpforms_/disk/asrmartc/azharulislam.asrmart.com/wp-content/uploads/wpforms/cache/.htaccess_file', 'a:3:{s:4:\"size\";i:446;s:5:\"mtime\";i:1766764932;s:5:\"ctime\";i:1766764932;}', 'on'),
(354, 'wpforms_splash_version', '1.8.6', 'auto'),
(359, 'eael_setup_wizard', 'complete', 'auto'),
(360, 'eael_save_settings', 'a:64:{s:9:\"post-grid\";s:0:\"\";s:13:\"post-timeline\";s:0:\"\";s:10:\"fancy-text\";i:1;s:12:\"creative-btn\";i:1;s:10:\"count-down\";i:1;s:12:\"team-members\";i:1;s:12:\"testimonials\";i:1;s:8:\"info-box\";i:1;s:8:\"flip-box\";i:1;s:14:\"call-to-action\";i:1;s:11:\"dual-header\";i:1;s:11:\"price-table\";i:1;s:12:\"twitter-feed\";s:0:\"\";s:13:\"facebook-feed\";s:0:\"\";s:19:\"advanced-data-table\";s:0:\"\";s:10:\"data-table\";i:1;s:14:\"filter-gallery\";i:1;s:15:\"image-accordion\";i:1;s:14:\"content-ticker\";i:1;s:7:\"tooltip\";i:1;s:13:\"adv-accordion\";i:1;s:8:\"adv-tabs\";i:1;s:12:\"progress-bar\";i:1;s:12:\"feature-list\";i:1;s:12:\"product-grid\";s:0:\"\";s:16:\"woo-product-list\";s:0:\"\";s:17:\"woo-product-price\";s:0:\"\";s:18:\"woo-product-rating\";s:0:\"\";s:11:\"breadcrumbs\";s:0:\"\";s:12:\"code-snippet\";s:0:\"\";s:18:\"woo-product-images\";s:0:\"\";s:15:\"woo-add-to-cart\";s:0:\"\";s:14:\"contact-form-7\";s:0:\"\";s:7:\"weforms\";s:0:\"\";s:10:\"ninja-form\";s:0:\"\";s:9:\"formstack\";s:0:\"\";s:12:\"gravity-form\";s:0:\"\";s:12:\"caldera-form\";s:0:\"\";s:7:\"wpforms\";i:1;s:10:\"fluentform\";s:0:\"\";s:8:\"typeform\";s:0:\"\";s:24:\"betterdocs-category-grid\";s:0:\"\";s:23:\"betterdocs-category-box\";s:0:\"\";s:22:\"betterdocs-search-form\";s:0:\"\";s:12:\"sticky-video\";i:1;s:14:\"event-calendar\";s:0:\"\";s:10:\"embedpress\";i:1;s:12:\"woo-checkout\";s:0:\"\";s:8:\"woo-cart\";s:0:\"\";s:14:\"login-register\";s:0:\"\";s:11:\"career-page\";i:1;s:19:\"woo-product-compare\";s:0:\"\";s:20:\"woo-product-carousel\";s:0:\"\";s:11:\"simple-menu\";i:1;s:19:\"woo-product-gallery\";s:0:\"\";s:18:\"interactive-circle\";s:0:\"\";s:14:\"better-payment\";i:1;s:11:\"nft-gallery\";i:1;s:16:\"business-reviews\";s:0:\"\";s:8:\"svg-draw\";s:0:\"\";s:18:\"woocommerce-review\";i:1;s:27:\"crowdfundly-single-campaign\";i:1;s:24:\"crowdfundly-organization\";i:1;s:24:\"crowdfundly-all-campaign\";i:1;}', 'auto'),
(361, 'eael_version', '6.5.4', 'auto'),
(362, 'essential-addons-for-elementor-lite_notices', 'a:3:{s:16:\"bfcm_2025_notice\";a:4:{s:5:\"start\";i:1766764987;s:10:\"recurrence\";b:0;s:7:\"refresh\";s:5:\"6.5.4\";s:6:\"expire\";i:1764892799;}s:7:\"version\";s:5:\"1.1.0\";s:6:\"review\";a:3:{s:5:\"start\";i:1767369788;s:10:\"recurrence\";i:30;s:7:\"refresh\";s:5:\"6.5.4\";}}', 'off'),
(363, 'wpins_allow_tracking', 'a:1:{s:25:\"essential_adons_elementor\";s:25:\"essential_adons_elementor\";}', 'auto'),
(364, 'wpins_essential_adons_elementor_site_id', '7a35f909a0d6209f8586', 'auto'),
(365, 'wpins_essential_adons_elementor_original_url', 'https://azharulislam.asrmart.com', 'auto'),
(366, 'wpins_essential_adons_elementor_7a35f909a0d6209f8586', 'a:23:{s:11:\"plugin_slug\";s:25:\"essential_adons_elementor\";s:3:\"url\";s:32:\"https://azharulislam.asrmart.com\";s:9:\"site_name\";s:13:\"Azharul Islam\";s:12:\"site_version\";s:3:\"6.9\";s:13:\"site_language\";s:5:\"en-US\";s:7:\"charset\";s:5:\"UTF-8\";s:13:\"wpins_version\";s:5:\"3.0.3\";s:11:\"php_version\";s:6:\"8.2.29\";s:9:\"multisite\";b:0;s:13:\"file_location\";s:136:\"/disk/asrmartc/azharulislam.asrmart.com/wp-content/plugins/essential-addons-for-elementor-lite/includes/Classes/Plugin_Usage_Tracker.php\";s:5:\"email\";s:30:\"admin@azharulislam.asrmart.com\";s:16:\"marketing_method\";b:1;s:6:\"server\";s:9:\"LiteSpeed\";s:14:\"active_plugins\";a:3:{i:0;s:23:\"elementor/elementor.php\";i:1;s:65:\"essential-addons-for-elementor-lite/essential_adons_elementor.php\";i:2;s:24:\"wpforms-lite/wpforms.php\";}s:16:\"inactive_plugins\";a:0:{}s:14:\"text_direction\";s:3:\"LTR\";s:6:\"plugin\";s:30:\"Essential Addons for Elementor\";s:7:\"version\";s:5:\"6.5.4\";s:6:\"status\";s:6:\"Active\";s:5:\"theme\";s:5:\"Astra\";s:13:\"theme_version\";s:7:\"4.11.18\";s:7:\"country\";s:10:\"Bangladesh\";s:7:\"item_id\";s:20:\"760e8569757fa16992d8\";}', 'auto'),
(367, 'wpins_last_track_time', 'a:1:{s:25:\"essential_adons_elementor\";i:1766765055;}', 'auto'),
(369, 'as_has_wp_comment_logs', 'no', 'on'),
(371, 'wpforms_email_summaries_fetch_info_blocks_last_run', '1766764999', 'auto'),
(372, 'wpforms_process_forms_locator_status', 'completed', 'auto'),
(374, 'eael_admin_menu_notice', '19', 'off'),
(375, 'wpforms_notifications', 'a:4:{s:4:\"feed\";a:0:{}s:6:\"events\";a:0:{}s:9:\"dismissed\";a:0:{}s:6:\"update\";i:1766765060;}', 'auto'),
(378, 'eael_editor_updated_at', '1766772486', 'auto'),
(384, '_elementor_settings_update_time', '1766765525', 'auto'),
(385, 'elementor_cpt_support', 'a:3:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:13:\"wpr_templates\";}', 'auto'),
(386, 'elementor_disable_color_schemes', '', 'auto'),
(387, 'elementor_disable_typography_schemes', '', 'auto'),
(388, 'elementor_allow_tracking_last_update', '1766765525', 'auto'),
(389, 'elementor_allow_tracking', 'no', 'auto'),
(390, 'elementor_google_maps_api_key', '', 'auto'),
(391, 'elementor_editor_break_lines', '', 'auto'),
(392, 'elementor_unfiltered_files_upload', '1', 'auto'),
(393, 'elementor_google_font', '1', 'auto'),
(394, 'elementor_load_fa4_shim', '', 'auto'),
(395, 'elementor_meta_generator_tag', '', 'auto'),
(396, 'elementor_css_print_method', 'external', 'auto'),
(397, 'elementor_optimized_image_loading', '1', 'auto'),
(398, 'elementor_optimized_gutenberg_loading', '1', 'auto'),
(399, 'elementor_lazy_load_background_images', '1', 'auto'),
(400, 'elementor_local_google_fonts', '0', 'auto'),
(401, 'elementor_element_cache_ttl', '24', 'auto'),
(402, 'elementor_no_features', '', 'auto'),
(403, 'elementor_experiment-e_font_icon_svg', 'default', 'auto'),
(404, 'elementor_experiment-additional_custom_breakpoints', 'default', 'auto'),
(405, 'elementor_experiment-container', 'active', 'auto'),
(406, 'elementor_experiment-e_optimized_markup', 'default', 'auto'),
(407, 'elementor_experiment-nested-elements', 'default', 'auto'),
(410, 'elementor_log', 'a:4:{s:32:\"efc89fb2e9b52b175dc10819fca5d295\";O:30:\"Elementor\\Core\\Logger\\Items\\JS\":10:{s:7:\"\0*\0date\";s:19:\"2025-12-26 16:10:04\";s:7:\"\0*\0type\";s:5:\"error\";s:10:\"\0*\0message\";s:30:\"C.startsWith is not a function\";s:7:\"\0*\0meta\";a:0:{}s:8:\"\0*\0times\";i:2;s:14:\"\0*\0times_dates\";a:2:{i:0;s:19:\"2025-12-26 16:10:04\";i:1;s:19:\"2025-12-26 16:11:07\";}s:7:\"\0*\0args\";a:6:{s:4:\"type\";s:5:\"error\";s:9:\"timestamp\";s:10:\"1766765404\";s:7:\"message\";s:30:\"C.startsWith is not a function\";s:3:\"url\";s:104:\"https://azharulislam.asrmart.com/wp-content/plugins/elementor/assets/js/common-modules.min.js?ver=3.34.0\";s:4:\"line\";s:1:\"1\";s:6:\"column\";s:6:\"102715\";}s:7:\"\0*\0file\";s:104:\"https://azharulislam.asrmart.com/wp-content/plugins/elementor/assets/js/common-modules.min.js?ver=3.34.0\";s:7:\"\0*\0line\";s:1:\"1\";s:9:\"\0*\0column\";s:6:\"102715\";}s:32:\"c2f465aa3a4080b19419d03b6087301a\";O:30:\"Elementor\\Core\\Logger\\Items\\JS\":10:{s:7:\"\0*\0date\";s:19:\"2025-12-26 17:01:17\";s:7:\"\0*\0type\";s:5:\"error\";s:10:\"\0*\0message\";s:62:\"Cannot read properties of undefined (reading &#039;left&#039;)\";s:7:\"\0*\0meta\";a:0:{}s:8:\"\0*\0times\";i:7;s:14:\"\0*\0times_dates\";a:7:{i:0;s:19:\"2025-12-26 17:01:17\";i:1;s:19:\"2025-12-26 17:01:27\";i:2;s:19:\"2025-12-26 17:05:43\";i:3;s:19:\"2025-12-26 17:05:46\";i:4;s:19:\"2025-12-26 17:05:46\";i:5;s:19:\"2025-12-26 17:06:09\";i:6;s:19:\"2025-12-26 17:07:38\";}s:7:\"\0*\0args\";a:6:{s:4:\"type\";s:5:\"error\";s:9:\"timestamp\";s:10:\"1766768477\";s:7:\"message\";s:52:\"Cannot read properties of undefined (reading \'left\')\";s:3:\"url\";s:113:\"https://azharulislam.asrmart.com/wp-content/plugins/royal-elementor-addons/assets/js/frontend.min.js?ver=1.7.1042\";s:4:\"line\";s:1:\"1\";s:6:\"column\";s:5:\"13182\";}s:7:\"\0*\0file\";s:113:\"https://azharulislam.asrmart.com/wp-content/plugins/royal-elementor-addons/assets/js/frontend.min.js?ver=1.7.1042\";s:7:\"\0*\0line\";s:1:\"1\";s:9:\"\0*\0column\";s:5:\"13182\";}s:32:\"d686e0ebf6e9706c90d92234e114f89b\";O:30:\"Elementor\\Core\\Logger\\Items\\JS\":10:{s:7:\"\0*\0date\";s:19:\"2025-12-26 17:01:47\";s:7:\"\0*\0type\";s:5:\"error\";s:10:\"\0*\0message\";s:27:\"a.replace is not a function\";s:7:\"\0*\0meta\";a:0:{}s:8:\"\0*\0times\";i:2;s:14:\"\0*\0times_dates\";a:2:{i:0;s:19:\"2025-12-26 17:01:47\";i:1;s:19:\"2025-12-26 17:01:53\";}s:7:\"\0*\0args\";a:6:{s:4:\"type\";s:5:\"error\";s:9:\"timestamp\";s:10:\"1766768507\";s:7:\"message\";s:27:\"a.replace is not a function\";s:3:\"url\";s:101:\"https://azharulislam.asrmart.com/wp-content/uploads/essential-addons-elementor/eael.js?ver=1766768123\";s:4:\"line\";s:1:\"9\";s:6:\"column\";s:5:\"69375\";}s:7:\"\0*\0file\";s:101:\"https://azharulislam.asrmart.com/wp-content/uploads/essential-addons-elementor/eael.js?ver=1766768123\";s:7:\"\0*\0line\";s:1:\"9\";s:9:\"\0*\0column\";s:5:\"69375\";}s:32:\"9a265cd7ec074eda7c026c6297c590e1\";O:30:\"Elementor\\Core\\Logger\\Items\\JS\":10:{s:7:\"\0*\0date\";s:19:\"2025-12-26 17:05:31\";s:7:\"\0*\0type\";s:5:\"error\";s:10:\"\0*\0message\";s:69:\"Cannot read properties of undefined (reading &#039;toLowerCase&#039;)\";s:7:\"\0*\0meta\";a:0:{}s:8:\"\0*\0times\";i:1;s:14:\"\0*\0times_dates\";a:1:{i:0;s:19:\"2025-12-26 17:05:31\";}s:7:\"\0*\0args\";a:6:{s:4:\"type\";s:5:\"error\";s:9:\"timestamp\";s:10:\"1766768731\";s:7:\"message\";s:59:\"Cannot read properties of undefined (reading \'toLowerCase\')\";s:3:\"url\";s:96:\"https://azharulislam.asrmart.com/wp-content/plugins/elementor/assets/js/editor.min.js?ver=3.34.0\";s:4:\"line\";s:1:\"2\";s:6:\"column\";s:7:\"1013375\";}s:7:\"\0*\0file\";s:96:\"https://azharulislam.asrmart.com/wp-content/plugins/elementor/assets/js/editor.min.js?ver=3.34.0\";s:7:\"\0*\0line\";s:1:\"2\";s:9:\"\0*\0column\";s:7:\"1013375\";}}', 'off'),
(422, 'wpdm_social_share_init', '1', 'auto'),
(423, 'wpdm_social_share_enable', '0', 'auto'),
(424, 'wpdm_social_share_channels', 'a:3:{i:0;a:3:{s:2:\"id\";s:8:\"facebook\";s:4:\"name\";s:8:\"Facebook\";s:10:\"visibility\";a:2:{s:7:\"desktop\";i:1;s:6:\"mobile\";i:1;}}i:1;a:3:{s:2:\"id\";s:7:\"twitter\";s:4:\"name\";s:7:\"Twitter\";s:10:\"visibility\";a:2:{s:7:\"desktop\";i:1;s:6:\"mobile\";i:1;}}i:2;a:3:{s:2:\"id\";s:4:\"copy\";s:4:\"name\";s:4:\"Copy\";s:10:\"visibility\";a:2:{s:7:\"desktop\";i:1;s:6:\"mobile\";i:1;}}}', 'auto'),
(425, 'wpdm_social_share_channel_visibility', '3', 'auto'),
(426, 'wpdm_social_share_button_template', '1', 'auto'),
(427, 'wpdm_social_share_share_via_label', 'Sharing is Caring:', 'auto'),
(428, 'wpdm_social_share_shares_label', 'Shares', 'auto'),
(429, 'wpdm_social_share_more_label', 'More', 'auto'),
(430, 'wpdm_social_share_button_position', 'below', 'auto'),
(431, 'wpdm_social_share_button_alignment', 'left', 'auto'),
(432, 'wpdm_social_share_button_shape', 'rounded', 'auto'),
(433, 'wpdm_social_share_button_size', '1.2', 'auto'),
(434, 'wpdm_social_share_button_label', 'both', 'auto'),
(435, 'wpdm_social_share_hide_button_on', 'a:2:{s:6:\"mobile\";i:0;s:7:\"desktop\";i:0;}', 'auto'),
(436, 'wpdm_social_share_post_types', 'a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}', 'auto'),
(437, 'wpdm_social_share_button_spacing', '1', 'auto'),
(438, 'wpdm_social_share_show_total_share_count', '0', 'auto'),
(439, 'wpdm_social_share_minimum_share_count', '0', 'auto'),
(440, 'wpdm_social_share_maximum_click_count', '30', 'auto'),
(441, 'wpdm_social_share_saved', '0', 'auto'),
(442, 'wp_dark_mode_version', '5.3.0', 'auto'),
(443, '_transient_timeout_wp_dark_mode_rating_notice', '1767370937', 'off'),
(444, '_transient_wp_dark_mode_rating_notice', 'hide', 'off'),
(445, '_transient_timeout_wp_dark_mode_affiliate_notice', '1767975737', 'off'),
(446, '_transient_wp_dark_mode_affiliate_notice', 'hide', 'off'),
(447, '_transient_timeout_wp_dark_mode_upgrade_notice', '1767630137', 'off'),
(448, '_transient_wp_dark_mode_upgrade_notice', 'hide', 'off'),
(449, 'wp_dark_mode_activated', '1', 'auto'),
(454, 'wp_dark_mode_upgraded_version', '5.3.0', 'auto'),
(455, 'wp_dark_mode_preset_sync_version', '5.3.0', 'auto'),
(456, '_transient_timeout_wp_dark_mode_promo_countdown_timer', '1766816538', 'off'),
(457, '_transient_wp_dark_mode_promo_countdown_timer', '1766816538', 'off'),
(853, 'allowed_astra_notices', 'a:1:{i:0;s:26:\"astra-memory-limit-warning\";}', 'auto'),
(858, 'fs_active_plugins', 'O:8:\"stdClass\":3:{s:7:\"plugins\";a:1:{s:31:\"royal-elementor-addons/freemius\";O:8:\"stdClass\":4:{s:7:\"version\";s:6:\"2.12.0\";s:4:\"type\";s:6:\"plugin\";s:9:\"timestamp\";i:1766767785;s:11:\"plugin_path\";s:37:\"royal-elementor-addons/wpr-addons.php\";}}s:7:\"abspath\";s:40:\"/disk/asrmartc/azharulislam.asrmart.com/\";s:6:\"newest\";O:8:\"stdClass\":5:{s:11:\"plugin_path\";s:37:\"royal-elementor-addons/wpr-addons.php\";s:8:\"sdk_path\";s:31:\"royal-elementor-addons/freemius\";s:7:\"version\";s:6:\"2.12.0\";s:13:\"in_activation\";b:0;s:9:\"timestamp\";i:1766767785;}}', 'auto'),
(859, 'fs_debug_mode', '', 'auto'),
(860, 'fs_accounts', 'a:8:{s:21:\"id_slug_type_path_map\";a:1:{i:8416;a:3:{s:4:\"slug\";s:10:\"wpr-addons\";s:4:\"type\";s:6:\"plugin\";s:4:\"path\";s:37:\"royal-elementor-addons/wpr-addons.php\";}}s:11:\"plugin_data\";a:1:{s:10:\"wpr-addons\";a:17:{s:19:\"last_load_timestamp\";i:1766767785;s:16:\"plugin_main_file\";O:8:\"stdClass\":1:{s:4:\"path\";s:37:\"royal-elementor-addons/wpr-addons.php\";}s:20:\"is_network_activated\";b:0;s:17:\"install_timestamp\";i:1766767785;s:17:\"was_plugin_loaded\";b:1;s:21:\"is_plugin_new_install\";b:1;s:16:\"sdk_last_version\";N;s:11:\"sdk_version\";s:6:\"2.12.0\";s:16:\"sdk_upgrade_mode\";b:1;s:18:\"sdk_downgrade_mode\";b:0;s:19:\"plugin_last_version\";N;s:14:\"plugin_version\";s:8:\"1.7.1042\";s:19:\"plugin_upgrade_mode\";b:1;s:21:\"plugin_downgrade_mode\";b:0;s:17:\"connectivity_test\";a:6:{s:12:\"is_connected\";N;s:4:\"host\";s:24:\"azharulislam.asrmart.com\";s:9:\"server_ip\";s:15:\"103.243.173.110\";s:9:\"is_active\";b:1;s:9:\"timestamp\";i:1766767785;s:7:\"version\";s:8:\"1.7.1042\";}s:15:\"prev_is_premium\";b:0;s:21:\"is_pending_activation\";b:1;}}s:13:\"file_slug_map\";a:1:{s:37:\"royal-elementor-addons/wpr-addons.php\";s:10:\"wpr-addons\";}s:7:\"plugins\";a:1:{s:10:\"wpr-addons\";O:9:\"FS_Plugin\":24:{s:2:\"id\";s:4:\"8416\";s:7:\"updated\";N;s:7:\"created\";N;s:22:\"\0FS_Entity\0_is_updated\";b:0;s:10:\"public_key\";s:32:\"pk_a0b21b234a7c9581a555b9ee9f28a\";s:10:\"secret_key\";N;s:16:\"parent_plugin_id\";N;s:5:\"title\";s:22:\"Royal Elementor Addons\";s:4:\"slug\";s:10:\"wpr-addons\";s:12:\"premium_slug\";s:14:\"wpr-addons-pro\";s:4:\"type\";s:6:\"plugin\";s:20:\"affiliate_moderation\";s:8:\"selected\";s:19:\"is_wp_org_compliant\";b:1;s:22:\"premium_releases_count\";N;s:4:\"file\";s:37:\"royal-elementor-addons/wpr-addons.php\";s:7:\"version\";s:8:\"1.7.1042\";s:11:\"auto_update\";N;s:4:\"info\";N;s:10:\"is_premium\";b:0;s:14:\"premium_suffix\";s:9:\"(Premium)\";s:7:\"is_live\";b:1;s:9:\"bundle_id\";N;s:17:\"bundle_public_key\";N;s:17:\"opt_in_moderation\";N;}}s:12:\"gc_timestamp\";a:0:{}s:10:\"theme_data\";a:0:{}s:9:\"unique_id\";s:32:\"4fb67fa08da141f5f8a0ddbd10cc47c4\";s:13:\"admin_notices\";a:1:{s:10:\"wpr-addons\";a:1:{s:18:\"activation_pending\";a:10:{s:7:\"message\";s:207:\"You should receive a confirmation email for <b>Royal Elementor Addons</b> to your mailbox at <b>admin@azharulislam.asrmart.com</b>. Please make sure you click the button in that email to complete the opt-in.\";s:5:\"title\";s:7:\"Thanks!\";s:4:\"type\";s:7:\"success\";s:6:\"sticky\";b:1;s:2:\"id\";s:18:\"activation_pending\";s:10:\"manager_id\";s:10:\"wpr-addons\";s:6:\"plugin\";s:22:\"Royal Elementor Addons\";s:10:\"wp_user_id\";N;s:11:\"dismissible\";b:1;s:4:\"data\";a:0:{}}}}}', 'auto'),
(861, 'fs_api_cache', 'a:0:{}', 'off'),
(866, 'royal_elementor_addons_activation_time', '1766767785', 'auto'),
(867, 'royal_elementor_addons_activation_time_for_sale', '1766767785', 'auto'),
(868, '_site_transient_timeout_fs_garbage_collection', '1766854185', 'off'),
(869, '_site_transient_fs_garbage_collection', '1', 'off'),
(879, 'wpr_template_type_children', 'a:0:{}', 'auto'),
(880, 'wpr_header_conditions', '{\"user-header-header\":[\"global\"]}', 'auto'),
(892, 'eael_global_settings', 'a:1:{s:22:\"eael_ext_scroll_to_top\";a:0:{}}', 'auto'),
(903, 'recovery_mode_email_last_sent', '1766768695', 'auto'),
(907, 'wpr_has_used_royal_widgets', '1766768826', 'auto'),
(919, '_elementor_element_cache_unique_id', 'f38237f6a195aacaa8b1ba1ba86841c4', 'auto'),
(921, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'off'),
(1120, 'wp_dark_mode_frontend_enabled', '1', 'auto'),
(1121, 'wp_dark_mode_frontend_mode', 'default', 'auto'),
(1122, 'wp_dark_mode_frontend_time_starts', '06:00 PM', 'auto'),
(1123, 'wp_dark_mode_frontend_time_ends', '06:00 AM', 'auto'),
(1124, 'wp_dark_mode_frontend_custom_css', '', 'auto'),
(1125, 'wp_dark_mode_frontend_remember_choice', '1', 'auto'),
(1126, 'wp_dark_mode_admin_enabled', '', 'auto'),
(1127, 'wp_dark_mode_admin_enabled_block_editor', '1', 'auto'),
(1128, 'wp_dark_mode_admin_enabled_classic_editor', '', 'auto'),
(1129, 'wp_dark_mode_floating_switch_enabled', '1', 'auto'),
(1130, 'wp_dark_mode_floating_switch_display', 'a:3:{s:7:\"desktop\";b:1;s:6:\"mobile\";b:1;s:6:\"tablet\";b:1;}', 'auto'),
(1131, 'wp_dark_mode_floating_switch_has_delay', '', 'auto');
INSERT INTO `lladlqq4_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1132, 'wp_dark_mode_floating_switch_delay', '5', 'auto'),
(1133, 'wp_dark_mode_floating_switch_hide_on_idle', '', 'auto'),
(1134, 'wp_dark_mode_floating_switch_idle_timeout', '5', 'auto'),
(1135, 'wp_dark_mode_floating_switch_enabled_login_pages', '', 'auto'),
(1136, 'wp_dark_mode_floating_switch_style', '3', 'auto'),
(1137, 'wp_dark_mode_floating_switch_size', '1', 'auto'),
(1138, 'wp_dark_mode_floating_switch_size_custom', '100', 'auto'),
(1139, 'wp_dark_mode_floating_switch_position', 'right', 'auto'),
(1140, 'wp_dark_mode_floating_switch_position_side', 'right', 'auto'),
(1141, 'wp_dark_mode_floating_switch_position_side_value', '10', 'auto'),
(1142, 'wp_dark_mode_floating_switch_position_bottom_value', '10', 'auto'),
(1143, 'wp_dark_mode_floating_switch_enabled_attention_effect', '', 'auto'),
(1144, 'wp_dark_mode_floating_switch_attention_effect', 'wobble', 'auto'),
(1145, 'wp_dark_mode_floating_switch_enabled_cta', '', 'auto'),
(1146, 'wp_dark_mode_floating_switch_cta_text', 'Enable Dark Mode', 'auto'),
(1147, 'wp_dark_mode_floating_switch_cta_color', '#ffffff', 'auto'),
(1148, 'wp_dark_mode_floating_switch_cta_background', '#000000', 'auto'),
(1149, 'wp_dark_mode_floating_switch_enabled_custom_icons', '', 'auto'),
(1150, 'wp_dark_mode_floating_switch_icon_light', '', 'auto'),
(1151, 'wp_dark_mode_floating_switch_icon_dark', '', 'auto'),
(1152, 'wp_dark_mode_floating_switch_enabled_custom_texts', '', 'auto'),
(1153, 'wp_dark_mode_floating_switch_text_light', 'Light', 'auto'),
(1154, 'wp_dark_mode_floating_switch_text_dark', 'Dark', 'auto'),
(1155, 'wp_dark_mode_menu_switch_enabled', '', 'auto'),
(1156, 'wp_dark_mode_content_switch_enabled_top_of_posts', '', 'auto'),
(1157, 'wp_dark_mode_content_switch_enabled_top_of_pages', '', 'auto'),
(1158, 'wp_dark_mode_content_switch_style', '1', 'auto'),
(1159, 'wp_dark_mode_custom_triggers_enabled', '', 'auto'),
(1160, 'wp_dark_mode_custom_triggers_triggers', '', 'auto'),
(1161, 'wp_dark_mode_color_mode', 'presets', 'auto'),
(1162, 'wp_dark_mode_color_presets', 'a:16:{i:0;a:16:{s:4:\"name\";s:10:\"Sweet Dark\";s:2:\"bg\";s:7:\"#11131F\";s:4:\"text\";s:7:\"#F8FAFC\";s:4:\"link\";s:7:\"#04E2FF\";s:10:\"link_hover\";s:7:\"#98F3FF\";s:8:\"input_bg\";s:7:\"#45425F\";s:10:\"input_text\";s:7:\"#FFFFFF\";s:17:\"input_placeholder\";s:7:\"#6B7399\";s:11:\"button_text\";s:7:\"#F8FAFC\";s:17:\"button_hover_text\";s:7:\"#F3F5F7\";s:9:\"button_bg\";s:7:\"#2E89FF\";s:15:\"button_hover_bg\";s:7:\"#77B2FF\";s:13:\"button_border\";s:7:\"#2E89FF\";s:16:\"enable_scrollbar\";b:1;s:15:\"scrollbar_track\";s:7:\"#1D2033\";s:15:\"scrollbar_thumb\";s:7:\"#2E334D\";}i:1;a:16:{s:4:\"name\";s:4:\"Gold\";s:2:\"bg\";s:4:\"#000\";s:4:\"text\";s:7:\"#dfdedb\";s:4:\"link\";s:7:\"#e58c17\";s:10:\"link_hover\";s:7:\"#e58c17\";s:8:\"input_bg\";s:4:\"#000\";s:10:\"input_text\";s:7:\"#dfdedb\";s:17:\"input_placeholder\";s:7:\"#dfdedb\";s:11:\"button_text\";s:7:\"#dfdedb\";s:17:\"button_hover_text\";s:7:\"#dfdedb\";s:9:\"button_bg\";s:7:\"#141414\";s:15:\"button_hover_bg\";s:7:\"#141414\";s:13:\"button_border\";s:7:\"#1e1e1e\";s:16:\"enable_scrollbar\";b:0;s:15:\"scrollbar_track\";s:7:\"#141414\";s:15:\"scrollbar_thumb\";s:7:\"#dfdedb\";}i:2;a:16:{s:4:\"name\";s:8:\"Sapphire\";s:2:\"bg\";s:7:\"#1B2836\";s:4:\"text\";s:4:\"#fff\";s:4:\"link\";s:7:\"#459BE6\";s:10:\"link_hover\";s:7:\"#459BE6\";s:8:\"input_bg\";s:7:\"#1B2836\";s:10:\"input_text\";s:4:\"#fff\";s:17:\"input_placeholder\";s:4:\"#fff\";s:11:\"button_text\";s:4:\"#fff\";s:17:\"button_hover_text\";s:4:\"#fff\";s:9:\"button_bg\";s:7:\"#2f3c4a\";s:15:\"button_hover_bg\";s:7:\"#2f3c4a\";s:13:\"button_border\";s:7:\"#394654\";s:16:\"enable_scrollbar\";b:0;s:15:\"scrollbar_track\";s:7:\"#1B2836\";s:15:\"scrollbar_thumb\";s:4:\"#fff\";}i:3;a:16:{s:4:\"name\";s:8:\"Tailwind\";s:2:\"bg\";s:7:\"#111827\";s:4:\"text\";s:7:\"#F8FAFC\";s:4:\"link\";s:7:\"#06B6D4\";s:10:\"link_hover\";s:7:\"#7EE5F6\";s:8:\"input_bg\";s:7:\"#1E2133\";s:10:\"input_text\";s:7:\"#FFFFFF\";s:17:\"input_placeholder\";s:7:\"#A8AFBA\";s:11:\"button_text\";s:7:\"#F8FAFC\";s:17:\"button_hover_text\";s:7:\"#F3F5F7\";s:9:\"button_bg\";s:7:\"#6366F1\";s:15:\"button_hover_bg\";s:7:\"#8688FF\";s:13:\"button_border\";s:7:\"#6E71FF\";s:16:\"enable_scrollbar\";b:0;s:15:\"scrollbar_track\";s:7:\"#111827\";s:15:\"scrollbar_thumb\";s:7:\"#374151\";}i:4;a:16:{s:4:\"name\";s:14:\"Midnight Bloom\";s:2:\"bg\";s:7:\"#141438\";s:4:\"text\";s:7:\"#F8FAFC\";s:4:\"link\";s:7:\"#908DFF\";s:10:\"link_hover\";s:7:\"#C1C0FF\";s:8:\"input_bg\";s:7:\"#43415A\";s:10:\"input_text\";s:7:\"#FFFFFF\";s:17:\"input_placeholder\";s:7:\"#A9A7B7\";s:11:\"button_text\";s:7:\"#141438\";s:17:\"button_hover_text\";s:7:\"#33336F\";s:9:\"button_bg\";s:7:\"#908DFF\";s:15:\"button_hover_bg\";s:7:\"#B0AEFF\";s:13:\"button_border\";s:7:\"#908DFF\";s:16:\"enable_scrollbar\";b:0;s:15:\"scrollbar_track\";s:7:\"#212244\";s:15:\"scrollbar_thumb\";s:7:\"#16173A\";}i:5;a:16:{s:4:\"name\";s:7:\"Fuchsia\";s:2:\"bg\";s:7:\"#1E0024\";s:4:\"text\";s:4:\"#fff\";s:4:\"link\";s:7:\"#E251FF\";s:10:\"link_hover\";s:7:\"#E251FF\";s:8:\"input_bg\";s:7:\"#1E0024\";s:10:\"input_text\";s:4:\"#fff\";s:17:\"input_placeholder\";s:4:\"#fff\";s:11:\"button_text\";s:4:\"#fff\";s:17:\"button_hover_text\";s:4:\"#fff\";s:9:\"button_bg\";s:7:\"#321438\";s:15:\"button_hover_bg\";s:7:\"#321438\";s:13:\"button_border\";s:7:\"#321438\";s:16:\"enable_scrollbar\";b:0;s:15:\"scrollbar_track\";s:7:\"#1E0024\";s:15:\"scrollbar_thumb\";s:4:\"#fff\";}i:6;a:16:{s:4:\"name\";s:4:\"Rose\";s:2:\"bg\";s:7:\"#270000\";s:4:\"text\";s:4:\"#fff\";s:4:\"link\";s:7:\"#FF7878\";s:10:\"link_hover\";s:7:\"#FF7878\";s:8:\"input_bg\";s:7:\"#270000\";s:10:\"input_text\";s:4:\"#fff\";s:17:\"input_placeholder\";s:4:\"#fff\";s:11:\"button_text\";s:4:\"#fff\";s:17:\"button_hover_text\";s:4:\"#fff\";s:9:\"button_bg\";s:7:\"#3b1414\";s:15:\"button_hover_bg\";s:7:\"#3b1414\";s:13:\"button_border\";s:7:\"#451e1e\";s:16:\"enable_scrollbar\";b:0;s:15:\"scrollbar_track\";s:7:\"#270000\";s:15:\"scrollbar_thumb\";s:4:\"#fff\";}i:7;a:16:{s:4:\"name\";s:6:\"Violet\";s:2:\"bg\";s:7:\"#160037\";s:4:\"text\";s:7:\"#EBEBEB\";s:4:\"link\";s:7:\"#B381FF\";s:10:\"link_hover\";s:7:\"#B381FF\";s:8:\"input_bg\";s:7:\"#160037\";s:10:\"input_text\";s:7:\"#EBEBEB\";s:17:\"input_placeholder\";s:7:\"#EBEBEB\";s:11:\"button_text\";s:7:\"#EBEBEB\";s:17:\"button_hover_text\";s:7:\"#EBEBEB\";s:9:\"button_bg\";s:7:\"#2a144b\";s:15:\"button_hover_bg\";s:7:\"#2a144b\";s:13:\"button_border\";s:7:\"#341e55\";s:16:\"enable_scrollbar\";b:0;s:15:\"scrollbar_track\";s:7:\"#160037\";s:15:\"scrollbar_thumb\";s:7:\"#EBEBEB\";}i:8;a:16:{s:4:\"name\";s:4:\"Pink\";s:2:\"bg\";s:7:\"#121212\";s:4:\"text\";s:7:\"#E6E6E6\";s:4:\"link\";s:7:\"#FF9191\";s:10:\"link_hover\";s:7:\"#FF9191\";s:8:\"input_bg\";s:7:\"#121212\";s:10:\"input_text\";s:7:\"#E6E6E6\";s:17:\"input_placeholder\";s:7:\"#E6E6E6\";s:11:\"button_text\";s:7:\"#E6E6E6\";s:17:\"button_hover_text\";s:7:\"#E6E6E6\";s:9:\"button_bg\";s:7:\"#262626\";s:15:\"button_hover_bg\";s:7:\"#262626\";s:13:\"button_border\";s:7:\"#303030\";s:16:\"enable_scrollbar\";b:0;s:15:\"scrollbar_track\";s:7:\"#121212\";s:15:\"scrollbar_thumb\";s:7:\"#E6E6E6\";}i:9;a:16:{s:4:\"name\";s:5:\"Kelly\";s:2:\"bg\";s:7:\"#000A3B\";s:4:\"text\";s:7:\"#FFFFFF\";s:4:\"link\";s:7:\"#3AFF82\";s:10:\"link_hover\";s:7:\"#3AFF82\";s:8:\"input_bg\";s:7:\"#000A3B\";s:10:\"input_text\";s:7:\"#FFFFFF\";s:17:\"input_placeholder\";s:7:\"#FFFFFF\";s:11:\"button_text\";s:7:\"#FFFFFF\";s:17:\"button_hover_text\";s:7:\"#FFFFFF\";s:9:\"button_bg\";s:7:\"#141e4f\";s:15:\"button_hover_bg\";s:7:\"#141e4f\";s:13:\"button_border\";s:7:\"#1e2859\";s:16:\"enable_scrollbar\";b:0;s:15:\"scrollbar_track\";s:7:\"#000A3B\";s:15:\"scrollbar_thumb\";s:7:\"#FFFFFF\";}i:10;a:16:{s:4:\"name\";s:7:\"Magenta\";s:2:\"bg\";s:7:\"#171717\";s:4:\"text\";s:7:\"#BFB7C0\";s:4:\"link\";s:7:\"#F776F0\";s:10:\"link_hover\";s:7:\"#F776F0\";s:8:\"input_bg\";s:7:\"#171717\";s:10:\"input_text\";s:7:\"#BFB7C0\";s:17:\"input_placeholder\";s:7:\"#BFB7C0\";s:11:\"button_text\";s:7:\"#BFB7C0\";s:17:\"button_hover_text\";s:7:\"#BFB7C0\";s:9:\"button_bg\";s:7:\"#2b2b2b\";s:15:\"button_hover_bg\";s:7:\"#2b2b2b\";s:13:\"button_border\";s:7:\"#353535\";s:16:\"enable_scrollbar\";b:0;s:15:\"scrollbar_track\";s:7:\"#171717\";s:15:\"scrollbar_thumb\";s:7:\"#BFB7C0\";}i:11;a:16:{s:4:\"name\";s:5:\"Green\";s:2:\"bg\";s:7:\"#003711\";s:4:\"text\";s:7:\"#FFFFFF\";s:4:\"link\";s:7:\"#84FF6D\";s:10:\"link_hover\";s:7:\"#84FF6D\";s:8:\"input_bg\";s:7:\"#003711\";s:10:\"input_text\";s:7:\"#FFFFFF\";s:17:\"input_placeholder\";s:7:\"#FFFFFF\";s:11:\"button_text\";s:7:\"#FFFFFF\";s:17:\"button_hover_text\";s:7:\"#FFFFFF\";s:9:\"button_bg\";s:7:\"#144b25\";s:15:\"button_hover_bg\";s:7:\"#144b25\";s:13:\"button_border\";s:7:\"#1e552f\";s:16:\"enable_scrollbar\";b:0;s:15:\"scrollbar_track\";s:7:\"#003711\";s:15:\"scrollbar_thumb\";s:7:\"#FFFFFF\";}i:12;a:16:{s:4:\"name\";s:6:\"Orange\";s:2:\"bg\";s:7:\"#23243A\";s:4:\"text\";s:7:\"#D6CB99\";s:4:\"link\";s:7:\"#FF9323\";s:10:\"link_hover\";s:7:\"#FF9323\";s:8:\"input_bg\";s:7:\"#23243A\";s:10:\"input_text\";s:7:\"#D6CB99\";s:17:\"input_placeholder\";s:7:\"#D6CB99\";s:11:\"button_text\";s:7:\"#D6CB99\";s:17:\"button_hover_text\";s:7:\"#D6CB99\";s:9:\"button_bg\";s:7:\"#37384e\";s:15:\"button_hover_bg\";s:7:\"#37384e\";s:13:\"button_border\";s:7:\"#414258\";s:16:\"enable_scrollbar\";b:0;s:15:\"scrollbar_track\";s:7:\"#23243A\";s:15:\"scrollbar_thumb\";s:7:\"#D6CB99\";}i:13;a:16:{s:4:\"name\";s:6:\"Yellow\";s:2:\"bg\";s:7:\"#151819\";s:4:\"text\";s:7:\"#D5D6D7\";s:4:\"link\";s:7:\"#DAA40B\";s:10:\"link_hover\";s:7:\"#DAA40B\";s:8:\"input_bg\";s:7:\"#151819\";s:10:\"input_text\";s:7:\"#D5D6D7\";s:17:\"input_placeholder\";s:7:\"#D5D6D7\";s:11:\"button_text\";s:7:\"#D5D6D7\";s:17:\"button_hover_text\";s:7:\"#D5D6D7\";s:9:\"button_bg\";s:7:\"#292c2d\";s:15:\"button_hover_bg\";s:7:\"#292c2d\";s:13:\"button_border\";s:7:\"#333637\";s:16:\"enable_scrollbar\";b:0;s:15:\"scrollbar_track\";s:7:\"#151819\";s:15:\"scrollbar_thumb\";s:7:\"#D5D6D7\";}i:14;a:16:{s:4:\"name\";s:8:\"Facebook\";s:2:\"bg\";s:7:\"#18191A\";s:4:\"text\";s:7:\"#DCDEE3\";s:4:\"link\";s:7:\"#2D88FF\";s:10:\"link_hover\";s:7:\"#2D88FF\";s:8:\"input_bg\";s:7:\"#18191A\";s:10:\"input_text\";s:7:\"#DCDEE3\";s:17:\"input_placeholder\";s:7:\"#DCDEE3\";s:11:\"button_text\";s:7:\"#DCDEE3\";s:17:\"button_hover_text\";s:7:\"#DCDEE3\";s:9:\"button_bg\";s:7:\"#2c2d2e\";s:15:\"button_hover_bg\";s:7:\"#2c2d2e\";s:13:\"button_border\";s:7:\"#363738\";s:16:\"enable_scrollbar\";b:0;s:15:\"scrollbar_track\";s:7:\"#18191A\";s:15:\"scrollbar_thumb\";s:7:\"#DCDEE3\";}i:15;a:16:{s:4:\"name\";s:7:\"Twitter\";s:2:\"bg\";s:7:\"#141d26\";s:4:\"text\";s:4:\"#fff\";s:4:\"link\";s:7:\"#1C9CEA\";s:10:\"link_hover\";s:7:\"#1C9CEA\";s:8:\"input_bg\";s:7:\"#141d26\";s:10:\"input_text\";s:4:\"#fff\";s:17:\"input_placeholder\";s:4:\"#fff\";s:11:\"button_text\";s:4:\"#fff\";s:17:\"button_hover_text\";s:4:\"#fff\";s:9:\"button_bg\";s:7:\"#28313a\";s:15:\"button_hover_bg\";s:7:\"#28313a\";s:13:\"button_border\";s:7:\"#323b44\";s:16:\"enable_scrollbar\";b:0;s:15:\"scrollbar_track\";s:7:\"#141d26\";s:15:\"scrollbar_thumb\";s:4:\"#fff\";}}', 'auto'),
(1163, 'wp_dark_mode_color_preset_id', '2', 'auto'),
(1164, 'wp_dark_mode_color_filter_brightness', '100', 'auto'),
(1165, 'wp_dark_mode_color_filter_contrast', '90', 'auto'),
(1166, 'wp_dark_mode_color_filter_grayscale', '0', 'auto'),
(1167, 'wp_dark_mode_color_filter_sepia', '10', 'auto'),
(1168, 'wp_dark_mode_image_replaces', '', 'auto'),
(1169, 'wp_dark_mode_image_enabled_low_brightness', '', 'auto'),
(1170, 'wp_dark_mode_image_brightness', '80', 'auto'),
(1171, 'wp_dark_mode_image_low_brightness_excludes', '', 'auto'),
(1172, 'wp_dark_mode_image_enabled_low_grayscale', '', 'auto'),
(1173, 'wp_dark_mode_image_grayscale', '0', 'auto'),
(1174, 'wp_dark_mode_image_low_grayscale_excludes', '', 'auto'),
(1175, 'wp_dark_mode_video_replaces', '', 'auto'),
(1176, 'wp_dark_mode_video_enabled_low_brightness', '', 'auto'),
(1177, 'wp_dark_mode_video_brightness', '80', 'auto'),
(1178, 'wp_dark_mode_video_low_brightness_excludes', '', 'auto'),
(1179, 'wp_dark_mode_video_enabled_low_grayscale', '', 'auto'),
(1180, 'wp_dark_mode_video_grayscale', '0', 'auto'),
(1181, 'wp_dark_mode_video_low_grayscale_excludes', '', 'auto'),
(1182, 'wp_dark_mode_animation_enabled', '', 'auto'),
(1183, 'wp_dark_mode_animation_name', 'fade-in', 'auto'),
(1184, 'wp_dark_mode_performance_track_dynamic_content', '', 'auto'),
(1185, 'wp_dark_mode_performance_load_scripts_in_footer', '', 'auto'),
(1186, 'wp_dark_mode_performance_execute_as', 'sync', 'auto'),
(1187, 'wp_dark_mode_performance_exclude_cache', '', 'auto'),
(1188, 'wp_dark_mode_excludes_elements', '', 'auto'),
(1189, 'wp_dark_mode_excludes_elements_includes', '', 'auto'),
(1190, 'wp_dark_mode_excludes_posts', '', 'auto'),
(1191, 'wp_dark_mode_excludes_posts_all', '', 'auto'),
(1192, 'wp_dark_mode_excludes_posts_except', '', 'auto'),
(1193, 'wp_dark_mode_excludes_taxonomies', '', 'auto'),
(1194, 'wp_dark_mode_excludes_taxonomies_all', '', 'auto'),
(1195, 'wp_dark_mode_excludes_taxonomies_except', '', 'auto'),
(1196, 'wp_dark_mode_excludes_wc_products', '', 'auto'),
(1197, 'wp_dark_mode_excludes_wc_products_all', '', 'auto'),
(1198, 'wp_dark_mode_excludes_wc_products_except', '', 'auto'),
(1199, 'wp_dark_mode_excludes_wc_categories', '', 'auto'),
(1200, 'wp_dark_mode_excludes_wc_categories_all', '', 'auto'),
(1201, 'wp_dark_mode_excludes_wc_categories_except', '', 'auto'),
(1202, 'wp_dark_mode_accessibility_enabled_keyboard_shortcut', '1', 'auto'),
(1203, 'wp_dark_mode_accessibility_enabled_url_param', '', 'auto'),
(1204, 'wp_dark_mode_typography_enabled', '', 'auto'),
(1205, 'wp_dark_mode_typography_font_size', '1.2', 'auto'),
(1206, 'wp_dark_mode_typography_font_size_custom', '100', 'auto'),
(1207, 'wp_dark_mode_analytics_enabled', '1', 'auto'),
(1208, 'wp_dark_mode_analytics_enabled_dashboard_widget', '1', 'auto'),
(1209, 'wp_dark_mode_analytics_enabled_email_reporting', '', 'auto'),
(1210, 'wp_dark_mode_analytics_email_reporting_frequency', 'daily', 'auto'),
(1211, 'wp_dark_mode_analytics_email_reporting_address', '', 'auto'),
(1212, 'wp_dark_mode_analytics_email_reporting_subject', 'WP Dark Mode Analytics Report', 'auto'),
(1253, 'wpr-parallax-background', 'on', 'auto'),
(1254, 'wpr-parallax-multi-layer', 'on', 'auto'),
(1255, 'st_attachments', 'a:5:{i:0;i:45;i:1;i:46;i:2;i:47;i:3;i:48;i:4;i:49;}', 'off'),
(1263, 'action_scheduler_migration_status', 'complete', 'auto'),
(1294, '_transient_is_multi_author', '0', 'on'),
(1313, '_transient_timeout_elementor_remote_info_api_data_3.34.0', '1766842089', 'off'),
(1314, '_transient_elementor_remote_info_api_data_3.34.0', 'a:4:{s:9:\"timestamp\";s:10:\"1766798837\";s:14:\"upgrade_notice\";a:3:{s:7:\"version\";s:5:\"2.0.0\";s:7:\"message\";s:0:\"\";s:11:\"update_link\";s:0:\"\";}s:11:\"pro_widgets\";a:82:{i:0;a:4:{s:4:\"name\";s:6:\"search\";s:5:\"title\";s:6:\"Search\";s:4:\"icon\";s:17:\"eicon-site-search\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:1;a:4:{s:4:\"name\";s:5:\"posts\";s:5:\"title\";s:5:\"Posts\";s:4:\"icon\";s:15:\"eicon-post-list\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:2;a:4:{s:4:\"name\";s:9:\"portfolio\";s:5:\"title\";s:9:\"Portfolio\";s:4:\"icon\";s:18:\"eicon-gallery-grid\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:3;a:4:{s:4:\"name\";s:17:\"link-in-bio-var-2\";s:5:\"title\";s:7:\"Classic\";s:4:\"icon\";s:19:\"eicon-site-identity\";s:10:\"categories\";s:15:\"[\"link-in-bio\"]\";}i:4;a:4:{s:4:\"name\";s:9:\"mega-menu\";s:5:\"title\";s:4:\"Menu\";s:4:\"icon\";s:15:\"eicon-mega-menu\";s:10:\"categories\";s:33:\"[\"pro-elements\",\"theme-elements\"]\";}i:5;a:4:{s:4:\"name\";s:17:\"link-in-bio-var-3\";s:5:\"title\";s:8:\"Showcase\";s:4:\"icon\";s:19:\"eicon-site-identity\";s:10:\"categories\";s:15:\"[\"link-in-bio\"]\";}i:6;a:4:{s:4:\"name\";s:4:\"form\";s:5:\"title\";s:4:\"Form\";s:4:\"icon\";s:21:\"eicon-form-horizontal\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:7;a:4:{s:4:\"name\";s:17:\"link-in-bio-var-4\";s:5:\"title\";s:5:\"Links\";s:4:\"icon\";s:19:\"eicon-site-identity\";s:10:\"categories\";s:15:\"[\"link-in-bio\"]\";}i:8;a:4:{s:4:\"name\";s:9:\"loop-grid\";s:5:\"title\";s:9:\"Loop Grid\";s:4:\"icon\";s:18:\"eicon-loop-builder\";s:10:\"categories\";s:33:\"[\"pro-elements\",\"theme-elements\"]\";}i:9;a:4:{s:4:\"name\";s:17:\"link-in-bio-var-5\";s:5:\"title\";s:8:\"Services\";s:4:\"icon\";s:19:\"eicon-site-identity\";s:10:\"categories\";s:15:\"[\"link-in-bio\"]\";}i:10;a:4:{s:4:\"name\";s:13:\"loop-carousel\";s:5:\"title\";s:13:\"Loop Carousel\";s:4:\"icon\";s:19:\"eicon-carousel-loop\";s:10:\"categories\";s:33:\"[\"pro-elements\",\"theme-elements\"]\";}i:11;a:4:{s:4:\"name\";s:17:\"link-in-bio-var-6\";s:5:\"title\";s:9:\"Portfolio\";s:4:\"icon\";s:19:\"eicon-site-identity\";s:10:\"categories\";s:15:\"[\"link-in-bio\"]\";}i:12;a:4:{s:4:\"name\";s:7:\"gallery\";s:5:\"title\";s:7:\"Gallery\";s:4:\"icon\";s:23:\"eicon-gallery-justified\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:13;a:4:{s:4:\"name\";s:17:\"link-in-bio-var-7\";s:5:\"title\";s:13:\"Business Card\";s:4:\"icon\";s:19:\"eicon-site-identity\";s:10:\"categories\";s:15:\"[\"link-in-bio\"]\";}i:14;a:4:{s:4:\"name\";s:17:\"animated-headline\";s:5:\"title\";s:17:\"Animated Headline\";s:4:\"icon\";s:23:\"eicon-animated-headline\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:15;a:4:{s:4:\"name\";s:10:\"price-list\";s:5:\"title\";s:10:\"Price List\";s:4:\"icon\";s:16:\"eicon-price-list\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:16;a:4:{s:4:\"name\";s:11:\"price-table\";s:5:\"title\";s:11:\"Price Table\";s:4:\"icon\";s:17:\"eicon-price-table\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:17;a:4:{s:4:\"name\";s:8:\"flip-box\";s:5:\"title\";s:8:\"Flip Box\";s:4:\"icon\";s:14:\"eicon-flip-box\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:18;a:4:{s:4:\"name\";s:14:\"call-to-action\";s:5:\"title\";s:14:\"Call to Action\";s:4:\"icon\";s:20:\"eicon-image-rollover\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:19;a:4:{s:4:\"name\";s:14:\"media-carousel\";s:5:\"title\";s:14:\"Media Carousel\";s:4:\"icon\";s:20:\"eicon-media-carousel\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:20;a:4:{s:4:\"name\";s:15:\"nested-carousel\";s:5:\"title\";s:8:\"Carousel\";s:4:\"icon\";s:21:\"eicon-nested-carousel\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:21;a:4:{s:4:\"name\";s:10:\"off-canvas\";s:5:\"title\";s:10:\"Off-Canvas\";s:4:\"icon\";s:16:\"eicon-off-canvas\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:22;a:4:{s:4:\"name\";s:9:\"countdown\";s:5:\"title\";s:9:\"Countdown\";s:4:\"icon\";s:15:\"eicon-countdown\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:23;a:4:{s:4:\"name\";s:13:\"share-buttons\";s:5:\"title\";s:13:\"Share Buttons\";s:4:\"icon\";s:11:\"eicon-share\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:24;a:4:{s:4:\"name\";s:10:\"blockquote\";s:5:\"title\";s:10:\"Blockquote\";s:4:\"icon\";s:16:\"eicon-blockquote\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:25;a:4:{s:4:\"name\";s:6:\"lottie\";s:5:\"title\";s:6:\"Lottie\";s:4:\"icon\";s:12:\"eicon-lottie\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:26;a:4:{s:4:\"name\";s:7:\"hotspot\";s:5:\"title\";s:7:\"Hotspot\";s:4:\"icon\";s:19:\"eicon-image-hotspot\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:27;a:4:{s:4:\"name\";s:13:\"paypal-button\";s:5:\"title\";s:13:\"PayPal Button\";s:4:\"icon\";s:19:\"eicon-paypal-button\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:28;a:4:{s:4:\"name\";s:14:\"code-highlight\";s:5:\"title\";s:14:\"Code Highlight\";s:4:\"icon\";s:20:\"eicon-code-highlight\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:29;a:4:{s:4:\"name\";s:14:\"video-playlist\";s:5:\"title\";s:14:\"Video Playlist\";s:4:\"icon\";s:20:\"eicon-video-playlist\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:30;a:4:{s:4:\"name\";s:8:\"template\";s:5:\"title\";s:8:\"Template\";s:4:\"icon\";s:19:\"eicon-document-file\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:31;a:4:{s:4:\"name\";s:13:\"stripe-button\";s:5:\"title\";s:13:\"Stripe Button\";s:4:\"icon\";s:19:\"eicon-stripe-button\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:32;a:4:{s:4:\"name\";s:16:\"progress-tracker\";s:5:\"title\";s:16:\"Progress Tracker\";s:4:\"icon\";s:22:\"eicon-progress-tracker\";s:10:\"categories\";s:40:\"[\"pro-elements\",\"theme-elements-single\"]\";}i:33;a:4:{s:4:\"name\";s:8:\"nav-menu\";s:5:\"title\";s:8:\"Nav Menu\";s:4:\"icon\";s:14:\"eicon-nav-menu\";s:10:\"categories\";s:33:\"[\"pro-elements\",\"theme-elements\"]\";}i:34;a:4:{s:4:\"name\";s:17:\"table-of-contents\";s:5:\"title\";s:17:\"Table of Contents\";s:4:\"icon\";s:23:\"eicon-table-of-contents\";s:10:\"categories\";s:33:\"[\"pro-elements\",\"theme-elements\"]\";}i:35;a:4:{s:4:\"name\";s:5:\"login\";s:5:\"title\";s:5:\"Login\";s:4:\"icon\";s:15:\"eicon-lock-user\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:36;a:4:{s:4:\"name\";s:6:\"slides\";s:5:\"title\";s:6:\"Slides\";s:4:\"icon\";s:12:\"eicon-slides\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:37;a:4:{s:4:\"name\";s:20:\"testimonial-carousel\";s:5:\"title\";s:20:\"Testimonial Carousel\";s:4:\"icon\";s:26:\"eicon-testimonial-carousel\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:38;a:4:{s:4:\"name\";s:7:\"reviews\";s:5:\"title\";s:7:\"Reviews\";s:4:\"icon\";s:12:\"eicon-review\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:39;a:4:{s:4:\"name\";s:15:\"facebook-button\";s:5:\"title\";s:15:\"Facebook Button\";s:4:\"icon\";s:23:\"eicon-facebook-like-box\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:40;a:4:{s:4:\"name\";s:17:\"facebook-comments\";s:5:\"title\";s:17:\"Facebook Comments\";s:4:\"icon\";s:23:\"eicon-facebook-comments\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:41;a:4:{s:4:\"name\";s:14:\"facebook-embed\";s:5:\"title\";s:14:\"Facebook Embed\";s:4:\"icon\";s:14:\"eicon-fb-embed\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:42;a:4:{s:4:\"name\";s:13:\"facebook-page\";s:5:\"title\";s:13:\"Facebook Page\";s:4:\"icon\";s:13:\"eicon-fb-feed\";s:10:\"categories\";s:16:\"[\"pro-elements\"]\";}i:43;a:4:{s:4:\"name\";s:15:\"theme-site-logo\";s:5:\"title\";s:9:\"Site Logo\";s:4:\"icon\";s:15:\"eicon-site-logo\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:44;a:4:{s:4:\"name\";s:16:\"theme-site-title\";s:5:\"title\";s:10:\"Site Title\";s:4:\"icon\";s:16:\"eicon-site-title\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:45;a:4:{s:4:\"name\";s:16:\"theme-page-title\";s:5:\"title\";s:10:\"Page Title\";s:4:\"icon\";s:19:\"eicon-archive-title\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:46;a:4:{s:4:\"name\";s:16:\"theme-post-title\";s:5:\"title\";s:10:\"Post Title\";s:4:\"icon\";s:16:\"eicon-post-title\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:47;a:4:{s:4:\"name\";s:18:\"theme-post-excerpt\";s:5:\"title\";s:12:\"Post Excerpt\";s:4:\"icon\";s:18:\"eicon-post-excerpt\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:48;a:4:{s:4:\"name\";s:25:\"theme-post-featured-image\";s:5:\"title\";s:14:\"Featured Image\";s:4:\"icon\";s:20:\"eicon-featured-image\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:49;a:4:{s:4:\"name\";s:19:\"theme-archive-title\";s:5:\"title\";s:13:\"Archive Title\";s:4:\"icon\";s:19:\"eicon-archive-title\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:50;a:4:{s:4:\"name\";s:13:\"archive-posts\";s:5:\"title\";s:13:\"Archive Posts\";s:4:\"icon\";s:19:\"eicon-archive-posts\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:51;a:4:{s:4:\"name\";s:10:\"author-box\";s:5:\"title\";s:10:\"Author Box\";s:4:\"icon\";s:12:\"eicon-person\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:52;a:4:{s:4:\"name\";s:13:\"post-comments\";s:5:\"title\";s:13:\"Post Comments\";s:4:\"icon\";s:14:\"eicon-comments\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:53;a:4:{s:4:\"name\";s:15:\"post-navigation\";s:5:\"title\";s:15:\"Post Navigation\";s:4:\"icon\";s:21:\"eicon-post-navigation\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:54;a:4:{s:4:\"name\";s:9:\"post-info\";s:5:\"title\";s:9:\"Post Info\";s:4:\"icon\";s:15:\"eicon-post-info\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:55;a:4:{s:4:\"name\";s:7:\"sitemap\";s:5:\"title\";s:7:\"Sitemap\";s:4:\"icon\";s:13:\"eicon-sitemap\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:56;a:4:{s:4:\"name\";s:11:\"breadcrumbs\";s:5:\"title\";s:11:\"Breadcrumbs\";s:4:\"icon\";s:11:\"eicon-yoast\";s:10:\"categories\";s:18:\"[\"theme-elements\"]\";}i:57;a:4:{s:4:\"name\";s:21:\"woocommerce-menu-cart\";s:5:\"title\";s:9:\"Menu Cart\";s:4:\"icon\";s:10:\"eicon-cart\";s:10:\"categories\";s:41:\"[\"theme-elements\",\"woocommerce-elements\"]\";}i:58;a:4:{s:4:\"name\";s:19:\"wc-archive-products\";s:5:\"title\";s:16:\"Archive Products\";s:4:\"icon\";s:14:\"eicon-products\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:59;a:4:{s:4:\"name\";s:31:\"woocommerce-archive-description\";s:5:\"title\";s:19:\"Archive Description\";s:4:\"icon\";s:25:\"eicon-product-description\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:60;a:4:{s:4:\"name\";s:20:\"woocommerce-products\";s:5:\"title\";s:8:\"Products\";s:4:\"icon\";s:14:\"eicon-products\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:61;a:4:{s:4:\"name\";s:22:\"woocommerce-breadcrumb\";s:5:\"title\";s:23:\"WooCommerce Breadcrumbs\";s:4:\"icon\";s:25:\"eicon-product-breadcrumbs\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:62;a:4:{s:4:\"name\";s:14:\"wc-add-to-cart\";s:5:\"title\";s:18:\"Custom Add To Cart\";s:4:\"icon\";s:17:\"eicon-woocommerce\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:63;a:4:{s:4:\"name\";s:11:\"wc-elements\";s:5:\"title\";s:17:\"WooCommerce Pages\";s:4:\"icon\";s:19:\"eicon-product-pages\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:64;a:4:{s:4:\"name\";s:13:\"wc-categories\";s:5:\"title\";s:18:\"Product Categories\";s:4:\"icon\";s:24:\"eicon-product-categories\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:65;a:4:{s:4:\"name\";s:25:\"woocommerce-product-title\";s:5:\"title\";s:13:\"Product Title\";s:4:\"icon\";s:19:\"eicon-product-title\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:66;a:4:{s:4:\"name\";s:26:\"woocommerce-product-images\";s:5:\"title\";s:14:\"Product Images\";s:4:\"icon\";s:20:\"eicon-product-images\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:67;a:4:{s:4:\"name\";s:25:\"woocommerce-product-price\";s:5:\"title\";s:13:\"Product Price\";s:4:\"icon\";s:19:\"eicon-product-price\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:68;a:4:{s:4:\"name\";s:31:\"woocommerce-product-add-to-cart\";s:5:\"title\";s:11:\"Add To Cart\";s:4:\"icon\";s:25:\"eicon-product-add-to-cart\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:69;a:4:{s:4:\"name\";s:26:\"woocommerce-product-rating\";s:5:\"title\";s:14:\"Product Rating\";s:4:\"icon\";s:20:\"eicon-product-rating\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:70;a:4:{s:4:\"name\";s:25:\"woocommerce-product-stock\";s:5:\"title\";s:13:\"Product Stock\";s:4:\"icon\";s:19:\"eicon-product-stock\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:71;a:4:{s:4:\"name\";s:24:\"woocommerce-product-meta\";s:5:\"title\";s:12:\"Product Meta\";s:4:\"icon\";s:18:\"eicon-product-meta\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:72;a:4:{s:4:\"name\";s:37:\"woocommerce-product-short-description\";s:5:\"title\";s:17:\"Short Description\";s:4:\"icon\";s:25:\"eicon-product-description\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:73;a:4:{s:4:\"name\";s:29:\"woocommerce-product-data-tabs\";s:5:\"title\";s:17:\"Product Data Tabs\";s:4:\"icon\";s:18:\"eicon-product-tabs\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:74;a:4:{s:4:\"name\";s:42:\"woocommerce-product-additional-information\";s:5:\"title\";s:22:\"Additional Information\";s:4:\"icon\";s:19:\" eicon-product-info\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:75;a:4:{s:4:\"name\";s:27:\"woocommerce-product-related\";s:5:\"title\";s:15:\"Product Related\";s:4:\"icon\";s:21:\"eicon-product-related\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:76;a:4:{s:4:\"name\";s:26:\"woocommerce-product-upsell\";s:5:\"title\";s:7:\"Upsells\";s:4:\"icon\";s:20:\"eicon-product-upsell\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:77;a:4:{s:4:\"name\";s:25:\"woocommerce-checkout-page\";s:5:\"title\";s:8:\"Checkout\";s:4:\"icon\";s:14:\"eicon-checkout\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:78;a:4:{s:4:\"name\";s:16:\"woocommerce-cart\";s:5:\"title\";s:4:\"Cart\";s:4:\"icon\";s:14:\"eicon-woo-cart\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:79;a:4:{s:4:\"name\";s:22:\"woocommerce-my-account\";s:5:\"title\";s:10:\"My Account\";s:4:\"icon\";s:16:\"eicon-my-account\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:80;a:4:{s:4:\"name\";s:28:\"woocommerce-purchase-summary\";s:5:\"title\";s:16:\"Purchase Summary\";s:4:\"icon\";s:22:\"eicon-purchase-summary\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}i:81;a:4:{s:4:\"name\";s:19:\"woocommerce-notices\";s:5:\"title\";s:19:\"WooCommerce Notices\";s:4:\"icon\";s:25:\"eicon-woocommerce-notices\";s:10:\"categories\";s:24:\"[\"woocommerce-elements\"]\";}}s:17:\"canary_deployment\";a:2:{s:11:\"plugin_info\";a:11:{s:2:\"id\";s:23:\"w.org/plugins/elementor\";s:4:\"slug\";s:9:\"elementor\";s:6:\"plugin\";s:23:\"elementor/elementor.php\";s:11:\"new_version\";s:5:\"3.6.0\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/plugin/elementor.3.6.0.zip\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/elementor/\";s:5:\"icons\";a:3:{s:2:\"2x\";s:62:\"https://ps.w.org/elementor/assets/icon-256x256.png?rev=1427768\";s:2:\"1x\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=1426809\";s:3:\"svg\";s:54:\"https://ps.w.org/elementor/assets/icon.svg?rev=1426809\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=1475479\";s:2:\"1x\";s:64:\"https://ps.w.org/elementor/assets/banner-772x250.png?rev=1475479\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:3:\"6.9\";s:12:\"requires_php\";s:3:\"5.6\";}s:10:\"conditions\";a:0:{}}}', 'off'),
(1337, '_transient_health-check-site-status-result', '{\"good\":17,\"recommended\":7,\"critical\":1}', 'on'),
(1346, '_site_transient_timeout_wp_theme_files_patterns-e28f7e315121591d6d70eb03da791b77', '1766829876', 'off'),
(1347, '_site_transient_wp_theme_files_patterns-e28f7e315121591d6d70eb03da791b77', 'a:2:{s:7:\"version\";s:7:\"4.11.18\";s:8:\"patterns\";a:0:{}}', 'off'),
(1348, '_transient_timeout_astra-theme-cron-test-ok', '1766831676', 'off'),
(1349, '_transient_astra-theme-cron-test-ok', '1', 'off'),
(1352, '_site_transient_timeout_theme_roots', '1766830534', 'off'),
(1353, '_site_transient_theme_roots', 'a:7:{s:16:\"agencygrove-dark\";s:7:\"/themes\";s:11:\"agencygrove\";s:7:\"/themes\";s:5:\"astra\";s:7:\"/themes\";s:24:\"graphic-design-portfolio\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";}', 'off'),
(1356, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1766828749;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:23:\"elementor/elementor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:23:\"w.org/plugins/elementor\";s:4:\"slug\";s:9:\"elementor\";s:6:\"plugin\";s:23:\"elementor/elementor.php\";s:11:\"new_version\";s:6:\"3.34.0\";s:3:\"url\";s:40:\"https://wordpress.org/plugins/elementor/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/elementor.3.34.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:62:\"https://ps.w.org/elementor/assets/icon-256x256.gif?rev=3111597\";s:2:\"1x\";s:62:\"https://ps.w.org/elementor/assets/icon-128x128.gif?rev=3111597\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/elementor/assets/banner-1544x500.png?rev=3164133\";s:2:\"1x\";s:64:\"https://ps.w.org/elementor/assets/banner-772x250.png?rev=3164133\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.6\";}s:65:\"essential-addons-for-elementor-lite/essential_adons_elementor.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:49:\"w.org/plugins/essential-addons-for-elementor-lite\";s:4:\"slug\";s:35:\"essential-addons-for-elementor-lite\";s:6:\"plugin\";s:65:\"essential-addons-for-elementor-lite/essential_adons_elementor.php\";s:11:\"new_version\";s:5:\"6.5.4\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/essential-addons-for-elementor-lite/\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/plugin/essential-addons-for-elementor-lite.6.5.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/essential-addons-for-elementor-lite/assets/icon-256x256.gif?rev=3182943\";s:2:\"1x\";s:88:\"https://ps.w.org/essential-addons-for-elementor-lite/assets/icon-128x128.gif?rev=3182943\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/essential-addons-for-elementor-lite/assets/banner-1544x500.png?rev=3419289\";s:2:\"1x\";s:90:\"https://ps.w.org/essential-addons-for-elementor-lite/assets/banner-772x250.png?rev=3419289\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:37:\"royal-elementor-addons/wpr-addons.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/royal-elementor-addons\";s:4:\"slug\";s:22:\"royal-elementor-addons\";s:6:\"plugin\";s:37:\"royal-elementor-addons/wpr-addons.php\";s:11:\"new_version\";s:8:\"1.7.1042\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/royal-elementor-addons/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/royal-elementor-addons.1.7.1042.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:75:\"https://ps.w.org/royal-elementor-addons/assets/icon-128x128.gif?rev=2604295\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/royal-elementor-addons/assets/banner-1544x500.png?rev=2782347\";s:2:\"1x\";s:77:\"https://ps.w.org/royal-elementor-addons/assets/banner-772x250.png?rev=2782347\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/royal-elementor-addons/assets/banner-1544x500-rtl.png?rev=2782347\";s:2:\"1x\";s:81:\"https://ps.w.org/royal-elementor-addons/assets/banner-772x250-rtl.png?rev=2782347\";}s:8:\"requires\";s:3:\"5.0\";}s:23:\"wp-dark-mode/plugin.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wp-dark-mode\";s:4:\"slug\";s:12:\"wp-dark-mode\";s:6:\"plugin\";s:23:\"wp-dark-mode/plugin.php\";s:11:\"new_version\";s:5:\"5.3.0\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wp-dark-mode/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/plugin/wp-dark-mode.5.3.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:65:\"https://ps.w.org/wp-dark-mode/assets/icon-256x256.gif?rev=2872214\";s:2:\"1x\";s:65:\"https://ps.w.org/wp-dark-mode/assets/icon-256x256.gif?rev=2872214\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wp-dark-mode/assets/banner-1544x500.gif?rev=3298692\";s:2:\"1x\";s:67:\"https://ps.w.org/wp-dark-mode/assets/banner-772x250.gif?rev=3298692\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";}s:24:\"wpforms-lite/wpforms.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:26:\"w.org/plugins/wpforms-lite\";s:4:\"slug\";s:12:\"wpforms-lite\";s:6:\"plugin\";s:24:\"wpforms-lite/wpforms.php\";s:11:\"new_version\";s:7:\"1.9.8.7\";s:3:\"url\";s:43:\"https://wordpress.org/plugins/wpforms-lite/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/wpforms-lite.1.9.8.7.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=3254748\";s:3:\"svg\";s:57:\"https://ps.w.org/wpforms-lite/assets/icon.svg?rev=3254748\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:68:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500.png?rev=3091364\";s:2:\"1x\";s:67:\"https://ps.w.org/wpforms-lite/assets/banner-772x250.png?rev=3091364\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/wpforms-lite/assets/banner-1544x500-rtl.png?rev=3254748\";s:2:\"1x\";s:71:\"https://ps.w.org/wpforms-lite/assets/banner-772x250-rtl.png?rev=3254748\";}s:8:\"requires\";s:3:\"5.5\";}}s:7:\"checked\";a:5:{s:23:\"elementor/elementor.php\";s:6:\"3.34.0\";s:65:\"essential-addons-for-elementor-lite/essential_adons_elementor.php\";s:5:\"6.5.4\";s:37:\"royal-elementor-addons/wpr-addons.php\";s:8:\"1.7.1042\";s:23:\"wp-dark-mode/plugin.php\";s:5:\"5.3.0\";s:24:\"wpforms-lite/wpforms.php\";s:7:\"1.9.8.7\";}}', 'off'),
(1357, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1766828751;s:7:\"checked\";a:7:{s:16:\"agencygrove-dark\";s:3:\"1.3\";s:11:\"agencygrove\";s:3:\"2.1\";s:5:\"astra\";s:7:\"4.11.18\";s:24:\"graphic-design-portfolio\";s:3:\"1.9\";s:16:\"twentytwentyfive\";s:3:\"1.4\";s:16:\"twentytwentyfour\";s:3:\"1.4\";s:17:\"twentytwentythree\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:7:{s:16:\"agencygrove-dark\";a:6:{s:5:\"theme\";s:16:\"agencygrove-dark\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/agencygrove-dark/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/agencygrove-dark.1.3.zip\";s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.0\";}s:11:\"agencygrove\";a:6:{s:5:\"theme\";s:11:\"agencygrove\";s:11:\"new_version\";s:3:\"2.1\";s:3:\"url\";s:41:\"https://wordpress.org/themes/agencygrove/\";s:7:\"package\";s:57:\"https://downloads.wordpress.org/theme/agencygrove.2.1.zip\";s:8:\"requires\";s:3:\"6.0\";s:12:\"requires_php\";s:3:\"7.0\";}s:5:\"astra\";a:6:{s:5:\"theme\";s:5:\"astra\";s:11:\"new_version\";s:7:\"4.11.18\";s:3:\"url\";s:35:\"https://wordpress.org/themes/astra/\";s:7:\"package\";s:55:\"https://downloads.wordpress.org/theme/astra.4.11.18.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.3\";}s:24:\"graphic-design-portfolio\";a:6:{s:5:\"theme\";s:24:\"graphic-design-portfolio\";s:11:\"new_version\";s:3:\"1.9\";s:3:\"url\";s:54:\"https://wordpress.org/themes/graphic-design-portfolio/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/theme/graphic-design-portfolio.1.9.zip\";s:8:\"requires\";b:0;s:12:\"requires_php\";s:3:\"7.0\";}s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.4.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.4.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_postmeta`
--

DROP TABLE IF EXISTS `lladlqq4_postmeta`;
CREATE TABLE IF NOT EXISTS `lladlqq4_postmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `post_id` (`post_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=512 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lladlqq4_postmeta`
--

INSERT INTO `lladlqq4_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_edit_lock', '1766772526:1'),
(4, 9, '_elementor_edit_mode', 'builder'),
(5, 9, '_elementor_template_type', 'kit'),
(6, 6, '_elementor_edit_mode', 'builder'),
(7, 6, '_elementor_template_type', 'wp-page'),
(8, 6, '_elementor_version', '3.34.0'),
(13, 3, '_wp_trash_meta_status', 'draft'),
(14, 3, '_wp_trash_meta_time', '1766765175'),
(15, 3, '_wp_desired_post_slug', 'privacy-policy'),
(16, 2, '_wp_trash_meta_status', 'publish'),
(17, 2, '_wp_trash_meta_time', '1766765175'),
(18, 2, '_wp_desired_post_slug', 'sample-page'),
(19, 12, '_edit_lock', '1766765205:1'),
(20, 15, '_edit_lock', '1766765245:1'),
(21, 6, '_eael_post_view_count', '70'),
(28, 6, '_astra_content_layout_flag', 'disabled'),
(30, 6, 'ast-title-bar-display', 'disabled'),
(31, 6, 'ast-featured-img', 'disabled'),
(32, 6, 'ast-site-content-layout', 'full-width-container'),
(33, 6, 'site-sidebar-layout', 'no-sidebar'),
(34, 6, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(38, 17, '_elementor_template_type', 'wp-post'),
(39, 17, '_wpr_template_type', 'header'),
(40, 17, '_wp_page_template', 'elementor_canvas'),
(41, 17, 'wpr_header_show_on_canvas', 'false'),
(42, 17, '_elementor_edit_mode', 'builder'),
(43, 17, '_astra_content_layout_flag', 'disabled'),
(45, 17, 'ast-title-bar-display', 'disabled'),
(46, 17, 'ast-featured-img', 'disabled'),
(47, 17, 'ast-site-content-layout', 'full-width-container'),
(48, 17, 'site-sidebar-layout', 'no-sidebar'),
(49, 17, '_elementor_version', '3.34.0'),
(50, 17, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}'),
(52, 17, '_edit_lock', '1766772470:1'),
(61, 19, '_wp_attached_file', '2025/12/Azharul-Islam-Logo.png'),
(62, 19, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:290;s:6:\"height\";i:97;s:4:\"file\";s:30:\"2025/12/Azharul-Islam-Logo.png\";s:8:\"filesize\";i:10435;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:29:\"Azharul-Islam-Logo-150x97.png\";s:5:\"width\";i:150;s:6:\"height\";i:97;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6379;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 20, '_elementor_template_type', 'wp-post'),
(64, 20, '_wp_page_template', 'elementor_canvas'),
(65, 20, '_elementor_edit_mode', 'builder'),
(66, 20, '_elementor_version', '3.34.0'),
(67, 20, '_elementor_page_settings', 'a:0:{}'),
(68, 17, '_elementor_data', '[{\"id\":\"155239a\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"2971a23\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"950bb15\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"center\",\"background_overlay_color\":\"#181818\",\"background_overlay_color_b\":\"#BF53E6\",\"background_overlay_gradient_angle\":{\"unit\":\"deg\",\"size\":147,\"sizes\":[]},\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"flex_justify_content\":\"space-between\",\"background_overlay_background\":\"classic\"},\"elements\":[{\"id\":\"3d16650\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":20},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"a704841\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"5101df9\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"e049423\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/Azharul-Islam-Logo.png\",\"id\":19,\"size\":\"\",\"alt\":\"\",\"source\":\"library\"},\"image_size\":\"full\",\"align\":\"start\",\"width\":{\"unit\":\"%\",\"size\":68,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true},{\"id\":\"6a2dcb3\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"40a860f\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e71bd79\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"min_height\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_color\":\"#FFFFFF\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"border_radius\":{\"unit\":\"px\",\"top\":\"20\",\"right\":\"0\",\"bottom\":\"20\",\"left\":\"0\",\"isLinked\":false},\"box_shadow_box_shadow\":{\"horizontal\":0,\"vertical\":0,\"blur\":10,\"spread\":0,\"color\":\"rgba(255, 255, 255, 0.5)\"},\"box_shadow_hover_box_shadow_type\":\"yes\",\"box_shadow_hover_box_shadow\":{\"horizontal\":0,\"vertical\":0,\"blur\":10,\"spread\":0,\"color\":\"rgba(79.78993383742912, 255, 69.29347826086959, 0.5)\"}},\"elements\":[{\"id\":\"363d837\",\"elType\":\"widget\",\"settings\":{\"toggle_btn_txt_1\":\"Menu\",\"toggle_btn_txt_2\":\"Close\",\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"menu_select\":\"main-menu\",\"menu_align\":\"center\",\"menu_item_color\":\"#000000\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_background_background\":\"classic\",\"menu_items_typography_typography\":\"custom\",\"menu_items_typography_font_family\":\"Arial\",\"menu_items_typography_font_size\":{\"unit\":\"px\",\"size\":16,\"sizes\":[]},\"menu_items_typography_font_weight\":\"600\",\"menu_items_typography_letter_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_typography_word_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_padding_bg_hr\":{\"unit\":\"px\",\"size\":26,\"sizes\":[]},\"menu_items_padding_vr\":{\"unit\":\"px\",\"size\":19,\"sizes\":[]},\"menu_items_sub_offset\":{\"unit\":\"px\",\"size\":21,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"wpr-mega-menu\"}],\"isInner\":true},{\"id\":\"71a67da\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":10},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"543d038\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"bf290b3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"flex-end\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"67c756a\",\"elType\":\"widget\",\"settings\":{\"text\":\"Hire Me!\",\"button_text_color\":\"#FFFFFF\",\"background_color\":\"#61CE70\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"button\"}],\"isInner\":true}],\"isInner\":false}]'),
(69, 21, '_elementor_template_type', 'wp-post'),
(70, 21, '_wp_page_template', 'elementor_canvas'),
(71, 21, '_elementor_edit_mode', 'builder'),
(72, 21, '_elementor_version', '3.34.0'),
(73, 21, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}'),
(74, 21, '_elementor_data', '[{\"id\":\"155239a\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"2971a23\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"950bb15\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"3d16650\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":20},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"a704841\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"5101df9\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"e049423\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/Azharul-Islam-Logo.png\",\"id\":19,\"size\":\"\",\"alt\":\"\",\"source\":\"library\"},\"image_size\":\"full\",\"align\":\"start\",\"width\":{\"unit\":\"%\",\"size\":84,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true},{\"id\":\"6a2dcb3\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"40a860f\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e71bd79\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"363d837\",\"elType\":\"widget\",\"settings\":{\"toggle_btn_txt_1\":\"Menu\",\"toggle_btn_txt_2\":\"Close\",\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"wpr-mega-menu\"}],\"isInner\":true},{\"id\":\"71a67da\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"25\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"543d038\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"bf290b3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true}],\"isInner\":false}]'),
(76, 17, '_eael_custom_js', ''),
(81, 22, '_menu_item_type', 'post_type'),
(82, 22, '_menu_item_menu_item_parent', '0'),
(83, 22, '_menu_item_object_id', '6'),
(84, 22, '_menu_item_object', 'page'),
(85, 22, '_menu_item_target', ''),
(86, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(87, 22, '_menu_item_xfn', ''),
(88, 22, '_menu_item_url', ''),
(90, 23, '_menu_item_type', 'post_type'),
(91, 23, '_menu_item_menu_item_parent', '0'),
(92, 23, '_menu_item_object_id', '15'),
(93, 23, '_menu_item_object', 'page'),
(94, 23, '_menu_item_target', ''),
(95, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(96, 23, '_menu_item_xfn', ''),
(97, 23, '_menu_item_url', ''),
(99, 24, '_menu_item_type', 'post_type'),
(100, 24, '_menu_item_menu_item_parent', '0'),
(101, 24, '_menu_item_object_id', '12'),
(102, 24, '_menu_item_object', 'page'),
(103, 24, '_menu_item_target', ''),
(104, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(105, 24, '_menu_item_xfn', ''),
(106, 24, '_menu_item_url', ''),
(117, 26, '_elementor_template_type', 'wp-post'),
(118, 26, '_wp_page_template', 'elementor_canvas'),
(119, 26, '_elementor_edit_mode', 'builder'),
(120, 26, '_elementor_version', '3.34.0'),
(121, 26, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}'),
(122, 26, '_elementor_data', '[{\"id\":\"155239a\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"2971a23\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"950bb15\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"center\"},\"elements\":[{\"id\":\"3d16650\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":20},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"a704841\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"5101df9\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"e049423\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/Azharul-Islam-Logo.png\",\"id\":19,\"size\":\"\",\"alt\":\"\",\"source\":\"library\"},\"image_size\":\"full\",\"align\":\"start\",\"width\":{\"unit\":\"%\",\"size\":84,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true},{\"id\":\"6a2dcb3\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"40a860f\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e71bd79\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"363d837\",\"elType\":\"widget\",\"settings\":{\"toggle_btn_txt_1\":\"Menu\",\"toggle_btn_txt_2\":\"Close\",\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"menu_select\":\"main-menu\",\"menu_align\":\"center\",\"menu_item_color\":\"#000000\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_background_background\":\"classic\",\"_background_color\":\"#FDF6F6\"},\"elements\":[],\"widgetType\":\"wpr-mega-menu\"}],\"isInner\":true},{\"id\":\"71a67da\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"25\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"543d038\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"bf290b3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true}],\"isInner\":false}]'),
(136, 28, '_elementor_template_type', 'wp-post'),
(137, 28, '_wp_page_template', 'elementor_canvas'),
(138, 28, '_elementor_edit_mode', 'builder'),
(139, 28, '_elementor_version', '3.34.0'),
(140, 28, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}'),
(141, 28, '_elementor_data', '[{\"id\":\"155239a\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"2971a23\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"950bb15\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"center\"},\"elements\":[{\"id\":\"3d16650\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":20},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"a704841\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"5101df9\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"e049423\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/Azharul-Islam-Logo.png\",\"id\":19,\"size\":\"\",\"alt\":\"\",\"source\":\"library\"},\"image_size\":\"full\",\"align\":\"start\",\"width\":{\"unit\":\"%\",\"size\":84,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true},{\"id\":\"6a2dcb3\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"40a860f\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e71bd79\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"363d837\",\"elType\":\"widget\",\"settings\":{\"toggle_btn_txt_1\":\"Menu\",\"toggle_btn_txt_2\":\"Close\",\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"menu_select\":\"main-menu\",\"menu_align\":\"center\",\"menu_item_color\":\"#000000\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_background_background\":\"classic\",\"_background_color\":\"#FDF6F6\",\"menu_items_typography_typography\":\"custom\",\"menu_items_typography_font_family\":\"Arial\",\"menu_items_typography_font_size\":{\"unit\":\"px\",\"size\":16,\"sizes\":[]},\"menu_items_typography_font_weight\":\"600\"},\"elements\":[],\"widgetType\":\"wpr-mega-menu\"}],\"isInner\":true},{\"id\":\"71a67da\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"25\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"543d038\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"bf290b3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true}],\"isInner\":false}]'),
(155, 30, '_edit_lock', '1766769386:1'),
(156, 31, '_edit_lock', '1766769653:1'),
(158, 33, '_elementor_template_type', 'wp-post'),
(159, 33, '_wp_page_template', 'elementor_canvas'),
(160, 33, '_elementor_edit_mode', 'builder'),
(161, 33, '_elementor_version', '3.34.0'),
(162, 33, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}'),
(163, 33, '_elementor_data', '[{\"id\":\"155239a\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"2971a23\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"950bb15\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"center\",\"background_overlay_color\":\"#A4E5F0\",\"background_overlay_color_b\":\"#BF53E6\",\"background_overlay_gradient_angle\":{\"unit\":\"deg\",\"size\":147,\"sizes\":[]},\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]}},\"elements\":[{\"id\":\"3d16650\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":20},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"a704841\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"5101df9\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"e049423\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/Azharul-Islam-Logo.png\",\"id\":19,\"size\":\"\",\"alt\":\"\",\"source\":\"library\"},\"image_size\":\"full\",\"align\":\"start\",\"width\":{\"unit\":\"%\",\"size\":84,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true},{\"id\":\"6a2dcb3\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"40a860f\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e71bd79\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"min_height\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]}},\"elements\":[{\"id\":\"363d837\",\"elType\":\"widget\",\"settings\":{\"toggle_btn_txt_1\":\"Menu\",\"toggle_btn_txt_2\":\"Close\",\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"menu_select\":\"main-menu\",\"menu_align\":\"center\",\"menu_item_color\":\"#000000\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_background_background\":\"classic\",\"menu_items_typography_typography\":\"custom\",\"menu_items_typography_font_family\":\"Arial\",\"menu_items_typography_font_size\":{\"unit\":\"px\",\"size\":16,\"sizes\":[]},\"menu_items_typography_font_weight\":\"600\"},\"elements\":[],\"widgetType\":\"wpr-mega-menu\"}],\"isInner\":true},{\"id\":\"71a67da\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"25\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"543d038\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"bf290b3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true}],\"isInner\":false}]'),
(169, 34, '_edit_lock', '1766769671:1'),
(170, 36, '_menu_item_type', 'post_type'),
(171, 36, '_menu_item_menu_item_parent', '0'),
(172, 36, '_menu_item_object_id', '34'),
(173, 36, '_menu_item_object', 'page'),
(174, 36, '_menu_item_target', ''),
(175, 36, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(176, 36, '_menu_item_xfn', ''),
(177, 36, '_menu_item_url', ''),
(179, 37, '_menu_item_type', 'post_type'),
(180, 37, '_menu_item_menu_item_parent', '0'),
(181, 37, '_menu_item_object_id', '31'),
(182, 37, '_menu_item_object', 'page'),
(183, 37, '_menu_item_target', ''),
(184, 37, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(185, 37, '_menu_item_xfn', ''),
(186, 37, '_menu_item_url', ''),
(188, 38, '_elementor_template_type', 'wp-post'),
(189, 38, '_wp_page_template', 'elementor_canvas'),
(190, 38, '_elementor_edit_mode', 'builder'),
(191, 38, '_elementor_version', '3.34.0'),
(192, 38, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}'),
(193, 38, '_elementor_data', '[{\"id\":\"155239a\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"2971a23\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"950bb15\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"center\",\"background_overlay_color\":\"#A4E5F0\",\"background_overlay_color_b\":\"#BF53E6\",\"background_overlay_gradient_angle\":{\"unit\":\"deg\",\"size\":147,\"sizes\":[]},\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]}},\"elements\":[{\"id\":\"3d16650\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":20},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"a704841\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"5101df9\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"e049423\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/Azharul-Islam-Logo.png\",\"id\":19,\"size\":\"\",\"alt\":\"\",\"source\":\"library\"},\"image_size\":\"full\",\"align\":\"start\",\"width\":{\"unit\":\"%\",\"size\":84,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true},{\"id\":\"6a2dcb3\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"40a860f\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e71bd79\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"min_height\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]}},\"elements\":[{\"id\":\"363d837\",\"elType\":\"widget\",\"settings\":{\"toggle_btn_txt_1\":\"Menu\",\"toggle_btn_txt_2\":\"Close\",\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"menu_select\":\"main-menu\",\"menu_align\":\"center\",\"menu_item_color\":\"#000000\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_background_background\":\"classic\",\"menu_items_typography_typography\":\"custom\",\"menu_items_typography_font_family\":\"Arial\",\"menu_items_typography_font_size\":{\"unit\":\"px\",\"size\":16,\"sizes\":[]},\"menu_items_typography_font_weight\":\"600\",\"menu_items_typography_letter_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_typography_word_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_padding_bg_hr\":{\"unit\":\"px\",\"size\":27,\"sizes\":[]},\"menu_items_padding_vr\":{\"unit\":\"px\",\"size\":21,\"sizes\":[]},\"menu_items_sub_offset\":{\"unit\":\"px\",\"size\":21,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"wpr-mega-menu\"}],\"isInner\":true},{\"id\":\"71a67da\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"25\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"543d038\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"bf290b3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true}],\"isInner\":false}]'),
(199, 39, '_elementor_template_type', 'wp-post'),
(200, 39, '_wp_page_template', 'elementor_canvas'),
(201, 39, '_elementor_edit_mode', 'builder'),
(202, 39, '_elementor_version', '3.34.0'),
(203, 39, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}'),
(204, 39, '_elementor_data', '[{\"id\":\"155239a\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"2971a23\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"950bb15\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"center\",\"background_overlay_color\":\"#A4E5F0\",\"background_overlay_color_b\":\"#BF53E6\",\"background_overlay_gradient_angle\":{\"unit\":\"deg\",\"size\":147,\"sizes\":[]},\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]}},\"elements\":[{\"id\":\"3d16650\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":20},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"a704841\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"5101df9\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"e049423\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/Azharul-Islam-Logo.png\",\"id\":19,\"size\":\"\",\"alt\":\"\",\"source\":\"library\"},\"image_size\":\"full\",\"align\":\"start\",\"width\":{\"unit\":\"%\",\"size\":68,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true},{\"id\":\"6a2dcb3\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"40a860f\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e71bd79\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"min_height\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]}},\"elements\":[{\"id\":\"363d837\",\"elType\":\"widget\",\"settings\":{\"toggle_btn_txt_1\":\"Menu\",\"toggle_btn_txt_2\":\"Close\",\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"menu_select\":\"main-menu\",\"menu_align\":\"center\",\"menu_item_color\":\"#000000\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_background_background\":\"classic\",\"menu_items_typography_typography\":\"custom\",\"menu_items_typography_font_family\":\"Arial\",\"menu_items_typography_font_size\":{\"unit\":\"px\",\"size\":16,\"sizes\":[]},\"menu_items_typography_font_weight\":\"600\",\"menu_items_typography_letter_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_typography_word_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_padding_bg_hr\":{\"unit\":\"px\",\"size\":27,\"sizes\":[]},\"menu_items_padding_vr\":{\"unit\":\"px\",\"size\":21,\"sizes\":[]},\"menu_items_sub_offset\":{\"unit\":\"px\",\"size\":21,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"wpr-mega-menu\"}],\"isInner\":true},{\"id\":\"71a67da\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"25\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"543d038\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"bf290b3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true}],\"isInner\":false}]'),
(208, 40, '_elementor_template_type', 'wp-post'),
(209, 40, '_wp_page_template', 'elementor_canvas'),
(210, 40, '_elementor_edit_mode', 'builder'),
(211, 40, '_elementor_version', '3.34.0'),
(212, 40, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}');
INSERT INTO `lladlqq4_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(213, 40, '_elementor_data', '[{\"id\":\"155239a\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"2971a23\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"950bb15\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"center\",\"background_overlay_color\":\"#A4E5F0\",\"background_overlay_color_b\":\"#BF53E6\",\"background_overlay_gradient_angle\":{\"unit\":\"deg\",\"size\":147,\"sizes\":[]},\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"flex_justify_content\":\"space-between\"},\"elements\":[{\"id\":\"3d16650\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":20},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"a704841\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"5101df9\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"e049423\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/Azharul-Islam-Logo.png\",\"id\":19,\"size\":\"\",\"alt\":\"\",\"source\":\"library\"},\"image_size\":\"full\",\"align\":\"start\",\"width\":{\"unit\":\"%\",\"size\":68,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true},{\"id\":\"6a2dcb3\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"40a860f\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e71bd79\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"min_height\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]}},\"elements\":[{\"id\":\"363d837\",\"elType\":\"widget\",\"settings\":{\"toggle_btn_txt_1\":\"Menu\",\"toggle_btn_txt_2\":\"Close\",\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"menu_select\":\"main-menu\",\"menu_align\":\"center\",\"menu_item_color\":\"#000000\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_background_background\":\"classic\",\"menu_items_typography_typography\":\"custom\",\"menu_items_typography_font_family\":\"Arial\",\"menu_items_typography_font_size\":{\"unit\":\"px\",\"size\":16,\"sizes\":[]},\"menu_items_typography_font_weight\":\"600\",\"menu_items_typography_letter_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_typography_word_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_padding_bg_hr\":{\"unit\":\"px\",\"size\":27,\"sizes\":[]},\"menu_items_padding_vr\":{\"unit\":\"px\",\"size\":21,\"sizes\":[]},\"menu_items_sub_offset\":{\"unit\":\"px\",\"size\":21,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"wpr-mega-menu\"}],\"isInner\":true},{\"id\":\"71a67da\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":10},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"543d038\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"bf290b3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"flex-end\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"67c756a\",\"elType\":\"widget\",\"settings\":{\"text\":\"Hire Me!\",\"button_text_color\":\"#FFFFFF\",\"background_color\":\"#61CE70\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"button\"}],\"isInner\":true}],\"isInner\":false}]'),
(217, 41, '_elementor_template_type', 'wp-post'),
(218, 41, '_wp_page_template', 'elementor_canvas'),
(219, 41, '_elementor_edit_mode', 'builder'),
(220, 41, '_elementor_version', '3.34.0'),
(221, 41, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}'),
(222, 41, '_elementor_data', '[{\"id\":\"155239a\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"2971a23\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"950bb15\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"center\",\"background_overlay_color\":\"#A4E5F0\",\"background_overlay_color_b\":\"#BF53E6\",\"background_overlay_gradient_angle\":{\"unit\":\"deg\",\"size\":147,\"sizes\":[]},\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"flex_justify_content\":\"space-between\"},\"elements\":[{\"id\":\"3d16650\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":20},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"a704841\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"5101df9\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"e049423\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/Azharul-Islam-Logo.png\",\"id\":19,\"size\":\"\",\"alt\":\"\",\"source\":\"library\"},\"image_size\":\"full\",\"align\":\"start\",\"width\":{\"unit\":\"%\",\"size\":68,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true},{\"id\":\"6a2dcb3\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"40a860f\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e71bd79\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"min_height\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_color\":\"#FFFFFF\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"border_radius\":{\"unit\":\"px\",\"top\":\"20\",\"right\":\"0\",\"bottom\":\"20\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"363d837\",\"elType\":\"widget\",\"settings\":{\"toggle_btn_txt_1\":\"Menu\",\"toggle_btn_txt_2\":\"Close\",\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"menu_select\":\"main-menu\",\"menu_align\":\"center\",\"menu_item_color\":\"#000000\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_background_background\":\"classic\",\"menu_items_typography_typography\":\"custom\",\"menu_items_typography_font_family\":\"Arial\",\"menu_items_typography_font_size\":{\"unit\":\"px\",\"size\":16,\"sizes\":[]},\"menu_items_typography_font_weight\":\"600\",\"menu_items_typography_letter_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_typography_word_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_padding_bg_hr\":{\"unit\":\"px\",\"size\":27,\"sizes\":[]},\"menu_items_padding_vr\":{\"unit\":\"px\",\"size\":21,\"sizes\":[]},\"menu_items_sub_offset\":{\"unit\":\"px\",\"size\":21,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"wpr-mega-menu\"}],\"isInner\":true},{\"id\":\"71a67da\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":10},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"543d038\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"bf290b3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"flex-end\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"67c756a\",\"elType\":\"widget\",\"settings\":{\"text\":\"Hire Me!\",\"button_text_color\":\"#FFFFFF\",\"background_color\":\"#61CE70\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"button\"}],\"isInner\":true}],\"isInner\":false}]'),
(228, 42, '_elementor_template_type', 'wp-post'),
(229, 42, '_wp_page_template', 'elementor_canvas'),
(230, 42, '_elementor_edit_mode', 'builder'),
(231, 42, '_elementor_version', '3.34.0'),
(232, 42, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}'),
(233, 42, '_elementor_data', '[{\"id\":\"155239a\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"2971a23\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"950bb15\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"center\",\"background_overlay_color\":\"#A4E5F0\",\"background_overlay_color_b\":\"#BF53E6\",\"background_overlay_gradient_angle\":{\"unit\":\"deg\",\"size\":147,\"sizes\":[]},\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"flex_justify_content\":\"space-between\"},\"elements\":[{\"id\":\"3d16650\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":20},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"a704841\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"5101df9\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"e049423\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/Azharul-Islam-Logo.png\",\"id\":19,\"size\":\"\",\"alt\":\"\",\"source\":\"library\"},\"image_size\":\"full\",\"align\":\"start\",\"width\":{\"unit\":\"%\",\"size\":68,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true},{\"id\":\"6a2dcb3\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"40a860f\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e71bd79\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"min_height\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_color\":\"#353535\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"border_radius\":{\"unit\":\"px\",\"top\":\"20\",\"right\":\"0\",\"bottom\":\"20\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"363d837\",\"elType\":\"widget\",\"settings\":{\"toggle_btn_txt_1\":\"Menu\",\"toggle_btn_txt_2\":\"Close\",\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"menu_select\":\"main-menu\",\"menu_align\":\"center\",\"menu_item_color\":\"#000000\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_background_background\":\"classic\",\"menu_items_typography_typography\":\"custom\",\"menu_items_typography_font_family\":\"Arial\",\"menu_items_typography_font_size\":{\"unit\":\"px\",\"size\":16,\"sizes\":[]},\"menu_items_typography_font_weight\":\"600\",\"menu_items_typography_letter_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_typography_word_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_padding_bg_hr\":{\"unit\":\"px\",\"size\":27,\"sizes\":[]},\"menu_items_padding_vr\":{\"unit\":\"px\",\"size\":21,\"sizes\":[]},\"menu_items_sub_offset\":{\"unit\":\"px\",\"size\":21,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"wpr-mega-menu\"}],\"isInner\":true},{\"id\":\"71a67da\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":10},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"543d038\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"bf290b3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"flex-end\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"67c756a\",\"elType\":\"widget\",\"settings\":{\"text\":\"Hire Me!\",\"button_text_color\":\"#FFFFFF\",\"background_color\":\"#61CE70\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"button\"}],\"isInner\":true}],\"isInner\":false}]'),
(239, 43, '_elementor_template_type', 'wp-post'),
(240, 43, '_wp_page_template', 'elementor_canvas'),
(241, 43, '_elementor_edit_mode', 'builder'),
(242, 43, '_elementor_version', '3.34.0'),
(243, 43, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}'),
(244, 43, '_elementor_data', '[{\"id\":\"155239a\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"2971a23\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"950bb15\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"center\",\"background_overlay_color\":\"#A4E5F0\",\"background_overlay_color_b\":\"#BF53E6\",\"background_overlay_gradient_angle\":{\"unit\":\"deg\",\"size\":147,\"sizes\":[]},\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"flex_justify_content\":\"space-between\"},\"elements\":[{\"id\":\"3d16650\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":20},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"a704841\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"5101df9\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"e049423\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/Azharul-Islam-Logo.png\",\"id\":19,\"size\":\"\",\"alt\":\"\",\"source\":\"library\"},\"image_size\":\"full\",\"align\":\"start\",\"width\":{\"unit\":\"%\",\"size\":68,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true},{\"id\":\"6a2dcb3\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"40a860f\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e71bd79\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"min_height\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_color\":\"#353535\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"border_radius\":{\"unit\":\"px\",\"top\":\"20\",\"right\":\"0\",\"bottom\":\"20\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"363d837\",\"elType\":\"widget\",\"settings\":{\"toggle_btn_txt_1\":\"Menu\",\"toggle_btn_txt_2\":\"Close\",\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"menu_select\":\"main-menu\",\"menu_align\":\"center\",\"menu_item_color\":\"#000000\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_background_background\":\"classic\",\"menu_items_typography_typography\":\"custom\",\"menu_items_typography_font_family\":\"Arial\",\"menu_items_typography_font_size\":{\"unit\":\"px\",\"size\":16,\"sizes\":[]},\"menu_items_typography_font_weight\":\"600\",\"menu_items_typography_letter_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_typography_word_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_padding_bg_hr\":{\"unit\":\"px\",\"size\":26,\"sizes\":[]},\"menu_items_padding_vr\":{\"unit\":\"px\",\"size\":19,\"sizes\":[]},\"menu_items_sub_offset\":{\"unit\":\"px\",\"size\":21,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"wpr-mega-menu\"}],\"isInner\":true},{\"id\":\"71a67da\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":10},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"543d038\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"bf290b3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"flex-end\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"67c756a\",\"elType\":\"widget\",\"settings\":{\"text\":\"Hire Me!\",\"button_text_color\":\"#FFFFFF\",\"background_color\":\"#61CE70\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"button\"}],\"isInner\":true}],\"isInner\":false}]'),
(248, 44, '_elementor_template_type', 'wp-post'),
(249, 44, '_wp_page_template', 'elementor_canvas'),
(250, 44, '_elementor_edit_mode', 'builder'),
(251, 44, '_elementor_version', '3.34.0'),
(252, 44, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}'),
(253, 44, '_elementor_data', '[{\"id\":\"155239a\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"2971a23\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"950bb15\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"center\",\"background_overlay_color\":\"#A4E5F0\",\"background_overlay_color_b\":\"#BF53E6\",\"background_overlay_gradient_angle\":{\"unit\":\"deg\",\"size\":147,\"sizes\":[]},\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"flex_justify_content\":\"space-between\"},\"elements\":[{\"id\":\"3d16650\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":20},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"a704841\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"5101df9\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"e049423\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/Azharul-Islam-Logo.png\",\"id\":19,\"size\":\"\",\"alt\":\"\",\"source\":\"library\"},\"image_size\":\"full\",\"align\":\"start\",\"width\":{\"unit\":\"%\",\"size\":68,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true},{\"id\":\"6a2dcb3\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"40a860f\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e71bd79\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"min_height\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_color\":\"#222222\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"border_radius\":{\"unit\":\"px\",\"top\":\"20\",\"right\":\"0\",\"bottom\":\"20\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"363d837\",\"elType\":\"widget\",\"settings\":{\"toggle_btn_txt_1\":\"Menu\",\"toggle_btn_txt_2\":\"Close\",\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"menu_select\":\"main-menu\",\"menu_align\":\"center\",\"menu_item_color\":\"#000000\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_background_background\":\"classic\",\"menu_items_typography_typography\":\"custom\",\"menu_items_typography_font_family\":\"Arial\",\"menu_items_typography_font_size\":{\"unit\":\"px\",\"size\":16,\"sizes\":[]},\"menu_items_typography_font_weight\":\"600\",\"menu_items_typography_letter_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_typography_word_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_padding_bg_hr\":{\"unit\":\"px\",\"size\":26,\"sizes\":[]},\"menu_items_padding_vr\":{\"unit\":\"px\",\"size\":19,\"sizes\":[]},\"menu_items_sub_offset\":{\"unit\":\"px\",\"size\":21,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"wpr-mega-menu\"}],\"isInner\":true},{\"id\":\"71a67da\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":10},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"543d038\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"bf290b3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"flex-end\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"67c756a\",\"elType\":\"widget\",\"settings\":{\"text\":\"Hire Me!\",\"button_text_color\":\"#FFFFFF\",\"background_color\":\"#61CE70\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"button\"}],\"isInner\":true}],\"isInner\":false}]'),
(275, 9, '_elementor_css', 'a:6:{s:4:\"time\";i:1766771264;s:5:\"fonts\";a:2:{i:0;s:6:\"Roboto\";i:1;s:11:\"Roboto Slab\";}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(276, 6, '_elementor_page_assets', 'a:2:{s:6:\"styles\";a:3:{i:0;s:13:\"widget-spacer\";i:1;s:14:\"widget-heading\";i:2;s:12:\"widget-image\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(277, 17, '_elementor_page_assets', 'a:2:{s:6:\"styles\";a:2:{i:0;s:12:\"widget-image\";i:1;s:23:\"wpr-link-animations-css\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(279, 50, '_elementor_template_type', 'wp-post'),
(280, 50, '_wp_page_template', 'elementor_canvas'),
(281, 50, '_elementor_edit_mode', 'builder'),
(282, 50, '_elementor_version', '3.34.0'),
(283, 50, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}'),
(284, 50, '_elementor_data', '[{\"id\":\"155239a\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"2971a23\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"950bb15\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"center\",\"background_overlay_color\":\"#181818\",\"background_overlay_color_b\":\"#BF53E6\",\"background_overlay_gradient_angle\":{\"unit\":\"deg\",\"size\":147,\"sizes\":[]},\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"flex_justify_content\":\"space-between\",\"background_overlay_background\":\"classic\"},\"elements\":[{\"id\":\"3d16650\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":20},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"a704841\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"5101df9\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"e049423\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/Azharul-Islam-Logo.png\",\"id\":19,\"size\":\"\",\"alt\":\"\",\"source\":\"library\"},\"image_size\":\"full\",\"align\":\"start\",\"width\":{\"unit\":\"%\",\"size\":68,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true},{\"id\":\"6a2dcb3\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"40a860f\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e71bd79\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"min_height\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_color\":\"#FFFFFF\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"border_radius\":{\"unit\":\"px\",\"top\":\"20\",\"right\":\"0\",\"bottom\":\"20\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"363d837\",\"elType\":\"widget\",\"settings\":{\"toggle_btn_txt_1\":\"Menu\",\"toggle_btn_txt_2\":\"Close\",\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"menu_select\":\"main-menu\",\"menu_align\":\"center\",\"menu_item_color\":\"#000000\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_background_background\":\"classic\",\"menu_items_typography_typography\":\"custom\",\"menu_items_typography_font_family\":\"Arial\",\"menu_items_typography_font_size\":{\"unit\":\"px\",\"size\":16,\"sizes\":[]},\"menu_items_typography_font_weight\":\"600\",\"menu_items_typography_letter_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_typography_word_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_padding_bg_hr\":{\"unit\":\"px\",\"size\":26,\"sizes\":[]},\"menu_items_padding_vr\":{\"unit\":\"px\",\"size\":19,\"sizes\":[]},\"menu_items_sub_offset\":{\"unit\":\"px\",\"size\":21,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"wpr-mega-menu\"}],\"isInner\":true},{\"id\":\"71a67da\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":10},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"543d038\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"bf290b3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"flex-end\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"67c756a\",\"elType\":\"widget\",\"settings\":{\"text\":\"Hire Me!\",\"button_text_color\":\"#FFFFFF\",\"background_color\":\"#61CE70\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"button\"}],\"isInner\":true}],\"isInner\":false}]'),
(285, 50, '_elementor_css', 'a:6:{s:4:\"time\";i:1766771264;s:5:\"fonts\";a:1:{i:0;s:5:\"Arial\";}s:5:\"icons\";a:1:{i:0;s:0:\"\";}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(286, 50, '_elementor_page_assets', 'a:2:{s:6:\"styles\";a:2:{i:0;s:12:\"widget-image\";i:1;s:23:\"wpr-link-animations-css\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}');
INSERT INTO `lladlqq4_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(287, 50, '_elementor_element_cache', '{\"timeout\":1766857664,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-155239a e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"155239a\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-3d16650 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"3d16650\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-e049423 elementor-widget elementor-widget-image\" data-id=\"e049423\" data-element_type=\"widget\" data-widget_type=\"image.default\">nttttttttttttttt<img width=\"290\" height=\"97\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png\" class=\"attachment-full size-full wp-image-19\" alt=\"\" />ttttttttttttttt</div>ntttt</div>ntt<div class=\"elementor-element elementor-element-6a2dcb3 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"6a2dcb3\" data-element_type=\"container\">ntt[elementor-element k=\"f38237f6a195aacaa8b1ba1ba86841c4\" data=\"eyJpZCI6IjM2M2Q4MzciLCJlbFR5cGUiOiJ3aWRnZXQiLCJzZXR0aW5ncyI6eyJ0b2dnbGVfYnRuX3R4dF8xIjoiTWVudSIsInRvZ2dsZV9idG5fdHh0XzIiOiJDbG9zZSIsImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyIsImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoX2hvdmVyIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyIsIm1lbnVfc2VsZWN0IjoibWFpbi1tZW51IiwibWVudV9hbGlnbiI6ImNlbnRlciIsIm1lbnVfaXRlbV9jb2xvciI6IiMwMDAwMDAiLCJfbWFyZ2luIjp7InVuaXQiOiJweCIsInRvcCI6IjAiLCJyaWdodCI6IjAiLCJib3R0b20iOiIwIiwibGVmdCI6IjAiLCJpc0xpbmtlZCI6ZmFsc2V9LCJfcGFkZGluZyI6eyJ1bml0IjoicHgiLCJ0b3AiOiIwIiwicmlnaHQiOiIwIiwiYm90dG9tIjoiMCIsImxlZnQiOiIwIiwiaXNMaW5rZWQiOmZhbHNlfSwiX2JhY2tncm91bmRfYmFja2dyb3VuZCI6ImNsYXNzaWMiLCJtZW51X2l0ZW1zX3R5cG9ncmFwaHlfdHlwb2dyYXBoeSI6ImN1c3RvbSIsIm1lbnVfaXRlbXNfdHlwb2dyYXBoeV9mb250X2ZhbWlseSI6IkFyaWFsIiwibWVudV9pdGVtc190eXBvZ3JhcGh5X2ZvbnRfc2l6ZSI6eyJ1bml0IjoicHgiLCJzaXplIjoxNiwic2l6ZXMiOltdfSwibWVudV9pdGVtc190eXBvZ3JhcGh5X2ZvbnRfd2VpZ2h0IjoiNjAwIiwibWVudV9pdGVtc190eXBvZ3JhcGh5X2xldHRlcl9zcGFjaW5nIjp7InVuaXQiOiJweCIsInNpemUiOjAsInNpemVzIjpbXX0sIm1lbnVfaXRlbXNfdHlwb2dyYXBoeV93b3JkX3NwYWNpbmciOnsidW5pdCI6InB4Iiwic2l6ZSI6MCwic2l6ZXMiOltdfSwibWVudV9pdGVtc19wYWRkaW5nX2JnX2hyIjp7InVuaXQiOiJweCIsInNpemUiOjI2LCJzaXplcyI6W119LCJtZW51X2l0ZW1zX3BhZGRpbmdfdnIiOnsidW5pdCI6InB4Iiwic2l6ZSI6MTksInNpemVzIjpbXX0sIm1lbnVfaXRlbXNfc3ViX29mZnNldCI6eyJ1bml0IjoicHgiLCJzaXplIjoyMSwic2l6ZXMiOltdfX0sImVsZW1lbnRzIjpbXSwid2lkZ2V0VHlwZSI6Indwci1tZWdhLW1lbnUifQ==\"]tt</div>ntt<div class=\"elementor-element elementor-element-71a67da e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"71a67da\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-67c756a elementor-widget elementor-widget-button\" data-id=\"67c756a\" data-element_type=\"widget\" data-widget_type=\"button.default\">ntttttttttt<a class=\"elementor-button elementor-button-link elementor-size-sm\" href=\"#\">ntttttt<span class=\"elementor-button-content-wrapper\">nttttttttt<span class=\"elementor-button-text\">Hire Me!</span>nttttt</span>nttttt</a>ntttttttt</div>ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[\"elementor-frontend\"],\"styles\":[\"widget-image\",\"wpr-link-animations-css\"]}}'),
(290, 51, '_elementor_template_type', 'wp-post'),
(291, 51, '_wp_page_template', 'elementor_canvas'),
(292, 51, '_elementor_edit_mode', 'builder'),
(293, 51, '_elementor_version', '3.34.0'),
(294, 51, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}'),
(295, 51, '_elementor_data', '[{\"id\":\"155239a\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"2971a23\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"950bb15\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"center\",\"background_overlay_color\":\"#181818\",\"background_overlay_color_b\":\"#BF53E6\",\"background_overlay_gradient_angle\":{\"unit\":\"deg\",\"size\":147,\"sizes\":[]},\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"flex_justify_content\":\"space-between\",\"background_overlay_background\":\"classic\"},\"elements\":[{\"id\":\"3d16650\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":20},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"a704841\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"5101df9\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"e049423\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/Azharul-Islam-Logo.png\",\"id\":19,\"size\":\"\",\"alt\":\"\",\"source\":\"library\"},\"image_size\":\"full\",\"align\":\"start\",\"width\":{\"unit\":\"%\",\"size\":68,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true},{\"id\":\"6a2dcb3\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"40a860f\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e71bd79\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"min_height\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_color\":\"#FFFFFF\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"border_radius\":{\"unit\":\"px\",\"top\":\"20\",\"right\":\"0\",\"bottom\":\"20\",\"left\":\"0\",\"isLinked\":false},\"box_shadow_box_shadow\":{\"horizontal\":0,\"vertical\":0,\"blur\":10,\"spread\":0,\"color\":\"rgba(255, 255, 255, 0.5)\"},\"box_shadow_hover_box_shadow_type\":\"yes\",\"box_shadow_hover_box_shadow\":{\"horizontal\":0,\"vertical\":0,\"blur\":10,\"spread\":0,\"color\":\"rgba(79.78993383742912, 255, 69.29347826086959, 0.5)\"}},\"elements\":[{\"id\":\"363d837\",\"elType\":\"widget\",\"settings\":{\"toggle_btn_txt_1\":\"Menu\",\"toggle_btn_txt_2\":\"Close\",\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"menu_select\":\"main-menu\",\"menu_align\":\"center\",\"menu_item_color\":\"#000000\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_background_background\":\"classic\",\"menu_items_typography_typography\":\"custom\",\"menu_items_typography_font_family\":\"Arial\",\"menu_items_typography_font_size\":{\"unit\":\"px\",\"size\":16,\"sizes\":[]},\"menu_items_typography_font_weight\":\"600\",\"menu_items_typography_letter_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_typography_word_spacing\":{\"unit\":\"px\",\"size\":0,\"sizes\":[]},\"menu_items_padding_bg_hr\":{\"unit\":\"px\",\"size\":26,\"sizes\":[]},\"menu_items_padding_vr\":{\"unit\":\"px\",\"size\":19,\"sizes\":[]},\"menu_items_sub_offset\":{\"unit\":\"px\",\"size\":21,\"sizes\":[]}},\"elements\":[],\"widgetType\":\"wpr-mega-menu\"}],\"isInner\":true},{\"id\":\"71a67da\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":10},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"543d038\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"bf290b3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"flex-end\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"67c756a\",\"elType\":\"widget\",\"settings\":{\"text\":\"Hire Me!\",\"button_text_color\":\"#FFFFFF\",\"background_color\":\"#61CE70\",\"_margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"_padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"button\"}],\"isInner\":true}],\"isInner\":false}]'),
(296, 51, '_elementor_page_assets', 'a:2:{s:6:\"styles\";a:2:{i:0;s:12:\"widget-image\";i:1;s:23:\"wpr-link-animations-css\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(297, 51, '_elementor_css', 'a:6:{s:4:\"time\";i:1766771365;s:5:\"fonts\";a:1:{i:0;s:5:\"Arial\";}s:5:\"icons\";a:1:{i:0;s:0:\"\";}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(298, 51, '_elementor_element_cache', '{\"timeout\":1766857765,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-155239a e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"155239a\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-3d16650 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"3d16650\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-e049423 elementor-widget elementor-widget-image\" data-id=\"e049423\" data-element_type=\"widget\" data-widget_type=\"image.default\">nttttttttttttttt<img width=\"290\" height=\"97\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png\" class=\"attachment-full size-full wp-image-19\" alt=\"\" />ttttttttttttttt</div>ntttt</div>ntt<div class=\"elementor-element elementor-element-6a2dcb3 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"6a2dcb3\" data-element_type=\"container\">ntt[elementor-element k=\"f38237f6a195aacaa8b1ba1ba86841c4\" data=\"eyJpZCI6IjM2M2Q4MzciLCJlbFR5cGUiOiJ3aWRnZXQiLCJzZXR0aW5ncyI6eyJ0b2dnbGVfYnRuX3R4dF8xIjoiTWVudSIsInRvZ2dsZV9idG5fdHh0XzIiOiJDbG9zZSIsImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyIsImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoX2hvdmVyIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyIsIm1lbnVfc2VsZWN0IjoibWFpbi1tZW51IiwibWVudV9hbGlnbiI6ImNlbnRlciIsIm1lbnVfaXRlbV9jb2xvciI6IiMwMDAwMDAiLCJfbWFyZ2luIjp7InVuaXQiOiJweCIsInRvcCI6IjAiLCJyaWdodCI6IjAiLCJib3R0b20iOiIwIiwibGVmdCI6IjAiLCJpc0xpbmtlZCI6ZmFsc2V9LCJfcGFkZGluZyI6eyJ1bml0IjoicHgiLCJ0b3AiOiIwIiwicmlnaHQiOiIwIiwiYm90dG9tIjoiMCIsImxlZnQiOiIwIiwiaXNMaW5rZWQiOmZhbHNlfSwiX2JhY2tncm91bmRfYmFja2dyb3VuZCI6ImNsYXNzaWMiLCJtZW51X2l0ZW1zX3R5cG9ncmFwaHlfdHlwb2dyYXBoeSI6ImN1c3RvbSIsIm1lbnVfaXRlbXNfdHlwb2dyYXBoeV9mb250X2ZhbWlseSI6IkFyaWFsIiwibWVudV9pdGVtc190eXBvZ3JhcGh5X2ZvbnRfc2l6ZSI6eyJ1bml0IjoicHgiLCJzaXplIjoxNiwic2l6ZXMiOltdfSwibWVudV9pdGVtc190eXBvZ3JhcGh5X2ZvbnRfd2VpZ2h0IjoiNjAwIiwibWVudV9pdGVtc190eXBvZ3JhcGh5X2xldHRlcl9zcGFjaW5nIjp7InVuaXQiOiJweCIsInNpemUiOjAsInNpemVzIjpbXX0sIm1lbnVfaXRlbXNfdHlwb2dyYXBoeV93b3JkX3NwYWNpbmciOnsidW5pdCI6InB4Iiwic2l6ZSI6MCwic2l6ZXMiOltdfSwibWVudV9pdGVtc19wYWRkaW5nX2JnX2hyIjp7InVuaXQiOiJweCIsInNpemUiOjI2LCJzaXplcyI6W119LCJtZW51X2l0ZW1zX3BhZGRpbmdfdnIiOnsidW5pdCI6InB4Iiwic2l6ZSI6MTksInNpemVzIjpbXX0sIm1lbnVfaXRlbXNfc3ViX29mZnNldCI6eyJ1bml0IjoicHgiLCJzaXplIjoyMSwic2l6ZXMiOltdfX0sImVsZW1lbnRzIjpbXSwid2lkZ2V0VHlwZSI6Indwci1tZWdhLW1lbnUifQ==\"]tt</div>ntt<div class=\"elementor-element elementor-element-71a67da e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"71a67da\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-67c756a elementor-widget elementor-widget-button\" data-id=\"67c756a\" data-element_type=\"widget\" data-widget_type=\"button.default\">ntttttttttt<a class=\"elementor-button elementor-button-link elementor-size-sm\" href=\"#\">ntttttt<span class=\"elementor-button-content-wrapper\">nttttttttt<span class=\"elementor-button-text\">Hire Me!</span>nttttt</span>nttttt</a>ntttttttt</div>ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(300, 17, '_elementor_css', 'a:6:{s:4:\"time\";i:1766771699;s:5:\"fonts\";a:1:{i:0;s:5:\"Arial\";}s:5:\"icons\";a:1:{i:0;s:0:\"\";}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(301, 17, '_elementor_element_cache', '{\"timeout\":1766858099,\"value\":{\"content\":\"<div class=\\\"elementor-element elementor-element-155239a e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\\\" data-id=\\\"155239a\\\" data-element_type=\\\"container\\\">\\n\\t\\t\\t\\t\\t<div class=\\\"e-con-inner\\\">\\n\\t\\t<div class=\\\"elementor-element elementor-element-3d16650 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\\\" data-id=\\\"3d16650\\\" data-element_type=\\\"container\\\">\\n\\t\\t\\t\\t<div class=\\\"elementor-element elementor-element-e049423 elementor-widget elementor-widget-image\\\" data-id=\\\"e049423\\\" data-element_type=\\\"widget\\\" data-widget_type=\\\"image.default\\\">\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t<img width=\\\"290\\\" height=\\\"97\\\" src=\\\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/Azharul-Islam-Logo.png\\\" class=\\\"attachment-full size-full wp-image-19\\\" alt=\\\"\\\" \\/>\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t<div class=\\\"elementor-element elementor-element-6a2dcb3 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\\\" data-id=\\\"6a2dcb3\\\" data-element_type=\\\"container\\\">\\n\\t\\t[elementor-element k=\\\"f38237f6a195aacaa8b1ba1ba86841c4\\\" data=\\\"eyJpZCI6IjM2M2Q4MzciLCJlbFR5cGUiOiJ3aWRnZXQiLCJzZXR0aW5ncyI6eyJ0b2dnbGVfYnRuX3R4dF8xIjoiTWVudSIsInRvZ2dsZV9idG5fdHh0XzIiOiJDbG9zZSIsImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyIsImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoX2hvdmVyIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyIsIm1lbnVfc2VsZWN0IjoibWFpbi1tZW51IiwibWVudV9hbGlnbiI6ImNlbnRlciIsIm1lbnVfaXRlbV9jb2xvciI6IiMwMDAwMDAiLCJfbWFyZ2luIjp7InVuaXQiOiJweCIsInRvcCI6IjAiLCJyaWdodCI6IjAiLCJib3R0b20iOiIwIiwibGVmdCI6IjAiLCJpc0xpbmtlZCI6ZmFsc2V9LCJfcGFkZGluZyI6eyJ1bml0IjoicHgiLCJ0b3AiOiIwIiwicmlnaHQiOiIwIiwiYm90dG9tIjoiMCIsImxlZnQiOiIwIiwiaXNMaW5rZWQiOmZhbHNlfSwiX2JhY2tncm91bmRfYmFja2dyb3VuZCI6ImNsYXNzaWMiLCJtZW51X2l0ZW1zX3R5cG9ncmFwaHlfdHlwb2dyYXBoeSI6ImN1c3RvbSIsIm1lbnVfaXRlbXNfdHlwb2dyYXBoeV9mb250X2ZhbWlseSI6IkFyaWFsIiwibWVudV9pdGVtc190eXBvZ3JhcGh5X2ZvbnRfc2l6ZSI6eyJ1bml0IjoicHgiLCJzaXplIjoxNiwic2l6ZXMiOltdfSwibWVudV9pdGVtc190eXBvZ3JhcGh5X2ZvbnRfd2VpZ2h0IjoiNjAwIiwibWVudV9pdGVtc190eXBvZ3JhcGh5X2xldHRlcl9zcGFjaW5nIjp7InVuaXQiOiJweCIsInNpemUiOjAsInNpemVzIjpbXX0sIm1lbnVfaXRlbXNfdHlwb2dyYXBoeV93b3JkX3NwYWNpbmciOnsidW5pdCI6InB4Iiwic2l6ZSI6MCwic2l6ZXMiOltdfSwibWVudV9pdGVtc19wYWRkaW5nX2JnX2hyIjp7InVuaXQiOiJweCIsInNpemUiOjI2LCJzaXplcyI6W119LCJtZW51X2l0ZW1zX3BhZGRpbmdfdnIiOnsidW5pdCI6InB4Iiwic2l6ZSI6MTksInNpemVzIjpbXX0sIm1lbnVfaXRlbXNfc3ViX29mZnNldCI6eyJ1bml0IjoicHgiLCJzaXplIjoyMSwic2l6ZXMiOltdfX0sImVsZW1lbnRzIjpbXSwid2lkZ2V0VHlwZSI6Indwci1tZWdhLW1lbnUifQ==\\\"]\\t\\t<\\/div>\\n\\t\\t<div class=\\\"elementor-element elementor-element-71a67da e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\\\" data-id=\\\"71a67da\\\" data-element_type=\\\"container\\\">\\n\\t\\t\\t\\t<div class=\\\"elementor-element elementor-element-67c756a elementor-widget elementor-widget-button\\\" data-id=\\\"67c756a\\\" data-element_type=\\\"widget\\\" data-widget_type=\\\"button.default\\\">\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t<a class=\\\"elementor-button elementor-button-link elementor-size-sm\\\" href=\\\"#\\\">\\n\\t\\t\\t\\t\\t\\t<span class=\\\"elementor-button-content-wrapper\\\">\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t<span class=\\\"elementor-button-text\\\">Hire Me!<\\/span>\\n\\t\\t\\t\\t\\t<\\/span>\\n\\t\\t\\t\\t\\t<\\/a>\\n\\t\\t\\t\\t\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\",\"scripts\":[],\"styles\":[]}}'),
(302, 52, '_elementor_edit_mode', 'builder'),
(303, 52, '_elementor_template_type', 'wp-page'),
(304, 52, '_elementor_version', '3.34.0'),
(305, 52, '_elementor_page_settings', 'a:0:{}'),
(306, 52, '_elementor_page_assets', 'a:0:{}'),
(307, 52, '_elementor_css', 'a:7:{s:4:\"time\";i:1766771699;s:5:\"fonts\";a:0:{}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:5:\"empty\";i:0;s:0:\"\";s:3:\"css\";s:0:\"\";}'),
(308, 53, '_elementor_edit_mode', 'builder'),
(309, 53, '_elementor_template_type', 'wp-page'),
(310, 53, '_elementor_version', '3.34.0'),
(311, 53, '_elementor_page_settings', 'a:0:{}'),
(312, 53, '_elementor_page_assets', 'a:0:{}'),
(313, 53, '_elementor_css', 'a:7:{s:4:\"time\";i:1766771699;s:5:\"fonts\";a:0:{}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:5:\"empty\";i:0;s:0:\"\";s:3:\"css\";s:0:\"\";}'),
(314, 6, '_wp_page_template', 'default'),
(315, 6, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_justify_content\":\"space-between\",\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"f78e66f\",\"elType\":\"widget\",\"settings\":{\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"spacer\"},{\"id\":\"5b45a6a\",\"elType\":\"widget\",\"settings\":{\"title\":\"Your Brand, Our\\nCreativity\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Questrial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":58,\"sizes\":[]},\"typography_font_weight\":\"600\",\"title_color\":\"#030303\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"1b2dbb0\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"1187c2a\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"9357197\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.<\\/p>\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"3dc9d95\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"9a96186\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":38},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"flex-end\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"d757c5f\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/image-removebg-preview-4.png\",\"id\":62,\"size\":\"\",\"alt\":\"Azharul Islam\",\"source\":\"library\"},\"image_size\":\"full\",\"width\":{\"unit\":\"%\",\"size\":100,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true}],\"isInner\":false}]'),
(316, 54, '_elementor_edit_mode', 'builder'),
(317, 54, '_elementor_template_type', 'wp-page'),
(318, 54, '_elementor_version', '3.34.0'),
(319, 54, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}'),
(320, 54, '_elementor_page_assets', 'a:0:{}'),
(321, 54, '_elementor_css', 'a:7:{s:4:\"time\";i:1766771699;s:5:\"fonts\";a:0:{}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:5:\"empty\";i:0;s:0:\"\";s:3:\"css\";s:0:\"\";}'),
(322, 54, '_wp_page_template', 'default'),
(323, 54, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_color\":\"#181818\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true}],\"isInner\":false}]'),
(324, 6, '_eael_custom_js', ''),
(327, 9, '_edit_lock', '1766771946:1'),
(328, 55, '_elementor_edit_mode', 'builder'),
(329, 55, '_elementor_template_type', 'wp-page'),
(330, 55, '_elementor_version', '3.34.0'),
(331, 55, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}'),
(332, 55, '_elementor_page_assets', 'a:1:{s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(333, 55, '_wp_page_template', 'default'),
(334, 55, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_color\":\"#181818\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true}],\"isInner\":false}]'),
(335, 55, '_elementor_css', 'a:6:{s:4:\"time\";i:1766771759;s:5:\"fonts\";a:0:{}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(336, 55, '_elementor_element_cache', '{\"timeout\":1766858159,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(337, 56, '_elementor_edit_mode', 'builder'),
(338, 56, '_elementor_template_type', 'wp-page'),
(339, 56, '_elementor_version', '3.34.0'),
(340, 56, '_elementor_page_settings', 'a:1:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";}'),
(341, 56, '_elementor_page_assets', 'a:1:{s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(342, 56, '_wp_page_template', 'default'),
(343, 56, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_color\":\"#181818\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true}],\"isInner\":false}]'),
(344, 56, '_elementor_css', 'a:6:{s:4:\"time\";i:1766771759;s:5:\"fonts\";a:0:{}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(345, 56, '_elementor_element_cache', '{\"timeout\":1766858159,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(346, 57, '_elementor_edit_mode', 'builder'),
(347, 57, '_elementor_template_type', 'wp-page'),
(348, 57, '_elementor_version', '3.34.0'),
(349, 57, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(350, 57, '_elementor_page_assets', 'a:1:{s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(351, 57, '_wp_page_template', 'default'),
(352, 57, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_color\":\"#181818\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true}],\"isInner\":false}]'),
(353, 57, '_elementor_css', 'a:6:{s:4:\"time\";i:1766771759;s:5:\"fonts\";a:0:{}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(354, 57, '_elementor_element_cache', '{\"timeout\":1766858159,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(355, 6, 'site-post-title', 'disabled'),
(358, 58, '_elementor_edit_mode', 'builder'),
(359, 58, '_elementor_template_type', 'wp-page'),
(360, 58, '_elementor_version', '3.34.0'),
(361, 58, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(362, 58, '_elementor_page_assets', 'a:1:{s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(363, 58, '_wp_page_template', 'default'),
(364, 58, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_color\":\"#181818\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true}],\"isInner\":false}]'),
(365, 58, '_elementor_css', 'a:6:{s:4:\"time\";i:1766771986;s:5:\"fonts\";a:0:{}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(366, 58, '_elementor_element_cache', '{\"timeout\":1766858386,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(367, 59, '_elementor_edit_mode', 'builder'),
(368, 59, '_elementor_template_type', 'wp-page'),
(369, 59, '_elementor_version', '3.34.0'),
(370, 59, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(371, 59, '_elementor_page_assets', 'a:1:{s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(372, 59, '_wp_page_template', 'default'),
(373, 59, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_color\":\"#181818\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true}],\"isInner\":false}]'),
(374, 59, '_elementor_css', 'a:6:{s:4:\"time\";i:1766771986;s:5:\"fonts\";a:0:{}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}');
INSERT INTO `lladlqq4_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(375, 59, '_elementor_element_cache', '{\"timeout\":1766858386,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(376, 60, '_elementor_edit_mode', 'builder'),
(377, 60, '_elementor_template_type', 'wp-page'),
(378, 60, '_elementor_version', '3.34.0'),
(379, 60, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(380, 60, '_elementor_page_assets', 'a:1:{s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(381, 60, '_wp_page_template', 'default'),
(382, 60, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_color\":\"#181818\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"margin\":{\"unit\":\"px\",\"top\":\"-64\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"5b45a6a\",\"elType\":\"widget\",\"settings\":{\"title\":\"Your Brand, Our\\nCreativity\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Roboto\",\"typography_font_size\":{\"unit\":\"px\",\"size\":58,\"sizes\":[]},\"typography_font_weight\":\"600\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"1b2dbb0\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"1187c2a\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"heading\"}],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true}],\"isInner\":false}]'),
(383, 60, '_elementor_css', 'a:6:{s:4:\"time\";i:1766771986;s:5:\"fonts\";a:0:{}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(384, 60, '_elementor_element_cache', '{\"timeout\":1766858386,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(396, 62, '_wp_attached_file', '2025/12/image-removebg-preview-4.png'),
(397, 62, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:36:\"2025/12/image-removebg-preview-4.png\";s:8:\"filesize\";i:179134;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:36:\"image-removebg-preview-4-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:63095;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:36:\"image-removebg-preview-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:20657;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(398, 62, '_wp_attachment_image_alt', 'Azharul Islam'),
(399, 63, '_elementor_edit_mode', 'builder'),
(400, 63, '_elementor_template_type', 'wp-page'),
(401, 63, '_elementor_version', '3.34.0'),
(402, 63, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(403, 63, '_elementor_page_assets', 'a:2:{s:6:\"styles\";a:1:{i:0;s:14:\"widget-heading\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(404, 63, '_wp_page_template', 'default'),
(405, 63, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_color\":\"#181818\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"margin\":{\"unit\":\"px\",\"top\":\"-64\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"5b45a6a\",\"elType\":\"widget\",\"settings\":{\"title\":\"Your Brand, Our\\nCreativity\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Roboto\",\"typography_font_size\":{\"unit\":\"px\",\"size\":58,\"sizes\":[]},\"typography_font_weight\":\"600\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"1b2dbb0\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"1187c2a\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"heading\"}],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true}],\"isInner\":false}]'),
(406, 63, '_elementor_element_cache', '{\"timeout\":1766858479,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-5b45a6a elementor-widget elementor-widget-heading\" data-id=\"5b45a6a\" data-element_type=\"widget\" data-widget_type=\"heading.default\">nttttt<h2 class=\"elementor-heading-title elementor-size-default\">Your Brand, OurnCreativity</h2>tttt</div>ntttt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(407, 64, '_elementor_edit_mode', 'builder'),
(408, 64, '_elementor_template_type', 'wp-page'),
(409, 64, '_elementor_version', '3.34.0'),
(410, 64, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(411, 64, '_elementor_page_assets', 'a:2:{s:6:\"styles\";a:1:{i:0;s:14:\"widget-heading\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(412, 64, '_wp_page_template', 'default'),
(413, 64, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_color\":\"#181818\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"margin\":{\"unit\":\"px\",\"top\":\"-64\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"5b45a6a\",\"elType\":\"widget\",\"settings\":{\"title\":\"Your Brand, Our\\nCreativity\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Roboto\",\"typography_font_size\":{\"unit\":\"px\",\"size\":58,\"sizes\":[]},\"typography_font_weight\":\"600\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"1b2dbb0\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"1187c2a\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"heading\"}],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"isInner\":true}],\"isInner\":false}]'),
(414, 64, '_elementor_element_cache', '{\"timeout\":1766858479,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-5b45a6a elementor-widget elementor-widget-heading\" data-id=\"5b45a6a\" data-element_type=\"widget\" data-widget_type=\"heading.default\">nttttt<h2 class=\"elementor-heading-title elementor-size-default\">Your Brand, OurnCreativity</h2>tttt</div>ntttt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(415, 65, '_elementor_edit_mode', 'builder'),
(416, 65, '_elementor_template_type', 'wp-page'),
(417, 65, '_elementor_version', '3.34.0'),
(418, 65, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(419, 65, '_elementor_page_assets', 'a:2:{s:6:\"styles\";a:1:{i:0;s:14:\"widget-heading\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(420, 65, '_wp_page_template', 'default'),
(421, 65, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"f78e66f\",\"elType\":\"widget\",\"settings\":{\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"spacer\"},{\"id\":\"5b45a6a\",\"elType\":\"widget\",\"settings\":{\"title\":\"Your Brand, Our\\nCreativity\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Questrial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":58,\"sizes\":[]},\"typography_font_weight\":\"600\",\"title_color\":\"#030303\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"1b2dbb0\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"1187c2a\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"9357197\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.<\\/p>\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"3dc9d95\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"9a96186\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"d757c5f\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/image-removebg-preview-4.png\",\"id\":62,\"size\":\"\",\"alt\":\"Azharul Islam\",\"source\":\"library\"},\"image_size\":\"full\",\"width\":{\"unit\":\"%\",\"size\":67,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true}],\"isInner\":false}]'),
(422, 65, '_elementor_element_cache', '{\"timeout\":1766858479,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-5b45a6a elementor-widget elementor-widget-heading\" data-id=\"5b45a6a\" data-element_type=\"widget\" data-widget_type=\"heading.default\">nttttt<h2 class=\"elementor-heading-title elementor-size-default\">Your Brand, OurnCreativity</h2>tttt</div>ntttt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(425, 66, '_elementor_edit_mode', 'builder'),
(426, 66, '_elementor_template_type', 'wp-page'),
(427, 66, '_elementor_version', '3.34.0'),
(428, 66, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(429, 66, '_elementor_page_assets', 'a:2:{s:6:\"styles\";a:3:{i:0;s:13:\"widget-spacer\";i:1;s:14:\"widget-heading\";i:2;s:12:\"widget-image\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(430, 66, '_wp_page_template', 'default'),
(431, 66, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"f78e66f\",\"elType\":\"widget\",\"settings\":{\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"spacer\"},{\"id\":\"5b45a6a\",\"elType\":\"widget\",\"settings\":{\"title\":\"Your Brand, Our\\nCreativity\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Questrial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":58,\"sizes\":[]},\"typography_font_weight\":\"600\",\"title_color\":\"#030303\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"1b2dbb0\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"1187c2a\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"9357197\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.<\\/p>\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"3dc9d95\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"9a96186\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"d757c5f\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/image-removebg-preview-4.png\",\"id\":62,\"size\":\"\",\"alt\":\"Azharul Islam\",\"source\":\"library\"},\"image_size\":\"full\",\"width\":{\"unit\":\"%\",\"size\":67,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true}],\"isInner\":false}]'),
(432, 66, '_elementor_css', 'a:6:{s:4:\"time\";i:1766772373;s:5:\"fonts\";a:1:{i:0;s:9:\"Questrial\";}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(433, 66, '_elementor_element_cache', '{\"timeout\":1766858773,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-f78e66f elementor-widget elementor-widget-spacer\" data-id=\"f78e66f\" data-element_type=\"widget\" data-widget_type=\"spacer.default\">nttttttt<div class=\"elementor-spacer\">nttt<div class=\"elementor-spacer-inner\"></div>ntt</div>ntttttt</div>ntttt<div class=\"elementor-element elementor-element-5b45a6a elementor-widget elementor-widget-heading\" data-id=\"5b45a6a\" data-element_type=\"widget\" data-widget_type=\"heading.default\">nttttt<h2 class=\"elementor-heading-title elementor-size-default\">Your Brand, OurnCreativity</h2>tttt</div>ntt[elementor-element k=\"f38237f6a195aacaa8b1ba1ba86841c4\" data=\"eyJpZCI6IjkzNTcxOTciLCJlbFR5cGUiOiJ3aWRnZXQiLCJzZXR0aW5ncyI6eyJlZGl0b3IiOiI8cD5HcmFwaGljIGRlc2lnbiwgd2ViIGRldmVsb3BtZW50LCBhbmQgU0VPIGFyZSBlc3NlbnRpYWwgZm9yIGRpZ2l0YWwgc3VjY2VzcywgZW5oYW5jaW5nIGJyYW5kIGlkZW50aXR5LCB1c2VyIGV4cGVyaWVuY2UsIG9ubGluZSB2aXNpYmlsaXR5LCBhbmQgc2VhcmNoIHJhbmtpbmdzLCB1bHRpbWF0ZWx5IGRyaXZpbmcgZW5nYWdlbWVudCwgY29udmVyc2lvbnMsIGFuZCBidXNpbmVzcyBncm93dGggaW4gdGhlIGNvbXBldGl0aXZlIGRpZ2l0YWwgbGFuZHNjYXBlLjxcL3A+IiwiZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvcl9yZXBlYXRlciI6W3siZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvciI6IiM3QzYyRkYiLCJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yX2xvY2F0aW9uIjp7InVuaXQiOiIlIiwic2l6ZSI6NTB9LCJfaWQiOiIzZGM5ZDk1In0seyJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yIjoiI0ZGNjQ2NCIsImVhZWxfdnRvX3dyaXRpbmdfZ3JhZGllbnRfY29sb3JfbG9jYXRpb24iOnsidW5pdCI6IiUiLCJzaXplIjo5MH0sIl9pZCI6IjlhOTYxODYifV0sImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyIsImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoX2hvdmVyIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyJ9LCJlbGVtZW50cyI6W10sIndpZGdldFR5cGUiOiJ0ZXh0LWVkaXRvciJ9\"]tt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-d757c5f elementor-widget elementor-widget-image\" data-id=\"d757c5f\" data-element_type=\"widget\" data-widget_type=\"image.default\">nttttttttttttttt<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" class=\"attachment-full size-full wp-image-62\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />ttttttttttttttt</div>ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(434, 67, '_elementor_edit_mode', 'builder'),
(435, 67, '_elementor_template_type', 'wp-page'),
(436, 67, '_elementor_version', '3.34.0'),
(437, 67, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(438, 67, '_elementor_page_assets', 'a:2:{s:6:\"styles\";a:3:{i:0;s:13:\"widget-spacer\";i:1;s:14:\"widget-heading\";i:2;s:12:\"widget-image\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(439, 67, '_wp_page_template', 'default'),
(440, 67, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"f78e66f\",\"elType\":\"widget\",\"settings\":{\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"spacer\"},{\"id\":\"5b45a6a\",\"elType\":\"widget\",\"settings\":{\"title\":\"Your Brand, Our\\nCreativity\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Questrial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":58,\"sizes\":[]},\"typography_font_weight\":\"600\",\"title_color\":\"#030303\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"1b2dbb0\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"1187c2a\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"9357197\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.<\\/p>\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"3dc9d95\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"9a96186\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"d757c5f\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/image-removebg-preview-4.png\",\"id\":62,\"size\":\"\",\"alt\":\"Azharul Islam\",\"source\":\"library\"},\"image_size\":\"full\",\"width\":{\"unit\":\"%\",\"size\":67,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true}],\"isInner\":false}]'),
(441, 67, '_elementor_css', 'a:6:{s:4:\"time\";i:1766772373;s:5:\"fonts\";a:1:{i:0;s:9:\"Questrial\";}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(442, 67, '_elementor_element_cache', '{\"timeout\":1766858773,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-f78e66f elementor-widget elementor-widget-spacer\" data-id=\"f78e66f\" data-element_type=\"widget\" data-widget_type=\"spacer.default\">nttttttt<div class=\"elementor-spacer\">nttt<div class=\"elementor-spacer-inner\"></div>ntt</div>ntttttt</div>ntttt<div class=\"elementor-element elementor-element-5b45a6a elementor-widget elementor-widget-heading\" data-id=\"5b45a6a\" data-element_type=\"widget\" data-widget_type=\"heading.default\">nttttt<h2 class=\"elementor-heading-title elementor-size-default\">Your Brand, OurnCreativity</h2>tttt</div>ntt[elementor-element k=\"f38237f6a195aacaa8b1ba1ba86841c4\" data=\"eyJpZCI6IjkzNTcxOTciLCJlbFR5cGUiOiJ3aWRnZXQiLCJzZXR0aW5ncyI6eyJlZGl0b3IiOiI8cD5HcmFwaGljIGRlc2lnbiwgd2ViIGRldmVsb3BtZW50LCBhbmQgU0VPIGFyZSBlc3NlbnRpYWwgZm9yIGRpZ2l0YWwgc3VjY2VzcywgZW5oYW5jaW5nIGJyYW5kIGlkZW50aXR5LCB1c2VyIGV4cGVyaWVuY2UsIG9ubGluZSB2aXNpYmlsaXR5LCBhbmQgc2VhcmNoIHJhbmtpbmdzLCB1bHRpbWF0ZWx5IGRyaXZpbmcgZW5nYWdlbWVudCwgY29udmVyc2lvbnMsIGFuZCBidXNpbmVzcyBncm93dGggaW4gdGhlIGNvbXBldGl0aXZlIGRpZ2l0YWwgbGFuZHNjYXBlLjxcL3A+IiwiZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvcl9yZXBlYXRlciI6W3siZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvciI6IiM3QzYyRkYiLCJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yX2xvY2F0aW9uIjp7InVuaXQiOiIlIiwic2l6ZSI6NTB9LCJfaWQiOiIzZGM5ZDk1In0seyJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yIjoiI0ZGNjQ2NCIsImVhZWxfdnRvX3dyaXRpbmdfZ3JhZGllbnRfY29sb3JfbG9jYXRpb24iOnsidW5pdCI6IiUiLCJzaXplIjo5MH0sIl9pZCI6IjlhOTYxODYifV0sImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyIsImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoX2hvdmVyIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyJ9LCJlbGVtZW50cyI6W10sIndpZGdldFR5cGUiOiJ0ZXh0LWVkaXRvciJ9\"]tt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-d757c5f elementor-widget elementor-widget-image\" data-id=\"d757c5f\" data-element_type=\"widget\" data-widget_type=\"image.default\">nttttttttttttttt<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" class=\"attachment-full size-full wp-image-62\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />ttttttttttttttt</div>ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(443, 68, '_elementor_edit_mode', 'builder'),
(444, 68, '_elementor_template_type', 'wp-page'),
(445, 68, '_elementor_version', '3.34.0'),
(446, 68, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(447, 68, '_elementor_page_assets', 'a:2:{s:6:\"styles\";a:3:{i:0;s:13:\"widget-spacer\";i:1;s:14:\"widget-heading\";i:2;s:12:\"widget-image\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(448, 68, '_wp_page_template', 'default');
INSERT INTO `lladlqq4_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(449, 68, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_justify_content\":\"space-between\",\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"f78e66f\",\"elType\":\"widget\",\"settings\":{\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"spacer\"},{\"id\":\"5b45a6a\",\"elType\":\"widget\",\"settings\":{\"title\":\"Your Brand, Our\\nCreativity\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Questrial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":58,\"sizes\":[]},\"typography_font_weight\":\"600\",\"title_color\":\"#030303\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"1b2dbb0\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"1187c2a\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"9357197\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.<\\/p>\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"3dc9d95\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"9a96186\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":38},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"flex-end\"},\"elements\":[{\"id\":\"d757c5f\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/image-removebg-preview-4.png\",\"id\":62,\"size\":\"\",\"alt\":\"Azharul Islam\",\"source\":\"library\"},\"image_size\":\"full\",\"width\":{\"unit\":\"%\",\"size\":91,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true}],\"isInner\":false}]'),
(450, 68, '_elementor_css', 'a:6:{s:4:\"time\";i:1766772373;s:5:\"fonts\";a:1:{i:0;s:9:\"Questrial\";}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(451, 68, '_elementor_element_cache', '{\"timeout\":1766858773,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-f78e66f elementor-widget elementor-widget-spacer\" data-id=\"f78e66f\" data-element_type=\"widget\" data-widget_type=\"spacer.default\">nttttttt<div class=\"elementor-spacer\">nttt<div class=\"elementor-spacer-inner\"></div>ntt</div>ntttttt</div>ntttt<div class=\"elementor-element elementor-element-5b45a6a elementor-widget elementor-widget-heading\" data-id=\"5b45a6a\" data-element_type=\"widget\" data-widget_type=\"heading.default\">nttttt<h2 class=\"elementor-heading-title elementor-size-default\">Your Brand, OurnCreativity</h2>tttt</div>ntt[elementor-element k=\"f38237f6a195aacaa8b1ba1ba86841c4\" data=\"eyJpZCI6IjkzNTcxOTciLCJlbFR5cGUiOiJ3aWRnZXQiLCJzZXR0aW5ncyI6eyJlZGl0b3IiOiI8cD5HcmFwaGljIGRlc2lnbiwgd2ViIGRldmVsb3BtZW50LCBhbmQgU0VPIGFyZSBlc3NlbnRpYWwgZm9yIGRpZ2l0YWwgc3VjY2VzcywgZW5oYW5jaW5nIGJyYW5kIGlkZW50aXR5LCB1c2VyIGV4cGVyaWVuY2UsIG9ubGluZSB2aXNpYmlsaXR5LCBhbmQgc2VhcmNoIHJhbmtpbmdzLCB1bHRpbWF0ZWx5IGRyaXZpbmcgZW5nYWdlbWVudCwgY29udmVyc2lvbnMsIGFuZCBidXNpbmVzcyBncm93dGggaW4gdGhlIGNvbXBldGl0aXZlIGRpZ2l0YWwgbGFuZHNjYXBlLjxcL3A+IiwiZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvcl9yZXBlYXRlciI6W3siZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvciI6IiM3QzYyRkYiLCJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yX2xvY2F0aW9uIjp7InVuaXQiOiIlIiwic2l6ZSI6NTB9LCJfaWQiOiIzZGM5ZDk1In0seyJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yIjoiI0ZGNjQ2NCIsImVhZWxfdnRvX3dyaXRpbmdfZ3JhZGllbnRfY29sb3JfbG9jYXRpb24iOnsidW5pdCI6IiUiLCJzaXplIjo5MH0sIl9pZCI6IjlhOTYxODYifV0sImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyIsImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoX2hvdmVyIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyJ9LCJlbGVtZW50cyI6W10sIndpZGdldFR5cGUiOiJ0ZXh0LWVkaXRvciJ9\"]tt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-d757c5f elementor-widget elementor-widget-image\" data-id=\"d757c5f\" data-element_type=\"widget\" data-widget_type=\"image.default\">nttttttttttttttt<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" class=\"attachment-full size-full wp-image-62\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />ttttttttttttttt</div>ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(454, 69, '_elementor_edit_mode', 'builder'),
(455, 69, '_elementor_template_type', 'wp-page'),
(456, 69, '_elementor_version', '3.34.0'),
(457, 69, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(458, 69, '_elementor_page_assets', 'a:2:{s:6:\"styles\";a:3:{i:0;s:13:\"widget-spacer\";i:1;s:14:\"widget-heading\";i:2;s:12:\"widget-image\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(459, 69, '_wp_page_template', 'default'),
(460, 69, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_justify_content\":\"space-between\",\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"f78e66f\",\"elType\":\"widget\",\"settings\":{\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"spacer\"},{\"id\":\"5b45a6a\",\"elType\":\"widget\",\"settings\":{\"title\":\"Your Brand, Our\\nCreativity\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Questrial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":58,\"sizes\":[]},\"typography_font_weight\":\"600\",\"title_color\":\"#030303\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"1b2dbb0\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"1187c2a\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"9357197\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.<\\/p>\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"3dc9d95\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"9a96186\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":38},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"flex-end\"},\"elements\":[{\"id\":\"d757c5f\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/image-removebg-preview-4.png\",\"id\":62,\"size\":\"\",\"alt\":\"Azharul Islam\",\"source\":\"library\"},\"image_size\":\"full\",\"width\":{\"unit\":\"%\",\"size\":91,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true}],\"isInner\":false}]'),
(461, 69, '_elementor_css', 'a:6:{s:4:\"time\";i:1766772420;s:5:\"fonts\";a:1:{i:0;s:9:\"Questrial\";}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(462, 69, '_elementor_element_cache', '{\"timeout\":1766858820,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-f78e66f elementor-widget elementor-widget-spacer\" data-id=\"f78e66f\" data-element_type=\"widget\" data-widget_type=\"spacer.default\">nttttttt<div class=\"elementor-spacer\">nttt<div class=\"elementor-spacer-inner\"></div>ntt</div>ntttttt</div>ntttt<div class=\"elementor-element elementor-element-5b45a6a elementor-widget elementor-widget-heading\" data-id=\"5b45a6a\" data-element_type=\"widget\" data-widget_type=\"heading.default\">nttttt<h2 class=\"elementor-heading-title elementor-size-default\">Your Brand, OurnCreativity</h2>tttt</div>ntt[elementor-element k=\"f38237f6a195aacaa8b1ba1ba86841c4\" data=\"eyJpZCI6IjkzNTcxOTciLCJlbFR5cGUiOiJ3aWRnZXQiLCJzZXR0aW5ncyI6eyJlZGl0b3IiOiI8cD5HcmFwaGljIGRlc2lnbiwgd2ViIGRldmVsb3BtZW50LCBhbmQgU0VPIGFyZSBlc3NlbnRpYWwgZm9yIGRpZ2l0YWwgc3VjY2VzcywgZW5oYW5jaW5nIGJyYW5kIGlkZW50aXR5LCB1c2VyIGV4cGVyaWVuY2UsIG9ubGluZSB2aXNpYmlsaXR5LCBhbmQgc2VhcmNoIHJhbmtpbmdzLCB1bHRpbWF0ZWx5IGRyaXZpbmcgZW5nYWdlbWVudCwgY29udmVyc2lvbnMsIGFuZCBidXNpbmVzcyBncm93dGggaW4gdGhlIGNvbXBldGl0aXZlIGRpZ2l0YWwgbGFuZHNjYXBlLjxcL3A+IiwiZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvcl9yZXBlYXRlciI6W3siZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvciI6IiM3QzYyRkYiLCJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yX2xvY2F0aW9uIjp7InVuaXQiOiIlIiwic2l6ZSI6NTB9LCJfaWQiOiIzZGM5ZDk1In0seyJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yIjoiI0ZGNjQ2NCIsImVhZWxfdnRvX3dyaXRpbmdfZ3JhZGllbnRfY29sb3JfbG9jYXRpb24iOnsidW5pdCI6IiUiLCJzaXplIjo5MH0sIl9pZCI6IjlhOTYxODYifV0sImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyIsImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoX2hvdmVyIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyJ9LCJlbGVtZW50cyI6W10sIndpZGdldFR5cGUiOiJ0ZXh0LWVkaXRvciJ9\"]tt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-d757c5f elementor-widget elementor-widget-image\" data-id=\"d757c5f\" data-element_type=\"widget\" data-widget_type=\"image.default\">nttttttttttttttt<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" class=\"attachment-full size-full wp-image-62\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />ttttttttttttttt</div>ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(463, 70, '_elementor_edit_mode', 'builder'),
(464, 70, '_elementor_template_type', 'wp-page'),
(465, 70, '_elementor_version', '3.34.0'),
(466, 70, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(467, 70, '_elementor_page_assets', 'a:2:{s:6:\"styles\";a:3:{i:0;s:13:\"widget-spacer\";i:1;s:14:\"widget-heading\";i:2;s:12:\"widget-image\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(468, 70, '_wp_page_template', 'default'),
(469, 70, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_justify_content\":\"space-between\",\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"f78e66f\",\"elType\":\"widget\",\"settings\":{\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"spacer\"},{\"id\":\"5b45a6a\",\"elType\":\"widget\",\"settings\":{\"title\":\"Your Brand, Our\\nCreativity\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Questrial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":58,\"sizes\":[]},\"typography_font_weight\":\"600\",\"title_color\":\"#030303\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"1b2dbb0\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"1187c2a\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"9357197\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.<\\/p>\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"3dc9d95\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"9a96186\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":38},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"flex-end\"},\"elements\":[{\"id\":\"d757c5f\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/image-removebg-preview-4.png\",\"id\":62,\"size\":\"\",\"alt\":\"Azharul Islam\",\"source\":\"library\"},\"image_size\":\"full\",\"width\":{\"unit\":\"%\",\"size\":91,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true}],\"isInner\":false}]'),
(470, 70, '_elementor_css', 'a:6:{s:4:\"time\";i:1766772420;s:5:\"fonts\";a:1:{i:0;s:9:\"Questrial\";}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(471, 70, '_elementor_element_cache', '{\"timeout\":1766858820,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-f78e66f elementor-widget elementor-widget-spacer\" data-id=\"f78e66f\" data-element_type=\"widget\" data-widget_type=\"spacer.default\">nttttttt<div class=\"elementor-spacer\">nttt<div class=\"elementor-spacer-inner\"></div>ntt</div>ntttttt</div>ntttt<div class=\"elementor-element elementor-element-5b45a6a elementor-widget elementor-widget-heading\" data-id=\"5b45a6a\" data-element_type=\"widget\" data-widget_type=\"heading.default\">nttttt<h2 class=\"elementor-heading-title elementor-size-default\">Your Brand, OurnCreativity</h2>tttt</div>ntt[elementor-element k=\"f38237f6a195aacaa8b1ba1ba86841c4\" data=\"eyJpZCI6IjkzNTcxOTciLCJlbFR5cGUiOiJ3aWRnZXQiLCJzZXR0aW5ncyI6eyJlZGl0b3IiOiI8cD5HcmFwaGljIGRlc2lnbiwgd2ViIGRldmVsb3BtZW50LCBhbmQgU0VPIGFyZSBlc3NlbnRpYWwgZm9yIGRpZ2l0YWwgc3VjY2VzcywgZW5oYW5jaW5nIGJyYW5kIGlkZW50aXR5LCB1c2VyIGV4cGVyaWVuY2UsIG9ubGluZSB2aXNpYmlsaXR5LCBhbmQgc2VhcmNoIHJhbmtpbmdzLCB1bHRpbWF0ZWx5IGRyaXZpbmcgZW5nYWdlbWVudCwgY29udmVyc2lvbnMsIGFuZCBidXNpbmVzcyBncm93dGggaW4gdGhlIGNvbXBldGl0aXZlIGRpZ2l0YWwgbGFuZHNjYXBlLjxcL3A+IiwiZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvcl9yZXBlYXRlciI6W3siZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvciI6IiM3QzYyRkYiLCJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yX2xvY2F0aW9uIjp7InVuaXQiOiIlIiwic2l6ZSI6NTB9LCJfaWQiOiIzZGM5ZDk1In0seyJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yIjoiI0ZGNjQ2NCIsImVhZWxfdnRvX3dyaXRpbmdfZ3JhZGllbnRfY29sb3JfbG9jYXRpb24iOnsidW5pdCI6IiUiLCJzaXplIjo5MH0sIl9pZCI6IjlhOTYxODYifV0sImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyIsImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoX2hvdmVyIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyJ9LCJlbGVtZW50cyI6W10sIndpZGdldFR5cGUiOiJ0ZXh0LWVkaXRvciJ9\"]tt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-d757c5f elementor-widget elementor-widget-image\" data-id=\"d757c5f\" data-element_type=\"widget\" data-widget_type=\"image.default\">nttttttttttttttt<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" class=\"attachment-full size-full wp-image-62\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />ttttttttttttttt</div>ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(472, 71, '_elementor_edit_mode', 'builder'),
(473, 71, '_elementor_template_type', 'wp-page'),
(474, 71, '_elementor_version', '3.34.0'),
(475, 71, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(476, 71, '_elementor_page_assets', 'a:2:{s:6:\"styles\";a:3:{i:0;s:13:\"widget-spacer\";i:1;s:14:\"widget-heading\";i:2;s:12:\"widget-image\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(477, 71, '_wp_page_template', 'default'),
(478, 71, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_justify_content\":\"space-between\",\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"f78e66f\",\"elType\":\"widget\",\"settings\":{\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"spacer\"},{\"id\":\"5b45a6a\",\"elType\":\"widget\",\"settings\":{\"title\":\"Your Brand, Our\\nCreativity\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Questrial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":58,\"sizes\":[]},\"typography_font_weight\":\"600\",\"title_color\":\"#030303\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"1b2dbb0\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"1187c2a\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"9357197\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.<\\/p>\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"3dc9d95\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"9a96186\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":38},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"flex-end\"},\"elements\":[{\"id\":\"d757c5f\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/image-removebg-preview-4.png\",\"id\":62,\"size\":\"\",\"alt\":\"Azharul Islam\",\"source\":\"library\"},\"image_size\":\"full\",\"width\":{\"unit\":\"%\",\"size\":100,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true}],\"isInner\":false}]'),
(479, 71, '_elementor_css', 'a:6:{s:4:\"time\";i:1766772420;s:5:\"fonts\";a:1:{i:0;s:9:\"Questrial\";}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(480, 71, '_elementor_element_cache', '{\"timeout\":1766858820,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-f78e66f elementor-widget elementor-widget-spacer\" data-id=\"f78e66f\" data-element_type=\"widget\" data-widget_type=\"spacer.default\">nttttttt<div class=\"elementor-spacer\">nttt<div class=\"elementor-spacer-inner\"></div>ntt</div>ntttttt</div>ntttt<div class=\"elementor-element elementor-element-5b45a6a elementor-widget elementor-widget-heading\" data-id=\"5b45a6a\" data-element_type=\"widget\" data-widget_type=\"heading.default\">nttttt<h2 class=\"elementor-heading-title elementor-size-default\">Your Brand, OurnCreativity</h2>tttt</div>ntt[elementor-element k=\"f38237f6a195aacaa8b1ba1ba86841c4\" data=\"eyJpZCI6IjkzNTcxOTciLCJlbFR5cGUiOiJ3aWRnZXQiLCJzZXR0aW5ncyI6eyJlZGl0b3IiOiI8cD5HcmFwaGljIGRlc2lnbiwgd2ViIGRldmVsb3BtZW50LCBhbmQgU0VPIGFyZSBlc3NlbnRpYWwgZm9yIGRpZ2l0YWwgc3VjY2VzcywgZW5oYW5jaW5nIGJyYW5kIGlkZW50aXR5LCB1c2VyIGV4cGVyaWVuY2UsIG9ubGluZSB2aXNpYmlsaXR5LCBhbmQgc2VhcmNoIHJhbmtpbmdzLCB1bHRpbWF0ZWx5IGRyaXZpbmcgZW5nYWdlbWVudCwgY29udmVyc2lvbnMsIGFuZCBidXNpbmVzcyBncm93dGggaW4gdGhlIGNvbXBldGl0aXZlIGRpZ2l0YWwgbGFuZHNjYXBlLjxcL3A+IiwiZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvcl9yZXBlYXRlciI6W3siZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvciI6IiM3QzYyRkYiLCJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yX2xvY2F0aW9uIjp7InVuaXQiOiIlIiwic2l6ZSI6NTB9LCJfaWQiOiIzZGM5ZDk1In0seyJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yIjoiI0ZGNjQ2NCIsImVhZWxfdnRvX3dyaXRpbmdfZ3JhZGllbnRfY29sb3JfbG9jYXRpb24iOnsidW5pdCI6IiUiLCJzaXplIjo5MH0sIl9pZCI6IjlhOTYxODYifV0sImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyIsImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoX2hvdmVyIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyJ9LCJlbGVtZW50cyI6W10sIndpZGdldFR5cGUiOiJ0ZXh0LWVkaXRvciJ9\"]tt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-d757c5f elementor-widget elementor-widget-image\" data-id=\"d757c5f\" data-element_type=\"widget\" data-widget_type=\"image.default\">nttttttttttttttt<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" class=\"attachment-full size-full wp-image-62\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />ttttttttttttttt</div>ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(483, 72, '_elementor_edit_mode', 'builder'),
(484, 72, '_elementor_template_type', 'wp-page'),
(485, 72, '_elementor_version', '3.34.0'),
(486, 72, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(487, 72, '_elementor_page_assets', 'a:2:{s:6:\"styles\";a:3:{i:0;s:13:\"widget-spacer\";i:1;s:14:\"widget-heading\";i:2;s:12:\"widget-image\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(488, 72, '_wp_page_template', 'default'),
(489, 72, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_justify_content\":\"space-between\",\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"f78e66f\",\"elType\":\"widget\",\"settings\":{\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"spacer\"},{\"id\":\"5b45a6a\",\"elType\":\"widget\",\"settings\":{\"title\":\"Your Brand, Our\\nCreativity\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Questrial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":58,\"sizes\":[]},\"typography_font_weight\":\"600\",\"title_color\":\"#030303\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"1b2dbb0\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"1187c2a\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"9357197\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.<\\/p>\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"3dc9d95\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"9a96186\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":38},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"flex-end\"},\"elements\":[{\"id\":\"d757c5f\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/image-removebg-preview-4.png\",\"id\":62,\"size\":\"\",\"alt\":\"Azharul Islam\",\"source\":\"library\"},\"image_size\":\"full\",\"width\":{\"unit\":\"%\",\"size\":100,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true}],\"isInner\":false}]'),
(490, 72, '_elementor_css', 'a:6:{s:4:\"time\";i:1766772450;s:5:\"fonts\";a:1:{i:0;s:9:\"Questrial\";}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}');
INSERT INTO `lladlqq4_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(491, 72, '_elementor_element_cache', '{\"timeout\":1766858850,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-f78e66f elementor-widget elementor-widget-spacer\" data-id=\"f78e66f\" data-element_type=\"widget\" data-widget_type=\"spacer.default\">nttttttt<div class=\"elementor-spacer\">nttt<div class=\"elementor-spacer-inner\"></div>ntt</div>ntttttt</div>ntttt<div class=\"elementor-element elementor-element-5b45a6a elementor-widget elementor-widget-heading\" data-id=\"5b45a6a\" data-element_type=\"widget\" data-widget_type=\"heading.default\">nttttt<h2 class=\"elementor-heading-title elementor-size-default\">Your Brand, OurnCreativity</h2>tttt</div>ntt[elementor-element k=\"f38237f6a195aacaa8b1ba1ba86841c4\" data=\"eyJpZCI6IjkzNTcxOTciLCJlbFR5cGUiOiJ3aWRnZXQiLCJzZXR0aW5ncyI6eyJlZGl0b3IiOiI8cD5HcmFwaGljIGRlc2lnbiwgd2ViIGRldmVsb3BtZW50LCBhbmQgU0VPIGFyZSBlc3NlbnRpYWwgZm9yIGRpZ2l0YWwgc3VjY2VzcywgZW5oYW5jaW5nIGJyYW5kIGlkZW50aXR5LCB1c2VyIGV4cGVyaWVuY2UsIG9ubGluZSB2aXNpYmlsaXR5LCBhbmQgc2VhcmNoIHJhbmtpbmdzLCB1bHRpbWF0ZWx5IGRyaXZpbmcgZW5nYWdlbWVudCwgY29udmVyc2lvbnMsIGFuZCBidXNpbmVzcyBncm93dGggaW4gdGhlIGNvbXBldGl0aXZlIGRpZ2l0YWwgbGFuZHNjYXBlLjxcL3A+IiwiZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvcl9yZXBlYXRlciI6W3siZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvciI6IiM3QzYyRkYiLCJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yX2xvY2F0aW9uIjp7InVuaXQiOiIlIiwic2l6ZSI6NTB9LCJfaWQiOiIzZGM5ZDk1In0seyJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yIjoiI0ZGNjQ2NCIsImVhZWxfdnRvX3dyaXRpbmdfZ3JhZGllbnRfY29sb3JfbG9jYXRpb24iOnsidW5pdCI6IiUiLCJzaXplIjo5MH0sIl9pZCI6IjlhOTYxODYifV0sImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyIsImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoX2hvdmVyIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyJ9LCJlbGVtZW50cyI6W10sIndpZGdldFR5cGUiOiJ0ZXh0LWVkaXRvciJ9\"]tt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-d757c5f elementor-widget elementor-widget-image\" data-id=\"d757c5f\" data-element_type=\"widget\" data-widget_type=\"image.default\">nttttttttttttttt<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" class=\"attachment-full size-full wp-image-62\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />ttttttttttttttt</div>ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(492, 73, '_elementor_edit_mode', 'builder'),
(493, 73, '_elementor_template_type', 'wp-page'),
(494, 73, '_elementor_version', '3.34.0'),
(495, 73, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(496, 73, '_elementor_page_assets', 'a:2:{s:6:\"styles\";a:3:{i:0;s:13:\"widget-spacer\";i:1;s:14:\"widget-heading\";i:2;s:12:\"widget-image\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(497, 73, '_wp_page_template', 'default'),
(498, 73, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_justify_content\":\"space-between\",\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"f78e66f\",\"elType\":\"widget\",\"settings\":{\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"spacer\"},{\"id\":\"5b45a6a\",\"elType\":\"widget\",\"settings\":{\"title\":\"Your Brand, Our\\nCreativity\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Questrial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":58,\"sizes\":[]},\"typography_font_weight\":\"600\",\"title_color\":\"#030303\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"1b2dbb0\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"1187c2a\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"9357197\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.<\\/p>\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"3dc9d95\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"9a96186\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":38},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"flex-end\"},\"elements\":[{\"id\":\"d757c5f\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/image-removebg-preview-4.png\",\"id\":62,\"size\":\"\",\"alt\":\"Azharul Islam\",\"source\":\"library\"},\"image_size\":\"full\",\"width\":{\"unit\":\"%\",\"size\":100,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true}],\"isInner\":false}]'),
(499, 73, '_elementor_css', 'a:6:{s:4:\"time\";i:1766772450;s:5:\"fonts\";a:1:{i:0;s:9:\"Questrial\";}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(500, 73, '_elementor_element_cache', '{\"timeout\":1766858850,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-f78e66f elementor-widget elementor-widget-spacer\" data-id=\"f78e66f\" data-element_type=\"widget\" data-widget_type=\"spacer.default\">nttttttt<div class=\"elementor-spacer\">nttt<div class=\"elementor-spacer-inner\"></div>ntt</div>ntttttt</div>ntttt<div class=\"elementor-element elementor-element-5b45a6a elementor-widget elementor-widget-heading\" data-id=\"5b45a6a\" data-element_type=\"widget\" data-widget_type=\"heading.default\">nttttt<h2 class=\"elementor-heading-title elementor-size-default\">Your Brand, OurnCreativity</h2>tttt</div>ntt[elementor-element k=\"f38237f6a195aacaa8b1ba1ba86841c4\" data=\"eyJpZCI6IjkzNTcxOTciLCJlbFR5cGUiOiJ3aWRnZXQiLCJzZXR0aW5ncyI6eyJlZGl0b3IiOiI8cD5HcmFwaGljIGRlc2lnbiwgd2ViIGRldmVsb3BtZW50LCBhbmQgU0VPIGFyZSBlc3NlbnRpYWwgZm9yIGRpZ2l0YWwgc3VjY2VzcywgZW5oYW5jaW5nIGJyYW5kIGlkZW50aXR5LCB1c2VyIGV4cGVyaWVuY2UsIG9ubGluZSB2aXNpYmlsaXR5LCBhbmQgc2VhcmNoIHJhbmtpbmdzLCB1bHRpbWF0ZWx5IGRyaXZpbmcgZW5nYWdlbWVudCwgY29udmVyc2lvbnMsIGFuZCBidXNpbmVzcyBncm93dGggaW4gdGhlIGNvbXBldGl0aXZlIGRpZ2l0YWwgbGFuZHNjYXBlLjxcL3A+IiwiZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvcl9yZXBlYXRlciI6W3siZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvciI6IiM3QzYyRkYiLCJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yX2xvY2F0aW9uIjp7InVuaXQiOiIlIiwic2l6ZSI6NTB9LCJfaWQiOiIzZGM5ZDk1In0seyJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yIjoiI0ZGNjQ2NCIsImVhZWxfdnRvX3dyaXRpbmdfZ3JhZGllbnRfY29sb3JfbG9jYXRpb24iOnsidW5pdCI6IiUiLCJzaXplIjo5MH0sIl9pZCI6IjlhOTYxODYifV0sImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyIsImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoX2hvdmVyIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyJ9LCJlbGVtZW50cyI6W10sIndpZGdldFR5cGUiOiJ0ZXh0LWVkaXRvciJ9\"]tt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-d757c5f elementor-widget elementor-widget-image\" data-id=\"d757c5f\" data-element_type=\"widget\" data-widget_type=\"image.default\">nttttttttttttttt<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" class=\"attachment-full size-full wp-image-62\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />ttttttttttttttt</div>ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(501, 74, '_elementor_edit_mode', 'builder'),
(502, 74, '_elementor_template_type', 'wp-page'),
(503, 74, '_elementor_version', '3.34.0'),
(504, 74, '_elementor_page_settings', 'a:2:{s:18:\"eael_ext_toc_title\";s:17:\"Table of Contents\";s:10:\"hide_title\";s:3:\"yes\";}'),
(505, 74, '_elementor_page_assets', 'a:2:{s:6:\"styles\";a:3:{i:0;s:13:\"widget-spacer\";i:1;s:14:\"widget-heading\";i:2;s:12:\"widget-image\";}s:7:\"scripts\";a:1:{i:0;s:18:\"elementor-frontend\";}}'),
(506, 74, '_wp_page_template', 'default'),
(507, 74, '_elementor_data', '[{\"id\":\"54c0e34\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"row\",\"flex_gap\":{\"unit\":\"px\",\"size\":0,\"column\":\"0\",\"row\":\"0\"},\"boxed_width\":{\"unit\":\"px\",\"size\":1250,\"sizes\":[]},\"background_overlay_background\":\"classic\",\"background_overlay_opacity\":{\"unit\":\"px\",\"size\":1,\"sizes\":[]},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"5917f12\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"115ae23\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_justify_content\":\"space-between\",\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"aa6c79c\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":\"50\"},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"be49620\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"e0d9abe\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[{\"id\":\"f78e66f\",\"elType\":\"widget\",\"settings\":{\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"spacer\"},{\"id\":\"5b45a6a\",\"elType\":\"widget\",\"settings\":{\"title\":\"Your Brand, Our\\nCreativity\",\"typography_typography\":\"custom\",\"typography_font_family\":\"Questrial\",\"typography_font_size\":{\"unit\":\"px\",\"size\":58,\"sizes\":[]},\"typography_font_weight\":\"600\",\"title_color\":\"#030303\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"1b2dbb0\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"1187c2a\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"heading\"},{\"id\":\"9357197\",\"elType\":\"widget\",\"settings\":{\"editor\":\"<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.<\\/p>\",\"eael_vto_writing_gradient_color_repeater\":[{\"eael_vto_writing_gradient_color\":\"#7C62FF\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":50},\"_id\":\"3dc9d95\"},{\"eael_vto_writing_gradient_color\":\"#FF6464\",\"eael_vto_writing_gradient_color_location\":{\"unit\":\"%\",\"size\":90},\"_id\":\"9a96186\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"text-editor\"}],\"isInner\":true},{\"id\":\"efcd296\",\"elType\":\"container\",\"settings\":{\"flex_direction\":\"column\",\"content_width\":\"full\",\"width\":{\"unit\":\"%\",\"size\":38},\"hover_parallax\":[{\"layer_position_vr\":{\"unit\":\"%\",\"size\":30},\"layer_position_hr\":{\"unit\":\"%\",\"size\":40},\"_id\":\"aff25b4\"},{\"layer_position_vr\":{\"unit\":\"%\",\"size\":60},\"layer_position_hr\":{\"unit\":\"%\",\"size\":20},\"_id\":\"dea68d3\"}],\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"flex_align_items\":\"flex-end\",\"flex_gap\":{\"column\":\"0\",\"row\":\"0\",\"isLinked\":true,\"unit\":\"px\",\"size\":0},\"margin\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false},\"padding\":{\"unit\":\"px\",\"top\":\"0\",\"right\":\"0\",\"bottom\":\"0\",\"left\":\"0\",\"isLinked\":false}},\"elements\":[{\"id\":\"d757c5f\",\"elType\":\"widget\",\"settings\":{\"image\":{\"url\":\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/image-removebg-preview-4.png\",\"id\":62,\"size\":\"\",\"alt\":\"Azharul Islam\",\"source\":\"library\"},\"image_size\":\"full\",\"width\":{\"unit\":\"%\",\"size\":100,\"sizes\":[]},\"eael_image_masking_custom_clip_path\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\",\"eael_image_masking_custom_clip_path_hover\":\"clip-path: polygon(50% 0%, 80% 10%, 100% 35%, 100% 70%, 80% 90%, 50% 100%, 20% 90%, 0% 70%, 0% 35%, 20% 10%);\"},\"elements\":[],\"widgetType\":\"image\"}],\"isInner\":true}],\"isInner\":false}]'),
(508, 74, '_elementor_css', 'a:6:{s:4:\"time\";i:1766772450;s:5:\"fonts\";a:1:{i:0;s:9:\"Questrial\";}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(509, 74, '_elementor_element_cache', '{\"timeout\":1766858850,\"value\":{\"content\":\"<div class=\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\" data-id=\"54c0e34\" data-element_type=\"container\">nttttt<div class=\"e-con-inner\">ntt<div class=\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"aa6c79c\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-f78e66f elementor-widget elementor-widget-spacer\" data-id=\"f78e66f\" data-element_type=\"widget\" data-widget_type=\"spacer.default\">nttttttt<div class=\"elementor-spacer\">nttt<div class=\"elementor-spacer-inner\"></div>ntt</div>ntttttt</div>ntttt<div class=\"elementor-element elementor-element-5b45a6a elementor-widget elementor-widget-heading\" data-id=\"5b45a6a\" data-element_type=\"widget\" data-widget_type=\"heading.default\">nttttt<h2 class=\"elementor-heading-title elementor-size-default\">Your Brand, OurnCreativity</h2>tttt</div>ntt[elementor-element k=\"f38237f6a195aacaa8b1ba1ba86841c4\" data=\"eyJpZCI6IjkzNTcxOTciLCJlbFR5cGUiOiJ3aWRnZXQiLCJzZXR0aW5ncyI6eyJlZGl0b3IiOiI8cD5HcmFwaGljIGRlc2lnbiwgd2ViIGRldmVsb3BtZW50LCBhbmQgU0VPIGFyZSBlc3NlbnRpYWwgZm9yIGRpZ2l0YWwgc3VjY2VzcywgZW5oYW5jaW5nIGJyYW5kIGlkZW50aXR5LCB1c2VyIGV4cGVyaWVuY2UsIG9ubGluZSB2aXNpYmlsaXR5LCBhbmQgc2VhcmNoIHJhbmtpbmdzLCB1bHRpbWF0ZWx5IGRyaXZpbmcgZW5nYWdlbWVudCwgY29udmVyc2lvbnMsIGFuZCBidXNpbmVzcyBncm93dGggaW4gdGhlIGNvbXBldGl0aXZlIGRpZ2l0YWwgbGFuZHNjYXBlLjxcL3A+IiwiZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvcl9yZXBlYXRlciI6W3siZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvciI6IiM3QzYyRkYiLCJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yX2xvY2F0aW9uIjp7InVuaXQiOiIlIiwic2l6ZSI6NTB9LCJfaWQiOiIzZGM5ZDk1In0seyJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yIjoiI0ZGNjQ2NCIsImVhZWxfdnRvX3dyaXRpbmdfZ3JhZGllbnRfY29sb3JfbG9jYXRpb24iOnsidW5pdCI6IiUiLCJzaXplIjo5MH0sIl9pZCI6IjlhOTYxODYifV0sImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyIsImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoX2hvdmVyIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyJ9LCJlbGVtZW50cyI6W10sIndpZGdldFR5cGUiOiJ0ZXh0LWVkaXRvciJ9\"]tt</div>ntt<div class=\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\" data-id=\"efcd296\" data-element_type=\"container\">ntttt<div class=\"elementor-element elementor-element-d757c5f elementor-widget elementor-widget-image\" data-id=\"d757c5f\" data-element_type=\"widget\" data-widget_type=\"image.default\">nttttttttttttttt<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" class=\"attachment-full size-full wp-image-62\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />ttttttttttttttt</div>ntttt</div>nttttt</div>ntttt</div>ntt\",\"scripts\":[],\"styles\":[]}}'),
(510, 6, '_elementor_css', 'a:6:{s:4:\"time\";i:1766772490;s:5:\"fonts\";a:1:{i:0;s:9:\"Questrial\";}s:5:\"icons\";a:0:{}s:20:\"dynamic_elements_ids\";a:0:{}s:6:\"status\";s:4:\"file\";i:0;s:0:\"\";}'),
(511, 6, '_elementor_element_cache', '{\"timeout\":1766858890,\"value\":{\"content\":\"<div class=\\\"elementor-element elementor-element-54c0e34 e-flex e-con-boxed wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-parent\\\" data-id=\\\"54c0e34\\\" data-element_type=\\\"container\\\">\\n\\t\\t\\t\\t\\t<div class=\\\"e-con-inner\\\">\\n\\t\\t<div class=\\\"elementor-element elementor-element-aa6c79c e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\\\" data-id=\\\"aa6c79c\\\" data-element_type=\\\"container\\\">\\n\\t\\t\\t\\t<div class=\\\"elementor-element elementor-element-f78e66f elementor-widget elementor-widget-spacer\\\" data-id=\\\"f78e66f\\\" data-element_type=\\\"widget\\\" data-widget_type=\\\"spacer.default\\\">\\n\\t\\t\\t\\t\\t\\t\\t<div class=\\\"elementor-spacer\\\">\\n\\t\\t\\t<div class=\\\"elementor-spacer-inner\\\"><\\/div>\\n\\t\\t<\\/div>\\n\\t\\t\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t<div class=\\\"elementor-element elementor-element-5b45a6a elementor-widget elementor-widget-heading\\\" data-id=\\\"5b45a6a\\\" data-element_type=\\\"widget\\\" data-widget_type=\\\"heading.default\\\">\\n\\t\\t\\t\\t\\t<h2 class=\\\"elementor-heading-title elementor-size-default\\\">Your Brand, Our\\nCreativity<\\/h2>\\t\\t\\t\\t<\\/div>\\n\\t\\t[elementor-element k=\\\"f38237f6a195aacaa8b1ba1ba86841c4\\\" data=\\\"eyJpZCI6IjkzNTcxOTciLCJlbFR5cGUiOiJ3aWRnZXQiLCJzZXR0aW5ncyI6eyJlZGl0b3IiOiI8cD5HcmFwaGljIGRlc2lnbiwgd2ViIGRldmVsb3BtZW50LCBhbmQgU0VPIGFyZSBlc3NlbnRpYWwgZm9yIGRpZ2l0YWwgc3VjY2VzcywgZW5oYW5jaW5nIGJyYW5kIGlkZW50aXR5LCB1c2VyIGV4cGVyaWVuY2UsIG9ubGluZSB2aXNpYmlsaXR5LCBhbmQgc2VhcmNoIHJhbmtpbmdzLCB1bHRpbWF0ZWx5IGRyaXZpbmcgZW5nYWdlbWVudCwgY29udmVyc2lvbnMsIGFuZCBidXNpbmVzcyBncm93dGggaW4gdGhlIGNvbXBldGl0aXZlIGRpZ2l0YWwgbGFuZHNjYXBlLjxcL3A+IiwiZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvcl9yZXBlYXRlciI6W3siZWFlbF92dG9fd3JpdGluZ19ncmFkaWVudF9jb2xvciI6IiM3QzYyRkYiLCJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yX2xvY2F0aW9uIjp7InVuaXQiOiIlIiwic2l6ZSI6NTB9LCJfaWQiOiIzZGM5ZDk1In0seyJlYWVsX3Z0b193cml0aW5nX2dyYWRpZW50X2NvbG9yIjoiI0ZGNjQ2NCIsImVhZWxfdnRvX3dyaXRpbmdfZ3JhZGllbnRfY29sb3JfbG9jYXRpb24iOnsidW5pdCI6IiUiLCJzaXplIjo5MH0sIl9pZCI6IjlhOTYxODYifV0sImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyIsImVhZWxfaW1hZ2VfbWFza2luZ19jdXN0b21fY2xpcF9wYXRoX2hvdmVyIjoiY2xpcC1wYXRoOiBwb2x5Z29uKDUwJSAwJSwgODAlIDEwJSwgMTAwJSAzNSUsIDEwMCUgNzAlLCA4MCUgOTAlLCA1MCUgMTAwJSwgMjAlIDkwJSwgMCUgNzAlLCAwJSAzNSUsIDIwJSAxMCUpOyJ9LCJlbGVtZW50cyI6W10sIndpZGdldFR5cGUiOiJ0ZXh0LWVkaXRvciJ9\\\"]\\t\\t<\\/div>\\n\\t\\t<div class=\\\"elementor-element elementor-element-efcd296 e-con-full e-flex wpr-particle-no wpr-jarallax-no wpr-parallax-no wpr-sticky-section-no e-con e-child\\\" data-id=\\\"efcd296\\\" data-element_type=\\\"container\\\">\\n\\t\\t\\t\\t<div class=\\\"elementor-element elementor-element-d757c5f elementor-widget elementor-widget-image\\\" data-id=\\\"d757c5f\\\" data-element_type=\\\"widget\\\" data-widget_type=\\\"image.default\\\">\\n\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t<img width=\\\"500\\\" height=\\\"500\\\" src=\\\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/image-removebg-preview-4.png\\\" class=\\\"attachment-full size-full wp-image-62\\\" alt=\\\"Azharul Islam\\\" srcset=\\\"https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/image-removebg-preview-4.png 500w, https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/image-removebg-preview-4-300x300.png 300w, https:\\/\\/azharulislam.asrmart.com\\/wp-content\\/uploads\\/2025\\/12\\/image-removebg-preview-4-150x150.png 150w\\\" sizes=\\\"(max-width: 500px) 100vw, 500px\\\" \\/>\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t\\t<\\/div>\\n\\t\\t\\t\\t<\\/div>\\n\\t\\t\",\"scripts\":[],\"styles\":[]}}');

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_posts`
--

DROP TABLE IF EXISTS `lladlqq4_posts`;
CREATE TABLE IF NOT EXISTS `lladlqq4_posts` (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_author` bigint UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime DEFAULT NULL,
  `post_date_gmt` datetime DEFAULT NULL,
  `post_content` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_modified` datetime DEFAULT NULL,
  `post_modified_gmt` datetime DEFAULT NULL,
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`ID`),
  KEY `post_name` (`post_name`(191)),
  KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  KEY `post_parent` (`post_parent`),
  KEY `post_author` (`post_author`),
  KEY `type_status_author` (`post_type`,`post_status`,`post_author`)
) ENGINE=InnoDB AUTO_INCREMENT=75 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lladlqq4_posts`
--

INSERT INTO `lladlqq4_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-12-26 04:47:04', '2025-12-26 04:47:04', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2025-12-26 04:47:04', '2025-12-26 04:47:04', '', 0, 'https://azharulislam.asrmart.com/?p=1', 0, 'post', '', 1),
(2, 1, '2025-12-26 04:47:04', '2025-12-26 04:47:04', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://azharulislam.asrmart.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2025-12-26 16:06:15', '2025-12-26 16:06:15', '', 0, 'https://azharulislam.asrmart.com/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-12-26 04:47:04', '2025-12-26 04:47:04', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://azharulislam.asrmart.com.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2025-12-26 16:06:15', '2025-12-26 16:06:15', '', 0, 'https://azharulislam.asrmart.com/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-12-26 04:47:04', '2025-12-26 04:47:04', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-12-26 04:47:04', '2025-12-26 04:47:04', '', 0, 'https://azharulislam.asrmart.com/index.php/2025/12/26/navigation/', 0, 'wp_navigation', '', 0),
(5, 1, '2025-12-26 04:48:10', NULL, '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-12-26 04:48:10', NULL, '', 0, 'https://azharulislam.asrmart.com/?p=5', 0, 'post', '', 0),
(6, 1, '2025-12-26 12:45:03', '2025-12-26 12:45:03', '<h2>Your Brand, Our\nCreativity</h2>		<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.</p>													<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />', 'Home', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2025-12-26 18:08:06', '2025-12-26 18:08:06', '', 0, 'https://azharulislam.asrmart.com/?page_id=6', 0, 'page', '', 0),
(7, 1, '2025-12-26 12:45:03', '2025-12-26 12:45:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 12:45:03', '2025-12-26 12:45:03', '', 6, 'https://azharulislam.asrmart.com/?p=7', 0, 'revision', '', 0),
(8, 1, '2025-12-26 12:49:16', '2025-12-26 12:49:16', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-agencygrove-dark', '', '', '2025-12-26 12:49:16', '2025-12-26 12:49:16', '', 0, 'https://azharulislam.asrmart.com/index.php/2025/12/26/wp-global-styles-agencygrove-dark/', 0, 'wp_global_styles', '', 0),
(9, 1, '2025-12-26 12:51:50', '2025-12-26 12:51:50', '', 'Default Kit', '', 'publish', 'closed', 'closed', '', 'default-kit', '', '', '2025-12-26 12:51:50', '2025-12-26 12:51:50', '', 0, 'https://azharulislam.asrmart.com/?p=9', 0, 'elementor_library', '', 0),
(10, 1, '2025-12-26 16:06:15', '2025-12-26 16:06:15', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://azharulislam.asrmart.com.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2025-12-26 16:06:15', '2025-12-26 16:06:15', '', 3, 'https://azharulislam.asrmart.com/?p=10', 0, 'revision', '', 0),
(11, 1, '2025-12-26 16:06:15', '2025-12-26 16:06:15', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\">\n<!-- wp:paragraph -->\n<p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p>\n<!-- /wp:paragraph -->\n</blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://azharulislam.asrmart.com/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-12-26 16:06:15', '2025-12-26 16:06:15', '', 2, 'https://azharulislam.asrmart.com/?p=11', 0, 'revision', '', 0),
(12, 1, '2025-12-26 16:06:42', '2025-12-26 16:06:42', '', 'Portfolio', '', 'publish', 'closed', 'closed', '', 'portfolio', '', '', '2025-12-26 16:06:42', '2025-12-26 16:06:42', '', 0, 'https://azharulislam.asrmart.com/?page_id=12', 0, 'page', '', 0),
(13, 1, '2025-12-26 16:06:23', '2025-12-26 16:06:23', '{\"version\": 3, \"isGlobalStylesUserThemeJSON\": true }', 'Custom Styles', '', 'publish', 'closed', 'closed', '', 'wp-global-styles-astra', '', '', '2025-12-26 16:06:23', '2025-12-26 16:06:23', '', 0, 'https://azharulislam.asrmart.com/wp-global-styles-astra/', 0, 'wp_global_styles', '', 0),
(14, 1, '2025-12-26 16:06:42', '2025-12-26 16:06:42', '', 'Portfolio', '', 'inherit', 'closed', 'closed', '', '12-revision-v1', '', '', '2025-12-26 16:06:42', '2025-12-26 16:06:42', '', 12, 'https://azharulislam.asrmart.com/?p=14', 0, 'revision', '', 0),
(15, 1, '2025-12-26 16:07:26', '2025-12-26 16:07:26', '', 'Contact', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2025-12-26 16:07:26', '2025-12-26 16:07:26', '', 0, 'https://azharulislam.asrmart.com/?page_id=15', 0, 'page', '', 0),
(16, 1, '2025-12-26 16:07:26', '2025-12-26 16:07:26', '', 'Contact', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2025-12-26 16:07:26', '2025-12-26 16:07:26', '', 15, 'https://azharulislam.asrmart.com/?p=16', 0, 'revision', '', 0),
(17, 1, '2025-12-26 16:55:23', '2025-12-26 16:55:23', '<img width=\"290\" height=\"97\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png\" alt=\"\" />																<nav data-trigger=\"hover\"><ul id=\"menu-1-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav><nav><ul id=\"mobile-menu-2-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav>										<a href=\"#\">\n									Hire Me!\n					</a>', 'Header', '', 'publish', 'closed', 'closed', '', 'user-header-header', '', '', '2025-12-26 17:54:55', '2025-12-26 17:54:55', '', 0, 'https://azharulislam.asrmart.com/?wpr_templates=user-header-header', 0, 'wpr_templates', '', 0),
(19, 1, '2025-12-26 17:00:15', '2025-12-26 17:00:15', '', 'Azharul-Islam-Logo', '', 'inherit', 'open', 'closed', '', 'azharul-islam-logo', '', '', '2025-12-26 17:00:15', '2025-12-26 17:00:15', '', 17, 'https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png', 0, 'attachment', 'image/png', 0),
(20, 1, '2025-12-26 17:07:06', '2025-12-26 17:07:06', '', 'Header', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2025-12-26 17:07:06', '2025-12-26 17:07:06', '', 17, 'https://azharulislam.asrmart.com/?p=20', 0, 'revision', '', 0),
(21, 1, '2025-12-26 17:07:06', '2025-12-26 17:07:06', '<img width=\"290\" height=\"97\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png\" alt=\"\" />', 'Header', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2025-12-26 17:07:06', '2025-12-26 17:07:06', '', 17, 'https://azharulislam.asrmart.com/?p=21', 0, 'revision', '', 0),
(22, 1, '2025-12-26 17:21:43', '2025-12-26 17:10:01', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2025-12-26 17:21:43', '2025-12-26 17:21:43', '', 0, 'https://azharulislam.asrmart.com/?p=22', 1, 'nav_menu_item', '', 0),
(23, 1, '2025-12-26 17:21:43', '2025-12-26 17:10:01', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2025-12-26 17:21:43', '2025-12-26 17:21:43', '', 0, 'https://azharulislam.asrmart.com/?p=23', 5, 'nav_menu_item', '', 0),
(24, 1, '2025-12-26 17:21:43', '2025-12-26 17:10:01', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2025-12-26 17:21:43', '2025-12-26 17:21:43', '', 0, 'https://azharulislam.asrmart.com/?p=24', 3, 'nav_menu_item', '', 0),
(26, 1, '2025-12-26 17:13:12', '2025-12-26 17:13:12', '<img width=\"290\" height=\"97\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png\" alt=\"\" />																<nav data-trigger=\"hover\"><ul id=\"menu-1-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n</ul></nav><nav><ul id=\"mobile-menu-2-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n</ul></nav>', 'Header', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2025-12-26 17:13:12', '2025-12-26 17:13:12', '', 17, 'https://azharulislam.asrmart.com/?p=26', 0, 'revision', '', 0),
(28, 1, '2025-12-26 17:15:14', '2025-12-26 17:15:14', '<img width=\"290\" height=\"97\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png\" alt=\"\" />																<nav data-trigger=\"hover\"><ul id=\"menu-1-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n</ul></nav><nav><ul id=\"mobile-menu-2-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n</ul></nav>', 'Header', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2025-12-26 17:15:14', '2025-12-26 17:15:14', '', 17, 'https://azharulislam.asrmart.com/?p=28', 0, 'revision', '', 0),
(30, 1, '2025-12-26 17:18:47', NULL, '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2025-12-26 17:18:47', NULL, '', 0, 'https://azharulislam.asrmart.com/?p=30', 0, 'post', '', 0),
(31, 1, '2025-12-26 17:19:28', '2025-12-26 17:19:28', '', 'Service', '', 'publish', 'closed', 'closed', '', 'service', '', '', '2025-12-26 17:19:28', '2025-12-26 17:19:28', '', 0, 'https://azharulislam.asrmart.com/?page_id=31', 0, 'page', '', 0),
(32, 1, '2025-12-26 17:19:28', '2025-12-26 17:19:28', '', 'Service', '', 'inherit', 'closed', 'closed', '', '31-revision-v1', '', '', '2025-12-26 17:19:28', '2025-12-26 17:19:28', '', 31, 'https://azharulislam.asrmart.com/?p=32', 0, 'revision', '', 0),
(33, 1, '2025-12-26 17:20:00', '2025-12-26 17:20:00', '<img width=\"290\" height=\"97\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png\" alt=\"\" />																<nav data-trigger=\"hover\"><ul id=\"menu-1-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n</ul></nav><nav><ul id=\"mobile-menu-2-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n</ul></nav>', 'Header', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2025-12-26 17:20:00', '2025-12-26 17:20:00', '', 17, 'https://azharulislam.asrmart.com/?p=33', 0, 'revision', '', 0),
(34, 1, '2025-12-26 17:21:08', '2025-12-26 17:21:08', '', 'About Us', '', 'publish', 'closed', 'closed', '', 'about-us', '', '', '2025-12-26 17:21:08', '2025-12-26 17:21:08', '', 0, 'https://azharulislam.asrmart.com/?page_id=34', 0, 'page', '', 0),
(35, 1, '2025-12-26 17:21:08', '2025-12-26 17:21:08', '', 'About Us', '', 'inherit', 'closed', 'closed', '', '34-revision-v1', '', '', '2025-12-26 17:21:08', '2025-12-26 17:21:08', '', 34, 'https://azharulislam.asrmart.com/?p=35', 0, 'revision', '', 0),
(36, 1, '2025-12-26 17:21:43', '2025-12-26 17:21:43', ' ', '', '', 'publish', 'closed', 'closed', '', '36', '', '', '2025-12-26 17:21:43', '2025-12-26 17:21:43', '', 0, 'https://azharulislam.asrmart.com/?p=36', 2, 'nav_menu_item', '', 0),
(37, 1, '2025-12-26 17:21:43', '2025-12-26 17:21:43', ' ', '', '', 'publish', 'closed', 'closed', '', '37', '', '', '2025-12-26 17:21:43', '2025-12-26 17:21:43', '', 0, 'https://azharulislam.asrmart.com/?p=37', 4, 'nav_menu_item', '', 0),
(38, 1, '2025-12-26 17:26:25', '2025-12-26 17:26:25', '<img width=\"290\" height=\"97\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png\" alt=\"\" />																<nav data-trigger=\"hover\"><ul id=\"menu-1-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav><nav><ul id=\"mobile-menu-2-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav>', 'Header', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2025-12-26 17:26:25', '2025-12-26 17:26:25', '', 17, 'https://azharulislam.asrmart.com/?p=38', 0, 'revision', '', 0),
(39, 1, '2025-12-26 17:28:42', '2025-12-26 17:28:42', '<img width=\"290\" height=\"97\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png\" alt=\"\" />																<nav data-trigger=\"hover\"><ul id=\"menu-1-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav><nav><ul id=\"mobile-menu-2-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav>', 'Header', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2025-12-26 17:28:42', '2025-12-26 17:28:42', '', 17, 'https://azharulislam.asrmart.com/?p=39', 0, 'revision', '', 0),
(40, 1, '2025-12-26 17:33:03', '2025-12-26 17:33:03', '<img width=\"290\" height=\"97\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png\" alt=\"\" />																<nav data-trigger=\"hover\"><ul id=\"menu-1-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav><nav><ul id=\"mobile-menu-2-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav>										<a href=\"#\">\n									Hire Me!\n					</a>', 'Header', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2025-12-26 17:33:03', '2025-12-26 17:33:03', '', 17, 'https://azharulislam.asrmart.com/?p=40', 0, 'revision', '', 0),
(41, 1, '2025-12-26 17:34:16', '2025-12-26 17:34:16', '<img width=\"290\" height=\"97\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png\" alt=\"\" />																<nav data-trigger=\"hover\"><ul id=\"menu-1-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav><nav><ul id=\"mobile-menu-2-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav>										<a href=\"#\">\n									Hire Me!\n					</a>', 'Header', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2025-12-26 17:34:16', '2025-12-26 17:34:16', '', 17, 'https://azharulislam.asrmart.com/?p=41', 0, 'revision', '', 0),
(42, 1, '2025-12-26 17:35:24', '2025-12-26 17:35:24', '<img width=\"290\" height=\"97\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png\" alt=\"\" />																<nav data-trigger=\"hover\"><ul id=\"menu-1-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav><nav><ul id=\"mobile-menu-2-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav>										<a href=\"#\">\n									Hire Me!\n					</a>', 'Header', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2025-12-26 17:35:24', '2025-12-26 17:35:24', '', 17, 'https://azharulislam.asrmart.com/?p=42', 0, 'revision', '', 0),
(43, 1, '2025-12-26 17:36:52', '2025-12-26 17:36:52', '<img width=\"290\" height=\"97\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png\" alt=\"\" />																<nav data-trigger=\"hover\"><ul id=\"menu-1-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav><nav><ul id=\"mobile-menu-2-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav>										<a href=\"#\">\n									Hire Me!\n					</a>', 'Header', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2025-12-26 17:36:52', '2025-12-26 17:36:52', '', 17, 'https://azharulislam.asrmart.com/?p=43', 0, 'revision', '', 0),
(44, 1, '2025-12-26 17:37:11', '2025-12-26 17:37:11', '<img width=\"290\" height=\"97\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png\" alt=\"\" />																<nav data-trigger=\"hover\"><ul id=\"menu-1-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav><nav><ul id=\"mobile-menu-2-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav>										<a href=\"#\">\n									Hire Me!\n					</a>', 'Header', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2025-12-26 17:37:11', '2025-12-26 17:37:11', '', 17, 'https://azharulislam.asrmart.com/?p=44', 0, 'revision', '', 0),
(50, 1, '2025-12-26 17:49:03', '2025-12-26 17:49:03', '<img width=\"290\" height=\"97\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png\" alt=\"\" />																<nav data-trigger=\"hover\"><ul id=\"menu-1-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav><nav><ul id=\"mobile-menu-2-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav>										<a href=\"#\">\n									Hire Me!\n					</a>', 'Header', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2025-12-26 17:49:03', '2025-12-26 17:49:03', '', 17, 'https://azharulislam.asrmart.com/?p=50', 0, 'revision', '', 0),
(51, 1, '2025-12-26 17:54:55', '2025-12-26 17:54:55', '<img width=\"290\" height=\"97\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/Azharul-Islam-Logo.png\" alt=\"\" />																<nav data-trigger=\"hover\"><ul id=\"menu-1-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav><nav><ul id=\"mobile-menu-2-363d837\"><li><a href=\"https://azharulislam.asrmart.com/\">Home</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/about-us/\">About Us</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/portfolio/\">Portfolio</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/service/\">Service</a></li>\n<li><a href=\"https://azharulislam.asrmart.com/contact/\">Contact</a></li>\n</ul></nav>										<a href=\"#\">\n									Hire Me!\n					</a>', 'Header', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2025-12-26 17:54:55', '2025-12-26 17:54:55', '', 17, 'https://azharulislam.asrmart.com/?p=51', 0, 'revision', '', 0),
(52, 1, '2025-12-26 17:55:55', '2025-12-26 17:55:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 17:55:55', '2025-12-26 17:55:55', '', 6, 'https://azharulislam.asrmart.com/?p=52', 0, 'revision', '', 0),
(53, 1, '2025-12-26 17:55:55', '2025-12-26 17:55:55', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 17:55:55', '2025-12-26 17:55:55', '', 6, 'https://azharulislam.asrmart.com/?p=53', 0, 'revision', '', 0),
(54, 1, '2025-12-26 17:55:56', '2025-12-26 17:55:56', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 17:55:56', '2025-12-26 17:55:56', '', 6, 'https://azharulislam.asrmart.com/?p=54', 0, 'revision', '', 0),
(55, 1, '2025-12-26 17:59:41', '2025-12-26 17:59:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 17:59:41', '2025-12-26 17:59:41', '', 6, 'https://azharulislam.asrmart.com/?p=55', 0, 'revision', '', 0),
(56, 1, '2025-12-26 17:59:41', '2025-12-26 17:59:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 17:59:41', '2025-12-26 17:59:41', '', 6, 'https://azharulislam.asrmart.com/?p=56', 0, 'revision', '', 0),
(57, 1, '2025-12-26 17:59:41', '2025-12-26 17:59:41', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 17:59:41', '2025-12-26 17:59:41', '', 6, 'https://azharulislam.asrmart.com/?p=57', 0, 'revision', '', 0),
(58, 1, '2025-12-26 18:01:14', '2025-12-26 18:01:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 18:01:14', '2025-12-26 18:01:14', '', 6, 'https://azharulislam.asrmart.com/?p=58', 0, 'revision', '', 0),
(59, 1, '2025-12-26 18:01:14', '2025-12-26 18:01:14', '', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 18:01:14', '2025-12-26 18:01:14', '', 6, 'https://azharulislam.asrmart.com/?p=59', 0, 'revision', '', 0),
(60, 1, '2025-12-26 18:01:14', '2025-12-26 18:01:14', '<h2>Your Brand, Our\nCreativity</h2>', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 18:01:14', '2025-12-26 18:01:14', '', 6, 'https://azharulislam.asrmart.com/?p=60', 0, 'revision', '', 0),
(62, 1, '2025-12-26 18:04:34', '2025-12-26 18:04:34', 'Azharul Islam', 'Azharul Islam', 'Azharul Islam', 'inherit', 'open', 'closed', '', 'image-removebg-preview-4', '', '', '2025-12-26 18:05:13', '2025-12-26 18:05:13', '', 6, 'https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png', 0, 'attachment', 'image/png', 0),
(63, 1, '2025-12-26 18:06:08', '2025-12-26 18:06:08', '<h2>Your Brand, Our\nCreativity</h2>', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 18:06:08', '2025-12-26 18:06:08', '', 6, 'https://azharulislam.asrmart.com/?p=63', 0, 'revision', '', 0),
(64, 1, '2025-12-26 18:06:08', '2025-12-26 18:06:08', '<h2>Your Brand, Our\nCreativity</h2>', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 18:06:08', '2025-12-26 18:06:08', '', 6, 'https://azharulislam.asrmart.com/?p=64', 0, 'revision', '', 0),
(65, 1, '2025-12-26 18:06:08', '2025-12-26 18:06:08', '<h2>Your Brand, Our\nCreativity</h2>		<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.</p>													<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 18:06:08', '2025-12-26 18:06:08', '', 6, 'https://azharulislam.asrmart.com/?p=65', 0, 'revision', '', 0),
(66, 1, '2025-12-26 18:06:55', '2025-12-26 18:06:55', '<h2>Your Brand, Our\nCreativity</h2>		<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.</p>													<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 18:06:55', '2025-12-26 18:06:55', '', 6, 'https://azharulislam.asrmart.com/?p=66', 0, 'revision', '', 0),
(67, 1, '2025-12-26 18:06:56', '2025-12-26 18:06:56', '<h2>Your Brand, Our\nCreativity</h2>		<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.</p>													<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 18:06:56', '2025-12-26 18:06:56', '', 6, 'https://azharulislam.asrmart.com/?p=67', 0, 'revision', '', 0),
(68, 1, '2025-12-26 18:06:56', '2025-12-26 18:06:56', '<h2>Your Brand, Our\nCreativity</h2>		<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.</p>													<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 18:06:56', '2025-12-26 18:06:56', '', 6, 'https://azharulislam.asrmart.com/?p=68', 0, 'revision', '', 0),
(69, 1, '2025-12-26 18:07:13', '2025-12-26 18:07:13', '<h2>Your Brand, Our\nCreativity</h2>		<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.</p>													<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 18:07:13', '2025-12-26 18:07:13', '', 6, 'https://azharulislam.asrmart.com/?p=69', 0, 'revision', '', 0),
(70, 1, '2025-12-26 18:07:13', '2025-12-26 18:07:13', '<h2>Your Brand, Our\nCreativity</h2>		<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.</p>													<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 18:07:13', '2025-12-26 18:07:13', '', 6, 'https://azharulislam.asrmart.com/?p=70', 0, 'revision', '', 0),
(71, 1, '2025-12-26 18:07:13', '2025-12-26 18:07:13', '<h2>Your Brand, Our\nCreativity</h2>		<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.</p>													<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 18:07:13', '2025-12-26 18:07:13', '', 6, 'https://azharulislam.asrmart.com/?p=71', 0, 'revision', '', 0);
INSERT INTO `lladlqq4_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(72, 1, '2025-12-26 18:08:06', '2025-12-26 18:08:06', '<h2>Your Brand, Our\nCreativity</h2>		<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.</p>													<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 18:08:06', '2025-12-26 18:08:06', '', 6, 'https://azharulislam.asrmart.com/?p=72', 0, 'revision', '', 0),
(73, 1, '2025-12-26 18:08:06', '2025-12-26 18:08:06', '<h2>Your Brand, Our\nCreativity</h2>		<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.</p>													<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 18:08:06', '2025-12-26 18:08:06', '', 6, 'https://azharulislam.asrmart.com/?p=73', 0, 'revision', '', 0),
(74, 1, '2025-12-26 18:08:06', '2025-12-26 18:08:06', '<h2>Your Brand, Our\nCreativity</h2>		<p>Graphic design, web development, and SEO are essential for digital success, enhancing brand identity, user experience, online visibility, and search rankings, ultimately driving engagement, conversions, and business growth in the competitive digital landscape.</p>													<img width=\"500\" height=\"500\" src=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png\" alt=\"Azharul Islam\" srcset=\"https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4.png 500w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-300x300.png 300w, https://azharulislam.asrmart.com/wp-content/uploads/2025/12/image-removebg-preview-4-150x150.png 150w\" sizes=\"(max-width: 500px) 100vw, 500px\" />', 'Home', '', 'inherit', 'closed', 'closed', '', '6-revision-v1', '', '', '2025-12-26 18:08:06', '2025-12-26 18:08:06', '', 6, 'https://azharulislam.asrmart.com/?p=74', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_termmeta`
--

DROP TABLE IF EXISTS `lladlqq4_termmeta`;
CREATE TABLE IF NOT EXISTS `lladlqq4_termmeta` (
  `meta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`meta_id`),
  KEY `term_id` (`term_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_terms`
--

DROP TABLE IF EXISTS `lladlqq4_terms`;
CREATE TABLE IF NOT EXISTS `lladlqq4_terms` (
  `term_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_id`),
  KEY `slug` (`slug`(191)),
  KEY `name` (`name`(191))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lladlqq4_terms`
--

INSERT INTO `lladlqq4_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'agencygrove-dark', 'agencygrove-dark', 0),
(3, 'astra', 'astra', 0),
(4, 'header', 'header', 0),
(5, 'user', 'user', 0),
(6, 'Main Menu', 'main-menu', 0);

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_term_relationships`
--

DROP TABLE IF EXISTS `lladlqq4_term_relationships`;
CREATE TABLE IF NOT EXISTS `lladlqq4_term_relationships` (
  `object_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  KEY `term_taxonomy_id` (`term_taxonomy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lladlqq4_term_relationships`
--

INSERT INTO `lladlqq4_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(8, 2, 0),
(13, 3, 0),
(17, 4, 0),
(17, 5, 0),
(22, 6, 0),
(23, 6, 0),
(24, 6, 0),
(36, 6, 0),
(37, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_term_taxonomy`
--

DROP TABLE IF EXISTS `lladlqq4_term_taxonomy`;
CREATE TABLE IF NOT EXISTS `lladlqq4_term_taxonomy` (
  `term_taxonomy_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `term_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint NOT NULL DEFAULT '0',
  PRIMARY KEY (`term_taxonomy_id`),
  UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  KEY `taxonomy` (`taxonomy`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lladlqq4_term_taxonomy`
--

INSERT INTO `lladlqq4_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'wp_theme', '', 0, 1),
(3, 3, 'wp_theme', '', 0, 1),
(4, 4, 'wpr_template_type', '', 0, 1),
(5, 5, 'wpr_template_type', '', 0, 1),
(6, 6, 'nav_menu', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_usermeta`
--

DROP TABLE IF EXISTS `lladlqq4_usermeta`;
CREATE TABLE IF NOT EXISTS `lladlqq4_usermeta` (
  `umeta_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`umeta_id`),
  KEY `user_id` (`user_id`),
  KEY `meta_key` (`meta_key`(191))
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lladlqq4_usermeta`
--

INSERT INTO `lladlqq4_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'admin_2u124uok'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'llAdlqQ4_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'llAdlqQ4_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"8b323241cc2c3b18a7e53fe9eb3f8911f7ebbf7687da2142a03d10cfeffa87a6\";a:4:{s:10:\"expiration\";i:1766897288;s:2:\"ip\";s:14:\"103.187.68.199\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\";s:5:\"login\";i:1766724488;}s:64:\"6b1be4e118453ea17c2ac2ae4f02290f05871958db6c4ac274833136d5708911\";a:4:{s:10:\"expiration\";i:1766924053;s:2:\"ip\";s:14:\"103.187.68.199\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\";s:5:\"login\";i:1766751253;}s:64:\"aed7d210cc2cf681d15fafe4cd8ea3b3415b823a8d332cf440034623ec42b7bf\";a:4:{s:10:\"expiration\";i:1766937064;s:2:\"ip\";s:14:\"103.187.68.199\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\";s:5:\"login\";i:1766764264;}}'),
(17, 1, 'llAdlqQ4_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"103.187.68.0\";}'),
(19, 1, 'llAdlqQ4_persisted_preferences', 'a:3:{s:4:\"core\";a:2:{s:26:\"isComplementaryAreaVisible\";b:1;s:24:\"enableChoosePatternModal\";b:1;}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2025-12-26T15:53:03.466Z\";}'),
(20, 1, 'elementor_introduction', 'a:3:{s:27:\"ai-get-started-announcement\";b:1;s:20:\"globals_introduction\";b:1;s:59:\"ai_get_started_introduction_site_logo_with_ai_site-settings\";b:1;}'),
(21, 1, 'llAdlqQ4_user-settings', 'libraryContent=browse'),
(22, 1, 'llAdlqQ4_user-settings-time', '1766768842'),
(23, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(24, 1, 'metaboxhidden_nav-menus', 'a:2:{i:0;s:12:\"add-post_tag\";i:1;s:15:\"add-post_format\";}'),
(25, 1, 'nav_menu_recently_edited', '6');

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_users`
--

DROP TABLE IF EXISTS `lladlqq4_users`;
CREATE TABLE IF NOT EXISTS `lladlqq4_users` (
  `ID` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime DEFAULT NULL,
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  PRIMARY KEY (`ID`),
  KEY `user_login_key` (`user_login`),
  KEY `user_nicename` (`user_nicename`),
  KEY `user_email` (`user_email`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lladlqq4_users`
--

INSERT INTO `lladlqq4_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin_2u124uok', '$wp$2y$10$BwcXokP6N9jzOU5Ar7e0cOrqa0fCOBhCELDn4cZab5tbNwrcUDHma', 'admin_2u124uok', 'admin@azharulislam.asrmart.com', 'https://azharulislam.asrmart.com', '2025-12-26 04:47:04', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_wpdm_social_shares`
--

DROP TABLE IF EXISTS `lladlqq4_wpdm_social_shares`;
CREATE TABLE IF NOT EXISTS `lladlqq4_wpdm_social_shares` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `post_id` int NOT NULL DEFAULT '0',
  `url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `channel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_id` int NOT NULL DEFAULT '0',
  `user_agent` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_wpdm_visitors`
--

DROP TABLE IF EXISTS `lladlqq4_wpdm_visitors`;
CREATE TABLE IF NOT EXISTS `lladlqq4_wpdm_visitors` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `meta` text COLLATE utf8mb4_unicode_520_ci,
  `ip` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `mode` varchar(20) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lladlqq4_wpdm_visitors`
--

INSERT INTO `lladlqq4_wpdm_visitors` (`ID`, `user_id`, `meta`, `ip`, `mode`, `created_at`, `updated_at`) VALUES
(1, 1, '{\"os\":\"Win32\",\"browser\":\"Mozilla\",\"browser_version\":\"5.0 (Windows NT 10.0 Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\",\"language\":\"en-US\",\"timezone\":\"Asia/Dhaka\"}', '103.187.68.205', 'dark', '2025-12-26 16:22:40', '2025-12-26 17:35:49'),
(2, NULL, '{\"os\":\"Win32\",\"browser\":\"Mozilla\",\"browser_version\":\"5.0 (Windows NT 10.0 Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/143.0.0.0 Safari/537.36\",\"language\":\"en-US\",\"timezone\":\"Asia/Dhaka\"}', '103.187.68.205', 'light', '2025-12-26 16:23:07', '2025-12-26 16:23:56');

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_wpforms_logs`
--

DROP TABLE IF EXISTS `lladlqq4_wpforms_logs`;
CREATE TABLE IF NOT EXISTS `lladlqq4_wpforms_logs` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `types` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `create_at` datetime NOT NULL,
  `form_id` bigint DEFAULT NULL,
  `entry_id` bigint DEFAULT NULL,
  `user_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_wpforms_payments`
--

DROP TABLE IF EXISTS `lladlqq4_wpforms_payments`;
CREATE TABLE IF NOT EXISTS `lladlqq4_wpforms_payments` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `form_id` bigint NOT NULL,
  `status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subtotal_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `discount_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `total_amount` decimal(26,8) NOT NULL DEFAULT '0.00000000',
  `currency` varchar(3) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `entry_id` bigint NOT NULL DEFAULT '0',
  `gateway` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `type` varchar(12) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `mode` varchar(4) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `transaction_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `customer_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subscription_id` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `subscription_status` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `date_created_gmt` datetime NOT NULL,
  `date_updated_gmt` datetime NOT NULL,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `form_id` (`form_id`),
  KEY `status` (`status`(8)),
  KEY `total_amount` (`total_amount`),
  KEY `type` (`type`(8)),
  KEY `transaction_id` (`transaction_id`(32)),
  KEY `customer_id` (`customer_id`(32)),
  KEY `subscription_id` (`subscription_id`(32)),
  KEY `subscription_status` (`subscription_status`(8)),
  KEY `title` (`title`(64))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_wpforms_payment_meta`
--

DROP TABLE IF EXISTS `lladlqq4_wpforms_payment_meta`;
CREATE TABLE IF NOT EXISTS `lladlqq4_wpforms_payment_meta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `payment_id` bigint NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci,
  PRIMARY KEY (`id`),
  KEY `payment_id` (`payment_id`),
  KEY `meta_key` (`meta_key`(191)),
  KEY `meta_value` (`meta_value`(191))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lladlqq4_wpforms_tasks_meta`
--

DROP TABLE IF EXISTS `lladlqq4_wpforms_tasks_meta`;
CREATE TABLE IF NOT EXISTS `lladlqq4_wpforms_tasks_meta` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `action` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `data` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `lladlqq4_wpforms_tasks_meta`
--

INSERT INTO `lladlqq4_wpforms_tasks_meta` (`id`, `action`, `data`, `date`) VALUES
(1, 'wpforms_process_forms_locator_scan', 'W10=', '2025-12-26 16:03:19'),
(2, 'wpforms_process_purge_spam', 'W10=', '2025-12-26 16:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=132 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_09_15_000010_create_tenants_table', 1),
(5, '2019_09_15_000020_create_domains_table', 1),
(6, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_06_07_063838_create_app_settings', 1),
(8, '2023_06_20_085616_create_languages_table', 1),
(9, '2023_06_27_103949_create_smtp_settings_table', 1),
(10, '2023_07_04_105425_create_permission_tables', 1),
(11, '2023_07_05_103719_create_permission_groups_table', 1),
(12, '2023_08_08_115948_add_permission_group_id_to_permissions_table', 1),
(13, '2023_10_15_100300_add_new_column_status_to_permissions_table', 1),
(14, '2023_10_16_122132_add_new_column_status_to_roles_table', 1),
(15, '2023_10_17_125940_add_new_column_display_name_to_permissions_table', 1),
(16, '2023_11_08_053851_create_customers_table', 1),
(17, '2023_11_10_050850_create_taxes_table', 1),
(18, '2023_11_10_112628_create_services_table', 1),
(19, '2023_11_20_061004_create_payment_types_table', 1),
(20, '2023_11_21_130336_create_jobs_table', 1),
(21, '2023_11_23_045845_create_twilio_table', 1),
(22, '2023_11_23_045911_create_vonage_table', 1),
(23, '2023_11_25_142413_create_sms_templates_table', 1),
(24, '2023_11_26_130942_create_company_table', 1),
(25, '2023_11_28_053051_add_column_fevicon_to_app_settings_table', 1),
(26, '2023_11_29_112601_add_columns_in_company_table', 1),
(27, '2023_12_03_122051_create_email_templates_table', 1),
(28, '2023_12_07_123729_create_orders_table', 1),
(29, '2023_12_07_132219_create_ordered_products', 1),
(30, '2023_12_12_155820_create_prefix_table', 1),
(31, '2023_12_15_120404_create_payment_order_table', 1),
(32, '2023_12_26_163249_add_new_column_assigned_user_id_to_ordered_products_table', 1),
(33, '2023_12_26_193440_add_new_column_assigned_user_note_to_ordered_products_table', 1),
(34, '2023_12_26_194110_add_new_column_schedule_note_to_orders_table', 1),
(35, '2023_12_27_193837_add_new_column_job_code_in_ordered_products_table', 1),
(36, '2023_12_29_172040_add_new_columns_in_oredered_products_table', 1),
(37, '2024_01_18_113646_add_new_column_in_app_settings_table', 1),
(38, '2024_03_10_111342_add_foreign_key_to_permissions_table', 1),
(39, '2024_03_10_120003_remove_cascade_delete_from_roles_has_permissions_table', 1),
(40, '2024_03_10_121727_add_foreign_key_to_users_table', 1),
(41, '2024_03_20_112949_add_created_by_in_users_table', 1),
(42, '2024_03_20_115740_add_created_by_in_roles_table', 1),
(43, '2024_05_16_150510_create_account_groups_table', 1),
(44, '2024_05_16_150540_create_accounts_table', 1),
(45, '2024_05_16_154445_create_account_transactions_table', 1),
(46, '2024_05_20_154231_create_expense_category_table', 1),
(47, '2024_05_24_100846_create_expense_items_master', 1),
(48, '2024_05_28_151159_create_expenses_table', 1),
(49, '2024_05_28_151236_create_expense_items_table', 1),
(50, '2024_06_02_063350_add_column_in_accounts_table', 1),
(51, '2024_06_08_103256_create_warehouses_table', 1),
(52, '2024_06_08_140347_create_item_categories_table', 1),
(53, '2024_06_08_141334_create_units_table', 1),
(54, '2024_06_08_141335_create_items_table', 1),
(55, '2024_06_12_144322_create_item_transactions_table', 1),
(56, '2024_06_21_092617_create_item_serial_master_table', 1),
(57, '2024_06_24_165212_create_item_batch_masters_table', 1),
(58, '2024_06_24_165213_create_item_batche_transactions_table', 1),
(59, '2024_07_01_101046_create_states_table', 1),
(60, '2024_07_01_101047_create_parties_table', 1),
(61, '2024_07_02_165531_create_party_transactions_table', 1),
(62, '2024_07_05_161301_create_purchase_orders_table', 1),
(63, '2024_07_12_144039_create_payment_transaction_table', 1),
(64, '2024_07_16_141128_create_item_batch_quantities_table', 1),
(65, '2024_07_20_173042_add_column_in_company_table', 1),
(66, '2024_07_26_173727_create_purchases_table', 1),
(67, '2024_07_27_205617_add_column_in_accounts_table', 1),
(68, '2024_08_04_111055_create_purchase_return_table', 1),
(69, '2024_08_08_101324_create_item_serial_transactions', 1),
(70, '2024_08_09_150618_create_item_serial_quantities_table', 1),
(71, '2024_08_10_120309_create_item_general_quantities_table', 1),
(72, '2024_08_13_140243_create_sale_order_table', 1),
(73, '2024_08_13_140401_create_sale_table', 1),
(74, '2024_08_13_140447_create_sale_return_table', 1),
(75, '2024_09_03_150952_create_cash_adjustment_table', 1),
(76, '2024_09_05_105556_create_cheque_transaction_table', 1),
(77, '2024_09_10_172119_create_stock_transfers_table', 1),
(78, '2024_09_13_130621_create_item_stock_transfers_table', 1),
(79, '2024_10_09_165405_create_party_payments_table', 1),
(80, '2024_10_09_165406_create_party_payment_allocations_table', 1),
(81, '2024_10_15_122748_update_users_table', 1),
(82, '2024_11_16_145822_update_users_table', 1),
(83, '2024_11_16_165039_create_user_warehouses_table', 1),
(84, '2024_11_17_161743_update_party_table', 1),
(85, '2024_11_18_170736_update_items_table', 1),
(86, '2024_11_23_151907_update_orders_table', 1),
(87, '2024_11_24_112425_create_version_table', 1),
(88, '2024_11_25_130715_update_company_table', 1),
(89, '2024_11_30_141029_update_orders_table', 1),
(90, '2024_12_02_094930_update_items_table', 1),
(91, '2024_12_10_110456_update_company_table', 1),
(92, '2024_12_10_150019_update_parties_table', 1),
(93, '2024_12_17_103659_update_company_table', 1),
(94, '2024_12_22_101427_update_company_table', 1),
(95, '2024_12_24_174820_update_parties_table', 1),
(96, '2024_12_28_134822_create_party_balance_after_adjustments_table', 1),
(97, '2024_12_29_180251_update_company_table', 1),
(98, '2025_01_05_132053_update_company_table', 1),
(99, '2025_01_14_133616_create_brands_table', 1),
(100, '2025_01_14_143954_update_items_table', 1),
(101, '2025_01_18_111043_update_sale_orders_table', 1),
(102, '2025_01_19_090301_create_table_status_histories_table', 1),
(103, '2025_01_29_131743_create_quotations_table', 1),
(104, '2025_01_30_115453_update_sales_table', 1),
(105, '2025_01_30_120506_update_prefix_table', 1),
(106, '2025_01_31_091629_create_currencies_table', 1),
(107, '2025_01_31_122114_update_company_table', 1),
(108, '2025_01_31_131239_udpate_party_table', 1),
(109, '2025_01_31_161036_update_sales_table', 1),
(110, '2025_01_31_172510_update_sale_orders_table', 1),
(111, '2025_01_31_172558_update_sale_return_table', 1),
(112, '2025_01_31_172643_update_purchases_table', 1),
(113, '2025_01_31_172658_update_purchase_orders_table', 1),
(114, '2025_01_31_172704_update_purchase_return_table', 1),
(115, '2025_01_31_173200_update_quotations_table', 1),
(116, '2025_02_03_103555_update_purchase_orders_table', 1),
(117, '2025_02_07_125321_update_company_table', 1),
(118, '2025_02_09_121634_update_company_table', 1),
(119, '2025_02_12_173548_create_expense_subcategories_table', 1),
(120, '2025_02_12_175839_update_expenses_table', 1),
(121, '2025_02_16_174545_update_items_table', 1),
(122, '2025_02_16_183222_update_company_table', 1),
(123, '2025_03_04_125219_create_carriers_table', 1),
(124, '2025_03_04_151219_update_company_table', 1),
(125, '2025_03_08_110515_update_purchase_table', 1),
(126, '2025_03_08_113522_update_item_transactions_table', 1),
(127, '2025_03_17_095035_update_item_transactions_table', 1),
(128, '2025_03_19_120336_update_items_table', 1),
(129, '2025_04_19_083922_update_company_table', 1),
(130, '2025_04_28_084034_create_stock_adjustments_table', 1),
(131, '2025_05_07_101746_update_prefix_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(2, 'App\\Models\\User', 1),
(3, 'App\\Models\\User', 1),
(4, 'App\\Models\\User', 1),
(9, 'App\\Models\\User', 1),
(10, 'App\\Models\\User', 1),
(11, 'App\\Models\\User', 1),
(12, 'App\\Models\\User', 1),
(13, 'App\\Models\\User', 1),
(14, 'App\\Models\\User', 1),
(15, 'App\\Models\\User', 1),
(16, 'App\\Models\\User', 1),
(17, 'App\\Models\\User', 1),
(18, 'App\\Models\\User', 1),
(19, 'App\\Models\\User', 1),
(20, 'App\\Models\\User', 1),
(21, 'App\\Models\\User', 1),
(22, 'App\\Models\\User', 1),
(23, 'App\\Models\\User', 1),
(38, 'App\\Models\\User', 1),
(39, 'App\\Models\\User', 1),
(40, 'App\\Models\\User', 1),
(41, 'App\\Models\\User', 1),
(42, 'App\\Models\\User', 1),
(43, 'App\\Models\\User', 1),
(44, 'App\\Models\\User', 1),
(45, 'App\\Models\\User', 1),
(46, 'App\\Models\\User', 1),
(47, 'App\\Models\\User', 1),
(48, 'App\\Models\\User', 1),
(49, 'App\\Models\\User', 1),
(50, 'App\\Models\\User', 1),
(51, 'App\\Models\\User', 1),
(52, 'App\\Models\\User', 1),
(53, 'App\\Models\\User', 1),
(54, 'App\\Models\\User', 1),
(55, 'App\\Models\\User', 1),
(56, 'App\\Models\\User', 1),
(57, 'App\\Models\\User', 1),
(58, 'App\\Models\\User', 1),
(59, 'App\\Models\\User', 1),
(60, 'App\\Models\\User', 1),
(61, 'App\\Models\\User', 1),
(62, 'App\\Models\\User', 1),
(63, 'App\\Models\\User', 1),
(64, 'App\\Models\\User', 1),
(65, 'App\\Models\\User', 1),
(66, 'App\\Models\\User', 1),
(67, 'App\\Models\\User', 1),
(68, 'App\\Models\\User', 1),
(69, 'App\\Models\\User', 1),
(70, 'App\\Models\\User', 1),
(71, 'App\\Models\\User', 1),
(72, 'App\\Models\\User', 1),
(73, 'App\\Models\\User', 1),
(74, 'App\\Models\\User', 1),
(75, 'App\\Models\\User', 1),
(76, 'App\\Models\\User', 1),
(77, 'App\\Models\\User', 1),
(78, 'App\\Models\\User', 1),
(79, 'App\\Models\\User', 1),
(80, 'App\\Models\\User', 1),
(81, 'App\\Models\\User', 1),
(82, 'App\\Models\\User', 1),
(83, 'App\\Models\\User', 1),
(84, 'App\\Models\\User', 1),
(85, 'App\\Models\\User', 1),
(86, 'App\\Models\\User', 1),
(87, 'App\\Models\\User', 1),
(88, 'App\\Models\\User', 1),
(89, 'App\\Models\\User', 1),
(90, 'App\\Models\\User', 1),
(91, 'App\\Models\\User', 1),
(92, 'App\\Models\\User', 1),
(93, 'App\\Models\\User', 1),
(94, 'App\\Models\\User', 1),
(95, 'App\\Models\\User', 1),
(96, 'App\\Models\\User', 1),
(97, 'App\\Models\\User', 1),
(98, 'App\\Models\\User', 1),
(99, 'App\\Models\\User', 1),
(100, 'App\\Models\\User', 1),
(101, 'App\\Models\\User', 1),
(102, 'App\\Models\\User', 1),
(103, 'App\\Models\\User', 1),
(104, 'App\\Models\\User', 1),
(105, 'App\\Models\\User', 1),
(106, 'App\\Models\\User', 1),
(107, 'App\\Models\\User', 1),
(108, 'App\\Models\\User', 1),
(109, 'App\\Models\\User', 1),
(110, 'App\\Models\\User', 1),
(111, 'App\\Models\\User', 1),
(112, 'App\\Models\\User', 1),
(113, 'App\\Models\\User', 1),
(114, 'App\\Models\\User', 1),
(115, 'App\\Models\\User', 1),
(116, 'App\\Models\\User', 1),
(117, 'App\\Models\\User', 1),
(118, 'App\\Models\\User', 1),
(119, 'App\\Models\\User', 1),
(120, 'App\\Models\\User', 1),
(121, 'App\\Models\\User', 1),
(122, 'App\\Models\\User', 1),
(123, 'App\\Models\\User', 1),
(124, 'App\\Models\\User', 1),
(125, 'App\\Models\\User', 1),
(126, 'App\\Models\\User', 1),
(127, 'App\\Models\\User', 1),
(128, 'App\\Models\\User', 1),
(129, 'App\\Models\\User', 1),
(130, 'App\\Models\\User', 1),
(131, 'App\\Models\\User', 1),
(132, 'App\\Models\\User', 1),
(133, 'App\\Models\\User', 1),
(134, 'App\\Models\\User', 1),
(135, 'App\\Models\\User', 1),
(136, 'App\\Models\\User', 1),
(137, 'App\\Models\\User', 1),
(138, 'App\\Models\\User', 1),
(139, 'App\\Models\\User', 1),
(140, 'App\\Models\\User', 1),
(141, 'App\\Models\\User', 1),
(142, 'App\\Models\\User', 1),
(143, 'App\\Models\\User', 1),
(144, 'App\\Models\\User', 1),
(145, 'App\\Models\\User', 1),
(146, 'App\\Models\\User', 1),
(147, 'App\\Models\\User', 1),
(148, 'App\\Models\\User', 1),
(149, 'App\\Models\\User', 1),
(150, 'App\\Models\\User', 1),
(151, 'App\\Models\\User', 1),
(156, 'App\\Models\\User', 1),
(157, 'App\\Models\\User', 1),
(158, 'App\\Models\\User', 1),
(159, 'App\\Models\\User', 1),
(164, 'App\\Models\\User', 1),
(165, 'App\\Models\\User', 1),
(166, 'App\\Models\\User', 1),
(167, 'App\\Models\\User', 1),
(168, 'App\\Models\\User', 1),
(169, 'App\\Models\\User', 1),
(170, 'App\\Models\\User', 1),
(171, 'App\\Models\\User', 1),
(172, 'App\\Models\\User', 1),
(173, 'App\\Models\\User', 1),
(174, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 2),
(4, 'App\\Models\\User', 2),
(9, 'App\\Models\\User', 2),
(10, 'App\\Models\\User', 2),
(11, 'App\\Models\\User', 2),
(12, 'App\\Models\\User', 2),
(13, 'App\\Models\\User', 2),
(14, 'App\\Models\\User', 2),
(15, 'App\\Models\\User', 2),
(16, 'App\\Models\\User', 2),
(17, 'App\\Models\\User', 2),
(18, 'App\\Models\\User', 2),
(19, 'App\\Models\\User', 2),
(20, 'App\\Models\\User', 2),
(21, 'App\\Models\\User', 2),
(22, 'App\\Models\\User', 2),
(23, 'App\\Models\\User', 2),
(38, 'App\\Models\\User', 2),
(39, 'App\\Models\\User', 2),
(40, 'App\\Models\\User', 2),
(41, 'App\\Models\\User', 2),
(42, 'App\\Models\\User', 2),
(43, 'App\\Models\\User', 2),
(44, 'App\\Models\\User', 2),
(45, 'App\\Models\\User', 2),
(46, 'App\\Models\\User', 2),
(47, 'App\\Models\\User', 2),
(48, 'App\\Models\\User', 2),
(49, 'App\\Models\\User', 2),
(50, 'App\\Models\\User', 2),
(51, 'App\\Models\\User', 2),
(52, 'App\\Models\\User', 2),
(53, 'App\\Models\\User', 2),
(54, 'App\\Models\\User', 2),
(55, 'App\\Models\\User', 2),
(56, 'App\\Models\\User', 2),
(57, 'App\\Models\\User', 2),
(58, 'App\\Models\\User', 2),
(59, 'App\\Models\\User', 2),
(60, 'App\\Models\\User', 2),
(61, 'App\\Models\\User', 2),
(62, 'App\\Models\\User', 2),
(63, 'App\\Models\\User', 2),
(64, 'App\\Models\\User', 2),
(65, 'App\\Models\\User', 2),
(66, 'App\\Models\\User', 2),
(67, 'App\\Models\\User', 2),
(68, 'App\\Models\\User', 2),
(69, 'App\\Models\\User', 2),
(70, 'App\\Models\\User', 2),
(71, 'App\\Models\\User', 2),
(72, 'App\\Models\\User', 2),
(73, 'App\\Models\\User', 2),
(74, 'App\\Models\\User', 2),
(75, 'App\\Models\\User', 2),
(76, 'App\\Models\\User', 2),
(77, 'App\\Models\\User', 2),
(78, 'App\\Models\\User', 2),
(79, 'App\\Models\\User', 2),
(80, 'App\\Models\\User', 2),
(81, 'App\\Models\\User', 2),
(82, 'App\\Models\\User', 2),
(83, 'App\\Models\\User', 2),
(84, 'App\\Models\\User', 2),
(85, 'App\\Models\\User', 2),
(86, 'App\\Models\\User', 2),
(87, 'App\\Models\\User', 2),
(88, 'App\\Models\\User', 2),
(89, 'App\\Models\\User', 2),
(90, 'App\\Models\\User', 2),
(91, 'App\\Models\\User', 2),
(92, 'App\\Models\\User', 2),
(93, 'App\\Models\\User', 2),
(94, 'App\\Models\\User', 2),
(95, 'App\\Models\\User', 2),
(96, 'App\\Models\\User', 2),
(98, 'App\\Models\\User', 2),
(99, 'App\\Models\\User', 2),
(100, 'App\\Models\\User', 2),
(101, 'App\\Models\\User', 2),
(102, 'App\\Models\\User', 2),
(103, 'App\\Models\\User', 2),
(104, 'App\\Models\\User', 2),
(105, 'App\\Models\\User', 2),
(106, 'App\\Models\\User', 2),
(107, 'App\\Models\\User', 2),
(108, 'App\\Models\\User', 2),
(109, 'App\\Models\\User', 2),
(110, 'App\\Models\\User', 2),
(111, 'App\\Models\\User', 2),
(112, 'App\\Models\\User', 2),
(113, 'App\\Models\\User', 2),
(114, 'App\\Models\\User', 2),
(115, 'App\\Models\\User', 2),
(116, 'App\\Models\\User', 2),
(117, 'App\\Models\\User', 2),
(118, 'App\\Models\\User', 2),
(119, 'App\\Models\\User', 2),
(120, 'App\\Models\\User', 2),
(121, 'App\\Models\\User', 2),
(122, 'App\\Models\\User', 2),
(123, 'App\\Models\\User', 2),
(124, 'App\\Models\\User', 2),
(125, 'App\\Models\\User', 2),
(126, 'App\\Models\\User', 2),
(127, 'App\\Models\\User', 2),
(128, 'App\\Models\\User', 2),
(129, 'App\\Models\\User', 2),
(130, 'App\\Models\\User', 2),
(131, 'App\\Models\\User', 2),
(132, 'App\\Models\\User', 2),
(133, 'App\\Models\\User', 2),
(134, 'App\\Models\\User', 2),
(135, 'App\\Models\\User', 2),
(136, 'App\\Models\\User', 2),
(137, 'App\\Models\\User', 2),
(138, 'App\\Models\\User', 2),
(139, 'App\\Models\\User', 2),
(140, 'App\\Models\\User', 2),
(141, 'App\\Models\\User', 2),
(142, 'App\\Models\\User', 2),
(143, 'App\\Models\\User', 2),
(144, 'App\\Models\\User', 2),
(145, 'App\\Models\\User', 2),
(146, 'App\\Models\\User', 2),
(147, 'App\\Models\\User', 2),
(148, 'App\\Models\\User', 2),
(149, 'App\\Models\\User', 2),
(150, 'App\\Models\\User', 2),
(151, 'App\\Models\\User', 2),
(156, 'App\\Models\\User', 2),
(157, 'App\\Models\\User', 2),
(158, 'App\\Models\\User', 2),
(159, 'App\\Models\\User', 2),
(164, 'App\\Models\\User', 2),
(165, 'App\\Models\\User', 2),
(166, 'App\\Models\\User', 2),
(167, 'App\\Models\\User', 2),
(168, 'App\\Models\\User', 2),
(169, 'App\\Models\\User', 2),
(170, 'App\\Models\\User', 2),
(171, 'App\\Models\\User', 2),
(172, 'App\\Models\\User', 2),
(173, 'App\\Models\\User', 2),
(174, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 3),
(3, 'App\\Models\\User', 3),
(4, 'App\\Models\\User', 3),
(5, 'App\\Models\\User', 3),
(6, 'App\\Models\\User', 3),
(7, 'App\\Models\\User', 3),
(8, 'App\\Models\\User', 3),
(9, 'App\\Models\\User', 3),
(10, 'App\\Models\\User', 3),
(11, 'App\\Models\\User', 3),
(12, 'App\\Models\\User', 3),
(13, 'App\\Models\\User', 3),
(14, 'App\\Models\\User', 3),
(15, 'App\\Models\\User', 3),
(16, 'App\\Models\\User', 3),
(17, 'App\\Models\\User', 3),
(18, 'App\\Models\\User', 3),
(19, 'App\\Models\\User', 3),
(20, 'App\\Models\\User', 3),
(21, 'App\\Models\\User', 3),
(22, 'App\\Models\\User', 3),
(23, 'App\\Models\\User', 3),
(24, 'App\\Models\\User', 3),
(25, 'App\\Models\\User', 3),
(26, 'App\\Models\\User', 3),
(27, 'App\\Models\\User', 3),
(28, 'App\\Models\\User', 3),
(29, 'App\\Models\\User', 3),
(30, 'App\\Models\\User', 3),
(31, 'App\\Models\\User', 3),
(32, 'App\\Models\\User', 3),
(33, 'App\\Models\\User', 3),
(34, 'App\\Models\\User', 3),
(35, 'App\\Models\\User', 3),
(36, 'App\\Models\\User', 3),
(37, 'App\\Models\\User', 3),
(38, 'App\\Models\\User', 3),
(39, 'App\\Models\\User', 3),
(40, 'App\\Models\\User', 3),
(41, 'App\\Models\\User', 3),
(42, 'App\\Models\\User', 3),
(43, 'App\\Models\\User', 3),
(44, 'App\\Models\\User', 3),
(45, 'App\\Models\\User', 3),
(46, 'App\\Models\\User', 3),
(47, 'App\\Models\\User', 3),
(48, 'App\\Models\\User', 3),
(49, 'App\\Models\\User', 3),
(50, 'App\\Models\\User', 3),
(51, 'App\\Models\\User', 3),
(52, 'App\\Models\\User', 3),
(53, 'App\\Models\\User', 3),
(54, 'App\\Models\\User', 3),
(55, 'App\\Models\\User', 3),
(56, 'App\\Models\\User', 3),
(57, 'App\\Models\\User', 3),
(58, 'App\\Models\\User', 3),
(59, 'App\\Models\\User', 3),
(60, 'App\\Models\\User', 3),
(61, 'App\\Models\\User', 3),
(62, 'App\\Models\\User', 3),
(63, 'App\\Models\\User', 3),
(64, 'App\\Models\\User', 3),
(65, 'App\\Models\\User', 3),
(66, 'App\\Models\\User', 3),
(67, 'App\\Models\\User', 3),
(68, 'App\\Models\\User', 3),
(69, 'App\\Models\\User', 3),
(70, 'App\\Models\\User', 3),
(71, 'App\\Models\\User', 3),
(72, 'App\\Models\\User', 3),
(73, 'App\\Models\\User', 3),
(74, 'App\\Models\\User', 3),
(75, 'App\\Models\\User', 3),
(77, 'App\\Models\\User', 3),
(78, 'App\\Models\\User', 3),
(79, 'App\\Models\\User', 3),
(80, 'App\\Models\\User', 3),
(81, 'App\\Models\\User', 3),
(82, 'App\\Models\\User', 3),
(83, 'App\\Models\\User', 3),
(84, 'App\\Models\\User', 3),
(85, 'App\\Models\\User', 3),
(86, 'App\\Models\\User', 3),
(87, 'App\\Models\\User', 3),
(88, 'App\\Models\\User', 3),
(89, 'App\\Models\\User', 3),
(90, 'App\\Models\\User', 3),
(91, 'App\\Models\\User', 3),
(92, 'App\\Models\\User', 3),
(93, 'App\\Models\\User', 3),
(94, 'App\\Models\\User', 3),
(95, 'App\\Models\\User', 3),
(96, 'App\\Models\\User', 3),
(98, 'App\\Models\\User', 3),
(99, 'App\\Models\\User', 3),
(100, 'App\\Models\\User', 3),
(101, 'App\\Models\\User', 3),
(102, 'App\\Models\\User', 3),
(103, 'App\\Models\\User', 3),
(104, 'App\\Models\\User', 3),
(105, 'App\\Models\\User', 3),
(106, 'App\\Models\\User', 3),
(107, 'App\\Models\\User', 3),
(108, 'App\\Models\\User', 3),
(109, 'App\\Models\\User', 3),
(110, 'App\\Models\\User', 3),
(111, 'App\\Models\\User', 3),
(112, 'App\\Models\\User', 3),
(113, 'App\\Models\\User', 3),
(114, 'App\\Models\\User', 3),
(115, 'App\\Models\\User', 3),
(116, 'App\\Models\\User', 3),
(117, 'App\\Models\\User', 3),
(118, 'App\\Models\\User', 3),
(119, 'App\\Models\\User', 3),
(120, 'App\\Models\\User', 3),
(121, 'App\\Models\\User', 3),
(122, 'App\\Models\\User', 3),
(123, 'App\\Models\\User', 3),
(124, 'App\\Models\\User', 3),
(125, 'App\\Models\\User', 3),
(126, 'App\\Models\\User', 3),
(127, 'App\\Models\\User', 3),
(128, 'App\\Models\\User', 3),
(129, 'App\\Models\\User', 3),
(130, 'App\\Models\\User', 3),
(131, 'App\\Models\\User', 3),
(132, 'App\\Models\\User', 3),
(133, 'App\\Models\\User', 3),
(134, 'App\\Models\\User', 3),
(135, 'App\\Models\\User', 3),
(136, 'App\\Models\\User', 3),
(137, 'App\\Models\\User', 3),
(138, 'App\\Models\\User', 3),
(140, 'App\\Models\\User', 3),
(141, 'App\\Models\\User', 3),
(142, 'App\\Models\\User', 3),
(143, 'App\\Models\\User', 3),
(144, 'App\\Models\\User', 3),
(145, 'App\\Models\\User', 3),
(146, 'App\\Models\\User', 3),
(147, 'App\\Models\\User', 3),
(148, 'App\\Models\\User', 3),
(149, 'App\\Models\\User', 3),
(150, 'App\\Models\\User', 3),
(151, 'App\\Models\\User', 3),
(152, 'App\\Models\\User', 3),
(153, 'App\\Models\\User', 3),
(154, 'App\\Models\\User', 3),
(155, 'App\\Models\\User', 3),
(156, 'App\\Models\\User', 3),
(157, 'App\\Models\\User', 3),
(158, 'App\\Models\\User', 3),
(159, 'App\\Models\\User', 3),
(160, 'App\\Models\\User', 3),
(161, 'App\\Models\\User', 3),
(162, 'App\\Models\\User', 3),
(163, 'App\\Models\\User', 3),
(164, 'App\\Models\\User', 3),
(165, 'App\\Models\\User', 3),
(167, 'App\\Models\\User', 3),
(168, 'App\\Models\\User', 3),
(169, 'App\\Models\\User', 3),
(170, 'App\\Models\\User', 3),
(171, 'App\\Models\\User', 3),
(172, 'App\\Models\\User', 3),
(173, 'App\\Models\\User', 3),
(174, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(2, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 4),
(4, 'App\\Models\\User', 4),
(9, 'App\\Models\\User', 4),
(10, 'App\\Models\\User', 4),
(11, 'App\\Models\\User', 4),
(12, 'App\\Models\\User', 4),
(13, 'App\\Models\\User', 4),
(14, 'App\\Models\\User', 4),
(15, 'App\\Models\\User', 4),
(16, 'App\\Models\\User', 4),
(17, 'App\\Models\\User', 4),
(18, 'App\\Models\\User', 4),
(19, 'App\\Models\\User', 4),
(20, 'App\\Models\\User', 4),
(21, 'App\\Models\\User', 4),
(22, 'App\\Models\\User', 4),
(23, 'App\\Models\\User', 4),
(38, 'App\\Models\\User', 4),
(39, 'App\\Models\\User', 4),
(40, 'App\\Models\\User', 4),
(41, 'App\\Models\\User', 4),
(42, 'App\\Models\\User', 4),
(43, 'App\\Models\\User', 4),
(44, 'App\\Models\\User', 4),
(45, 'App\\Models\\User', 4),
(46, 'App\\Models\\User', 4),
(47, 'App\\Models\\User', 4),
(48, 'App\\Models\\User', 4),
(49, 'App\\Models\\User', 4),
(50, 'App\\Models\\User', 4),
(51, 'App\\Models\\User', 4),
(52, 'App\\Models\\User', 4),
(53, 'App\\Models\\User', 4),
(54, 'App\\Models\\User', 4),
(55, 'App\\Models\\User', 4),
(56, 'App\\Models\\User', 4),
(57, 'App\\Models\\User', 4),
(58, 'App\\Models\\User', 4),
(59, 'App\\Models\\User', 4),
(60, 'App\\Models\\User', 4),
(61, 'App\\Models\\User', 4),
(62, 'App\\Models\\User', 4),
(63, 'App\\Models\\User', 4),
(64, 'App\\Models\\User', 4),
(65, 'App\\Models\\User', 4),
(66, 'App\\Models\\User', 4),
(67, 'App\\Models\\User', 4),
(68, 'App\\Models\\User', 4),
(69, 'App\\Models\\User', 4),
(70, 'App\\Models\\User', 4),
(71, 'App\\Models\\User', 4),
(72, 'App\\Models\\User', 4),
(73, 'App\\Models\\User', 4),
(74, 'App\\Models\\User', 4),
(75, 'App\\Models\\User', 4),
(77, 'App\\Models\\User', 4),
(78, 'App\\Models\\User', 4),
(79, 'App\\Models\\User', 4),
(80, 'App\\Models\\User', 4),
(81, 'App\\Models\\User', 4),
(82, 'App\\Models\\User', 4),
(83, 'App\\Models\\User', 4),
(84, 'App\\Models\\User', 4),
(85, 'App\\Models\\User', 4),
(86, 'App\\Models\\User', 4),
(87, 'App\\Models\\User', 4),
(88, 'App\\Models\\User', 4),
(89, 'App\\Models\\User', 4),
(90, 'App\\Models\\User', 4),
(91, 'App\\Models\\User', 4),
(92, 'App\\Models\\User', 4),
(93, 'App\\Models\\User', 4),
(94, 'App\\Models\\User', 4),
(95, 'App\\Models\\User', 4),
(96, 'App\\Models\\User', 4),
(98, 'App\\Models\\User', 4),
(99, 'App\\Models\\User', 4),
(100, 'App\\Models\\User', 4),
(101, 'App\\Models\\User', 4),
(102, 'App\\Models\\User', 4),
(103, 'App\\Models\\User', 4),
(104, 'App\\Models\\User', 4),
(105, 'App\\Models\\User', 4),
(106, 'App\\Models\\User', 4),
(107, 'App\\Models\\User', 4),
(108, 'App\\Models\\User', 4),
(109, 'App\\Models\\User', 4),
(110, 'App\\Models\\User', 4),
(111, 'App\\Models\\User', 4),
(112, 'App\\Models\\User', 4),
(113, 'App\\Models\\User', 4),
(114, 'App\\Models\\User', 4),
(115, 'App\\Models\\User', 4),
(116, 'App\\Models\\User', 4),
(117, 'App\\Models\\User', 4),
(119, 'App\\Models\\User', 4),
(120, 'App\\Models\\User', 4),
(121, 'App\\Models\\User', 4),
(122, 'App\\Models\\User', 4),
(123, 'App\\Models\\User', 4),
(124, 'App\\Models\\User', 4),
(125, 'App\\Models\\User', 4),
(126, 'App\\Models\\User', 4),
(127, 'App\\Models\\User', 4),
(128, 'App\\Models\\User', 4),
(129, 'App\\Models\\User', 4),
(130, 'App\\Models\\User', 4),
(131, 'App\\Models\\User', 4),
(132, 'App\\Models\\User', 4),
(133, 'App\\Models\\User', 4),
(134, 'App\\Models\\User', 4),
(135, 'App\\Models\\User', 4),
(136, 'App\\Models\\User', 4),
(137, 'App\\Models\\User', 4),
(138, 'App\\Models\\User', 4),
(140, 'App\\Models\\User', 4),
(141, 'App\\Models\\User', 4),
(142, 'App\\Models\\User', 4),
(143, 'App\\Models\\User', 4),
(144, 'App\\Models\\User', 4),
(145, 'App\\Models\\User', 4),
(146, 'App\\Models\\User', 4),
(147, 'App\\Models\\User', 4),
(148, 'App\\Models\\User', 4),
(149, 'App\\Models\\User', 4),
(150, 'App\\Models\\User', 4),
(151, 'App\\Models\\User', 4),
(156, 'App\\Models\\User', 4),
(157, 'App\\Models\\User', 4),
(158, 'App\\Models\\User', 4),
(159, 'App\\Models\\User', 4),
(164, 'App\\Models\\User', 4),
(165, 'App\\Models\\User', 4),
(167, 'App\\Models\\User', 4),
(168, 'App\\Models\\User', 4),
(169, 'App\\Models\\User', 4),
(170, 'App\\Models\\User', 4),
(171, 'App\\Models\\User', 4),
(172, 'App\\Models\\User', 4),
(173, 'App\\Models\\User', 4),
(174, 'App\\Models\\User', 4),
(1, 'App\\Models\\User', 5),
(3, 'App\\Models\\User', 5),
(57, 'App\\Models\\User', 5),
(59, 'App\\Models\\User', 5),
(61, 'App\\Models\\User', 5),
(62, 'App\\Models\\User', 5),
(63, 'App\\Models\\User', 5),
(75, 'App\\Models\\User', 5),
(79, 'App\\Models\\User', 5),
(108, 'App\\Models\\User', 5),
(110, 'App\\Models\\User', 5),
(122, 'App\\Models\\User', 5),
(127, 'App\\Models\\User', 5),
(130, 'App\\Models\\User', 5),
(138, 'App\\Models\\User', 5),
(140, 'App\\Models\\User', 5),
(141, 'App\\Models\\User', 5),
(142, 'App\\Models\\User', 5),
(156, 'App\\Models\\User', 5),
(158, 'App\\Models\\User', 5),
(167, 'App\\Models\\User', 5),
(1, 'App\\Models\\User', 6),
(3, 'App\\Models\\User', 6),
(5, 'App\\Models\\User', 6),
(6, 'App\\Models\\User', 6),
(7, 'App\\Models\\User', 6),
(8, 'App\\Models\\User', 6),
(24, 'App\\Models\\User', 6),
(25, 'App\\Models\\User', 6),
(26, 'App\\Models\\User', 6),
(27, 'App\\Models\\User', 6),
(28, 'App\\Models\\User', 6),
(34, 'App\\Models\\User', 6),
(35, 'App\\Models\\User', 6),
(36, 'App\\Models\\User', 6),
(37, 'App\\Models\\User', 6),
(38, 'App\\Models\\User', 6),
(39, 'App\\Models\\User', 6),
(40, 'App\\Models\\User', 6),
(41, 'App\\Models\\User', 6),
(42, 'App\\Models\\User', 6),
(43, 'App\\Models\\User', 6),
(44, 'App\\Models\\User', 6),
(45, 'App\\Models\\User', 6),
(46, 'App\\Models\\User', 6),
(47, 'App\\Models\\User', 6),
(48, 'App\\Models\\User', 6),
(49, 'App\\Models\\User', 6),
(50, 'App\\Models\\User', 6),
(51, 'App\\Models\\User', 6),
(52, 'App\\Models\\User', 6),
(53, 'App\\Models\\User', 6),
(54, 'App\\Models\\User', 6),
(56, 'App\\Models\\User', 6),
(57, 'App\\Models\\User', 6),
(58, 'App\\Models\\User', 6),
(59, 'App\\Models\\User', 6),
(60, 'App\\Models\\User', 6),
(61, 'App\\Models\\User', 6),
(62, 'App\\Models\\User', 6),
(63, 'App\\Models\\User', 6),
(64, 'App\\Models\\User', 6),
(67, 'App\\Models\\User', 6),
(73, 'App\\Models\\User', 6),
(75, 'App\\Models\\User', 6),
(77, 'App\\Models\\User', 6),
(78, 'App\\Models\\User', 6),
(79, 'App\\Models\\User', 6),
(80, 'App\\Models\\User', 6),
(81, 'App\\Models\\User', 6),
(82, 'App\\Models\\User', 6),
(83, 'App\\Models\\User', 6),
(84, 'App\\Models\\User', 6),
(85, 'App\\Models\\User', 6),
(86, 'App\\Models\\User', 6),
(87, 'App\\Models\\User', 6),
(89, 'App\\Models\\User', 6),
(90, 'App\\Models\\User', 6),
(91, 'App\\Models\\User', 6),
(92, 'App\\Models\\User', 6),
(93, 'App\\Models\\User', 6),
(94, 'App\\Models\\User', 6),
(96, 'App\\Models\\User', 6),
(98, 'App\\Models\\User', 6),
(99, 'App\\Models\\User', 6),
(100, 'App\\Models\\User', 6),
(101, 'App\\Models\\User', 6),
(102, 'App\\Models\\User', 6),
(103, 'App\\Models\\User', 6),
(104, 'App\\Models\\User', 6),
(105, 'App\\Models\\User', 6),
(106, 'App\\Models\\User', 6),
(108, 'App\\Models\\User', 6),
(110, 'App\\Models\\User', 6),
(112, 'App\\Models\\User', 6),
(113, 'App\\Models\\User', 6),
(114, 'App\\Models\\User', 6),
(115, 'App\\Models\\User', 6),
(122, 'App\\Models\\User', 6),
(123, 'App\\Models\\User', 6),
(124, 'App\\Models\\User', 6),
(125, 'App\\Models\\User', 6),
(126, 'App\\Models\\User', 6),
(127, 'App\\Models\\User', 6),
(128, 'App\\Models\\User', 6),
(129, 'App\\Models\\User', 6),
(132, 'App\\Models\\User', 6),
(133, 'App\\Models\\User', 6),
(134, 'App\\Models\\User', 6),
(135, 'App\\Models\\User', 6),
(136, 'App\\Models\\User', 6),
(138, 'App\\Models\\User', 6),
(140, 'App\\Models\\User', 6),
(141, 'App\\Models\\User', 6),
(142, 'App\\Models\\User', 6),
(143, 'App\\Models\\User', 6),
(144, 'App\\Models\\User', 6),
(145, 'App\\Models\\User', 6),
(146, 'App\\Models\\User', 6),
(156, 'App\\Models\\User', 6),
(157, 'App\\Models\\User', 6),
(158, 'App\\Models\\User', 6),
(159, 'App\\Models\\User', 6),
(164, 'App\\Models\\User', 6),
(165, 'App\\Models\\User', 6),
(167, 'App\\Models\\User', 6),
(173, 'App\\Models\\User', 6),
(174, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(2, 'App\\Models\\User', 3),
(1, 'App\\Models\\User', 4),
(3, 'App\\Models\\User', 5),
(4, 'App\\Models\\User', 6);

-- --------------------------------------------------------

--
-- Table structure for table `ordered_products`
--

DROP TABLE IF EXISTS `ordered_products`;
CREATE TABLE IF NOT EXISTS `ordered_products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_id` bigint UNSIGNED NOT NULL,
  `service_id` bigint UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `start_date` date DEFAULT NULL COMMENT 'Event start date',
  `start_time` time DEFAULT NULL COMMENT 'Event start time',
  `end_date` date DEFAULT NULL COMMENT 'Event End date',
  `end_time` time DEFAULT NULL COMMENT 'Event End time',
  `unit_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT 'original price(without tax)',
  `quantity` decimal(10,0) NOT NULL DEFAULT '0',
  `total_price` decimal(10,2) NOT NULL DEFAULT '0.00' COMMENT '(original price * quantity)',
  `tax_id` bigint UNSIGNED NOT NULL,
  `tax_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inclusive',
  `tax_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `discount_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'fixed or percentage',
  `discount_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_price_after_discount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `total_price_with_tax` decimal(10,2) NOT NULL DEFAULT '0.00',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `assigned_user_id` bigint UNSIGNED DEFAULT NULL,
  `assigned_user_note` text COLLATE utf8mb4_unicode_ci,
  `job_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `staff_status_note` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `ordered_products_order_id_foreign` (`order_id`),
  KEY `ordered_products_service_id_foreign` (`service_id`),
  KEY `ordered_products_tax_id_foreign` (`tax_id`),
  KEY `ordered_products_assigned_user_id_foreign` (`assigned_user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `prefix_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_id` bigint UNSIGNED NOT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `total_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `paid_amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `schedule_note` text COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  KEY `orders_created_by_foreign` (`created_by`),
  KEY `orders_updated_by_foreign` (`updated_by`),
  KEY `orders_party_id_foreign` (`party_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

DROP TABLE IF EXISTS `order_payments`;
CREATE TABLE IF NOT EXISTS `order_payments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `payment_date` date NOT NULL,
  `order_id` bigint UNSIGNED NOT NULL,
  `payment_type_id` bigint UNSIGNED NOT NULL,
  `transaction_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'If Online Payments',
  `amount` decimal(10,2) NOT NULL DEFAULT '0.00',
  `note` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_payments_order_id_foreign` (`order_id`),
  KEY `order_payments_payment_type_id_foreign` (`payment_type_id`),
  KEY `order_payments_created_by_foreign` (`created_by`),
  KEY `order_payments_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `parties`
--

DROP TABLE IF EXISTS `parties`;
CREATE TABLE IF NOT EXISTS `parties` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `prefix_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_wholesale_customer` tinyint(1) NOT NULL DEFAULT '0',
  `default_party` tinyint(1) NOT NULL DEFAULT '0',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_address` text COLLATE utf8mb4_unicode_ci,
  `shipping_address` text COLLATE utf8mb4_unicode_ci,
  `note` text COLLATE utf8mb4_unicode_ci,
  `currency_id` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `tax_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state_id` bigint UNSIGNED DEFAULT NULL,
  `to_pay` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `to_receive` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `is_set_credit_limit` tinyint(1) NOT NULL DEFAULT '0',
  `credit_limit` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `parties_state_id_foreign` (`state_id`),
  KEY `parties_created_by_foreign` (`created_by`),
  KEY `parties_updated_by_foreign` (`updated_by`),
  KEY `parties_currency_id_foreign` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party_balance_after_adjustments`
--

DROP TABLE IF EXISTS `party_balance_after_adjustments`;
CREATE TABLE IF NOT EXISTS `party_balance_after_adjustments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `party_payment_id` bigint UNSIGNED NOT NULL,
  `payment_transaction_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `party_balance_after_adjustments_party_payment_id_foreign` (`party_payment_id`),
  KEY `party_balance_after_adjustments_payment_transaction_id_foreign` (`payment_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party_payments`
--

DROP TABLE IF EXISTS `party_payments`;
CREATE TABLE IF NOT EXISTS `party_payments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `transaction_date` date NOT NULL,
  `payment_type_id` bigint UNSIGNED NOT NULL,
  `payment_direction` enum('receive','pay') COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `party_payments_payment_type_id_foreign` (`payment_type_id`),
  KEY `party_payments_party_id_foreign` (`party_id`),
  KEY `party_payments_created_by_foreign` (`created_by`),
  KEY `party_payments_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party_payment_allocations`
--

DROP TABLE IF EXISTS `party_payment_allocations`;
CREATE TABLE IF NOT EXISTS `party_payment_allocations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `party_payment_id` bigint UNSIGNED NOT NULL,
  `payment_transaction_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `party_payment_allocations_party_payment_id_foreign` (`party_payment_id`),
  KEY `party_payment_allocations_payment_transaction_id_foreign` (`payment_transaction_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `party_transactions`
--

DROP TABLE IF EXISTS `party_transactions`;
CREATE TABLE IF NOT EXISTS `party_transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `transaction_date` date NOT NULL,
  `party_id` bigint UNSIGNED NOT NULL,
  `to_pay` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `to_receive` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `transaction_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `party_transactions_party_id_foreign` (`party_id`),
  KEY `party_transactions_transaction_type_transaction_id_index` (`transaction_type`,`transaction_id`),
  KEY `party_transactions_created_by_foreign` (`created_by`),
  KEY `party_transactions_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_transactions`
--

DROP TABLE IF EXISTS `payment_transactions`;
CREATE TABLE IF NOT EXISTS `payment_transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `transaction_date` date NOT NULL,
  `payment_type_id` bigint UNSIGNED NOT NULL,
  `transfer_to_payment_type_id` bigint UNSIGNED DEFAULT NULL,
  `transaction_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type_of_payment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` bigint UNSIGNED NOT NULL,
  `amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `payment_from_unique_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Identify from which form payment done',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_transactions_payment_type_id_foreign` (`payment_type_id`),
  KEY `payment_transactions_transfer_to_payment_type_id_foreign` (`transfer_to_payment_type_id`),
  KEY `payment_transactions_transaction_type_transaction_id_index` (`transaction_type`,`transaction_id`),
  KEY `payment_transactions_created_by_foreign` (`created_by`),
  KEY `payment_transactions_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payment_types`
--

DROP TABLE IF EXISTS `payment_types`;
CREATE TABLE IF NOT EXISTS `payment_types` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `unique_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `print_bit` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deletable` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `payment_types_user_id_foreign` (`user_id`),
  KEY `payment_types_created_by_foreign` (`created_by`),
  KEY `payment_types_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payment_types`
--

INSERT INTO `payment_types` (`id`, `unique_code`, `name`, `account_number`, `bank_code`, `description`, `user_id`, `print_bit`, `status`, `is_deletable`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'CASH', 'Cash', NULL, NULL, NULL, NULL, 0, 1, 0, 1, 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(2, 'CHEQUE', 'Cheque', NULL, NULL, NULL, NULL, 0, 1, 0, 1, 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(4, 'BANK', 'Bank', '2411100025991', NULL, NULL, NULL, 0, 1, 1, 2, 2, '2025-11-14 13:19:39', '2025-11-26 19:40:49'),
(7, 'BANK', 'DUE', NULL, NULL, NULL, NULL, 0, 1, 1, 6, 6, '2025-12-04 01:27:29', '2025-12-04 01:27:29');

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission_group_id` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`),
  KEY `permissions_permission_group_id_foreign` (`permission_group_id`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `permission_group_id`, `status`, `display_name`) VALUES
(1, 'customer.create', 'web', '2025-11-03 09:02:27', '2025-11-03 09:02:27', 1, 1, 'Create'),
(2, 'customer.edit', 'web', '2025-11-03 09:02:27', '2025-11-03 09:02:27', 1, 1, 'Edit'),
(3, 'customer.view', 'web', '2025-11-03 09:02:27', '2025-11-03 09:02:27', 1, 1, 'View'),
(4, 'customer.delete', 'web', '2025-11-03 09:02:27', '2025-11-03 09:02:27', 1, 1, 'Delete'),
(5, 'tax.create', 'web', '2025-11-03 09:02:27', '2025-11-03 09:02:27', 2, 1, 'Create'),
(6, 'tax.edit', 'web', '2025-11-03 09:02:27', '2025-11-03 09:02:27', 2, 1, 'Edit'),
(7, 'tax.view', 'web', '2025-11-03 09:02:27', '2025-11-03 09:02:27', 2, 1, 'View'),
(8, 'tax.delete', 'web', '2025-11-03 09:02:27', '2025-11-03 09:02:27', 2, 1, 'Delete'),
(9, 'user.create', 'web', '2025-11-03 09:02:27', '2025-11-03 09:02:27', 3, 1, 'Create'),
(10, 'user.edit', 'web', '2025-11-03 09:02:27', '2025-11-03 09:02:27', 3, 1, 'Edit'),
(11, 'user.view', 'web', '2025-11-03 09:02:27', '2025-11-03 09:02:27', 3, 1, 'View'),
(12, 'user.delete', 'web', '2025-11-03 09:02:27', '2025-11-03 09:02:27', 3, 1, 'Delete'),
(13, 'role.create', 'web', '2025-11-03 09:02:27', '2025-11-03 09:02:27', 4, 1, 'Create'),
(14, 'role.edit', 'web', '2025-11-03 09:02:27', '2025-11-03 09:02:27', 4, 1, 'Edit'),
(15, 'role.view', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 4, 1, 'View'),
(16, 'role.delete', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 4, 1, 'Delete'),
(17, 'profile.edit', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 5, 1, 'Edit'),
(18, 'app.settings.edit', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 6, 1, 'Edit'),
(19, 'payment.type.create', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 7, 1, 'Create'),
(20, 'payment.type.edit', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 7, 1, 'Edit'),
(21, 'payment.type.view', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 7, 1, 'View'),
(22, 'payment.type.delete', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 7, 1, 'Delete'),
(23, 'company.edit', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 8, 1, 'Edit'),
(24, 'sms.create', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 9, 1, 'Create'),
(25, 'sms.template.create', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 10, 1, 'Create'),
(26, 'sms.template.edit', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 10, 1, 'Edit'),
(27, 'sms.template.view', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 10, 1, 'View'),
(28, 'sms.template.delete', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 10, 1, 'Delete'),
(29, 'email.create', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 11, 1, 'Create'),
(30, 'email.template.create', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 12, 1, 'Create'),
(31, 'email.template.edit', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 12, 1, 'Edit'),
(32, 'email.template.view', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 12, 1, 'View'),
(33, 'email.template.delete', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 12, 1, 'Delete'),
(34, 'language.create', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 13, 1, 'Create'),
(35, 'language.edit', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 13, 1, 'Edit'),
(36, 'language.view', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 13, 1, 'View'),
(37, 'language.delete', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 13, 1, 'Delete'),
(38, 'report.profit_and_loss', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 14, 1, 'Profit and Loss'),
(39, 'report.item.transaction.batch', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 14, 1, 'Batch Wise Item Transaction Report'),
(40, 'report.item.transaction.serial', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 14, 1, 'Serial/IMEI Item Transaction Report'),
(41, 'report.item.transaction.general', 'web', '2025-11-03 09:02:28', '2025-11-03 09:02:28', 14, 1, 'General Item Transaction Report'),
(42, 'report.purchase', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 14, 1, 'Purchase Report'),
(43, 'report.purchase.item', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 14, 1, 'Item Purchase Report'),
(44, 'report.purchase.payment', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 14, 1, 'Purchase Payment Report'),
(45, 'report.sale', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 14, 1, 'Sale Report'),
(46, 'report.sale.item', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 14, 1, 'Item Sale Report'),
(47, 'report.sale.payment', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 14, 1, 'Sale Payment Report'),
(48, 'report.expired.item', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 14, 1, 'Expired Item Report'),
(49, 'report.reorder.item', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 14, 1, 'Reorder Item Report'),
(50, 'report.expense', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 14, 1, 'Expense Report'),
(51, 'report.expense.item', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 14, 1, 'Item Expense Report'),
(52, 'report.expense.payment', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 14, 1, 'Expense Payment Report'),
(53, 'report.gstr-1', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 14, 1, 'GSTR-1'),
(54, 'report.gstr-2', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 14, 1, 'GSTR-2'),
(55, 'report.stock_transfer', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 14, 1, 'Stock Transfer Report'),
(56, 'report.stock_transfer.item', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 14, 1, 'Item Stock Transfer Report'),
(57, 'expense.create', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 15, 1, 'Create'),
(58, 'expense.edit', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 15, 1, 'Edit'),
(59, 'expense.view', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 15, 1, 'View'),
(60, 'expense.delete', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 15, 1, 'Delete'),
(61, 'expense.category.create', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 15, 1, 'Category Create'),
(62, 'expense.category.edit', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 15, 1, 'Category Edit'),
(63, 'expense.category.view', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 15, 1, 'Category View'),
(64, 'expense.category.delete', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 15, 1, 'Category Delete'),
(65, 'warehouse.create', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 16, 1, 'Create'),
(66, 'warehouse.edit', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 16, 1, 'Edit'),
(67, 'warehouse.view', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 16, 1, 'View'),
(68, 'warehouse.delete', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 16, 1, 'Delete'),
(69, 'stock_transfer.create', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 17, 1, 'Create'),
(70, 'stock_transfer.edit', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 17, 1, 'Edit'),
(71, 'stock_transfer.view', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 17, 1, 'View'),
(72, 'stock_transfer.delete', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 17, 1, 'Delete'),
(73, 'item.create', 'web', '2025-11-03 09:02:29', '2025-11-03 09:02:29', 18, 1, 'Create'),
(74, 'item.edit', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 18, 1, 'Edit'),
(75, 'item.view', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 18, 1, 'View'),
(76, 'item.delete', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 18, 1, 'Delete'),
(77, 'item.category.create', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 18, 1, 'Category Create'),
(78, 'item.category.edit', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 18, 1, 'Category Edit'),
(79, 'item.category.view', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 18, 1, 'Category View'),
(80, 'item.category.delete', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 18, 1, 'Category Delete'),
(81, 'unit.create', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 19, 1, 'Create'),
(82, 'unit.edit', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 19, 1, 'Edit'),
(83, 'unit.view', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 19, 1, 'View'),
(84, 'unit.delete', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 19, 1, 'Delete'),
(85, 'supplier.create', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 20, 1, 'Create'),
(86, 'supplier.edit', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 20, 1, 'Edit'),
(87, 'supplier.view', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 20, 1, 'View'),
(88, 'supplier.delete', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 20, 1, 'Delete'),
(89, 'import.item', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 21, 1, 'Import Items & Services'),
(90, 'import.party', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 21, 1, 'Import Customers & Suppliers'),
(91, 'generate.barcode', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 21, 1, 'Generate Barcode'),
(92, 'purchase.order.create', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 22, 1, 'Create'),
(93, 'purchase.order.edit', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 22, 1, 'Edit'),
(94, 'purchase.order.view', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 22, 1, 'View'),
(95, 'purchase.order.delete', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 22, 1, 'Delete'),
(96, 'purchase.bill.create', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 23, 1, 'Create'),
(97, 'purchase.bill.edit', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 23, 1, 'Edit'),
(98, 'purchase.bill.view', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 23, 1, 'View'),
(99, 'purchase.bill.delete', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 23, 1, 'Delete'),
(100, 'purchase.return.create', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 24, 1, 'Create'),
(101, 'purchase.return.edit', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 24, 1, 'Edit'),
(102, 'purchase.return.view', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 24, 1, 'View'),
(103, 'purchase.return.delete', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 24, 1, 'Delete'),
(104, 'sale.order.create', 'web', '2025-11-03 09:02:30', '2025-11-03 09:02:30', 25, 1, 'Create'),
(105, 'sale.order.edit', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 25, 1, 'Edit'),
(106, 'sale.order.view', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 25, 1, 'View'),
(107, 'sale.order.delete', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 25, 1, 'Delete'),
(108, 'sale.invoice.create', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 26, 1, 'Create'),
(109, 'sale.invoice.edit', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 26, 1, 'Edit'),
(110, 'sale.invoice.view', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 26, 1, 'View'),
(111, 'sale.invoice.delete', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 26, 1, 'Delete'),
(112, 'sale.return.create', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 27, 1, 'Create'),
(113, 'sale.return.edit', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 27, 1, 'Edit'),
(114, 'sale.return.view', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 27, 1, 'View'),
(115, 'sale.return.delete', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 27, 1, 'Delete'),
(116, 'transaction.cash.add', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 28, 1, 'Cash Transaction Create'),
(117, 'transaction.cash.edit', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 28, 1, 'Cash Transaction Edit'),
(118, 'transaction.cash.view', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 28, 1, 'Cash Transaction View'),
(119, 'transaction.cash.delete', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 28, 1, 'Cash Transaction Delete'),
(120, 'transaction.bank.view', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 28, 1, 'Bank Transaction View'),
(121, 'transaction.cheque.view', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 28, 1, 'Cheque Transaction View'),
(122, 'report.customer.due.payment', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 14, 1, 'Customer Payments Due Report'),
(123, 'report.supplier.due.payment', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 14, 1, 'Supplier Payments Due Report'),
(124, 'report.stock_report.item.batch', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 14, 1, 'Batch Wise Item Stock Report'),
(125, 'report.stock_report.item.serial', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 14, 1, 'Serial Wise Item Stock Report'),
(126, 'report.stock_report.item.general', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 14, 1, 'General Item Stock Report'),
(127, 'general.allow.to.view.item.purchase.price', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 29, 1, 'Allow User to View Item Purchase Price in Item Search(Invoice/Bill)'),
(128, 'general.permission.to.apply.discount.to.sale', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 29, 1, 'Permission to Apply Discounts on Invoices'),
(129, 'general.permission.to.apply.discount.to.purchase', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 29, 1, 'Permission to Apply Discounts on Purchases'),
(130, 'sale.invoice.can.view.other.users.sale.invoices', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 26, 1, 'Allow User to View All Sale Invoices Created By Other Users'),
(131, 'sale.order.can.view.other.users.sale.orders', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 25, 1, 'Allow User to View All Sale Orders Created By Other Users'),
(132, 'sale.return.can.view.other.users.sale.returns', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 27, 1, 'Allow User to View All Sale Returns Created By Other Users'),
(133, 'purchase.bill.can.view.other.users.purchase.bills', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 23, 1, 'Allow User to View All Purchase Bills Created By Other Users'),
(134, 'purchase.order.can.view.other.users.purchase.orders', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 22, 1, 'Allow User to View All Purchase Orders Created By Other Users'),
(135, 'purchase.return.can.view.other.users.purchase.returns', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 24, 1, 'Allow User to View All Purchase Returns Created By Other Users'),
(136, 'expense.can.view.other.users.expenses', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 15, 1, 'Allow User to View All Expenses Created By Other Users'),
(137, 'stock_transfer.can.view.other.users.stock.transfers', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 17, 1, 'Allow User to View All Stock Transfer Created By Other Users'),
(138, 'dashboard.can.view.widget.cards', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 30, 1, 'Allow User to View Dashboard Widget Cards'),
(139, 'dashboard.can.view.sale.vs.purchase.bar.chart', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 30, 1, 'Allow User to View Sale Vs. Purchase Bar Chart on Dashboard'),
(140, 'dashboard.can.view.trending.items.pie.chart', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 30, 1, 'Allow User to View Trending Items Pie Chart on Dashboard'),
(141, 'dashboard.can.view.recent.invoices.table', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 30, 1, 'Allow User to View Recent Invoices Table on Dashboard'),
(142, 'dashboard.can.view.self.dashboard.details.only', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 30, 1, 'Allow User to View Only Their Own Dashboard Details'),
(143, 'item.brand.create', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 18, 1, 'Brand Create'),
(144, 'item.brand.edit', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 18, 1, 'Brand Edit'),
(145, 'item.brand.view', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 18, 1, 'Brand View'),
(146, 'item.brand.delete', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 18, 1, 'Brand Delete'),
(147, 'sale.quotation.create', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 31, 1, 'Create'),
(148, 'sale.quotation.edit', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 31, 1, 'Edit'),
(149, 'sale.quotation.view', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 31, 1, 'View'),
(150, 'sale.quotation.delete', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 31, 1, 'Delete'),
(151, 'sale.quotation.can.view.other.users.sale.quotations', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 31, 1, 'Allow User to View All Quotations Created By Other Users'),
(152, 'currency.create', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 32, 1, 'Create'),
(153, 'currency.edit', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 32, 1, 'Edit'),
(154, 'currency.view', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 32, 1, 'View'),
(155, 'currency.delete', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 32, 1, 'Delete'),
(156, 'expense.subcategory.create', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 15, 1, 'Expense Subcategory Create'),
(157, 'expense.subcategory.edit', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 15, 1, 'Expense Subcategory Edit'),
(158, 'expense.subcategory.view', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 15, 1, 'Expense Subcategory View'),
(159, 'expense.subcategory.delete', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 15, 1, 'Expense Subcategory Delete'),
(160, 'carrier.create', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 33, 1, 'Carrier Create'),
(161, 'carrier.edit', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 33, 1, 'Carrier Edit'),
(162, 'carrier.view', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 33, 1, 'Carrier View'),
(163, 'carrier.delete', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 33, 1, 'Carrier Delete'),
(164, 'report.transaction.cashflow', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 14, 1, 'Cash Flow Transaction Report'),
(165, 'report.transaction.bank-statement', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 14, 1, 'Bank Statement Transaction Report'),
(166, 'general.permission.to.change.sale.price', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 29, 1, 'Allow User to Change Sale Price'),
(167, 'dashboard.can.view.low.stock.items.table', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 30, 1, 'Allow User to View Low Stock Items Table on Dashboard'),
(168, 'stock_adjustment.create', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 34, 1, 'Create'),
(169, 'stock_adjustment.edit', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 34, 1, 'Edit'),
(170, 'stock_adjustment.delete', 'web', '2025-11-03 09:02:32', '2025-11-03 09:02:32', 34, 1, 'Delete'),
(171, 'stock_adjustment.view', 'web', '2025-11-03 09:02:33', '2025-11-03 09:02:33', 34, 1, 'View'),
(172, 'stock_adjustment.can.view.other.users.stock.adjustments', 'web', '2025-11-03 09:02:33', '2025-11-03 09:02:33', 34, 1, 'Allow User to View All Stock Adjustment Created By Other Users'),
(173, 'report.stock_adjustment', 'web', '2025-11-03 09:02:33', '2025-11-03 09:02:33', 14, 1, 'Stock Adjustment Report'),
(174, 'report.stock_adjustment.item', 'web', '2025-11-03 09:02:33', '2025-11-03 09:02:33', 14, 1, 'Item Wise Stock Adjustment Report');

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

DROP TABLE IF EXISTS `permission_groups`;
CREATE TABLE IF NOT EXISTS `permission_groups` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Customers', 1, '2025-11-03 09:02:26', '2025-11-03 09:02:26'),
(2, 'Tax', 1, '2025-11-03 09:02:27', '2025-11-03 09:02:27'),
(3, 'Users', 1, '2025-11-03 09:02:27', '2025-11-03 09:02:27'),
(4, 'Roles', 1, '2025-11-03 09:02:27', '2025-11-03 09:02:27'),
(5, 'Profile', 1, '2025-11-03 09:02:28', '2025-11-03 09:02:28'),
(6, 'App Settings', 1, '2025-11-03 09:02:28', '2025-11-03 09:02:28'),
(7, 'Bank Account', 1, '2025-11-03 09:02:28', '2025-11-03 09:02:28'),
(8, 'Company Details', 1, '2025-11-03 09:02:28', '2025-11-03 09:02:28'),
(9, 'Create & Send Manual SMS', 1, '2025-11-03 09:02:28', '2025-11-03 09:02:28'),
(10, 'SMS Template', 1, '2025-11-03 09:02:28', '2025-11-03 09:02:28'),
(11, 'Create & Send Manual Email', 1, '2025-11-03 09:02:28', '2025-11-03 09:02:28'),
(12, 'Email Template', 1, '2025-11-03 09:02:28', '2025-11-03 09:02:28'),
(13, 'Languages', 1, '2025-11-03 09:02:28', '2025-11-03 09:02:28'),
(14, 'Reports', 1, '2025-11-03 09:02:28', '2025-11-03 09:02:28'),
(15, 'Expense', 1, '2025-11-03 09:02:29', '2025-11-03 09:02:29'),
(16, 'Warehouses', 1, '2025-11-03 09:02:29', '2025-11-03 09:02:29'),
(17, 'Stock Transfer', 1, '2025-11-03 09:02:29', '2025-11-03 09:02:29'),
(18, 'Items', 1, '2025-11-03 09:02:29', '2025-11-03 09:02:29'),
(19, 'Units', 1, '2025-11-03 09:02:30', '2025-11-03 09:02:30'),
(20, 'Suppliers', 1, '2025-11-03 09:02:30', '2025-11-03 09:02:30'),
(21, 'Utilities', 1, '2025-11-03 09:02:30', '2025-11-03 09:02:30'),
(22, 'Purchase Order', 1, '2025-11-03 09:02:30', '2025-11-03 09:02:30'),
(23, 'Purchase Bill', 1, '2025-11-03 09:02:30', '2025-11-03 09:02:30'),
(24, 'Purchase Return', 1, '2025-11-03 09:02:30', '2025-11-03 09:02:30'),
(25, 'Sale Order', 1, '2025-11-03 09:02:30', '2025-11-03 09:02:30'),
(26, 'Sale Bill', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(27, 'Sale Return', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(28, 'Cash & Bank Transaction', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(29, 'General', 1, '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(30, 'Dashboard', 1, '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(31, 'Quotation', 1, '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(32, 'Currency', 1, '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(33, 'Carrier', 1, '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(34, 'Stock Adjustment', 1, '2025-11-03 09:02:32', '2025-11-03 09:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prefix`
--

DROP TABLE IF EXISTS `prefix`;
CREATE TABLE IF NOT EXISTS `prefix` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `company_id` bigint UNSIGNED NOT NULL,
  `order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_master` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expense` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_bill` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_return` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_order` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_return` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_transfer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock_adjustment` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `prefix_company_id_foreign` (`company_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `prefix`
--

INSERT INTO `prefix` (`id`, `company_id`, `order`, `service`, `job_code`, `service_master`, `customer`, `expense`, `purchase_order`, `purchase_bill`, `purchase_return`, `sale_order`, `sale`, `sale_return`, `stock_transfer`, `stock_adjustment`, `quotation`, `created_at`, `updated_at`) VALUES
(1, 1, 'ORD/', NULL, 'JOB/', NULL, NULL, 'EXP/', 'PO/', 'PB/', 'PR/', 'SO/', 'SL/', 'SR/', 'ST/', 'SA/', 'QT/', '2025-11-03 09:02:31', '2025-11-03 09:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `purchases`
--

DROP TABLE IF EXISTS `purchases`;
CREATE TABLE IF NOT EXISTS `purchases` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `purchase_date` date NOT NULL,
  `prefix_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_order_id` bigint UNSIGNED DEFAULT NULL,
  `party_id` bigint UNSIGNED NOT NULL,
  `state_id` bigint UNSIGNED DEFAULT NULL,
  `carrier_id` bigint UNSIGNED DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `shipping_charge` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `is_shipping_charge_distributed` tinyint(1) NOT NULL DEFAULT '0',
  `round_off` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `grand_total` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `paid_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `currency_id` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchases_purchase_order_id_foreign` (`purchase_order_id`),
  KEY `purchases_party_id_foreign` (`party_id`),
  KEY `purchases_state_id_foreign` (`state_id`),
  KEY `purchases_created_by_foreign` (`created_by`),
  KEY `purchases_updated_by_foreign` (`updated_by`),
  KEY `purchases_currency_id_foreign` (`currency_id`),
  KEY `purchases_carrier_id_foreign` (`carrier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_orders`
--

DROP TABLE IF EXISTS `purchase_orders`;
CREATE TABLE IF NOT EXISTS `purchase_orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `prefix_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_id` bigint UNSIGNED NOT NULL,
  `state_id` bigint UNSIGNED DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `round_off` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `grand_total` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `paid_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `currency_id` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_orders_party_id_foreign` (`party_id`),
  KEY `purchase_orders_state_id_foreign` (`state_id`),
  KEY `purchase_orders_created_by_foreign` (`created_by`),
  KEY `purchase_orders_updated_by_foreign` (`updated_by`),
  KEY `purchase_orders_currency_id_foreign` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_return`
--

DROP TABLE IF EXISTS `purchase_return`;
CREATE TABLE IF NOT EXISTS `purchase_return` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `return_date` date NOT NULL,
  `prefix_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_id` bigint UNSIGNED NOT NULL,
  `state_id` bigint UNSIGNED DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `round_off` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `grand_total` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `paid_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `currency_id` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `purchase_return_party_id_foreign` (`party_id`),
  KEY `purchase_return_state_id_foreign` (`state_id`),
  KEY `purchase_return_created_by_foreign` (`created_by`),
  KEY `purchase_return_updated_by_foreign` (`updated_by`),
  KEY `purchase_return_currency_id_foreign` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotations`
--

DROP TABLE IF EXISTS `quotations`;
CREATE TABLE IF NOT EXISTS `quotations` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `quotation_date` date NOT NULL,
  `prefix_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_id` bigint UNSIGNED NOT NULL,
  `state_id` bigint UNSIGNED DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `round_off` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `grand_total` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `paid_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `currency_id` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `quotations_party_id_foreign` (`party_id`),
  KEY `quotations_state_id_foreign` (`state_id`),
  KEY `quotations_created_by_foreign` (`created_by`),
  KEY `quotations_updated_by_foreign` (`updated_by`),
  KEY `quotations_currency_id_foreign` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`),
  KEY `roles_created_by_foreign` (`created_by`),
  KEY `roles_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`, `status`, `created_by`, `updated_by`) VALUES
(1, 'Admin', 'web', '2025-11-03 09:02:31', '2025-11-03 09:02:31', 1, NULL, NULL),
(2, 'superadmin', 'web', '2025-11-10 18:59:12', '2025-11-10 18:59:12', 1, NULL, NULL),
(3, 'Operator', 'web', '2025-12-01 02:23:24', '2025-12-01 02:23:24', 1, NULL, NULL),
(4, 'Manager', 'web', '2025-12-01 02:25:10', '2025-12-01 02:25:10', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
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
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
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
(101, 1),
(102, 1),
(103, 1),
(104, 1),
(105, 1),
(106, 1),
(107, 1),
(108, 1),
(109, 1),
(110, 1),
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
(156, 1),
(157, 1),
(158, 1),
(159, 1),
(164, 1),
(165, 1),
(166, 1),
(167, 1),
(168, 1),
(169, 1),
(170, 1),
(171, 1),
(172, 1),
(173, 1),
(174, 1),
(1, 2),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(34, 2),
(35, 2),
(36, 2),
(37, 2),
(38, 2),
(39, 2),
(40, 2),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(75, 2),
(76, 2),
(77, 2),
(78, 2),
(79, 2),
(80, 2),
(81, 2),
(82, 2),
(83, 2),
(84, 2),
(85, 2),
(86, 2),
(87, 2),
(88, 2),
(89, 2),
(90, 2),
(91, 2),
(92, 2),
(93, 2),
(94, 2),
(95, 2),
(96, 2),
(97, 2),
(98, 2),
(99, 2),
(100, 2),
(101, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(109, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(125, 2),
(126, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(138, 2),
(139, 2),
(140, 2),
(141, 2),
(142, 2),
(143, 2),
(144, 2),
(145, 2),
(146, 2),
(147, 2),
(148, 2),
(149, 2),
(150, 2),
(151, 2),
(152, 2),
(153, 2),
(154, 2),
(155, 2),
(156, 2),
(157, 2),
(158, 2),
(159, 2),
(160, 2),
(161, 2),
(162, 2),
(163, 2),
(164, 2),
(165, 2),
(166, 2),
(167, 2),
(168, 2),
(169, 2),
(170, 2),
(171, 2),
(172, 2),
(173, 2),
(174, 2),
(1, 3),
(3, 3),
(57, 3),
(59, 3),
(61, 3),
(62, 3),
(63, 3),
(75, 3),
(79, 3),
(108, 3),
(110, 3),
(122, 3),
(127, 3),
(130, 3),
(138, 3),
(139, 3),
(140, 3),
(141, 3),
(142, 3),
(156, 3),
(158, 3),
(166, 3),
(167, 3),
(1, 4),
(3, 4),
(5, 4),
(6, 4),
(7, 4),
(8, 4),
(24, 4),
(25, 4),
(26, 4),
(27, 4),
(28, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(40, 4),
(41, 4),
(42, 4),
(43, 4),
(44, 4),
(45, 4),
(46, 4),
(47, 4),
(48, 4),
(49, 4),
(50, 4),
(51, 4),
(52, 4),
(53, 4),
(54, 4),
(55, 4),
(56, 4),
(57, 4),
(58, 4),
(59, 4),
(60, 4),
(61, 4),
(62, 4),
(63, 4),
(64, 4),
(67, 4),
(73, 4),
(75, 4),
(77, 4),
(78, 4),
(79, 4),
(80, 4),
(81, 4),
(82, 4),
(83, 4),
(84, 4),
(85, 4),
(86, 4),
(87, 4),
(89, 4),
(90, 4),
(91, 4),
(92, 4),
(93, 4),
(94, 4),
(96, 4),
(97, 4),
(98, 4),
(99, 4),
(100, 4),
(101, 4),
(102, 4),
(103, 4),
(104, 4),
(105, 4),
(106, 4),
(108, 4),
(110, 4),
(112, 4),
(113, 4),
(114, 4),
(122, 4),
(123, 4),
(124, 4),
(125, 4),
(126, 4),
(127, 4),
(128, 4),
(129, 4),
(132, 4),
(133, 4),
(134, 4),
(135, 4),
(136, 4),
(138, 4),
(139, 4),
(140, 4),
(141, 4),
(142, 4),
(143, 4),
(144, 4),
(145, 4),
(146, 4),
(156, 4),
(157, 4),
(158, 4),
(159, 4),
(164, 4),
(165, 4),
(166, 4),
(167, 4),
(173, 4),
(174, 4);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

DROP TABLE IF EXISTS `sales`;
CREATE TABLE IF NOT EXISTS `sales` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sale_date` date NOT NULL,
  `prefix_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_order_id` bigint UNSIGNED DEFAULT NULL,
  `quotation_id` bigint UNSIGNED DEFAULT NULL,
  `party_id` bigint UNSIGNED NOT NULL,
  `state_id` bigint UNSIGNED DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `round_off` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `grand_total` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `paid_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `currency_id` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sales_sale_order_id_foreign` (`sale_order_id`),
  KEY `sales_party_id_foreign` (`party_id`),
  KEY `sales_state_id_foreign` (`state_id`),
  KEY `sales_created_by_foreign` (`created_by`),
  KEY `sales_updated_by_foreign` (`updated_by`),
  KEY `sales_quotation_id_foreign` (`quotation_id`),
  KEY `sales_currency_id_foreign` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_orders`
--

DROP TABLE IF EXISTS `sale_orders`;
CREATE TABLE IF NOT EXISTS `sale_orders` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_date` date NOT NULL,
  `due_date` date DEFAULT NULL,
  `prefix_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `party_id` bigint UNSIGNED NOT NULL,
  `state_id` bigint UNSIGNED DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `round_off` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `grand_total` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `paid_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `currency_id` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_orders_party_id_foreign` (`party_id`),
  KEY `sale_orders_state_id_foreign` (`state_id`),
  KEY `sale_orders_created_by_foreign` (`created_by`),
  KEY `sale_orders_updated_by_foreign` (`updated_by`),
  KEY `sale_orders_currency_id_foreign` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sale_return`
--

DROP TABLE IF EXISTS `sale_return`;
CREATE TABLE IF NOT EXISTS `sale_return` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `return_date` date NOT NULL,
  `prefix_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `return_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `party_id` bigint UNSIGNED NOT NULL,
  `state_id` bigint UNSIGNED DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `round_off` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `grand_total` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `paid_amount` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `currency_id` bigint UNSIGNED DEFAULT NULL,
  `exchange_rate` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sale_return_party_id_foreign` (`party_id`),
  KEY `sale_return_state_id_foreign` (`state_id`),
  KEY `sale_return_created_by_foreign` (`created_by`),
  KEY `sale_return_updated_by_foreign` (`updated_by`),
  KEY `sale_return_currency_id_foreign` (`currency_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

DROP TABLE IF EXISTS `services`;
CREATE TABLE IF NOT EXISTS `services` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `prefix_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `unit_price` decimal(20,2) NOT NULL DEFAULT '0.00',
  `tax_id` bigint UNSIGNED DEFAULT NULL,
  `tax_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'inclusive',
  `image_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `services_tax_id_foreign` (`tax_id`),
  KEY `services_created_by_foreign` (`created_by`),
  KEY `services_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sms_templates`
--

DROP TABLE IF EXISTS `sms_templates`;
CREATE TABLE IF NOT EXISTS `sms_templates` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `keys` text COLLATE utf8mb4_unicode_ci,
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sms_templates`
--

INSERT INTO `sms_templates` (`id`, `name`, `content`, `keys`, `delete_flag`, `created_at`, `updated_at`) VALUES
(1, 'SALE INVOICE', 'Dear [Customer Name],\n\nYour invoice for [Invoice Number] is attached.\n\nTotal: [Total Amount]\nPaid: [Paid Amount]\nDue: [Balance Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Invoice Number]\n\n[Customer Name]\n\n[Sale Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(2, 'SALE ORDER', 'Dear [Customer Name],\n\nYour sale order details for [Order Number] are attached.\n\nTotal: [Total Amount]\nPaid: [Paid Amount]\nDue: [Balance Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Order Number]\n\n[Customer Name]\n\n[Order Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(3, 'SALE RETURN', 'Dear [Customer Name],\n\nYour sale return details for [Return Number] are attached.\n\nTotal: [Total Amount]\nReturned: [Return Amount]\nDue: [Balance Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Return Number]\n\n[Customer Name]\n\n[Return Date]\n\n[Total Amount]\n\n[Return Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(4, 'PURCHASE BILL', 'Dear [Supplier Name],\n\nPlease find attached the invoice for your recent purchase.\n\nBill Details:\n\n   Bill Number: [Bill Number]\n   Purchase Date: [Purchase Date]\n   Total: [Total Amount]\n   Paid Amount: [Paid Amount]\n   Bill Balance: [Balance Amount]\n\nIf you have any questions or require further assistance, please don\'t hesitate to contact us at [Your Email Address] or [Your Mobile Number].\n\nThank you for your business.\n\nSincerely,\n[Your Company Name]\n[Your Mobile Number]', '[Bill Number]\n\n[Supplier Name]\n\n[Purchase Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(5, 'PURCHASE ORDER', 'Dear [Supplier Name],\n\nYour Purchase order details for [Order Number] are attached.\n\nTotal: [Total Amount]\nPaid: [Paid Amount]\nDue: [Balance Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Order Number]\n\n[Customer Name]\n\n[Order Date]\n\n[Due Date]\n\n[Total Amount]\n\n[Paid Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(6, 'PURCHASE RETURN', 'Dear [Supplier Name],\n\nYour purchase return details for [Return Number] are attached.\n\nTotal: [Total Amount]\nReturned: [Return Amount]\nDue: [Balance Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Return Number]\n\n[Supplier Name]\n\n[Return Date]\n\n[Total Amount]\n\n[Return Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(7, 'QUOTATION', 'Dear [Customer Name],\n\nYour Quotation details for [Quotation Number] are attached.\n\nTotal: [Total Amount]\n\nContact us at [Your Mobile Number] or [Your Email Address] for questions.\n\nThanks,\n[Your Company Name]', '[Quotation Number]\n\n[Customer Name]\n\n[Quotation Date]\n\n[Total Amount]\n\n[Balance Amount]\n\n[Your Email Address]\n\n[Your Mobile Number]\n\n[Your Company Name]', 1, '2025-11-03 09:02:32', '2025-11-03 09:02:32');

-- --------------------------------------------------------

--
-- Table structure for table `smtp_settings`
--

DROP TABLE IF EXISTS `smtp_settings`;
CREATE TABLE IF NOT EXISTS `smtp_settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `host` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `port` int NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `encryption` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `smtp_settings`
--

INSERT INTO `smtp_settings` (`id`, `host`, `port`, `username`, `password`, `encryption`, `status`, `created_at`, `updated_at`) VALUES
(1, 'pos3.al-aman-hospital.com', 465, 'support@pos3.al-aman-hospital.com', ']rfx5vvMmNW?6dH}', 'ssl', 1, '2025-11-11 19:40:14', '2025-11-11 19:40:14');

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
CREATE TABLE IF NOT EXISTS `states` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Andhra Pradesh', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(2, 'Arunachal Pradesh', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(3, 'Assam', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(4, 'Bihar', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(5, 'Chhattisgarh', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(6, 'Goa', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(7, 'Gujarat', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(8, 'Haryana', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(9, 'Himachal Pradesh', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(10, 'Jharkhand', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(11, 'Karnataka', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(12, 'Kerala', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(13, 'Madhya Pradesh', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(14, 'Maharashtra', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(15, 'Manipur', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(16, 'Meghalaya', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(17, 'Mizoram', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(18, 'Nagaland', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(19, 'Odisha', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(20, 'Punjab', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(21, 'Rajasthan', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(22, 'Sikkim', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(23, 'Tamil Nadu', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(24, 'Telangana', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(25, 'Tripura', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(26, 'Uttar Pradesh', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(27, 'Uttarakhand', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(28, 'West Bengal', 1, '2025-11-03 09:02:31', '2025-11-03 09:02:31');

-- --------------------------------------------------------

--
-- Table structure for table `status_histories`
--

DROP TABLE IF EXISTS `status_histories`;
CREATE TABLE IF NOT EXISTS `status_histories` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `status_date` date NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `statusable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `statusable_id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED NOT NULL,
  `updated_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `status_histories_statusable_type_statusable_id_index` (`statusable_type`,`statusable_id`),
  KEY `status_histories_created_by_foreign` (`created_by`),
  KEY `status_histories_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_histories`
--

INSERT INTO `status_histories` (`id`, `status_date`, `status`, `note`, `statusable_type`, `statusable_id`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '2025-11-09', 'Pending', NULL, 'Purchase Order', 1, 1, 1, '2025-11-09 15:28:24', '2025-11-09 15:28:24'),
(6, '2025-11-19', 'Completed', NULL, 'Purchase Order', 2, 1, 1, '2025-11-19 12:38:05', '2025-11-19 12:38:05'),
(7, '2025-11-20', 'Pending', NULL, 'Purchase Order', 3, 2, 2, '2025-11-20 12:38:28', '2025-11-20 12:38:28'),
(8, '2025-11-20', 'Pending', NULL, 'Purchase Order', 4, 4, 4, '2025-11-20 14:00:07', '2025-11-20 14:00:07'),
(9, '2025-11-20', 'Pending', NULL, 'Purchase Order', 5, 4, 4, '2025-11-20 14:05:45', '2025-11-20 14:05:45'),
(10, '2025-11-20', 'Completed', NULL, 'Purchase Order', 6, 4, 4, '2025-11-20 14:11:46', '2025-11-20 14:11:46'),
(11, '2025-11-20', 'Pending', NULL, 'Purchase Order', 7, 4, 4, '2025-11-20 14:17:22', '2025-11-20 14:17:22'),
(12, '2025-11-20', 'Pending', NULL, 'Purchase Order', 8, 2, 2, '2025-11-20 20:24:12', '2025-11-20 20:24:12'),
(13, '2025-11-20', 'Pending', NULL, 'Purchase Order', 9, 2, 2, '2025-11-20 20:26:01', '2025-11-20 20:26:01'),
(14, '2025-11-20', 'Pending', NULL, 'Purchase Order', 10, 2, 2, '2025-11-20 20:33:02', '2025-11-20 20:33:02'),
(15, '2025-11-20', 'Completed', NULL, 'Purchase Order', 11, 2, 2, '2025-11-20 20:37:02', '2025-11-20 20:37:02');

-- --------------------------------------------------------

--
-- Table structure for table `stock_adjustments`
--

DROP TABLE IF EXISTS `stock_adjustments`;
CREATE TABLE IF NOT EXISTS `stock_adjustments` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `prefix_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_date` date NOT NULL,
  `reference_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stock_adjustments_created_by_foreign` (`created_by`),
  KEY `stock_adjustments_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_transfers`
--

DROP TABLE IF EXISTS `stock_transfers`;
CREATE TABLE IF NOT EXISTS `stock_transfers` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `prefix_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `count_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transfer_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transfer_date` date NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `stock_transfers_created_by_foreign` (`created_by`),
  KEY `stock_transfers_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

DROP TABLE IF EXISTS `taxes`;
CREATE TABLE IF NOT EXISTS `taxes` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rate` decimal(8,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deletable` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `taxes_created_by_foreign` (`created_by`),
  KEY `taxes_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `name`, `rate`, `status`, `is_deletable`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'None', 0.00, 1, 0, NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31');

-- --------------------------------------------------------

--
-- Table structure for table `tenants`
--

DROP TABLE IF EXISTS `tenants`;
CREATE TABLE IF NOT EXISTS `tenants` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `twilio`
--

DROP TABLE IF EXISTS `twilio`;
CREATE TABLE IF NOT EXISTS `twilio` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `sid` text COLLATE utf8mb4_unicode_ci,
  `auth_token` text COLLATE utf8mb4_unicode_ci,
  `twilio_number` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

DROP TABLE IF EXISTS `units`;
CREATE TABLE IF NOT EXISTS `units` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deletable` tinyint(1) NOT NULL DEFAULT '1',
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `units_user_id_foreign` (`user_id`),
  KEY `units_created_by_foreign` (`created_by`),
  KEY `units_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `name`, `short_code`, `description`, `user_id`, `status`, `is_deletable`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'None', 'None', NULL, NULL, 1, 0, NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(2, 'Box', 'Box', NULL, NULL, 1, 1, NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(3, 'Pieces', 'Pcs', NULL, NULL, 1, 1, NULL, NULL, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(8, 'KG', 'Kilogram', NULL, NULL, 1, 1, 2, 2, '2025-11-12 13:59:56', '2025-11-12 14:03:33');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint UNSIGNED DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_allowed_all_warehouses` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `users_role_id_foreign` (`role_id`),
  KEY `users_created_by_foreign` (`created_by`),
  KEY `users_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `first_name`, `last_name`, `email`, `email_verified_at`, `password`, `role_id`, `avatar`, `status`, `remember_token`, `created_at`, `updated_at`, `created_by`, `updated_by`, `mobile`, `is_allowed_all_warehouses`) VALUES
(1, 'admin', 'Super', 'Admin', 'admin@byteinventory.com', NULL, '$2y$10$MYYgvXQ4WU8wLTIIf6QVz.4qUJXAT9DgjpmQWLzifDcKhT6lyKk8O', 1, NULL, 1, NULL, '2025-11-03 09:02:26', '2025-11-03 15:40:32', NULL, 1, NULL, 1),
(2, 'abidtraders040@gmail.com', 'Abid', 'Traders', 'abidtraders040@gmail.com', NULL, '$2y$10$QbMJ6aYtuwKWSs.NGp2SWe6ARabTRr1Qx.7762Fu1u0vbTDoR5zhe', 1, '691c04ebcd983.png', 1, NULL, '2025-11-10 19:00:31', '2025-11-18 10:32:27', 1, 2, '1612921218', 1),
(3, 'support@projuktisheba.com', 'Projukti', 'Sheba', 'support@projuktisheba.com', NULL, '$2y$10$p3Qm9AyY0lbMVxwQtwEvY.ez4O8bECt1tZNujy5NVCrxVE7K.uqlK', 2, '6911f0e1e312f.png', 1, NULL, '2025-11-10 19:04:17', '2025-11-10 19:04:17', 1, 1, '801712377406', 1),
(4, 'shaddam', 'shaddam', 'hossain', 'msh.shaddam93@gmail.com', NULL, '$2y$10$AwX82NoEuGcJUfktijXd5ewHqeKsbmCDJZMWv39zhtp0.PSpBR2EO', 1, NULL, 1, NULL, '2025-11-15 15:47:31', '2025-12-01 02:40:25', 2, 4, '01612921218', 1),
(5, 'rafiqulislam', 'Rafiqul', 'Islam', 'rafiqulislam@gmail.com', NULL, '$2y$10$PAYh9LGql4uGF2l9iey5huG98KNwmPAK0SaWMAYRtS4K/Q0jAN7Ey', 3, NULL, 1, NULL, '2025-12-01 02:27:03', '2025-12-01 02:27:03', 4, 4, NULL, 1),
(6, 'shahidulislam', 'Shahidul', 'Islam', 'mdshahidulislam5237@gmail.com', NULL, '$2y$10$5gL.8Imf6IJjAt/ztPyaW.05Jm7GxJBTK4PZPNDIzfhHK4HYYrzpu', 4, NULL, 1, NULL, '2025-12-01 02:29:40', '2025-12-01 02:29:40', 4, 4, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_warehouses`
--

DROP TABLE IF EXISTS `user_warehouses`;
CREATE TABLE IF NOT EXISTS `user_warehouses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `warehouse_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_warehouses_user_id_foreign` (`user_id`),
  KEY `user_warehouses_warehouse_id_foreign` (`warehouse_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `versions`
--

DROP TABLE IF EXISTS `versions`;
CREATE TABLE IF NOT EXISTS `versions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `version` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `versions`
--

INSERT INTO `versions` (`id`, `version`, `created_at`, `updated_at`) VALUES
(1, '1.0', '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(2, '1.1', '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(3, '1.1.1', '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(4, '1.2', '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(5, '1.3', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(6, '1.3.1', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(7, '1.3.2', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(8, '1.3.3', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(9, '1.3.4', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(10, '1.4', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(11, '1.4.1', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(12, '1.4.2', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(13, '1.4.3', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(14, '1.4.4', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(15, '1.4.5', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(16, '1.4.6', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(17, '1.4.7', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(18, '1.4.8', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(19, '1.4.9', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(20, '1.5', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(21, '2.0', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(22, '2.1', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(23, '2.2', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(24, '2.3', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(25, '2.3.1', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(26, '2.3.2', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(27, '2.3.3', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(28, '2.3.4', '2025-11-03 09:02:32', '2025-11-03 09:02:32'),
(29, '2.3.5', '2025-11-03 09:02:33', '2025-11-03 09:02:33'),
(30, '2.3.6', '2025-11-03 09:02:33', '2025-11-03 09:02:33'),
(31, '2.4', '2025-11-03 09:02:33', '2025-11-03 09:02:33'),
(32, '2.5', '2025-11-03 09:02:33', '2025-11-03 09:02:33');

-- --------------------------------------------------------

--
-- Table structure for table `vonage`
--

DROP TABLE IF EXISTS `vonage`;
CREATE TABLE IF NOT EXISTS `vonage` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `api_key` text COLLATE utf8mb4_unicode_ci,
  `api_secret` text COLLATE utf8mb4_unicode_ci,
  `tenant_id` int DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `warehouses`
--

DROP TABLE IF EXISTS `warehouses`;
CREATE TABLE IF NOT EXISTS `warehouses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_deletable` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `warehouses_created_by_foreign` (`created_by`),
  KEY `warehouses_updated_by_foreign` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warehouses`
--

INSERT INTO `warehouses` (`id`, `name`, `description`, `created_by`, `updated_by`, `status`, `is_deletable`, `created_at`, `updated_at`) VALUES
(1, 'Main', NULL, NULL, NULL, 1, 0, '2025-11-03 09:02:31', '2025-11-03 09:02:31'),
(4, 'Damage', NULL, 3, 3, 1, 1, '2025-11-10 19:19:12', '2025-11-10 19:19:12');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `accounts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `accounts_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accounts_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `account_groups` (`id`),
  ADD CONSTRAINT `accounts_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accounts_payment_type_bank_id_foreign` FOREIGN KEY (`payment_type_bank_id`) REFERENCES `payment_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `accounts_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `account_groups`
--
ALTER TABLE `account_groups`
  ADD CONSTRAINT `account_groups_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `account_groups_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD CONSTRAINT `account_transactions_account_id_foreign` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`);

--
-- Constraints for table `app_settings`
--
ALTER TABLE `app_settings`
  ADD CONSTRAINT `app_settings_language_id_foreign` FOREIGN KEY (`language_id`) REFERENCES `languages` (`id`);

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `brands_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `carriers`
--
ALTER TABLE `carriers`
  ADD CONSTRAINT `carriers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `carriers_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `cash_adjustments`
--
ALTER TABLE `cash_adjustments`
  ADD CONSTRAINT `cash_adjustments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cash_adjustments_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`),
  ADD CONSTRAINT `cash_adjustments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `cheque_transactions`
--
ALTER TABLE `cheque_transactions`
  ADD CONSTRAINT `cheque_transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `cheque_transactions_payment_transaction_id_foreign` FOREIGN KEY (`payment_transaction_id`) REFERENCES `payment_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cheque_transactions_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`),
  ADD CONSTRAINT `cheque_transactions_transfer_to_payment_type_id_foreign` FOREIGN KEY (`transfer_to_payment_type_id`) REFERENCES `payment_types` (`id`),
  ADD CONSTRAINT `cheque_transactions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `company`
--
ALTER TABLE `company`
  ADD CONSTRAINT `company_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`);

--
-- Constraints for table `customers`
--
ALTER TABLE `customers`
  ADD CONSTRAINT `customers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `customers_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `domains`
--
ALTER TABLE `domains`
  ADD CONSTRAINT `domains_tenant_id_foreign` FOREIGN KEY (`tenant_id`) REFERENCES `tenants` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `expenses`
--
ALTER TABLE `expenses`
  ADD CONSTRAINT `expenses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expenses_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`),
  ADD CONSTRAINT `expenses_expense_subcategory_id_foreign` FOREIGN KEY (`expense_subcategory_id`) REFERENCES `expense_subcategories` (`id`),
  ADD CONSTRAINT `expenses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD CONSTRAINT `expense_categories_account_group_id_foreign` FOREIGN KEY (`account_group_id`) REFERENCES `account_groups` (`id`),
  ADD CONSTRAINT `expense_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expense_categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `expense_items`
--
ALTER TABLE `expense_items`
  ADD CONSTRAINT `expense_items_expense_id_foreign` FOREIGN KEY (`expense_id`) REFERENCES `expenses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_items_expense_item_master_id_foreign` FOREIGN KEY (`expense_item_master_id`) REFERENCES `expense_item_master` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `expense_items_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`);

--
-- Constraints for table `expense_item_master`
--
ALTER TABLE `expense_item_master`
  ADD CONSTRAINT `expense_item_master_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expense_item_master_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`),
  ADD CONSTRAINT `expense_item_master_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `expense_subcategories`
--
ALTER TABLE `expense_subcategories`
  ADD CONSTRAINT `expense_subcategories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `expense_subcategories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_base_unit_id_foreign` FOREIGN KEY (`base_unit_id`) REFERENCES `units` (`id`),
  ADD CONSTRAINT `items_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `items_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `items_item_category_id_foreign` FOREIGN KEY (`item_category_id`) REFERENCES `item_categories` (`id`),
  ADD CONSTRAINT `items_secondary_unit_id_foreign` FOREIGN KEY (`secondary_unit_id`) REFERENCES `units` (`id`),
  ADD CONSTRAINT `items_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`),
  ADD CONSTRAINT `items_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `item_batch_masters`
--
ALTER TABLE `item_batch_masters`
  ADD CONSTRAINT `item_batch_masters_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_batch_quantities`
--
ALTER TABLE `item_batch_quantities`
  ADD CONSTRAINT `item_batch_quantities_item_batch_master_id_foreign` FOREIGN KEY (`item_batch_master_id`) REFERENCES `item_batch_masters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_batch_quantities_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_batch_quantities_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `item_batch_transactions`
--
ALTER TABLE `item_batch_transactions`
  ADD CONSTRAINT `item_batch_transactions_item_batch_master_id_foreign` FOREIGN KEY (`item_batch_master_id`) REFERENCES `item_batch_masters` (`id`),
  ADD CONSTRAINT `item_batch_transactions_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_batch_transactions_item_transaction_id_foreign` FOREIGN KEY (`item_transaction_id`) REFERENCES `item_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_batch_transactions_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `item_categories`
--
ALTER TABLE `item_categories`
  ADD CONSTRAINT `item_categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `item_categories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `item_general_quantities`
--
ALTER TABLE `item_general_quantities`
  ADD CONSTRAINT `item_general_quantities_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_general_quantities_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `item_serial_masters`
--
ALTER TABLE `item_serial_masters`
  ADD CONSTRAINT `item_serial_masters_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_serial_quantities`
--
ALTER TABLE `item_serial_quantities`
  ADD CONSTRAINT `item_serial_quantities_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_serial_quantities_item_serial_master_id_foreign` FOREIGN KEY (`item_serial_master_id`) REFERENCES `item_serial_masters` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_serial_quantities_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `item_serial_transactions`
--
ALTER TABLE `item_serial_transactions`
  ADD CONSTRAINT `item_serial_transactions_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_serial_transactions_item_serial_master_id_foreign` FOREIGN KEY (`item_serial_master_id`) REFERENCES `item_serial_masters` (`id`),
  ADD CONSTRAINT `item_serial_transactions_item_transaction_id_foreign` FOREIGN KEY (`item_transaction_id`) REFERENCES `item_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_serial_transactions_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `item_stock_transfers`
--
ALTER TABLE `item_stock_transfers`
  ADD CONSTRAINT `item_stock_transfers_from_item_transaction_id_foreign` FOREIGN KEY (`from_item_transaction_id`) REFERENCES `item_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_transfers_from_warehouse_id_foreign` FOREIGN KEY (`from_warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_transfers_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_transfers_stock_transfer_id_foreign` FOREIGN KEY (`stock_transfer_id`) REFERENCES `stock_transfers` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_transfers_to_item_transaction_id_foreign` FOREIGN KEY (`to_item_transaction_id`) REFERENCES `item_transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `item_stock_transfers_to_warehouse_id_foreign` FOREIGN KEY (`to_warehouse_id`) REFERENCES `warehouses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `item_transactions`
--
ALTER TABLE `item_transactions`
  ADD CONSTRAINT `item_transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `item_transactions_item_id_foreign` FOREIGN KEY (`item_id`) REFERENCES `items` (`id`),
  ADD CONSTRAINT `item_transactions_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`),
  ADD CONSTRAINT `item_transactions_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`),
  ADD CONSTRAINT `item_transactions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `item_transactions_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ordered_products`
--
ALTER TABLE `ordered_products`
  ADD CONSTRAINT `ordered_products_assigned_user_id_foreign` FOREIGN KEY (`assigned_user_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `ordered_products_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ordered_products_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `services` (`id`),
  ADD CONSTRAINT `ordered_products_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `orders_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `orders_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD CONSTRAINT `order_payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `order_payments_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_payments_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`),
  ADD CONSTRAINT `order_payments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `parties`
--
ALTER TABLE `parties`
  ADD CONSTRAINT `parties_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `parties_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `parties_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `parties_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `party_balance_after_adjustments`
--
ALTER TABLE `party_balance_after_adjustments`
  ADD CONSTRAINT `party_balance_after_adjustments_party_payment_id_foreign` FOREIGN KEY (`party_payment_id`) REFERENCES `party_payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `party_balance_after_adjustments_payment_transaction_id_foreign` FOREIGN KEY (`payment_transaction_id`) REFERENCES `payment_transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `party_payments`
--
ALTER TABLE `party_payments`
  ADD CONSTRAINT `party_payments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `party_payments_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `party_payments_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`),
  ADD CONSTRAINT `party_payments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `party_payment_allocations`
--
ALTER TABLE `party_payment_allocations`
  ADD CONSTRAINT `party_payment_allocations_party_payment_id_foreign` FOREIGN KEY (`party_payment_id`) REFERENCES `party_payments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `party_payment_allocations_payment_transaction_id_foreign` FOREIGN KEY (`payment_transaction_id`) REFERENCES `payment_transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `party_transactions`
--
ALTER TABLE `party_transactions`
  ADD CONSTRAINT `party_transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `party_transactions_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `party_transactions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `payment_transactions`
--
ALTER TABLE `payment_transactions`
  ADD CONSTRAINT `payment_transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `payment_transactions_payment_type_id_foreign` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_types` (`id`),
  ADD CONSTRAINT `payment_transactions_transfer_to_payment_type_id_foreign` FOREIGN KEY (`transfer_to_payment_type_id`) REFERENCES `payment_types` (`id`),
  ADD CONSTRAINT `payment_transactions_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `payment_types`
--
ALTER TABLE `payment_types`
  ADD CONSTRAINT `payment_types_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `payment_types_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `payment_types_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `permissions`
--
ALTER TABLE `permissions`
  ADD CONSTRAINT `permissions_permission_group_id_foreign` FOREIGN KEY (`permission_group_id`) REFERENCES `permission_groups` (`id`);

--
-- Constraints for table `prefix`
--
ALTER TABLE `prefix`
  ADD CONSTRAINT `prefix_company_id_foreign` FOREIGN KEY (`company_id`) REFERENCES `company` (`id`);

--
-- Constraints for table `purchases`
--
ALTER TABLE `purchases`
  ADD CONSTRAINT `purchases_carrier_id_foreign` FOREIGN KEY (`carrier_id`) REFERENCES `carriers` (`id`),
  ADD CONSTRAINT `purchases_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchases_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `purchases_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `purchases_purchase_order_id_foreign` FOREIGN KEY (`purchase_order_id`) REFERENCES `purchase_orders` (`id`),
  ADD CONSTRAINT `purchases_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `purchases_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `purchase_orders`
--
ALTER TABLE `purchase_orders`
  ADD CONSTRAINT `purchase_orders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchase_orders_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `purchase_orders_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `purchase_orders_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `purchase_orders_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `purchase_return`
--
ALTER TABLE `purchase_return`
  ADD CONSTRAINT `purchase_return_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `purchase_return_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `purchase_return_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `purchase_return_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `purchase_return_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `quotations`
--
ALTER TABLE `quotations`
  ADD CONSTRAINT `quotations_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `quotations_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `quotations_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `quotations_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `quotations_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `roles_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `sales`
--
ALTER TABLE `sales`
  ADD CONSTRAINT `sales_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sales_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `sales_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `sales_quotation_id_foreign` FOREIGN KEY (`quotation_id`) REFERENCES `quotations` (`id`),
  ADD CONSTRAINT `sales_sale_order_id_foreign` FOREIGN KEY (`sale_order_id`) REFERENCES `sale_orders` (`id`),
  ADD CONSTRAINT `sales_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `sales_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `sale_orders`
--
ALTER TABLE `sale_orders`
  ADD CONSTRAINT `sale_orders_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sale_orders_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `sale_orders_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `sale_orders_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `sale_orders_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `sale_return`
--
ALTER TABLE `sale_return`
  ADD CONSTRAINT `sale_return_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `sale_return_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `sale_return_party_id_foreign` FOREIGN KEY (`party_id`) REFERENCES `parties` (`id`),
  ADD CONSTRAINT `sale_return_state_id_foreign` FOREIGN KEY (`state_id`) REFERENCES `states` (`id`),
  ADD CONSTRAINT `sale_return_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `services`
--
ALTER TABLE `services`
  ADD CONSTRAINT `services_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `services_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `taxes` (`id`),
  ADD CONSTRAINT `services_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `status_histories`
--
ALTER TABLE `status_histories`
  ADD CONSTRAINT `status_histories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `status_histories_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `stock_adjustments`
--
ALTER TABLE `stock_adjustments`
  ADD CONSTRAINT `stock_adjustments_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stock_adjustments_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `stock_transfers`
--
ALTER TABLE `stock_transfers`
  ADD CONSTRAINT `stock_transfers_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `stock_transfers_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `taxes`
--
ALTER TABLE `taxes`
  ADD CONSTRAINT `taxes_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `taxes_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `units_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `units_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `users_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_warehouses`
--
ALTER TABLE `user_warehouses`
  ADD CONSTRAINT `user_warehouses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_warehouses_warehouse_id_foreign` FOREIGN KEY (`warehouse_id`) REFERENCES `warehouses` (`id`);

--
-- Constraints for table `warehouses`
--
ALTER TABLE `warehouses`
  ADD CONSTRAINT `warehouses_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `warehouses_updated_by_foreign` FOREIGN KEY (`updated_by`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
