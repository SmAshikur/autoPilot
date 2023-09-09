-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 28, 2023 at 11:53 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ultimate-pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounting_accounts`
--

CREATE TABLE `accounting_accounts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gl_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` int NOT NULL,
  `account_primary_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_sub_type_id` bigint DEFAULT NULL,
  `detail_type_id` bigint DEFAULT NULL,
  `parent_account_id` bigint DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounting_accounts`
--

INSERT INTO `accounting_accounts` (`id`, `name`, `gl_code`, `business_id`, `account_primary_type`, `account_sub_type_id`, `detail_type_id`, `parent_account_id`, `description`, `status`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Accounts Payable (A/P)', NULL, 1, 'liability', 6, 58, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(2, 'Credit Card', NULL, 1, 'liability', 7, 59, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(3, 'Wage expenses', NULL, 1, 'expenses', 14, 140, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(4, 'Utilities', NULL, 1, 'expenses', 14, 149, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(5, 'Unrealised loss on securities, net of tax', NULL, 1, 'income', 12, 113, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(6, 'Undeposited Funds', NULL, 1, 'asset', 2, 29, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(7, 'Uncategorised Income', NULL, 1, 'income', 11, 103, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(8, 'Uncategorised Expense', NULL, 1, 'expenses', 14, 138, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(9, 'Uncategorised Asset', NULL, 1, 'asset', 2, 26, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(10, 'Unapplied Cash Payment Income', NULL, 1, 'income', 11, 105, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(11, 'Travel expenses - selling expense', NULL, 1, 'expenses', 14, 147, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(12, 'Travel expenses - general and admin expenses', NULL, 1, 'expenses', 14, 146, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(13, 'Supplies', NULL, 1, 'expenses', 14, 145, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(14, 'Subcontractors - COS', NULL, 1, 'expenses', 13, 114, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(15, 'Stationery and printing', NULL, 1, 'expenses', 14, 137, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(16, 'Short-term debit', NULL, 1, 'liability', 8, 69, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(17, 'Shipping and delivery expense', NULL, 1, 'expenses', 14, 143, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(18, 'Share capital', NULL, 1, 'equity', 10, 95, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(19, 'Sales of Product Income', NULL, 1, 'income', 11, 103, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(20, 'Sales - wholesale', NULL, 1, 'income', 11, 102, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(21, 'Sales - retail', NULL, 1, 'income', 11, 101, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(22, 'Sales', NULL, 1, 'income', 11, 103, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(23, 'Revenue - General', NULL, 1, 'income', 11, 100, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(24, 'Retained Earnings', NULL, 1, 'equity', 10, 94, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(25, 'Repair and maintenance', NULL, 1, 'expenses', 14, 142, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(26, 'Rent or lease payments', NULL, 1, 'expenses', 14, 141, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(27, 'Reconciliation Discrepancies', NULL, 1, 'expenses', 15, 153, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(28, 'Purchases', NULL, 1, 'expenses', 14, 144, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(29, 'Property, plant and equipment', NULL, 1, 'asset', 4, 42, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(30, 'Prepaid Expenses', NULL, 1, 'asset', 2, 27, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(31, 'Payroll liabilities', NULL, 1, 'liability', 8, 71, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(32, 'Payroll Expenses', NULL, 1, 'expenses', 14, 140, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(33, 'Payroll Clearing', NULL, 1, 'liability', 8, 70, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(34, 'Overhead - COS', NULL, 1, 'expenses', 13, 114, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(35, 'Other Types of Expenses-Advertising Expenses', NULL, 1, 'expenses', 14, 119, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(36, 'Other selling expenses', NULL, 1, 'expenses', 14, 139, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(37, 'Other operating income (expenses)', NULL, 1, 'income', 12, 111, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(38, 'Other general and administrative expenses', NULL, 1, 'expenses', 14, 137, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(39, 'Other comprehensive income', NULL, 1, 'equity', 10, 87, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(40, 'Other - COS', NULL, 1, 'expenses', 13, 114, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(41, 'Office expenses', NULL, 1, 'expenses', 14, 137, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(42, 'Meals and entertainment', NULL, 1, 'expenses', 14, 137, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(43, 'Materials - COS', NULL, 1, 'expenses', 13, 114, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(44, 'Management compensation', NULL, 1, 'expenses', 14, 135, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(45, 'Loss on disposal of assets', NULL, 1, 'income', 12, 108, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(46, 'Loss on discontinued operations, net of tax', NULL, 1, 'expenses', 14, 134, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(47, 'Long-term investments', NULL, 1, 'asset', 5, 54, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(48, 'Long-term debt', NULL, 1, 'liability', 9, 78, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(49, 'Liabilities related to assets held for sale', NULL, 1, 'liability', 9, 77, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(50, 'Legal and professional fees', NULL, 1, 'expenses', 14, 133, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(51, 'Inventory Asset', NULL, 1, 'asset', 2, 21, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(52, 'Inventory', NULL, 1, 'asset', 2, 21, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(53, 'Interest income', NULL, 1, 'income', 12, 107, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(54, 'Interest expense', NULL, 1, 'expenses', 14, 132, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(55, 'Intangibles', NULL, 1, 'asset', 5, 51, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(56, 'Insurance - Liability', NULL, 1, 'expenses', 14, 131, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(57, 'Insurance - General', NULL, 1, 'expenses', 14, 131, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(58, 'Insurance - Disability', NULL, 1, 'expenses', 14, 131, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(59, 'Income tax payable', NULL, 1, 'liability', 8, 65, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(60, 'Income tax expense', NULL, 1, 'expenses', 14, 130, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(61, 'Goodwill', NULL, 1, 'asset', 5, 50, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(62, 'Freight and delivery - COS', NULL, 1, 'expenses', 13, 114, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(63, 'Equity in earnings of subsidiaries', NULL, 1, 'equity', 10, 84, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(64, 'Equipment rental', NULL, 1, 'expenses', 14, 128, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(65, 'Dues and Subscriptions', NULL, 1, 'expenses', 14, 127, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(66, 'Dividends payable', NULL, 1, 'liability', 8, 64, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(67, 'Dividend income', NULL, 1, 'income', 12, 106, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(68, 'Dividend disbursed', NULL, 1, 'equity', 10, 83, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(69, 'Discounts given - COS', NULL, 1, 'expenses', 13, 114, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(70, 'Direct labour - COS', NULL, 1, 'expenses', 13, 114, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(71, 'Deferred tax assets', NULL, 1, 'asset', 5, 49, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(72, 'Cost of sales', NULL, 1, 'expenses', 13, 118, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(73, 'Commissions and fees', NULL, 1, 'expenses', 14, 125, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(74, 'Change in inventory - COS', NULL, 1, 'expenses', 13, 114, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(75, 'Cash and cash equivalents', NULL, 1, 'asset', 3, 31, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(76, 'Billable Expense Income', NULL, 1, 'income', 11, 103, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(77, 'Bank charges', NULL, 1, 'expenses', 14, 123, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(78, 'Bad debts', NULL, 1, 'expenses', 14, 122, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(79, 'Available for sale assets (short-term)', NULL, 1, 'asset', 2, 18, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(80, 'Assets held for sale', NULL, 1, 'asset', 5, 48, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(81, 'Amortisation expense', NULL, 1, 'expenses', 14, 120, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(82, 'Allowance for bad debts', NULL, 1, 'asset', 2, 17, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-07-15 09:20:35'),
(83, 'Accumulated depreciation on property, plant and equipment', NULL, 1, 'asset', 4, 38, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(84, 'Accrued non-current liabilities', NULL, 1, 'liability', 9, 76, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(85, 'Accrued liabilities', NULL, 1, 'liability', 8, 60, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(86, 'Accrued holiday payable', NULL, 1, 'liability', 9, 75, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-06-25 07:40:43'),
(87, 'Accounts Receivable (A/R)', NULL, 1, 'asset', 1, 16, NULL, NULL, 'active', 1, '2023-06-25 07:40:43', '2023-07-15 09:20:25');

-- --------------------------------------------------------

--
-- Table structure for table `accounting_accounts_transactions`
--

CREATE TABLE `accounting_accounts_transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `accounting_account_id` bigint UNSIGNED NOT NULL,
  `acc_trans_mapping_id` int DEFAULT NULL COMMENT 'id form accounting_acc_trans_mapping table',
  `transaction_id` int DEFAULT NULL COMMENT 'id form transactions table',
  `transaction_payment_id` int DEFAULT NULL COMMENT 'id form transaction_payments table',
  `amount` decimal(22,4) NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'debit, credit etc',
  `sub_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `map_type` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int NOT NULL,
  `operation_date` datetime NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounting_account_types`
--

CREATE TABLE `accounting_account_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_id` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `account_primary_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` bigint DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `show_balance` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `accounting_account_types`
--

INSERT INTO `accounting_account_types` (`id`, `name`, `business_id`, `created_by`, `account_primary_type`, `account_type`, `parent_id`, `description`, `show_balance`, `created_at`, `updated_at`) VALUES
(1, 'accounts_receivable', NULL, NULL, 'asset', 'sub_type', NULL, NULL, 0, NULL, NULL),
(2, 'current_assets', NULL, NULL, 'asset', 'sub_type', NULL, NULL, 1, NULL, NULL),
(3, 'cash_and_cash_equivalents', NULL, NULL, 'asset', 'sub_type', NULL, NULL, 1, NULL, NULL),
(4, 'fixed_assets', NULL, NULL, 'asset', 'sub_type', NULL, NULL, 1, NULL, NULL),
(5, 'non_current_assets', NULL, NULL, 'asset', 'sub_type', NULL, NULL, 1, NULL, NULL),
(6, 'accounts_payable', NULL, NULL, 'liability', 'sub_type', NULL, NULL, 0, NULL, NULL),
(7, 'credit_card', NULL, NULL, 'liability', 'sub_type', NULL, NULL, 1, NULL, NULL),
(8, 'current_liabilities', NULL, NULL, 'liability', 'sub_type', NULL, NULL, 1, NULL, NULL),
(9, 'non_current_liabilities', NULL, NULL, 'liability', 'sub_type', NULL, NULL, 1, NULL, NULL),
(10, 'owners_equity', NULL, NULL, 'equity', 'sub_type', NULL, NULL, 1, NULL, NULL),
(11, 'income', NULL, NULL, 'income', 'sub_type', NULL, NULL, 0, NULL, NULL),
(12, 'other_income', NULL, NULL, 'income', 'sub_type', NULL, NULL, 0, NULL, NULL),
(13, 'cost_of_sale', NULL, NULL, 'expenses', 'sub_type', NULL, NULL, 0, NULL, NULL),
(14, 'expenses', NULL, NULL, 'expenses', 'sub_type', NULL, NULL, 0, NULL, NULL),
(15, 'other_expense', NULL, NULL, 'expenses', 'sub_type', NULL, NULL, 0, NULL, NULL),
(16, 'accounts_receivable', NULL, NULL, NULL, 'detail_type', 1, '', 1, NULL, NULL),
(17, 'allowance_for_bad_debts', NULL, NULL, NULL, 'detail_type', 2, 'allowance_for_bad_debts_desc', 1, NULL, NULL),
(18, 'assets_available_for_sale', NULL, NULL, NULL, 'detail_type', 2, 'assets_available_for_sale_desc', 1, NULL, NULL),
(19, 'development_costs', NULL, NULL, NULL, 'detail_type', 2, 'development_costs_desc', 1, NULL, NULL),
(20, 'employee_cash_advances', NULL, NULL, NULL, 'detail_type', 2, 'employee_cash_advances_desc', 1, NULL, NULL),
(21, 'inventory', NULL, NULL, NULL, 'detail_type', 2, 'inventory_desc', 1, NULL, NULL),
(22, 'investments_-_other', NULL, NULL, NULL, 'detail_type', 2, 'investments_-_other_desc', 1, NULL, NULL),
(23, 'loans_to_officers', NULL, NULL, NULL, 'detail_type', 2, 'loans_to_officers_desc', 1, NULL, NULL),
(24, 'loans_to_others', NULL, NULL, NULL, 'detail_type', 2, 'loans_to_others_desc', 1, NULL, NULL),
(25, 'loans_to_shareholders', NULL, NULL, NULL, 'detail_type', 2, 'loans_to_shareholders_desc', 1, NULL, NULL),
(26, 'other_current_assets', NULL, NULL, NULL, 'detail_type', 2, 'other_current_assets_desc', 1, NULL, NULL),
(27, 'prepaid_expenses', NULL, NULL, NULL, 'detail_type', 2, 'prepaid_expenses_desc', 1, NULL, NULL),
(28, 'retainage', NULL, NULL, NULL, 'detail_type', 2, 'retainage_desc', 1, NULL, NULL),
(29, 'undeposited_funds', NULL, NULL, NULL, 'detail_type', 2, 'undeposited_funds_desc', 1, NULL, NULL),
(30, 'bank', NULL, NULL, NULL, 'detail_type', 3, 'bank_desc', 1, NULL, NULL),
(31, 'cash_and_cash_equivalents', NULL, NULL, NULL, 'detail_type', 3, 'cash_and_cash_equivalents_desc', 1, NULL, NULL),
(32, 'cash_on_hand', NULL, NULL, NULL, 'detail_type', 3, 'cash_on_hand_desc', 1, NULL, NULL),
(33, 'client_trust_account', NULL, NULL, NULL, 'detail_type', 3, 'client_trust_account_desc', 1, NULL, NULL),
(34, 'money_market', NULL, NULL, NULL, 'detail_type', 3, 'money_market_desc', 1, NULL, NULL),
(35, 'rents_held_in_trust', NULL, NULL, NULL, 'detail_type', 3, 'rents_held_in_trust_desc', 1, NULL, NULL),
(36, 'savings', NULL, NULL, NULL, 'detail_type', 3, 'savings_desc', 1, NULL, NULL),
(37, 'accumulated_depletion', NULL, NULL, NULL, 'detail_type', 4, 'accumulated_depletion_desc', 1, NULL, NULL),
(38, 'accumulated_depreciation_on_property,_plant_and_equipment', NULL, NULL, NULL, 'detail_type', 4, 'accumulated_depreciation_on_property,_plant_and_equipment_desc', 1, NULL, NULL),
(39, 'buildings', NULL, NULL, NULL, 'detail_type', 4, 'buildings_desc', 1, NULL, NULL),
(40, 'depletable_assets', NULL, NULL, NULL, 'detail_type', 4, 'depletable_assets_desc', 1, NULL, NULL),
(41, 'furniture_and_fixtures', NULL, NULL, NULL, 'detail_type', 4, 'furniture_and_fixtures_desc', 1, NULL, NULL),
(42, 'land', NULL, NULL, NULL, 'detail_type', 4, 'land_desc', 1, NULL, NULL),
(43, 'leasehold_improvements', NULL, NULL, NULL, 'detail_type', 4, 'leasehold_improvements_desc', 1, NULL, NULL),
(44, 'machinery_and_equipment', NULL, NULL, NULL, 'detail_type', 4, 'machinery_and_equipment_desc', 1, NULL, NULL),
(45, 'other_fixed_assets', NULL, NULL, NULL, 'detail_type', 4, 'other_fixed_assets_desc', 1, NULL, NULL),
(46, 'vehicles', NULL, NULL, NULL, 'detail_type', 4, 'vehicles_desc', 1, NULL, NULL),
(47, 'accumulated_amortisation_of_non-current_assets', NULL, NULL, NULL, 'detail_type', 5, 'accumulated_amortisation_of_non-current_assets_desc', 1, NULL, NULL),
(48, 'assets_held_for_sale', NULL, NULL, NULL, 'detail_type', 5, 'assets_held_for_sale_desc', 1, NULL, NULL),
(49, 'deferred_tax', NULL, NULL, NULL, 'detail_type', 5, 'deferred_tax_desc', 1, NULL, NULL),
(50, 'goodwill', NULL, NULL, NULL, 'detail_type', 5, 'goodwill_desc', 1, NULL, NULL),
(51, 'intangible_assets', NULL, NULL, NULL, 'detail_type', 5, 'intangible_assets_desc', 1, NULL, NULL),
(52, 'lease_buyout', NULL, NULL, NULL, 'detail_type', 5, 'lease_buyout_desc', 1, NULL, NULL),
(53, 'licences', NULL, NULL, NULL, 'detail_type', 5, 'licences_desc', 1, NULL, NULL),
(54, 'long-term_investments', NULL, NULL, NULL, 'detail_type', 5, 'long-term_investments_desc', 1, NULL, NULL),
(55, 'organisational_costs', NULL, NULL, NULL, 'detail_type', 5, 'organisational_costs_desc', 1, NULL, NULL),
(56, 'other_non-current_assets', NULL, NULL, NULL, 'detail_type', 5, 'other_non-current_assets_desc', 1, NULL, NULL),
(57, 'security_deposits', NULL, NULL, NULL, 'detail_type', 5, 'security_deposits_desc', 1, NULL, NULL),
(58, 'accounts_payable_(a/p)', NULL, NULL, NULL, 'detail_type', 6, 'accounts_payable_(a/p)_desc', 1, NULL, NULL),
(59, 'credit_card', NULL, NULL, NULL, 'detail_type', 7, 'credit_card_desc', 1, NULL, NULL),
(60, 'accrued_liabilities', NULL, NULL, NULL, 'detail_type', 8, 'accrued_liabilities_desc', 1, NULL, NULL),
(61, 'client_trust_accounts_-_liabilities', NULL, NULL, NULL, 'detail_type', 8, 'client_trust_accounts_-_liabilities_desc', 1, NULL, NULL),
(62, 'current_tax_liability', NULL, NULL, NULL, 'detail_type', 8, 'current_tax_liability_desc', 1, NULL, NULL),
(63, 'current_portion_of_obligations_under_finance_leases', NULL, NULL, NULL, 'detail_type', 8, 'current_portion_of_obligations_under_finance_leases_desc', 1, NULL, NULL),
(64, 'dividends_payable', NULL, NULL, NULL, 'detail_type', 8, 'dividends_payable_desc', 1, NULL, NULL),
(65, 'income_tax_payable', NULL, NULL, NULL, 'detail_type', 8, 'income_tax_payable_desc', 1, NULL, NULL),
(66, 'insurance_payable', NULL, NULL, NULL, 'detail_type', 8, 'insurance_payable_desc', 1, NULL, NULL),
(67, 'line_of_credit', NULL, NULL, NULL, 'detail_type', 8, 'line_of_credit_desc', 1, NULL, NULL),
(68, 'loan_payable', NULL, NULL, NULL, 'detail_type', 8, 'loan_payable_desc', 1, NULL, NULL),
(69, 'other_current_liabilities', NULL, NULL, NULL, 'detail_type', 8, 'other_current_liabilities_desc', 1, NULL, NULL),
(70, 'payroll_clearing', NULL, NULL, NULL, 'detail_type', 8, 'payroll_clearing_desc', 1, NULL, NULL),
(71, 'payroll_liabilities', NULL, NULL, NULL, 'detail_type', 8, 'payroll_liabilities_desc', 1, NULL, NULL),
(72, 'prepaid_expenses_payable', NULL, NULL, NULL, 'detail_type', 8, 'prepaid_expenses_payable_desc', 1, NULL, NULL),
(73, 'rents_in_trust_-_liability', NULL, NULL, NULL, 'detail_type', 8, 'rents_in_trust_-_liability_desc', 1, NULL, NULL),
(74, 'sales_and_service_tax_payable', NULL, NULL, NULL, 'detail_type', 8, 'sales_and_service_tax_payable_desc', 1, NULL, NULL),
(75, 'accrued_holiday_payable', NULL, NULL, NULL, 'detail_type', 9, 'accrued_holiday_payable_desc', 1, NULL, NULL),
(76, 'accrued_non-current_liabilities', NULL, NULL, NULL, 'detail_type', 9, 'accrued_non-current_liabilities_desc', 1, NULL, NULL),
(77, 'liabilities_related_to_assets_held_for_sale', NULL, NULL, NULL, 'detail_type', 9, 'liabilities_related_to_assets_held_for_sale_desc', 1, NULL, NULL),
(78, 'long-term_debt', NULL, NULL, NULL, 'detail_type', 9, 'long-term_debt_desc', 1, NULL, NULL),
(79, 'notes_payable', NULL, NULL, NULL, 'detail_type', 9, 'notes_payable_desc', 1, NULL, NULL),
(80, 'other_non-current_liabilities', NULL, NULL, NULL, 'detail_type', 9, 'other_non-current_liabilities_desc', 1, NULL, NULL),
(81, 'shareholder_notes_payable', NULL, NULL, NULL, 'detail_type', 9, 'shareholder_notes_payable_desc', 1, NULL, NULL),
(82, 'accumulated_adjustment', NULL, NULL, NULL, 'detail_type', 10, 'accumulated_adjustment_desc', 1, NULL, NULL),
(83, 'dividend_disbursed', NULL, NULL, NULL, 'detail_type', 10, 'dividend_disbursed_desc', 1, NULL, NULL),
(84, 'equity_in_earnings_of_subsidiaries', NULL, NULL, NULL, 'detail_type', 10, 'equity_in_earnings_of_subsidiaries_desc', 1, NULL, NULL),
(85, 'opening_balance_equity', NULL, NULL, NULL, 'detail_type', 10, 'opening_balance_equity_desc', 1, NULL, NULL),
(86, 'ordinary_shares', NULL, NULL, NULL, 'detail_type', 10, 'ordinary_shares_desc', 1, NULL, NULL),
(87, 'other_comprehensive_income', NULL, NULL, NULL, 'detail_type', 10, 'other_comprehensive_income_desc', 1, NULL, NULL),
(88, 'owner\'s_equity', NULL, NULL, NULL, 'detail_type', 10, 'owner\'s_equity_desc', 1, NULL, NULL),
(89, 'paid-in_capital_or_surplus', NULL, NULL, NULL, 'detail_type', 10, 'paid-in_capital_or_surplus_desc', 1, NULL, NULL),
(90, 'partner_contributions', NULL, NULL, NULL, 'detail_type', 10, 'partner_contributions_desc', 1, NULL, NULL),
(91, 'partner_distributions', NULL, NULL, NULL, 'detail_type', 10, 'partner_distributions_desc', 1, NULL, NULL),
(92, 'partner\'s_equity', NULL, NULL, NULL, 'detail_type', 10, 'partner\'s_equity_desc', 1, NULL, NULL),
(93, 'preferred_shares', NULL, NULL, NULL, 'detail_type', 10, 'preferred_shares_desc', 1, NULL, NULL),
(94, 'retained_earnings', NULL, NULL, NULL, 'detail_type', 10, 'retained_earnings_desc', 1, NULL, NULL),
(95, 'share_capital', NULL, NULL, NULL, 'detail_type', 10, 'share_capital_desc', 1, NULL, NULL),
(96, 'treasury_shares', NULL, NULL, NULL, 'detail_type', 10, 'treasury_shares_desc', 1, NULL, NULL),
(97, 'discounts/refunds_given', NULL, NULL, NULL, 'detail_type', 11, 'discounts/refunds_given_desc', 1, NULL, NULL),
(98, 'non-profit_income', NULL, NULL, NULL, 'detail_type', 11, 'non-profit_income_desc', 1, NULL, NULL),
(99, 'other_primary_income', NULL, NULL, NULL, 'detail_type', 11, 'other_primary_income_desc', 1, NULL, NULL),
(100, 'revenue_-_general', NULL, NULL, NULL, 'detail_type', 11, 'revenue_-_general_desc', 1, NULL, NULL),
(101, 'sales_-_retail', NULL, NULL, NULL, 'detail_type', 11, 'sales_-_retail_desc', 1, NULL, NULL),
(102, 'sales_-_wholesale', NULL, NULL, NULL, 'detail_type', 11, 'sales_-_wholesale_desc', 1, NULL, NULL),
(103, 'sales_of_product_income', NULL, NULL, NULL, 'detail_type', 11, 'sales_of_product_income_desc', 1, NULL, NULL),
(104, 'service/fee_income', NULL, NULL, NULL, 'detail_type', 11, 'service/fee_income_desc', 1, NULL, NULL),
(105, 'unapplied_cash_payment_income', NULL, NULL, NULL, 'detail_type', 11, 'unapplied_cash_payment_income_desc', 1, NULL, NULL),
(106, 'dividend_income', NULL, NULL, NULL, 'detail_type', 12, 'dividend_income_desc', 1, NULL, NULL),
(107, 'interest_earned', NULL, NULL, NULL, 'detail_type', 12, 'interest_earned_desc', 1, NULL, NULL),
(108, 'loss_on_disposal_of_assets', NULL, NULL, NULL, 'detail_type', 12, 'loss_on_disposal_of_assets_desc', 1, NULL, NULL),
(109, 'other_investment_income', NULL, NULL, NULL, 'detail_type', 12, 'other_investment_income_desc', 1, NULL, NULL),
(110, 'other_miscellaneous_income', NULL, NULL, NULL, 'detail_type', 12, 'other_miscellaneous_income_desc', 1, NULL, NULL),
(111, 'other_operating_income', NULL, NULL, NULL, 'detail_type', 12, 'other_operating_income_desc', 1, NULL, NULL),
(112, 'tax-exempt_interest', NULL, NULL, NULL, 'detail_type', 12, 'tax-exempt_interest_desc', 1, NULL, NULL),
(113, 'unrealised_loss_on_securities,_net_of_tax', NULL, NULL, NULL, 'detail_type', 12, 'unrealised_loss_on_securities,_net_of_tax_desc', 1, NULL, NULL),
(114, 'cost_of_labour_-_cos', NULL, NULL, NULL, 'detail_type', 13, 'cost_of_labour_-_cos_desc', 1, NULL, NULL),
(115, 'equipment_rental_-_cos', NULL, NULL, NULL, 'detail_type', 13, 'equipment_rental_-_cos_desc', 1, NULL, NULL),
(116, 'freight_and_delivery_-_cos', NULL, NULL, NULL, 'detail_type', 13, 'freight_and_delivery_-_cos_desc', 1, NULL, NULL),
(117, 'other_costs_of_sales_-_cos', NULL, NULL, NULL, 'detail_type', 13, 'other_costs_of_sales_-_cos_desc', 1, NULL, NULL),
(118, 'supplies_and_materials_-_cos', NULL, NULL, NULL, 'detail_type', 13, 'supplies_and_materials_-_cos_desc', 1, NULL, NULL),
(119, 'advertising/promotional', NULL, NULL, NULL, 'detail_type', 14, 'advertising/promotional_desc', 1, NULL, NULL),
(120, 'amortisation_expense', NULL, NULL, NULL, 'detail_type', 14, 'amortisation_expense_desc', 1, NULL, NULL),
(121, 'auto', NULL, NULL, NULL, 'detail_type', 14, 'auto_desc', 1, NULL, NULL),
(122, 'bad_debts', NULL, NULL, NULL, 'detail_type', 14, 'bad_debts_desc', 1, NULL, NULL),
(123, 'bank_charges', NULL, NULL, NULL, 'detail_type', 14, 'bank_charges_desc', 1, NULL, NULL),
(124, 'charitable_contributions', NULL, NULL, NULL, 'detail_type', 14, 'charitable_contributions_desc', 1, NULL, NULL),
(125, 'commissions_and_fees', NULL, NULL, NULL, 'detail_type', 14, 'commissions_and_fees_desc', 1, NULL, NULL),
(126, 'cost_of_labour', NULL, NULL, NULL, 'detail_type', 14, 'cost_of_labour_desc', 1, NULL, NULL),
(127, 'dues_and_subscriptions', NULL, NULL, NULL, 'detail_type', 14, 'dues_and_subscriptions_desc', 1, NULL, NULL),
(128, 'equipment_rental', NULL, NULL, NULL, 'detail_type', 14, 'equipment_rental_desc', 1, NULL, NULL),
(129, 'finance_costs', NULL, NULL, NULL, 'detail_type', 14, 'finance_costs_desc', 1, NULL, NULL),
(130, 'income_tax_expense', NULL, NULL, NULL, 'detail_type', 14, 'income_tax_expense_desc', 1, NULL, NULL),
(131, 'insurance', NULL, NULL, NULL, 'detail_type', 14, 'insurance_desc', 1, NULL, NULL),
(132, 'interest_paid', NULL, NULL, NULL, 'detail_type', 14, 'interest_paid_desc', 1, NULL, NULL),
(133, 'legal_and_professional_fees', NULL, NULL, NULL, 'detail_type', 14, 'legal_and_professional_fees_desc', 1, NULL, NULL),
(134, 'loss_on_discontinued_operations,_net_of_tax', NULL, NULL, NULL, 'detail_type', 14, 'loss_on_discontinued_operations,_net_of_tax_desc', 1, NULL, NULL),
(135, 'management_compensation', NULL, NULL, NULL, 'detail_type', 14, 'management_compensation_desc', 1, NULL, NULL),
(136, 'meals_and_entertainment', NULL, NULL, NULL, 'detail_type', 14, 'meals_and_entertainment_desc', 1, NULL, NULL),
(137, 'office/general_administrative_expenses', NULL, NULL, NULL, 'detail_type', 14, 'office/general_administrative_expenses_desc', 1, NULL, NULL),
(138, 'other_miscellaneous_service_cost', NULL, NULL, NULL, 'detail_type', 14, 'other_miscellaneous_service_cost_desc', 1, NULL, NULL),
(139, 'other_selling_expenses', NULL, NULL, NULL, 'detail_type', 14, 'other_selling_expenses_desc', 1, NULL, NULL),
(140, 'payroll_expenses', NULL, NULL, NULL, 'detail_type', 14, 'payroll_expenses_desc', 1, NULL, NULL),
(141, 'rent_or_lease_of_buildings', NULL, NULL, NULL, 'detail_type', 14, 'rent_or_lease_of_buildings_desc', 1, NULL, NULL),
(142, 'repair_and_maintenance', NULL, NULL, NULL, 'detail_type', 14, 'repair_and_maintenance_desc', 1, NULL, NULL),
(143, 'shipping_and_delivery_expense', NULL, NULL, NULL, 'detail_type', 14, 'shipping_and_delivery_expense_desc', 1, NULL, NULL),
(144, 'supplies_and_materials', NULL, NULL, NULL, 'detail_type', 14, 'supplies_and_materials_desc', 1, NULL, NULL),
(145, 'taxes_paid', NULL, NULL, NULL, 'detail_type', 14, 'taxes_paid_desc', 1, NULL, NULL),
(146, 'travel_expenses_-_general_and_admin_expenses', NULL, NULL, NULL, 'detail_type', 14, 'travel_expenses_-_general_and_admin_expenses_desc', 1, NULL, NULL),
(147, 'travel_expenses_-_selling_expense', NULL, NULL, NULL, 'detail_type', 14, 'travel_expenses_-_selling_expense_desc', 1, NULL, NULL),
(148, 'unapplied_cash_bill_payment_expense', NULL, NULL, NULL, 'detail_type', 14, 'unapplied_cash_bill_payment_expense_desc', 1, NULL, NULL),
(149, 'utilities', NULL, NULL, NULL, 'detail_type', 14, 'utilities_desc', 1, NULL, NULL),
(150, 'amortisation', NULL, NULL, NULL, 'detail_type', 15, 'amortisation_desc', 1, NULL, NULL),
(151, 'depreciation', NULL, NULL, NULL, 'detail_type', 15, 'depreciation_desc', 1, NULL, NULL),
(152, 'exchange_gain_or_loss', NULL, NULL, NULL, 'detail_type', 15, 'exchange_gain_or_loss_desc', 1, NULL, NULL),
(153, 'other_expense', NULL, NULL, NULL, 'detail_type', 15, 'other_expense_desc', 1, NULL, NULL),
(154, 'penalties_and_settlements', NULL, NULL, NULL, 'detail_type', 15, 'penalties_and_settlements_desc', 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `accounting_acc_trans_mappings`
--

CREATE TABLE `accounting_acc_trans_mappings` (
  `id` bigint UNSIGNED NOT NULL,
  `business_id` int NOT NULL,
  `ref_no` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `operation_date` datetime NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounting_budgets`
--

CREATE TABLE `accounting_budgets` (
  `id` bigint UNSIGNED NOT NULL,
  `accounting_account_id` bigint UNSIGNED NOT NULL,
  `financial_year` int NOT NULL,
  `jan` decimal(22,4) DEFAULT NULL,
  `feb` decimal(22,4) DEFAULT NULL,
  `mar` decimal(22,4) DEFAULT NULL,
  `apr` decimal(22,4) DEFAULT NULL,
  `may` decimal(22,4) DEFAULT NULL,
  `jun` decimal(22,4) DEFAULT NULL,
  `jul` decimal(22,4) DEFAULT NULL,
  `aug` decimal(22,4) DEFAULT NULL,
  `sep` decimal(22,4) DEFAULT NULL,
  `oct` decimal(22,4) DEFAULT NULL,
  `nov` decimal(22,4) DEFAULT NULL,
  `dec` decimal(22,4) DEFAULT NULL,
  `quarter_1` decimal(22,4) DEFAULT NULL,
  `quarter_2` decimal(22,4) DEFAULT NULL,
  `quarter_3` decimal(22,4) DEFAULT NULL,
  `quarter_4` decimal(22,4) DEFAULT NULL,
  `yearly` decimal(22,4) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `account_details` text COLLATE utf8mb4_unicode_ci,
  `account_type_id` int DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `is_closed` tinyint(1) NOT NULL DEFAULT '0',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_transactions`
--

CREATE TABLE `account_transactions` (
  `id` int UNSIGNED NOT NULL,
  `account_id` int NOT NULL,
  `type` enum('debit','credit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_type` enum('opening_balance','fund_transfer','deposit') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(22,4) NOT NULL,
  `reff_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `operation_date` datetime NOT NULL,
  `created_by` int NOT NULL,
  `transaction_id` int DEFAULT NULL,
  `transaction_payment_id` int DEFAULT NULL,
  `transfer_transaction_id` int DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `account_types`
--

CREATE TABLE `account_types` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_account_type_id` int DEFAULT NULL,
  `business_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity_log`
--

CREATE TABLE `activity_log` (
  `id` int UNSIGNED NOT NULL,
  `log_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` int DEFAULT NULL,
  `subject_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` int DEFAULT NULL,
  `causer_id` int DEFAULT NULL,
  `causer_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `properties` text COLLATE utf8mb4_unicode_ci,
  `batch_uuid` char(36) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activity_log`
--

INSERT INTO `activity_log` (`id`, `log_name`, `description`, `subject_id`, `subject_type`, `event`, `business_id`, `causer_id`, `causer_type`, `properties`, `batch_uuid`, `created_at`, `updated_at`) VALUES
(1, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-06-13 14:26:01', '2023-06-13 14:26:01'),
(2, 'default', 'logout', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-06-13 15:32:48', '2023-06-13 15:32:48'),
(3, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-06-13 15:35:04', '2023-06-13 15:35:04'),
(4, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-06-15 13:52:43', '2023-06-15 13:52:43'),
(5, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-06-17 12:27:03', '2023-06-17 12:27:03'),
(6, 'default', 'logout', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-06-17 12:51:13', '2023-06-17 12:51:13'),
(7, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-06-17 13:10:54', '2023-06-17 13:10:54'),
(8, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-06-24 07:30:27', '2023-06-24 07:30:27'),
(9, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-06-25 07:05:14', '2023-06-25 07:05:14'),
(10, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-05 02:29:32', '2023-07-05 02:29:32'),
(11, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-05 08:44:37', '2023-07-05 08:44:37'),
(12, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-05 11:55:26', '2023-07-05 11:55:26'),
(13, 'default', 'logout', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-05 13:31:43', '2023-07-05 13:31:43'),
(14, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-06 06:02:18', '2023-07-06 06:02:18'),
(15, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-09 03:06:21', '2023-07-09 03:06:21'),
(16, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-09 05:13:00', '2023-07-09 05:13:00'),
(17, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-09 05:24:35', '2023-07-09 05:24:35'),
(18, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-10 02:55:19', '2023-07-10 02:55:19'),
(19, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-10 09:49:54', '2023-07-10 09:49:54'),
(20, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-11 03:20:09', '2023-07-11 03:20:09'),
(21, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-15 02:29:40', '2023-07-15 02:29:40'),
(22, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-16 02:55:38', '2023-07-16 02:55:38'),
(23, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-17 11:54:59', '2023-07-17 11:54:59'),
(24, 'default', 'logout', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-17 14:33:32', '2023-07-17 14:33:35'),
(25, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-18 03:10:04', '2023-07-18 03:10:04'),
(26, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-18 20:05:54', '2023-07-18 20:05:54'),
(27, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-22 11:20:31', '2023-07-22 11:20:31'),
(28, 'default', 'added', 2, 'App\\User', NULL, 1, 1, 'App\\User', '{\"name\":\"Mr Murad Hossain\"}', NULL, '2023-07-22 11:23:10', '2023-07-22 11:23:10'),
(29, 'default', 'edited', 2, 'App\\User', NULL, 1, 1, 'App\\User', '{\"name\":\"Mr Murad Hossain\"}', NULL, '2023-07-22 11:25:13', '2023-07-22 11:25:13'),
(30, 'default', 'logout', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-22 11:25:23', '2023-07-22 11:25:23'),
(31, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 11:25:33', '2023-07-22 11:25:33'),
(32, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 11:26:10', '2023-07-22 11:26:10'),
(33, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-22 11:26:13', '2023-07-22 11:26:13'),
(34, 'default', 'logout', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-22 11:29:07', '2023-07-22 11:29:07'),
(35, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 11:29:15', '2023-07-22 11:29:15'),
(36, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 11:30:03', '2023-07-22 11:30:03'),
(37, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-22 11:30:07', '2023-07-22 11:30:07'),
(38, 'default', 'logout', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-22 11:31:34', '2023-07-22 11:31:34'),
(39, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 11:31:44', '2023-07-22 11:31:44'),
(40, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 11:33:13', '2023-07-22 11:33:13'),
(41, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-22 11:33:16', '2023-07-22 11:33:16'),
(42, 'default', 'logout', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-22 11:35:02', '2023-07-22 11:35:02'),
(43, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 11:35:12', '2023-07-22 11:35:12'),
(44, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 11:37:17', '2023-07-22 11:37:17'),
(45, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 12:05:41', '2023-07-22 12:05:41'),
(46, 'default', 'added', 1, 'App\\Transaction', NULL, 1, 2, 'App\\User', '{\"attributes\":{\"payment_status\":\"due\"}}', NULL, '2023-07-22 12:15:51', '2023-07-22 12:15:51'),
(47, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 12:16:18', '2023-07-22 12:16:18'),
(48, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-22 12:23:27', '2023-07-22 12:23:27'),
(49, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 12:33:51', '2023-07-22 12:33:51'),
(50, 'default', 'added', 2, 'App\\Contact', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 12:38:24', '2023-07-22 12:38:24'),
(51, 'default', 'added', 3, 'App\\Contact', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 13:06:23', '2023-07-22 13:06:23'),
(52, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 13:16:54', '2023-07-22 13:16:54'),
(53, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-22 13:17:03', '2023-07-22 13:17:03'),
(54, 'default', 'logout', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-22 13:20:26', '2023-07-22 13:20:26'),
(55, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 13:20:38', '2023-07-22 13:20:38'),
(56, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 13:30:04', '2023-07-22 13:30:04'),
(57, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-22 13:30:16', '2023-07-22 13:30:16'),
(58, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 17:03:45', '2023-07-22 17:03:45'),
(59, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 17:07:05', '2023-07-22 17:07:05'),
(60, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 17:09:13', '2023-07-22 17:09:13'),
(61, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 17:12:28', '2023-07-22 17:12:28'),
(62, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 17:13:00', '2023-07-22 17:13:00'),
(63, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 17:15:15', '2023-07-22 17:15:15'),
(64, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 17:27:51', '2023-07-22 17:27:51'),
(65, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 17:33:58', '2023-07-22 17:33:58'),
(66, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 17:48:14', '2023-07-22 17:48:14'),
(67, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-22 17:50:37', '2023-07-22 17:50:37'),
(68, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-23 04:18:32', '2023-07-23 04:18:32'),
(69, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-23 04:46:36', '2023-07-23 04:46:36'),
(70, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-23 05:08:01', '2023-07-23 05:08:01'),
(71, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-23 06:44:38', '2023-07-23 06:44:38'),
(72, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-23 06:44:49', '2023-07-23 06:44:49'),
(73, 'default', 'logout', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-23 08:42:33', '2023-07-23 08:42:33'),
(74, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-24 02:39:45', '2023-07-24 02:39:45'),
(75, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-24 03:22:52', '2023-07-24 03:22:52'),
(76, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-24 04:52:12', '2023-07-24 04:52:12'),
(77, 'default', 'logout', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-24 05:28:32', '2023-07-24 05:28:32'),
(78, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-24 05:45:08', '2023-07-24 05:45:08'),
(79, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-24 05:45:54', '2023-07-24 05:45:54'),
(80, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-24 07:08:02', '2023-07-24 07:08:02'),
(81, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-24 08:00:20', '2023-07-24 08:00:20'),
(82, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-24 08:54:20', '2023-07-24 08:54:20'),
(83, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-24 08:55:07', '2023-07-24 08:55:07'),
(84, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-24 18:24:39', '2023-07-24 18:24:39'),
(85, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-24 18:34:40', '2023-07-24 18:34:40'),
(86, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-26 04:38:02', '2023-07-26 04:38:02'),
(87, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-26 06:39:37', '2023-07-26 06:39:37'),
(88, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-27 07:46:08', '2023-07-27 07:46:08'),
(89, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-27 13:03:59', '2023-07-27 13:03:59'),
(90, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-28 02:22:37', '2023-07-28 02:22:37'),
(91, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-28 05:13:07', '2023-07-28 05:13:07'),
(92, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-07-29 02:51:14', '2023-07-29 02:51:14'),
(93, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-29 07:38:04', '2023-07-29 07:38:04'),
(94, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-29 15:57:07', '2023-07-29 15:57:07'),
(95, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-30 10:10:54', '2023-07-30 10:10:54'),
(96, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-30 10:14:05', '2023-07-30 10:14:05'),
(97, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-30 12:01:58', '2023-07-30 12:01:58'),
(98, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-31 05:18:46', '2023-07-31 05:18:46'),
(99, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-31 08:16:19', '2023-07-31 08:16:19'),
(100, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-31 08:16:48', '2023-07-31 08:16:48'),
(101, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-07-31 09:21:28', '2023-07-31 09:21:28'),
(102, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-01 06:04:36', '2023-08-01 06:04:36'),
(103, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-01 10:05:06', '2023-08-01 10:05:06'),
(104, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-01 10:41:12', '2023-08-01 10:41:12'),
(105, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-01 19:30:08', '2023-08-01 19:30:08'),
(106, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-02 06:04:31', '2023-08-02 06:04:31'),
(107, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-02 08:05:32', '2023-08-02 08:05:32'),
(108, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-02 09:57:38', '2023-08-02 09:57:38'),
(109, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-03 02:58:58', '2023-08-03 02:58:58'),
(110, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-03 06:42:59', '2023-08-03 06:42:59'),
(111, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-03 16:53:21', '2023-08-03 16:53:21'),
(112, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-03 16:53:43', '2023-08-03 16:53:43'),
(113, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-04 05:03:09', '2023-08-04 05:03:09'),
(114, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-04 12:48:15', '2023-08-04 12:48:15'),
(115, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-04 14:48:54', '2023-08-04 14:48:54'),
(116, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-04 17:53:44', '2023-08-04 17:53:44'),
(117, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-04 18:42:41', '2023-08-04 18:42:41'),
(118, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-04 19:06:02', '2023-08-04 19:06:02'),
(119, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-04 19:06:23', '2023-08-04 19:06:23'),
(120, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-04 19:06:43', '2023-08-04 19:06:43'),
(121, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-05 02:50:58', '2023-08-05 02:50:58'),
(122, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-05 06:15:24', '2023-08-05 06:15:24'),
(123, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-05 06:15:38', '2023-08-05 06:15:38'),
(124, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-05 07:01:32', '2023-08-05 07:01:32'),
(125, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-05 09:40:09', '2023-08-05 09:40:09'),
(126, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-05 09:40:33', '2023-08-05 09:40:33'),
(127, 'default', 'logout', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-05 09:41:36', '2023-08-05 09:41:36'),
(128, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-05 09:41:52', '2023-08-05 09:41:52'),
(129, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-05 10:06:05', '2023-08-05 10:06:05'),
(130, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-05 10:06:13', '2023-08-05 10:06:13'),
(131, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-05 11:24:41', '2023-08-05 11:24:41'),
(132, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-05 16:36:41', '2023-08-05 16:36:41'),
(133, 'default', 'added', 3, 'App\\Transaction', NULL, 1, 2, 'App\\User', '{\"attributes\":{\"payment_status\":\"due\"}}', NULL, '2023-08-05 16:43:31', '2023-08-05 16:43:31'),
(134, 'default', 'payment_edited', 3, 'App\\Transaction', NULL, 1, 2, 'App\\User', '{\"attributes\":{\"payment_status\":\"paid\"},\"old\":{\"payment_status\":\"due\"}}', NULL, '2023-08-05 16:43:53', '2023-08-05 16:43:53'),
(135, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-06 08:52:22', '2023-08-06 08:52:22'),
(136, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-06 13:08:02', '2023-08-06 13:08:02'),
(137, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-06 16:06:51', '2023-08-06 16:06:52'),
(138, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-06 17:38:08', '2023-08-06 17:38:08'),
(139, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-07 02:58:40', '2023-08-07 02:58:40'),
(140, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-07 05:21:56', '2023-08-07 05:21:56'),
(141, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-07 07:09:18', '2023-08-07 07:09:18'),
(142, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-07 07:31:41', '2023-08-07 07:31:41'),
(143, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-07 13:28:11', '2023-08-07 13:28:11'),
(144, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-08 03:26:46', '2023-08-08 03:26:46'),
(145, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-08 11:59:16', '2023-08-08 11:59:16'),
(146, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-08 17:01:24', '2023-08-08 17:01:24'),
(147, 'default', 'logout', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-08 17:01:47', '2023-08-08 17:01:47'),
(148, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-09 05:21:20', '2023-08-09 05:21:20'),
(149, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-10 02:53:37', '2023-08-10 02:53:37'),
(150, 'default', 'login', 2, 'App\\User', NULL, 1, 2, 'App\\User', '[]', NULL, '2023-08-10 06:46:39', '2023-08-10 06:46:39'),
(151, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-11 09:18:45', '2023-08-11 09:18:45'),
(152, 'default', 'login', 3, 'App\\User', NULL, 1, 3, 'App\\User', '[]', NULL, '2023-08-12 05:50:51', '2023-08-12 05:50:51'),
(153, 'default', 'logout', 3, 'App\\User', NULL, 1, 3, 'App\\User', '[]', NULL, '2023-08-12 07:03:53', '2023-08-12 07:03:53'),
(154, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-12 07:04:04', '2023-08-12 07:04:04'),
(155, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-12 07:15:47', '2023-08-12 07:15:47'),
(156, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-13 05:45:53', '2023-08-13 05:45:53'),
(157, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-14 01:34:23', '2023-08-14 01:34:23'),
(158, 'default', 'edited', 3, 'App\\User', NULL, 1, 1, 'App\\User', '{\"name\":\"Mr Md Alam\"}', NULL, '2023-08-14 01:35:53', '2023-08-14 01:35:53'),
(159, 'default', 'login', 3, 'App\\User', NULL, 1, 3, 'App\\User', '[]', NULL, '2023-08-14 01:37:10', '2023-08-14 01:37:10'),
(160, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-14 09:30:27', '2023-08-14 09:30:27'),
(161, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-14 14:22:18', '2023-08-14 14:22:18'),
(162, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-16 05:49:47', '2023-08-16 05:49:48'),
(163, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-17 02:43:54', '2023-08-17 02:43:54'),
(164, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-17 09:38:09', '2023-08-17 09:38:09'),
(165, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-17 13:58:56', '2023-08-17 13:58:56'),
(166, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-18 02:00:35', '2023-08-18 02:00:35'),
(167, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-19 03:08:14', '2023-08-19 03:08:14'),
(168, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-20 13:29:14', '2023-08-20 13:29:14'),
(169, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-21 02:48:38', '2023-08-21 02:48:38'),
(170, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-22 01:31:29', '2023-08-22 01:31:29'),
(171, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-22 09:05:30', '2023-08-22 09:05:30'),
(172, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-23 03:13:56', '2023-08-23 03:13:56'),
(173, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-24 01:25:42', '2023-08-24 01:25:42'),
(174, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-24 13:53:33', '2023-08-24 13:53:33'),
(175, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-25 01:45:27', '2023-08-25 01:45:27'),
(176, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-25 13:55:36', '2023-08-25 13:55:36'),
(177, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-26 02:14:46', '2023-08-26 02:14:46'),
(178, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-26 14:08:31', '2023-08-26 14:08:31'),
(179, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-27 01:34:52', '2023-08-27 01:34:52'),
(180, 'default', 'added', 4, 'App\\Contact', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-27 02:42:01', '2023-08-27 02:42:01'),
(181, 'default', 'added', 5, 'App\\Contact', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-27 02:57:27', '2023-08-27 02:57:27'),
(182, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-27 09:57:51', '2023-08-27 09:57:51'),
(183, 'default', 'login', 1, 'App\\User', NULL, 1, 1, 'App\\User', '[]', NULL, '2023-08-28 03:57:48', '2023-08-28 03:57:48');

-- --------------------------------------------------------

--
-- Table structure for table `barcodes`
--

CREATE TABLE `barcodes` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `width` double(22,4) DEFAULT NULL,
  `height` double(22,4) DEFAULT NULL,
  `paper_width` double(22,4) DEFAULT NULL,
  `paper_height` double(22,4) DEFAULT NULL,
  `top_margin` double(22,4) DEFAULT NULL,
  `left_margin` double(22,4) DEFAULT NULL,
  `row_distance` double(22,4) DEFAULT NULL,
  `col_distance` double(22,4) DEFAULT NULL,
  `stickers_in_one_row` int DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_continuous` tinyint(1) NOT NULL DEFAULT '0',
  `stickers_in_one_sheet` int DEFAULT NULL,
  `business_id` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `barcodes`
--

INSERT INTO `barcodes` (`id`, `name`, `description`, `width`, `height`, `paper_width`, `paper_height`, `top_margin`, `left_margin`, `row_distance`, `col_distance`, `stickers_in_one_row`, `is_default`, `is_continuous`, `stickers_in_one_sheet`, `business_id`, `created_at`, `updated_at`) VALUES
(1, '20 Labels per Sheet', 'Sheet Size: 8.5\" x 11\", Label Size: 4\" x 1\", Labels per sheet: 20', 4.0000, 1.0000, 8.5000, 11.0000, 0.5000, 0.1250, 0.0000, 0.1875, 2, 0, 0, 20, NULL, '2017-12-18 00:13:44', '2017-12-18 00:13:44'),
(2, '30 Labels per sheet', 'Sheet Size: 8.5\" x 11\", Label Size: 2.625\" x 1\", Labels per sheet: 30', 2.6250, 1.0000, 8.5000, 11.0000, 0.5000, 0.1880, 0.0000, 0.1250, 3, 0, 0, 30, NULL, '2017-12-18 00:04:39', '2017-12-18 00:10:40'),
(3, '32 Labels per sheet', 'Sheet Size: 8.5\" x 11\", Label Size: 2\" x 1.25\", Labels per sheet: 32', 2.0000, 1.2500, 8.5000, 11.0000, 0.5000, 0.2500, 0.0000, 0.0000, 4, 0, 0, 32, NULL, '2017-12-17 23:55:40', '2017-12-17 23:55:40'),
(4, '40 Labels per sheet', 'Sheet Size: 8.5\" x 11\", Label Size: 2\" x 1\", Labels per sheet: 40', 2.0000, 1.0000, 8.5000, 11.0000, 0.5000, 0.2500, 0.0000, 0.0000, 4, 0, 0, 40, NULL, '2017-12-17 23:58:40', '2017-12-17 23:58:40'),
(5, '50 Labels per Sheet', 'Sheet Size: 8.5\" x 11\", Label Size: 1.5\" x 1\", Labels per sheet: 50', 1.5000, 1.0000, 8.5000, 11.0000, 0.5000, 0.5000, 0.0000, 0.0000, 5, 0, 0, 50, NULL, '2017-12-17 23:51:10', '2017-12-17 23:51:10'),
(6, 'Continuous Rolls - 31.75mm x 25.4mm', 'Label Size: 31.75mm x 25.4mm, Gap: 3.18mm', 1.2500, 1.0000, 1.2500, 0.0000, 0.1250, 0.0000, 0.1250, 0.0000, 1, 0, 1, NULL, NULL, '2017-12-17 23:51:10', '2017-12-17 23:51:10');

-- --------------------------------------------------------

--
-- Table structure for table `body_types`
--

CREATE TABLE `body_types` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `body_types`
--

INSERT INTO `body_types` (`id`, `name`, `category`, `image`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'type', 'Passenger', 'image/LFR7mFbbBwgmthDYyGnCz4p7KRdrNMc8CPBj9SGB.jpg', NULL, '2023-08-14 04:08:00', '2023-08-14 04:11:01'),
(2, 'Body Type Bike', 'Bike', '', NULL, '2023-08-17 02:45:07', '2023-08-17 02:45:07'),
(3, 'Commercial body Type', 'Commercial', '', NULL, '2023-08-18 02:22:43', '2023-08-18 02:22:43');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `id` int UNSIGNED NOT NULL,
  `contact_id` int UNSIGNED NOT NULL,
  `waiter_id` int UNSIGNED DEFAULT NULL,
  `table_id` int UNSIGNED DEFAULT NULL,
  `correspondent_id` int DEFAULT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `location_id` int UNSIGNED NOT NULL,
  `booking_start` datetime NOT NULL,
  `booking_end` datetime NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `booking_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `booking_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int UNSIGNED NOT NULL,
  `use_for_repair` tinyint(1) NOT NULL DEFAULT '1' COMMENT 'brands to be used on repair module',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `business_id`, `name`, `description`, `created_by`, `use_for_repair`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Japan', NULL, 1, 0, '2023-08-05 12:38:12', '2023-08-05 08:58:47', '2023-08-05 12:38:12'),
(2, 1, 'model', NULL, 1, 0, '2023-08-05 12:38:20', '2023-08-05 09:03:40', '2023-08-05 12:38:20'),
(3, 1, 'Toyota', NULL, 2, 0, NULL, '2023-08-05 12:38:35', '2023-08-05 12:38:35'),
(4, 1, 'Hybrid G', NULL, 2, 0, '2023-08-05 16:42:59', '2023-08-05 16:42:51', '2023-08-05 16:42:59'),
(5, 1, 'Hybrid G', NULL, 2, 0, '2023-08-07 13:28:29', '2023-08-07 07:32:14', '2023-08-07 13:28:29');

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_id` int UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `tax_number_1` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_label_1` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_number_2` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_label_2` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_label_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_label_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_sales_tax` int UNSIGNED DEFAULT NULL,
  `default_profit_percent` double(5,2) NOT NULL DEFAULT '0.00',
  `owner_id` int UNSIGNED NOT NULL,
  `time_zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Asia/Kolkata',
  `fy_start_month` tinyint NOT NULL DEFAULT '1',
  `accounting_method` enum('fifo','lifo','avco') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fifo',
  `default_sales_discount` decimal(5,2) DEFAULT NULL,
  `sell_price_tax` enum('includes','excludes') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'includes',
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sku_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_product_expiry` tinyint(1) NOT NULL DEFAULT '0',
  `expiry_type` enum('add_expiry','add_manufacturing') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add_expiry',
  `on_product_expiry` enum('keep_selling','stop_selling','auto_delete') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'keep_selling',
  `stop_selling_before` int NOT NULL COMMENT 'Stop selling expied item n days before expiry',
  `enable_tooltip` tinyint(1) NOT NULL DEFAULT '1',
  `purchase_in_diff_currency` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Allow purchase to be in different currency then the business currency',
  `purchase_currency_id` int UNSIGNED DEFAULT NULL,
  `p_exchange_rate` decimal(20,3) NOT NULL DEFAULT '1.000',
  `transaction_edit_days` int UNSIGNED NOT NULL DEFAULT '30',
  `stock_expiry_alert_days` int UNSIGNED NOT NULL DEFAULT '30',
  `keyboard_shortcuts` text COLLATE utf8mb4_unicode_ci,
  `pos_settings` text COLLATE utf8mb4_unicode_ci,
  `essentials_settings` longtext COLLATE utf8mb4_unicode_ci,
  `weighing_scale_setting` text COLLATE utf8mb4_unicode_ci NOT NULL COMMENT 'used to store the configuration of weighing scale',
  `enable_brand` tinyint(1) NOT NULL DEFAULT '1',
  `enable_category` tinyint(1) NOT NULL DEFAULT '1',
  `enable_sub_category` tinyint(1) NOT NULL DEFAULT '1',
  `enable_price_tax` tinyint(1) NOT NULL DEFAULT '1',
  `enable_purchase_status` tinyint(1) DEFAULT '1',
  `enable_lot_number` tinyint(1) NOT NULL DEFAULT '0',
  `default_unit` int DEFAULT NULL,
  `enable_sub_units` tinyint(1) NOT NULL DEFAULT '0',
  `enable_racks` tinyint(1) NOT NULL DEFAULT '0',
  `enable_row` tinyint(1) NOT NULL DEFAULT '0',
  `enable_position` tinyint(1) NOT NULL DEFAULT '0',
  `enable_editing_product_from_purchase` tinyint(1) NOT NULL DEFAULT '1',
  `sales_cmsn_agnt` enum('logged_in_user','user','cmsn_agnt') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `item_addition_method` tinyint(1) NOT NULL DEFAULT '1',
  `enable_inline_tax` tinyint(1) NOT NULL DEFAULT '1',
  `currency_symbol_placement` enum('before','after') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'before',
  `enabled_modules` text COLLATE utf8mb4_unicode_ci,
  `date_format` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'm/d/Y',
  `time_format` enum('12','24') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '24',
  `currency_precision` tinyint NOT NULL DEFAULT '2',
  `quantity_precision` tinyint NOT NULL DEFAULT '2',
  `ref_no_prefixes` text COLLATE utf8mb4_unicode_ci,
  `theme_color` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `repair_settings` text COLLATE utf8mb4_unicode_ci,
  `crm_settings` text COLLATE utf8mb4_unicode_ci,
  `accounting_settings` text COLLATE utf8mb4_unicode_ci,
  `enable_rp` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'rp is the short form of reward points',
  `rp_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `amount_for_unit_rp` decimal(22,4) NOT NULL DEFAULT '1.0000' COMMENT 'rp is the short form of reward points',
  `min_order_total_for_rp` decimal(22,4) NOT NULL DEFAULT '1.0000' COMMENT 'rp is the short form of reward points',
  `max_rp_per_order` int DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `redeem_amount_per_unit_rp` decimal(22,4) NOT NULL DEFAULT '1.0000' COMMENT 'rp is the short form of reward points',
  `min_order_total_for_redeem` decimal(22,4) NOT NULL DEFAULT '1.0000' COMMENT 'rp is the short form of reward points',
  `min_redeem_point` int DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `max_redeem_point` int DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `rp_expiry_period` int DEFAULT NULL COMMENT 'rp is the short form of reward points',
  `rp_expiry_type` enum('month','year') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'year' COMMENT 'rp is the short form of reward points',
  `email_settings` text COLLATE utf8mb4_unicode_ci,
  `sms_settings` text COLLATE utf8mb4_unicode_ci,
  `custom_labels` text COLLATE utf8mb4_unicode_ci,
  `common_settings` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business`
--

INSERT INTO `business` (`id`, `name`, `currency_id`, `start_date`, `tax_number_1`, `tax_label_1`, `tax_number_2`, `tax_label_2`, `code_label_1`, `code_1`, `code_label_2`, `code_2`, `default_sales_tax`, `default_profit_percent`, `owner_id`, `time_zone`, `fy_start_month`, `accounting_method`, `default_sales_discount`, `sell_price_tax`, `logo`, `sku_prefix`, `enable_product_expiry`, `expiry_type`, `on_product_expiry`, `stop_selling_before`, `enable_tooltip`, `purchase_in_diff_currency`, `purchase_currency_id`, `p_exchange_rate`, `transaction_edit_days`, `stock_expiry_alert_days`, `keyboard_shortcuts`, `pos_settings`, `essentials_settings`, `weighing_scale_setting`, `enable_brand`, `enable_category`, `enable_sub_category`, `enable_price_tax`, `enable_purchase_status`, `enable_lot_number`, `default_unit`, `enable_sub_units`, `enable_racks`, `enable_row`, `enable_position`, `enable_editing_product_from_purchase`, `sales_cmsn_agnt`, `item_addition_method`, `enable_inline_tax`, `currency_symbol_placement`, `enabled_modules`, `date_format`, `time_format`, `currency_precision`, `quantity_precision`, `ref_no_prefixes`, `theme_color`, `created_by`, `repair_settings`, `crm_settings`, `accounting_settings`, `enable_rp`, `rp_name`, `amount_for_unit_rp`, `min_order_total_for_rp`, `max_rp_per_order`, `redeem_amount_per_unit_rp`, `min_order_total_for_redeem`, `min_redeem_point`, `max_redeem_point`, `rp_expiry_period`, `rp_expiry_type`, `email_settings`, `sms_settings`, `custom_labels`, `common_settings`, `is_active`, `created_at`, `updated_at`) VALUES
(1, 'Autopilot', 134, '2023-06-13', 'GST', 'VAT', 'SST', 'PPN', NULL, NULL, NULL, NULL, NULL, 25.00, 1, 'Asia/Dhaka', 1, 'fifo', 0.00, 'includes', NULL, NULL, 0, 'add_expiry', 'keep_selling', 0, 0, 0, NULL, 1.000, 30, 30, '{\"pos\":{\"express_checkout\":\"shift+e\",\"pay_n_ckeckout\":\"shift+p\",\"draft\":\"shift+d\",\"cancel\":\"shift+c\",\"recent_product_quantity\":\"f2\",\"weighing_scale\":null,\"edit_discount\":\"shift+i\",\"edit_order_tax\":\"shift+t\",\"add_payment_row\":\"shift+r\",\"finalize_payment\":\"shift+f\",\"add_new_product\":\"f4\"}}', '{\"amount_rounding_method\":null,\"enable_sales_order\":\"1\",\"cmmsn_calculation_type\":\"invoice_value\",\"razor_pay_key_id\":null,\"razor_pay_key_secret\":null,\"stripe_public_key\":null,\"stripe_secret_key\":null,\"cash_denominations\":null,\"enable_cash_denomination_on\":\"pos_screen\",\"disable_pay_checkout\":0,\"disable_draft\":0,\"disable_express_checkout\":0,\"hide_product_suggestion\":0,\"hide_recent_trans\":0,\"disable_discount\":0,\"disable_order_tax\":0,\"is_pos_subtotal_editable\":0}', NULL, '{\"label_prefix\":null,\"product_sku_length\":\"4\",\"qty_length\":\"3\",\"qty_length_decimal\":\"2\"}', 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 1, NULL, 1, 0, 'before', '[\"purchases\",\"add_sale\",\"expenses\",\"account\"]', 'm/d/Y', '24', 2, 2, '{\"purchase\":\"PO\",\"purchase_return\":null,\"purchase_requisition\":null,\"purchase_order\":null,\"stock_transfer\":\"ST\",\"stock_adjustment\":\"SA\",\"sell_return\":\"CN\",\"expense\":\"EP\",\"contacts\":\"CO\",\"purchase_payment\":\"PP\",\"sell_payment\":\"SP\",\"expense_payment\":null,\"business_location\":\"BL\",\"username\":null,\"subscription\":null,\"draft\":null,\"sales_order\":null}', 'black', NULL, NULL, NULL, NULL, 0, NULL, 1.0000, 1.0000, NULL, 1.0000, 1.0000, NULL, NULL, NULL, 'year', '{\"mail_driver\":\"smtp\",\"mail_host\":null,\"mail_port\":null,\"mail_username\":null,\"mail_password\":null,\"mail_encryption\":null,\"mail_from_address\":null,\"mail_from_name\":null}', '{\"sms_service\":\"other\",\"nexmo_key\":null,\"nexmo_secret\":null,\"nexmo_from\":null,\"twilio_sid\":null,\"twilio_token\":null,\"twilio_from\":null,\"url\":null,\"send_to_param_name\":\"to\",\"msg_param_name\":\"text\",\"request_method\":\"post\",\"header_1\":null,\"header_val_1\":null,\"header_2\":null,\"header_val_2\":null,\"header_3\":null,\"header_val_3\":null,\"param_1\":null,\"param_val_1\":null,\"param_2\":null,\"param_val_2\":null,\"param_3\":null,\"param_val_3\":null,\"param_4\":null,\"param_val_4\":null,\"param_5\":null,\"param_val_5\":null,\"param_6\":null,\"param_val_6\":null,\"param_7\":null,\"param_val_7\":null,\"param_8\":null,\"param_val_8\":null,\"param_9\":null,\"param_val_9\":null,\"param_10\":null,\"param_val_10\":null}', '{\"payments\":{\"custom_pay_1\":null,\"custom_pay_2\":null,\"custom_pay_3\":null,\"custom_pay_4\":null,\"custom_pay_5\":null,\"custom_pay_6\":null,\"custom_pay_7\":null},\"contact\":{\"custom_field_1\":\"Bank Account Name\",\"custom_field_2\":\"Bank Account no.\",\"custom_field_3\":\"Bank\",\"custom_field_4\":\"Branch\",\"custom_field_5\":\"Swift Code\",\"custom_field_6\":\"Gender\",\"custom_field_7\":\"NID\\/Passport\\/Driving License\\/BIN\",\"custom_field_8\":\"Profession\",\"custom_field_9\":\"Vehicle\",\"custom_field_10\":\"Vehicle\"},\"product\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null,\"custom_field_5\":null,\"custom_field_6\":null,\"custom_field_7\":null,\"custom_field_8\":null,\"custom_field_9\":null,\"custom_field_10\":null,\"custom_field_11\":null,\"custom_field_12\":null,\"custom_field_13\":null,\"custom_field_14\":null,\"custom_field_15\":null,\"custom_field_16\":null,\"custom_field_17\":null,\"custom_field_18\":null,\"custom_field_19\":null,\"custom_field_20\":null},\"product_cf_details\":{\"1\":{\"type\":null,\"dropdown_options\":\"Sedan\\r\\nWagon\\r\\nMPV\\r\\nHatchpack\"},\"2\":{\"type\":null,\"dropdown_options\":\"Octane\\r\\nHybrid\\r\\nPlug-in hybrid\"},\"3\":{\"type\":\"text\",\"dropdown_options\":\"2\\r\\n4\\r\\n5\"},\"4\":{\"type\":null,\"dropdown_options\":null},\"5\":{\"type\":null,\"dropdown_options\":null},\"6\":{\"type\":null,\"dropdown_options\":null},\"7\":{\"type\":null,\"dropdown_options\":null},\"8\":{\"type\":null,\"dropdown_options\":null},\"9\":{\"type\":null,\"dropdown_options\":null},\"10\":{\"type\":null,\"dropdown_options\":null},\"11\":{\"type\":null,\"dropdown_options\":null},\"12\":{\"type\":null,\"dropdown_options\":null},\"13\":{\"type\":null,\"dropdown_options\":null},\"14\":{\"type\":null,\"dropdown_options\":null},\"15\":{\"type\":null,\"dropdown_options\":null},\"16\":{\"type\":null,\"dropdown_options\":null},\"17\":{\"type\":null,\"dropdown_options\":null},\"18\":{\"type\":null,\"dropdown_options\":null},\"19\":{\"type\":null,\"dropdown_options\":null},\"20\":{\"type\":null,\"dropdown_options\":null}},\"location\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"user\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"purchase\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"purchase_shipping\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null,\"custom_field_5\":null},\"sell\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null},\"shipping\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null,\"custom_field_5\":null},\"types_of_service\":{\"custom_field_1\":null,\"custom_field_2\":null,\"custom_field_3\":null,\"custom_field_4\":null,\"custom_field_5\":null,\"custom_field_6\":null}}', '{\"enable_product_warranty\":\"1\",\"default_credit_limit\":null,\"default_datatable_page_entries\":\"25\"}', 1, '2023-06-13 13:55:56', '2023-08-05 09:18:37');

-- --------------------------------------------------------

--
-- Table structure for table `business_locations`
--

CREATE TABLE `business_locations` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `location_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(256) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landmark` text COLLATE utf8mb4_unicode_ci,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zip_code` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `invoice_scheme_id` int UNSIGNED NOT NULL,
  `sale_invoice_scheme_id` int DEFAULT NULL,
  `invoice_layout_id` int UNSIGNED NOT NULL,
  `sale_invoice_layout_id` int DEFAULT NULL,
  `selling_price_group_id` int DEFAULT NULL,
  `print_receipt_on_invoice` tinyint(1) DEFAULT '1',
  `receipt_printer_type` enum('browser','printer') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'browser',
  `printer_id` int DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured_products` text COLLATE utf8mb4_unicode_ci,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `default_payment_accounts` text COLLATE utf8mb4_unicode_ci,
  `custom_field1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `accounting_default_map` text COLLATE utf8mb4_unicode_ci COMMENT 'Default transactions mapping of accounting module',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `business_locations`
--

INSERT INTO `business_locations` (`id`, `business_id`, `location_id`, `name`, `landmark`, `country`, `state`, `city`, `zip_code`, `invoice_scheme_id`, `sale_invoice_scheme_id`, `invoice_layout_id`, `sale_invoice_layout_id`, `selling_price_group_id`, `print_receipt_on_invoice`, `receipt_printer_type`, `printer_id`, `mobile`, `alternate_number`, `email`, `website`, `featured_products`, `is_active`, `default_payment_accounts`, `custom_field1`, `custom_field2`, `custom_field3`, `custom_field4`, `accounting_default_map`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'BL0001', 'Autopilot', 'House-15, Road-14, Sector-13, Uttara', 'Bangladesh', 'Dhaka', 'Dhaka', '1230', 1, NULL, 1, 1, NULL, 1, 'browser', NULL, '+88 01703 60 69 60', '', '', 'https://www.enspiredasia.com/', NULL, 1, '{\"cash\":{\"is_enabled\":1,\"account\":null},\"card\":{\"is_enabled\":1,\"account\":null},\"cheque\":{\"is_enabled\":1,\"account\":null},\"bank_transfer\":{\"is_enabled\":1,\"account\":null},\"other\":{\"is_enabled\":1,\"account\":null},\"custom_pay_1\":{\"is_enabled\":1,\"account\":null},\"custom_pay_2\":{\"is_enabled\":1,\"account\":null},\"custom_pay_3\":{\"is_enabled\":1,\"account\":null},\"custom_pay_4\":{\"is_enabled\":1,\"account\":null},\"custom_pay_5\":{\"is_enabled\":1,\"account\":null},\"custom_pay_6\":{\"is_enabled\":1,\"account\":null},\"custom_pay_7\":{\"is_enabled\":1,\"account\":null}}', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-13 13:55:56', '2023-06-13 13:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `cash_denominations`
--

CREATE TABLE `cash_denominations` (
  `id` bigint UNSIGNED NOT NULL,
  `business_id` int NOT NULL,
  `amount` decimal(22,4) NOT NULL,
  `total_count` int NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cash_registers`
--

CREATE TABLE `cash_registers` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `location_id` int DEFAULT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `status` enum('close','open') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `closed_at` datetime DEFAULT NULL,
  `closing_amount` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `total_card_slips` int NOT NULL DEFAULT '0',
  `total_cheques` int NOT NULL DEFAULT '0',
  `denominations` text COLLATE utf8mb4_unicode_ci,
  `closing_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_registers`
--

INSERT INTO `cash_registers` (`id`, `business_id`, `location_id`, `user_id`, `status`, `closed_at`, `closing_amount`, `total_card_slips`, `total_cheques`, `denominations`, `closing_note`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, 'open', NULL, 0.0000, 0, 0, NULL, NULL, '2023-07-15 03:55:00', '2023-07-15 03:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `cash_register_transactions`
--

CREATE TABLE `cash_register_transactions` (
  `id` int UNSIGNED NOT NULL,
  `cash_register_id` int UNSIGNED NOT NULL,
  `amount` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `pay_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` enum('debit','credit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `transaction_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cash_register_transactions`
--

INSERT INTO `cash_register_transactions` (`id`, `cash_register_id`, `amount`, `pay_method`, `type`, `transaction_type`, `transaction_id`, `created_at`, `updated_at`) VALUES
(1, 1, 5000.0000, 'cash', 'credit', 'initial', NULL, '2023-07-15 03:55:23', '2023-07-15 03:55:23');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `short_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `category_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `business_id`, `short_code`, `parent_id`, `created_by`, `category_type`, `description`, `slug`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Test demu vehicle type', 1, '11111', 0, 1, 'product', 'dfghjk', NULL, NULL, '2023-08-02 11:14:52', '2023-08-02 11:14:52'),
(2, 'Japan', 1, '৭৮৭', 1, 1, 'product', NULL, NULL, '2023-08-07 06:00:19', '2023-08-02 17:43:39', '2023-08-07 06:00:19'),
(3, 'Test demu vehicle type1', 1, '55555', 0, 1, 'product', NULL, NULL, NULL, '2023-08-05 08:54:34', '2023-08-05 08:54:59'),
(4, 'Hybrid G', 1, NULL, 0, 2, 'product', NULL, NULL, NULL, '2023-08-07 07:34:42', '2023-08-07 07:34:42');

-- --------------------------------------------------------

--
-- Table structure for table `categorizables`
--

CREATE TABLE `categorizables` (
  `category_id` int NOT NULL,
  `categorizable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorizable_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `chassis_codes`
--

CREATE TABLE `chassis_codes` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_manufacture_id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chassis_codes`
--

INSERT INTO `chassis_codes` (`id`, `name`, `category`, `vehicle_manufacture_id`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'Commercial Chassis Code', 'Commercial', 6, NULL, '2023-08-18 02:23:02', '2023-08-18 02:23:02'),
(4, 'Passenger Code', 'Passenger', 11, NULL, '2023-08-26 03:32:39', '2023-08-26 03:32:39');

-- --------------------------------------------------------

--
-- Table structure for table `cms_pages`
--

CREATE TABLE `cms_pages` (
  `id` bigint UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `layout` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_pages`
--

INSERT INTO `cms_pages` (`id`, `type`, `layout`, `title`, `content`, `meta_description`, `tags`, `feature_image`, `priority`, `created_by`, `is_enabled`, `created_at`, `updated_at`) VALUES
(1, 'testimonial', NULL, 'David Parr', '<p class=\"testimonial-card-1__paragraph mb-3\">This software has become one of the backbones of our business. It helped us streamline the data of all our warehouses &amp; shops on one platform. I am not much of a techy guy but the admin panel also allows you to customize every aspect of the application.</p>\r\n          <p class=\"testimonial-card-1__paragraph mb-3\">All the reports help me to give an overview of different aspects of our business.</p>\r\n          <p class=\"testimonial-card-1__paragraph mb-3\">It is very powerful!</p>', NULL, NULL, NULL, 3, 9, 1, '2022-08-19 05:25:05', '2022-10-20 11:48:29'),
(2, 'testimonial', NULL, 'Tim Johnson', '<p>It is truly designed to help my business run more smoothly and efficiently. I can now track and manage inventory, customer information, and sales easily. The installation was quick and easy, and the interface is very user-friendly. I can now manage almost every business operation with one single software!</p>', NULL, NULL, NULL, NULL, 1, 1, '2022-09-10 10:07:17', '2022-10-20 11:23:39'),
(3, 'page', 'home', 'Automate your business management at affordable price.', '<p>Best Car Dealership and Workshop Management application for your growing business!</p>', NULL, NULL, '1690176372_7197355-removebg-preview.png', 1, 0, 1, '2022-09-10 10:26:24', '2023-07-24 05:26:12'),
(4, 'page', 'contact', 'Contact Us', '<p>We\'re happy to receive your message. Ask us anything, we\'ll respond as soon as possible.</p>', NULL, NULL, NULL, NULL, 0, 1, '2022-09-10 10:26:24', '2022-09-16 06:04:20'),
(5, 'testimonial', NULL, 'Krishna Watt', '<p>We have used this for 9 months now. It has helped our business grow by leaps and bounds. The interface and its simplicity have made it easy for us to learn and get familiar with. The best thing about this software is that it is cloud-based and we can use it from our shop, warehouse, or mobile while traveling. I can also see its potential as we continue to grow. Highly Satisfied!</p>', NULL, NULL, NULL, NULL, 1, 1, '2022-09-16 06:07:25', '2022-10-20 11:27:31');

-- --------------------------------------------------------

--
-- Table structure for table `cms_page_metas`
--

CREATE TABLE `cms_page_metas` (
  `id` bigint UNSIGNED NOT NULL,
  `cms_page_id` bigint UNSIGNED NOT NULL,
  `meta_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_page_metas`
--

INSERT INTO `cms_page_metas` (`id`, `cms_page_id`, `meta_key`, `meta_value`, `created_at`, `updated_at`) VALUES
(1, 3, 'industry', '{\"id\":\"1\",\"title\":\"We\'re Ready For Your Business!\",\"description\":\"<p>If you\'re in need of business management software, you\'ve come to the right place.&nbsp;<\\/p>\\r\\n<p>We have a clean, modern modular design that is sure to fit your business!<\\/p>\",\"content\":[{\"icon\":\"fas fa-store-alt\",\"title\":\"Car Dealership\",\"description\":\"Autopilot streamlines vehicle management, sales processes, and inventory control, automating car dealerships for increased efficiency and customer satisfaction.\"},{\"icon\":\"fas fa-store\",\"title\":\"Auto Repair Shop\",\"description\":\"With Autopilot\'s integrated workshop management, appointment scheduling, and real-time updates, auto repair shops can automate operations and enhance service delivery.\"},{\"icon\":\"fas fa-notes-medical\",\"title\":\"Spare Parts Store\",\"description\":\"Autopilot\'s seamless spare-parts selling feature empowers spare parts stores to automate online sales, inventory tracking, and order management, optimizing the selling experience.\"},{\"icon\":\"fas fa-prescription-bottle\",\"title\":\"Automotive Consulting Firm\",\"description\":\"Autopilot\'s lead management and sales features help automotive consulting firms automate lead tracking, client interactions, and sales processes, driving business growth.\"},{\"icon\":\"fas fa-mobile-alt\",\"title\":null,\"description\":null},{\"icon\":\"fas fa-wrench\",\"title\":null,\"description\":null},{\"icon\":\"fas fa-home\",\"title\":null,\"description\":null},{\"icon\":\"fas fa-home\",\"title\":null,\"description\":null}]}', NULL, '2023-07-24 05:09:03'),
(2, 3, 'feature', '{\"id\":\"2\",\"title\":\"Features to skyrocket \\ud83d\\ude80 your business growth\",\"description\":\"<p>The pace of business growth has never been faster.<\\/p>\\r\\n<p>That\'s why we&rsquo;ve designed our cloud-based software to help you get ahead.<\\/p>\\r\\n<p>The easiest, most reliable way to grow and manage your business is right at your fingertips with our cloud-based car dealer and workshop management system.<\\/p>\\r\\n<p>Right software can be a lifesaver for your business, and with it, you can revolutionize your business\'s growth<\\/p>\",\"content\":[{\"icon\":\"fas fa-cloud\",\"title\":\"Access Anywhere!\",\"description\":\"Check your business data from anywhere, anytime. \\r\\nSee live updates in realtime\"},{\"icon\":\"fas fa-check-double\",\"title\":\"No Installation\",\"description\":\"No software to install, No hardware dependency. Just open browser & start using.\"},{\"icon\":\"fas fa-sitemap\",\"title\":\"LC & Purchase\",\"description\":\"Effortlessly manage letters of credit and streamline vehicle purchases with Autopilot\'s intuitive LC & Purchase module.\"},{\"icon\":\"fas fa-user-lock\",\"title\":\"User access limit\",\"description\":\"Powerful user Role & Permission management to limit employees  access to business data\"},{\"icon\":\"fas fa-cubes\",\"title\":\"Stock Management\",\"description\":\"Manage stocks with from multiple locations, stock expiry, lot number, stock history & much more.\"},{\"icon\":\"fas fa-wrench\",\"title\":\"Service Management\",\"description\":\"Manage & easily invoice for services. Also dedicated repair service management features to schedule & deliver services on time\"},{\"icon\":\"fas fa-users\",\"title\":\"HR Management\",\"description\":\"With HR management easily track daily attendance, shift management, leaves, payroll, Holidays, Departments,  & Designations\"},{\"icon\":\"fas fa-handshake\",\"title\":\"Customer Management\",\"description\":\"CRM module help you to track leads lifecycle, followup with leads, sources, followup, launch campaigns, proposals and lot more\"},{\"icon\":\"fas fa-hand-peace\",\"title\":\"Simplified Interface\",\"description\":\"Simple to use interface to get work done in few clicks. Save your time & make it easy for staffs to use.\"},{\"icon\":\"fas fa-chart-line\",\"title\":\"Reports\",\"description\":\"Comes inbuilt with lot of report to help business owners analyse every revenue, inventory, payments & human resource.\"}]}', '2022-09-15 09:34:41', '2023-07-24 05:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `cms_site_details`
--

CREATE TABLE `cms_site_details` (
  `id` bigint UNSIGNED NOT NULL,
  `site_key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cms_site_details`
--

INSERT INTO `cms_site_details` (`id`, `site_key`, `site_value`, `created_at`, `updated_at`) VALUES
(1, 'faqs', '[{\"question\":\"Why should we switch to cloud-based business management software compared to traditional desktop software?\",\"answer\":\"Cloud-based software provides you a low-cost, secure & mobile software solutions. Compared to traditional software that requires it to install on a computer - cloud-based can be accessed from anywhere without any hardware dependency.\"},{\"question\":\"How secure is my business data?\",\"answer\":\"All data are stored in our centralized database which is highly protected with multi-layers of privileges. We takes regular frequency interval automated backup to protect from any unwanted consequences.\"},{\"question\":\"Whom should I reach out to in case of any problems?\",\"answer\":\"Please contact our support, write us in the contact section or call to the number mentioned. You\'re assured to receive a response in a maximum of 24 hours.\"},{\"question\":\"Is this POS application Free?\",\"answer\":\"We do provide a free tier for very small business or business that is about to start. To take more advantage of this POS software we recommend that you upgrade to a better plan that unlocks more features.\"},{\"question\":\"Do you provide consultancy or implementation solutions for using this POS software?\",\"answer\":\"Yes, with a pro plan you can connect with one of our experts who will help you with implementing the solution for your business.\"},{\"question\":\"Are there any additional hardware required or subscription charges?\",\"answer\":\"This is cloud-based software. You\'ll only need a device with an internet connection & chrome browser. It runs within the browser. No additional hardware is required. But you can use some hardware like barcode scanners, and printers for your convenience to speed up work.\"}]', '2022-09-13 12:44:10', '2022-10-20 11:16:28'),
(2, 'statistics', '{\"tagline\":\"Autopilot\'s Stats & Numbers\",\"description\":\"More & More businesses are adopting our cloud-based business management solution\",\"content\":[{\"stats\":\"75\",\"title\":\"REGISTERED BUSINESSES\"},{\"stats\":\"400+\",\"title\":\"DAILY USERS\"},{\"stats\":\"50K\",\"title\":\"INVOICES CREATED\"},{\"stats\":\"126+\",\"title\":\"ONLINE RESOURCES\"}]}', '2022-09-13 12:44:10', '2023-07-24 05:14:39'),
(3, 'google_analytics', 'null', '2022-09-14 05:14:40', '2022-09-16 05:49:09'),
(4, 'fb_pixel', 'null', '2022-09-14 05:14:40', '2022-09-16 05:49:09'),
(5, 'custom_js', 'null', '2022-09-14 05:14:40', '2022-09-16 05:49:09'),
(6, 'custom_css', 'null', '2022-09-14 05:14:40', '2022-09-16 05:49:09'),
(7, 'meta_tags', 'null', '2022-09-14 05:14:40', '2022-09-16 05:49:09'),
(8, 'chat_widget', 'null', '2022-09-14 05:27:14', '2022-09-16 05:49:09'),
(9, 'contact_us', '[{\"label\":\"Call\",\"num\":\"0170360696\"},{\"label\":\"Support\",\"num\":\"0170360696\"},{\"label\":\"Enquiry\",\"num\":\"0170360696\"}]', '2022-09-14 06:24:38', '2023-07-24 05:13:30'),
(10, 'mail_us', '[{\"label\":\"Contact\",\"email\":\"sales@enspiredasia.com\"},{\"label\":\"Support\",\"email\":\"support@enspiredasia.com\"}]', '2022-09-14 06:24:38', '2023-07-24 05:13:30'),
(11, 'follow_us', '{\"facebook\":\"https:\\/\\/www.facebook.com\\/test\",\"instagram\":\"https:\\/\\/www.instagram.com\\/test\",\"twitter\":\"https:\\/\\/twitter.com\\/test\",\"linkedin\":\"https:\\/\\/in.linkedin.com\\/company\\/test\",\"youtube\":\"https:\\/\\/www.youtube.com\\/c\\/test\"}', '2022-09-14 06:35:39', '2022-10-20 11:08:07'),
(12, 'logo', 'null', '2022-09-14 07:38:53', '2022-09-16 05:49:09'),
(13, 'notifiable_email', '\"sales@enspiredasia.com\"', '2022-09-14 07:38:53', '2023-07-24 05:10:39'),
(14, 'btns', '{\"navbar\":{\"text\":\"Try For Free\",\"link\":\"http:\\/\\/new.mensademo.xyz\\/business\\/register\"},\"hero\":{\"text\":\"Start your Free Trial\",\"link\":\"http:\\/\\/new.mensademo.xyz\\/business\\/register\"},\"industry\":{\"text\":\"Get Started\",\"link\":\"http:\\/\\/new.mensademo.xyz\\/business\\/register\"},\"cta\":{\"text\":\"Try Now\",\"link\":\"http:\\/\\/new.mensademo.xyz\\/business\\/register\"}}', '2023-07-24 05:10:39', '2023-07-24 05:10:39'),
(15, 'chat', '{\"enable\":\"in_app_chat\",\"mobile\":{\"1\":null,\"2\":null},\"mail\":{\"1\":null,\"2\":null},\"whatsapp\":{\"1\":null,\"2\":null},\"messanger_link\":null,\"telegram\":null}', '2023-07-24 05:10:39', '2023-07-24 05:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_business_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `middle_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `tax_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_line_1` text COLLATE utf8mb4_unicode_ci,
  `address_line_2` text COLLATE utf8mb4_unicode_ci,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `mobile` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `landline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alternate_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_term_number` int DEFAULT NULL,
  `pay_term_type` enum('days','months') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `credit_limit` decimal(22,4) DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `converted_by` int DEFAULT NULL,
  `converted_on` datetime DEFAULT NULL,
  `balance` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `total_rp` int NOT NULL DEFAULT '0' COMMENT 'rp is the short form of reward points',
  `total_rp_used` int NOT NULL DEFAULT '0' COMMENT 'rp is the short form of reward points',
  `total_rp_expired` int NOT NULL DEFAULT '0' COMMENT 'rp is the short form of reward points',
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_address` text COLLATE utf8mb4_unicode_ci,
  `shipping_custom_field_details` longtext COLLATE utf8mb4_unicode_ci,
  `is_export` tinyint(1) NOT NULL DEFAULT '0',
  `export_custom_field_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_custom_field_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_custom_field_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_custom_field_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_custom_field_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `export_custom_field_6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_group_id` int DEFAULT NULL,
  `crm_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crm_life_stage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field7` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field8` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field9` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field10` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `business_id`, `type`, `supplier_business_name`, `name`, `prefix`, `first_name`, `middle_name`, `last_name`, `email`, `contact_id`, `contact_status`, `tax_number`, `city`, `state`, `country`, `address_line_1`, `address_line_2`, `zip_code`, `dob`, `mobile`, `landline`, `alternate_number`, `pay_term_number`, `pay_term_type`, `credit_limit`, `created_by`, `converted_by`, `converted_on`, `balance`, `total_rp`, `total_rp_used`, `total_rp_expired`, `is_default`, `shipping_address`, `shipping_custom_field_details`, `is_export`, `export_custom_field_1`, `export_custom_field_2`, `export_custom_field_3`, `export_custom_field_4`, `export_custom_field_5`, `export_custom_field_6`, `position`, `customer_group_id`, `crm_source`, `crm_life_stage`, `custom_field1`, `custom_field2`, `custom_field3`, `custom_field4`, `custom_field5`, `custom_field6`, `custom_field7`, `custom_field8`, `custom_field9`, `custom_field10`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'customer', NULL, 'Walk-In Customer', NULL, NULL, NULL, NULL, NULL, 'CO0001', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, NULL, 0.0000, 1, NULL, NULL, 0.0000, 0, 0, 0, 1, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-13 13:55:56', '2023-06-13 13:55:56'),
(2, 1, 'supplier', NULL, 'mr mubarok', 'mr', 'mubarok', NULL, NULL, NULL, '11120', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01876440689', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 0.0000, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-22 12:38:24', '2023-07-22 12:38:24'),
(3, 1, 'customer', 'Auto Pilot', '', NULL, NULL, NULL, NULL, NULL, '5555', 'active', '5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01876440689', NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, 0.0000, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-22 13:06:20', '2023-07-22 13:06:20'),
(4, 1, 'customer', NULL, '', NULL, NULL, NULL, NULL, NULL, 'CO0004', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01706668403', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0.0000, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-27 02:42:01', '2023-08-27 02:42:01'),
(5, 1, 'customer', NULL, '', NULL, NULL, NULL, NULL, NULL, 'CO0005', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '01706668404', NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, 0.0000, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-27 02:57:27', '2023-08-27 02:57:27'),
(8, 1, 'both', NULL, 'Esse reprehenderit v', NULL, NULL, NULL, NULL, 'lowamody@mailinator.com', 'Corporis magnam ut a', 'active', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tempor iusto dolores', 'Quod nostrud quaerat', NULL, NULL, NULL, NULL, 1, NULL, NULL, 0.0000, 0, 0, 0, 0, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-27 04:42:28', '2023-08-27 04:42:28');

-- --------------------------------------------------------

--
-- Table structure for table `country`
--

CREATE TABLE `country` (
  `id` int UNSIGNED NOT NULL,
  `iso` char(2) NOT NULL,
  `name` varchar(80) NOT NULL,
  `nicename` varchar(80) NOT NULL,
  `iso3` char(3) DEFAULT NULL,
  `numcode` smallint DEFAULT NULL,
  `phonecode` int NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `country`
--

INSERT INTO `country` (`id`, `iso`, `name`, `nicename`, `iso3`, `numcode`, `phonecode`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', 4, 93),
(2, 'AL', 'ALBANIA', 'Albania', 'ALB', 8, 355),
(3, 'DZ', 'ALGERIA', 'Algeria', 'DZA', 12, 213),
(4, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', 16, 1684),
(5, 'AD', 'ANDORRA', 'Andorra', 'AND', 20, 376),
(6, 'AO', 'ANGOLA', 'Angola', 'AGO', 24, 244),
(7, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', 660, 1264),
(8, 'AQ', 'ANTARCTICA', 'Antarctica', NULL, NULL, 0),
(9, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', 28, 1268),
(10, 'AR', 'ARGENTINA', 'Argentina', 'ARG', 32, 54),
(11, 'AM', 'ARMENIA', 'Armenia', 'ARM', 51, 374),
(12, 'AW', 'ARUBA', 'Aruba', 'ABW', 533, 297),
(13, 'AU', 'AUSTRALIA', 'Australia', 'AUS', 36, 61),
(14, 'AT', 'AUSTRIA', 'Austria', 'AUT', 40, 43),
(15, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', 31, 994),
(16, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', 44, 1242),
(17, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', 48, 973),
(18, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', 50, 880),
(19, 'BB', 'BARBADOS', 'Barbados', 'BRB', 52, 1246),
(20, 'BY', 'BELARUS', 'Belarus', 'BLR', 112, 375),
(21, 'BE', 'BELGIUM', 'Belgium', 'BEL', 56, 32),
(22, 'BZ', 'BELIZE', 'Belize', 'BLZ', 84, 501),
(23, 'BJ', 'BENIN', 'Benin', 'BEN', 204, 229),
(24, 'BM', 'BERMUDA', 'Bermuda', 'BMU', 60, 1441),
(25, 'BT', 'BHUTAN', 'Bhutan', 'BTN', 64, 975),
(26, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', 68, 591),
(27, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', 70, 387),
(28, 'BW', 'BOTSWANA', 'Botswana', 'BWA', 72, 267),
(29, 'BV', 'BOUVET ISLAND', 'Bouvet Island', NULL, NULL, 0),
(30, 'BR', 'BRAZIL', 'Brazil', 'BRA', 76, 55),
(31, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL, NULL, 246),
(32, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', 96, 673),
(33, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', 100, 359),
(34, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', 854, 226),
(35, 'BI', 'BURUNDI', 'Burundi', 'BDI', 108, 257),
(36, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', 116, 855),
(37, 'CM', 'CAMEROON', 'Cameroon', 'CMR', 120, 237),
(38, 'CA', 'CANADA', 'Canada', 'CAN', 124, 1),
(39, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', 132, 238),
(40, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', 136, 1345),
(41, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', 140, 236),
(42, 'TD', 'CHAD', 'Chad', 'TCD', 148, 235),
(43, 'CL', 'CHILE', 'Chile', 'CHL', 152, 56),
(44, 'CN', 'CHINA', 'China', 'CHN', 156, 86),
(45, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', NULL, NULL, 61),
(46, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL, NULL, 672),
(47, 'CO', 'COLOMBIA', 'Colombia', 'COL', 170, 57),
(48, 'KM', 'COMOROS', 'Comoros', 'COM', 174, 269),
(49, 'CG', 'CONGO', 'Congo', 'COG', 178, 242),
(50, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', 180, 242),
(51, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', 184, 682),
(52, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', 188, 506),
(53, 'CI', 'COTE D\'IVOIRE', 'Cote D\'Ivoire', 'CIV', 384, 225),
(54, 'HR', 'CROATIA', 'Croatia', 'HRV', 191, 385),
(55, 'CU', 'CUBA', 'Cuba', 'CUB', 192, 53),
(56, 'CY', 'CYPRUS', 'Cyprus', 'CYP', 196, 357),
(57, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', 203, 420),
(58, 'DK', 'DENMARK', 'Denmark', 'DNK', 208, 45),
(59, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', 262, 253),
(60, 'DM', 'DOMINICA', 'Dominica', 'DMA', 212, 1767),
(61, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', 214, 1809),
(62, 'EC', 'ECUADOR', 'Ecuador', 'ECU', 218, 593),
(63, 'EG', 'EGYPT', 'Egypt', 'EGY', 818, 20),
(64, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', 222, 503),
(65, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', 226, 240),
(66, 'ER', 'ERITREA', 'Eritrea', 'ERI', 232, 291),
(67, 'EE', 'ESTONIA', 'Estonia', 'EST', 233, 372),
(68, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', 231, 251),
(69, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', 238, 500),
(70, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', 234, 298),
(71, 'FJ', 'FIJI', 'Fiji', 'FJI', 242, 679),
(72, 'FI', 'FINLAND', 'Finland', 'FIN', 246, 358),
(73, 'FR', 'FRANCE', 'France', 'FRA', 250, 33),
(74, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', 254, 594),
(75, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', 258, 689),
(76, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL, NULL, 0),
(77, 'GA', 'GABON', 'Gabon', 'GAB', 266, 241),
(78, 'GM', 'GAMBIA', 'Gambia', 'GMB', 270, 220),
(79, 'GE', 'GEORGIA', 'Georgia', 'GEO', 268, 995),
(80, 'DE', 'GERMANY', 'Germany', 'DEU', 276, 49),
(81, 'GH', 'GHANA', 'Ghana', 'GHA', 288, 233),
(82, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', 292, 350),
(83, 'GR', 'GREECE', 'Greece', 'GRC', 300, 30),
(84, 'GL', 'GREENLAND', 'Greenland', 'GRL', 304, 299),
(85, 'GD', 'GRENADA', 'Grenada', 'GRD', 308, 1473),
(86, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', 312, 590),
(87, 'GU', 'GUAM', 'Guam', 'GUM', 316, 1671),
(88, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', 320, 502),
(89, 'GN', 'GUINEA', 'Guinea', 'GIN', 324, 224),
(90, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', 624, 245),
(91, 'GY', 'GUYANA', 'Guyana', 'GUY', 328, 592),
(92, 'HT', 'HAITI', 'Haiti', 'HTI', 332, 509),
(93, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', NULL, NULL, 0),
(94, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', 336, 39),
(95, 'HN', 'HONDURAS', 'Honduras', 'HND', 340, 504),
(96, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', 344, 852),
(97, 'HU', 'HUNGARY', 'Hungary', 'HUN', 348, 36),
(98, 'IS', 'ICELAND', 'Iceland', 'ISL', 352, 354),
(99, 'IN', 'INDIA', 'India', 'IND', 356, 91),
(100, 'ID', 'INDONESIA', 'Indonesia', 'IDN', 360, 62),
(101, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', 364, 98),
(102, 'IQ', 'IRAQ', 'Iraq', 'IRQ', 368, 964),
(103, 'IE', 'IRELAND', 'Ireland', 'IRL', 372, 353),
(104, 'IL', 'ISRAEL', 'Israel', 'ISR', 376, 972),
(105, 'IT', 'ITALY', 'Italy', 'ITA', 380, 39),
(106, 'JM', 'JAMAICA', 'Jamaica', 'JAM', 388, 1876),
(107, 'JP', 'JAPAN', 'Japan', 'JPN', 392, 81),
(108, 'JO', 'JORDAN', 'Jordan', 'JOR', 400, 962),
(109, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', 398, 7),
(110, 'KE', 'KENYA', 'Kenya', 'KEN', 404, 254),
(111, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', 296, 686),
(112, 'KP', 'KOREA, DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'Korea, Democratic People\'s Republic of', 'PRK', 408, 850),
(113, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', 410, 82),
(114, 'KW', 'KUWAIT', 'Kuwait', 'KWT', 414, 965),
(115, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', 417, 996),
(116, 'LA', 'LAO PEOPLE\'S DEMOCRATIC REPUBLIC', 'Lao People\'s Democratic Republic', 'LAO', 418, 856),
(117, 'LV', 'LATVIA', 'Latvia', 'LVA', 428, 371),
(118, 'LB', 'LEBANON', 'Lebanon', 'LBN', 422, 961),
(119, 'LS', 'LESOTHO', 'Lesotho', 'LSO', 426, 266),
(120, 'LR', 'LIBERIA', 'Liberia', 'LBR', 430, 231),
(121, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', 434, 218),
(122, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', 438, 423),
(123, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', 440, 370),
(124, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', 442, 352),
(125, 'MO', 'MACAO', 'Macao', 'MAC', 446, 853),
(126, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', 807, 389),
(127, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', 450, 261),
(128, 'MW', 'MALAWI', 'Malawi', 'MWI', 454, 265),
(129, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', 458, 60),
(130, 'MV', 'MALDIVES', 'Maldives', 'MDV', 462, 960),
(131, 'ML', 'MALI', 'Mali', 'MLI', 466, 223),
(132, 'MT', 'MALTA', 'Malta', 'MLT', 470, 356),
(133, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', 584, 692),
(134, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', 474, 596),
(135, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', 478, 222),
(136, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', 480, 230),
(137, 'YT', 'MAYOTTE', 'Mayotte', NULL, NULL, 269),
(138, 'MX', 'MEXICO', 'Mexico', 'MEX', 484, 52),
(139, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', 583, 691),
(140, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', 498, 373),
(141, 'MC', 'MONACO', 'Monaco', 'MCO', 492, 377),
(142, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', 496, 976),
(143, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', 500, 1664),
(144, 'MA', 'MOROCCO', 'Morocco', 'MAR', 504, 212),
(145, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', 508, 258),
(146, 'MM', 'MYANMAR', 'Myanmar', 'MMR', 104, 95),
(147, 'NA', 'NAMIBIA', 'Namibia', 'NAM', 516, 264),
(148, 'NR', 'NAURU', 'Nauru', 'NRU', 520, 674),
(149, 'NP', 'NEPAL', 'Nepal', 'NPL', 524, 977),
(150, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', 528, 31),
(151, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', 530, 599),
(152, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', 540, 687),
(153, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', 554, 64),
(154, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', 558, 505),
(155, 'NE', 'NIGER', 'Niger', 'NER', 562, 227),
(156, 'NG', 'NIGERIA', 'Nigeria', 'NGA', 566, 234),
(157, 'NU', 'NIUE', 'Niue', 'NIU', 570, 683),
(158, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', 574, 672),
(159, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', 580, 1670),
(160, 'NO', 'NORWAY', 'Norway', 'NOR', 578, 47),
(161, 'OM', 'OMAN', 'Oman', 'OMN', 512, 968),
(162, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', 586, 92),
(163, 'PW', 'PALAU', 'Palau', 'PLW', 585, 680),
(164, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL, NULL, 970),
(165, 'PA', 'PANAMA', 'Panama', 'PAN', 591, 507),
(166, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', 598, 675),
(167, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', 600, 595),
(168, 'PE', 'PERU', 'Peru', 'PER', 604, 51),
(169, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', 608, 63),
(170, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', 612, 0),
(171, 'PL', 'POLAND', 'Poland', 'POL', 616, 48),
(172, 'PT', 'PORTUGAL', 'Portugal', 'PRT', 620, 351),
(173, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', 630, 1787),
(174, 'QA', 'QATAR', 'Qatar', 'QAT', 634, 974),
(175, 'RE', 'REUNION', 'Reunion', 'REU', 638, 262),
(176, 'RO', 'ROMANIA', 'Romania', 'ROM', 642, 40),
(177, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', 643, 70),
(178, 'RW', 'RWANDA', 'Rwanda', 'RWA', 646, 250),
(179, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', 654, 290),
(180, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', 659, 1869),
(181, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', 662, 1758),
(182, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', 666, 508),
(183, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', 670, 1784),
(184, 'WS', 'SAMOA', 'Samoa', 'WSM', 882, 684),
(185, 'SM', 'SAN MARINO', 'San Marino', 'SMR', 674, 378),
(186, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', 678, 239),
(187, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', 682, 966),
(188, 'SN', 'SENEGAL', 'Senegal', 'SEN', 686, 221),
(189, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', NULL, NULL, 381),
(190, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', 690, 248),
(191, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', 694, 232),
(192, 'SG', 'SINGAPORE', 'Singapore', 'SGP', 702, 65),
(193, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', 703, 421),
(194, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', 705, 386),
(195, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', 90, 677),
(196, 'SO', 'SOMALIA', 'Somalia', 'SOM', 706, 252),
(197, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', 710, 27),
(198, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL, NULL, 0),
(199, 'ES', 'SPAIN', 'Spain', 'ESP', 724, 34),
(200, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', 144, 94),
(201, 'SD', 'SUDAN', 'Sudan', 'SDN', 736, 249),
(202, 'SR', 'SURINAME', 'Suriname', 'SUR', 740, 597),
(203, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', 744, 47),
(204, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', 748, 268),
(205, 'SE', 'SWEDEN', 'Sweden', 'SWE', 752, 46),
(206, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', 756, 41),
(207, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', 760, 963),
(208, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', 158, 886),
(209, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', 762, 992),
(210, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', 834, 255),
(211, 'TH', 'THAILAND', 'Thailand', 'THA', 764, 66),
(212, 'TL', 'TIMOR-LESTE', 'Timor-Leste', NULL, NULL, 670),
(213, 'TG', 'TOGO', 'Togo', 'TGO', 768, 228),
(214, 'TK', 'TOKELAU', 'Tokelau', 'TKL', 772, 690),
(215, 'TO', 'TONGA', 'Tonga', 'TON', 776, 676),
(216, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', 780, 1868),
(217, 'TN', 'TUNISIA', 'Tunisia', 'TUN', 788, 216),
(218, 'TR', 'TURKEY', 'Turkey', 'TUR', 792, 90),
(219, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', 795, 7370),
(220, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', 796, 1649),
(221, 'TV', 'TUVALU', 'Tuvalu', 'TUV', 798, 688),
(222, 'UG', 'UGANDA', 'Uganda', 'UGA', 800, 256),
(223, 'UA', 'UKRAINE', 'Ukraine', 'UKR', 804, 380),
(224, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', 784, 971),
(225, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', 826, 44),
(226, 'US', 'UNITED STATES', 'United States', 'USA', 840, 1),
(227, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL, NULL, 1),
(228, 'UY', 'URUGUAY', 'Uruguay', 'URY', 858, 598),
(229, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', 860, 998),
(230, 'VU', 'VANUATU', 'Vanuatu', 'VUT', 548, 678),
(231, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', 862, 58),
(232, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', 704, 84),
(233, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', 92, 1284),
(234, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', 850, 1340),
(235, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', 876, 681),
(236, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', 732, 212),
(237, 'YE', 'YEMEN', 'Yemen', 'YEM', 887, 967),
(238, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', 894, 260),
(239, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', 716, 263);

-- --------------------------------------------------------

--
-- Table structure for table `crm_call_logs`
--

CREATE TABLE `crm_call_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `business_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `call_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` int DEFAULT NULL,
  `start_time` datetime DEFAULT NULL,
  `end_time` datetime DEFAULT NULL,
  `duration` int DEFAULT NULL,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_campaigns`
--

CREATE TABLE `crm_campaigns` (
  `id` bigint UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `campaign_type` enum('sms','email') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_body` text COLLATE utf8mb4_unicode_ci,
  `sms_body` text COLLATE utf8mb4_unicode_ci,
  `sent_on` datetime DEFAULT NULL,
  `contact_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_info` text COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_contact_person_commissions`
--

CREATE TABLE `crm_contact_person_commissions` (
  `id` bigint UNSIGNED NOT NULL,
  `contact_person_id` int NOT NULL,
  `transaction_id` int DEFAULT NULL,
  `commission_amount` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_followup_invoices`
--

CREATE TABLE `crm_followup_invoices` (
  `follow_up_id` int NOT NULL,
  `transaction_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_lead_users`
--

CREATE TABLE `crm_lead_users` (
  `id` bigint UNSIGNED NOT NULL,
  `contact_id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_marketplaces`
--

CREATE TABLE `crm_marketplaces` (
  `id` bigint UNSIGNED NOT NULL,
  `business_id` int NOT NULL,
  `marketplace` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assigned_users` text COLLATE utf8mb4_unicode_ci,
  `crm_source_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_proposals`
--

CREATE TABLE `crm_proposals` (
  `id` bigint UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `contact_id` int UNSIGNED NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cc` text COLLATE utf8mb4_unicode_ci,
  `bcc` text COLLATE utf8mb4_unicode_ci,
  `sent_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_proposal_templates`
--

CREATE TABLE `crm_proposal_templates` (
  `id` bigint UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `body` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cc` text COLLATE utf8mb4_unicode_ci,
  `bcc` text COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_schedules`
--

CREATE TABLE `crm_schedules` (
  `id` bigint UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `contact_id` int DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_datetime` datetime DEFAULT NULL,
  `end_datetime` datetime DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `schedule_type` enum('call','sms','meeting','email') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `followup_category_id` int DEFAULT NULL,
  `allow_notification` tinyint(1) NOT NULL DEFAULT '1',
  `notify_via` text COLLATE utf8mb4_unicode_ci,
  `notify_before` int DEFAULT NULL,
  `notify_type` enum('minute','hour','day') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'hour',
  `created_by` int NOT NULL,
  `is_recursive` tinyint(1) NOT NULL DEFAULT '0',
  `recursion_days` int DEFAULT NULL,
  `followup_additional_info` text COLLATE utf8mb4_unicode_ci,
  `follow_up_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `follow_up_by_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_schedule_logs`
--

CREATE TABLE `crm_schedule_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `schedule_id` bigint UNSIGNED NOT NULL,
  `log_type` enum('call','sms','meeting','email') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'email',
  `start_datetime` datetime NOT NULL,
  `end_datetime` datetime NOT NULL,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crm_schedule_users`
--

CREATE TABLE `crm_schedule_users` (
  `id` bigint UNSIGNED NOT NULL,
  `schedule_id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `currencies`
--

CREATE TABLE `currencies` (
  `id` int UNSIGNED NOT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thousand_separator` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `decimal_separator` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `currencies`
--

INSERT INTO `currencies` (`id`, `country`, `currency`, `code`, `symbol`, `thousand_separator`, `decimal_separator`, `created_at`, `updated_at`) VALUES
(1, 'Albania', 'Leke', 'ALL', 'Lek', ',', '.', NULL, NULL),
(2, 'America', 'Dollars', 'USD', '$', ',', '.', NULL, NULL),
(3, 'Afghanistan', 'Afghanis', 'AF', '؋', ',', '.', NULL, NULL),
(4, 'Argentina', 'Pesos', 'ARS', '$', ',', '.', NULL, NULL),
(5, 'Aruba', 'Guilders', 'AWG', 'ƒ', ',', '.', NULL, NULL),
(6, 'Australia', 'Dollars', 'AUD', '$', ',', '.', NULL, NULL),
(7, 'Azerbaijan', 'New Manats', 'AZ', 'ман', ',', '.', NULL, NULL),
(8, 'Bahamas', 'Dollars', 'BSD', '$', ',', '.', NULL, NULL),
(9, 'Barbados', 'Dollars', 'BBD', '$', ',', '.', NULL, NULL),
(10, 'Belarus', 'Rubles', 'BYR', 'p.', ',', '.', NULL, NULL),
(11, 'Belgium', 'Euro', 'EUR', '€', ',', '.', NULL, NULL),
(12, 'Beliz', 'Dollars', 'BZD', 'BZ$', ',', '.', NULL, NULL),
(13, 'Bermuda', 'Dollars', 'BMD', '$', ',', '.', NULL, NULL),
(14, 'Bolivia', 'Bolivianos', 'BOB', '$b', ',', '.', NULL, NULL),
(15, 'Bosnia and Herzegovina', 'Convertible Marka', 'BAM', 'KM', ',', '.', NULL, NULL),
(16, 'Botswana', 'Pula\'s', 'BWP', 'P', ',', '.', NULL, NULL),
(17, 'Bulgaria', 'Leva', 'BG', 'лв', ',', '.', NULL, NULL),
(18, 'Brazil', 'Reais', 'BRL', 'R$', ',', '.', NULL, NULL),
(19, 'Britain [United Kingdom]', 'Pounds', 'GBP', '£', ',', '.', NULL, NULL),
(20, 'Brunei Darussalam', 'Dollars', 'BND', '$', ',', '.', NULL, NULL),
(21, 'Cambodia', 'Riels', 'KHR', '៛', ',', '.', NULL, NULL),
(22, 'Canada', 'Dollars', 'CAD', '$', ',', '.', NULL, NULL),
(23, 'Cayman Islands', 'Dollars', 'KYD', '$', ',', '.', NULL, NULL),
(24, 'Chile', 'Pesos', 'CLP', '$', ',', '.', NULL, NULL),
(25, 'China', 'Yuan Renminbi', 'CNY', '¥', ',', '.', NULL, NULL),
(26, 'Colombia', 'Pesos', 'COP', '$', ',', '.', NULL, NULL),
(27, 'Costa Rica', 'Colón', 'CRC', '₡', ',', '.', NULL, NULL),
(28, 'Croatia', 'Kuna', 'HRK', 'kn', ',', '.', NULL, NULL),
(29, 'Cuba', 'Pesos', 'CUP', '₱', ',', '.', NULL, NULL),
(30, 'Cyprus', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(31, 'Czech Republic', 'Koruny', 'CZK', 'Kč', ',', '.', NULL, NULL),
(32, 'Denmark', 'Kroner', 'DKK', 'kr', ',', '.', NULL, NULL),
(33, 'Dominican Republic', 'Pesos', 'DOP ', 'RD$', ',', '.', NULL, NULL),
(34, 'East Caribbean', 'Dollars', 'XCD', '$', ',', '.', NULL, NULL),
(35, 'Egypt', 'Pounds', 'EGP', '£', ',', '.', NULL, NULL),
(36, 'El Salvador', 'Colones', 'SVC', '$', ',', '.', NULL, NULL),
(37, 'England [United Kingdom]', 'Pounds', 'GBP', '£', ',', '.', NULL, NULL),
(38, 'Euro', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(39, 'Falkland Islands', 'Pounds', 'FKP', '£', ',', '.', NULL, NULL),
(40, 'Fiji', 'Dollars', 'FJD', '$', ',', '.', NULL, NULL),
(41, 'France', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(42, 'Ghana', 'Cedis', 'GHS', '¢', ',', '.', NULL, NULL),
(43, 'Gibraltar', 'Pounds', 'GIP', '£', ',', '.', NULL, NULL),
(44, 'Greece', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(45, 'Guatemala', 'Quetzales', 'GTQ', 'Q', ',', '.', NULL, NULL),
(46, 'Guernsey', 'Pounds', 'GGP', '£', ',', '.', NULL, NULL),
(47, 'Guyana', 'Dollars', 'GYD', '$', ',', '.', NULL, NULL),
(48, 'Holland [Netherlands]', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(49, 'Honduras', 'Lempiras', 'HNL', 'L', ',', '.', NULL, NULL),
(50, 'Hong Kong', 'Dollars', 'HKD', '$', ',', '.', NULL, NULL),
(51, 'Hungary', 'Forint', 'HUF', 'Ft', ',', '.', NULL, NULL),
(52, 'Iceland', 'Kronur', 'ISK', 'kr', ',', '.', NULL, NULL),
(53, 'India', 'Rupees', 'INR', '₹', ',', '.', NULL, NULL),
(54, 'Indonesia', 'Rupiahs', 'IDR', 'Rp', ',', '.', NULL, NULL),
(55, 'Iran', 'Rials', 'IRR', '﷼', ',', '.', NULL, NULL),
(56, 'Ireland', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(57, 'Isle of Man', 'Pounds', 'IMP', '£', ',', '.', NULL, NULL),
(58, 'Israel', 'New Shekels', 'ILS', '₪', ',', '.', NULL, NULL),
(59, 'Italy', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(60, 'Jamaica', 'Dollars', 'JMD', 'J$', ',', '.', NULL, NULL),
(61, 'Japan', 'Yen', 'JPY', '¥', ',', '.', NULL, NULL),
(62, 'Jersey', 'Pounds', 'JEP', '£', ',', '.', NULL, NULL),
(63, 'Kazakhstan', 'Tenge', 'KZT', 'лв', ',', '.', NULL, NULL),
(64, 'Korea [North]', 'Won', 'KPW', '₩', ',', '.', NULL, NULL),
(65, 'Korea [South]', 'Won', 'KRW', '₩', ',', '.', NULL, NULL),
(66, 'Kyrgyzstan', 'Soms', 'KGS', 'лв', ',', '.', NULL, NULL),
(67, 'Laos', 'Kips', 'LAK', '₭', ',', '.', NULL, NULL),
(68, 'Latvia', 'Lati', 'LVL', 'Ls', ',', '.', NULL, NULL),
(69, 'Lebanon', 'Pounds', 'LBP', '£', ',', '.', NULL, NULL),
(70, 'Liberia', 'Dollars', 'LRD', '$', ',', '.', NULL, NULL),
(71, 'Liechtenstein', 'Switzerland Francs', 'CHF', 'CHF', ',', '.', NULL, NULL),
(72, 'Lithuania', 'Litai', 'LTL', 'Lt', ',', '.', NULL, NULL),
(73, 'Luxembourg', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(74, 'Macedonia', 'Denars', 'MKD', 'ден', ',', '.', NULL, NULL),
(75, 'Malaysia', 'Ringgits', 'MYR', 'RM', ',', '.', NULL, NULL),
(76, 'Malta', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(77, 'Mauritius', 'Rupees', 'MUR', '₨', ',', '.', NULL, NULL),
(78, 'Mexico', 'Pesos', 'MXN', '$', ',', '.', NULL, NULL),
(79, 'Mongolia', 'Tugriks', 'MNT', '₮', ',', '.', NULL, NULL),
(80, 'Mozambique', 'Meticais', 'MZ', 'MT', ',', '.', NULL, NULL),
(81, 'Namibia', 'Dollars', 'NAD', '$', ',', '.', NULL, NULL),
(82, 'Nepal', 'Rupees', 'NPR', '₨', ',', '.', NULL, NULL),
(83, 'Netherlands Antilles', 'Guilders', 'ANG', 'ƒ', ',', '.', NULL, NULL),
(84, 'Netherlands', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(85, 'New Zealand', 'Dollars', 'NZD', '$', ',', '.', NULL, NULL),
(86, 'Nicaragua', 'Cordobas', 'NIO', 'C$', ',', '.', NULL, NULL),
(87, 'Nigeria', 'Nairas', 'NGN', '₦', ',', '.', NULL, NULL),
(88, 'North Korea', 'Won', 'KPW', '₩', ',', '.', NULL, NULL),
(89, 'Norway', 'Krone', 'NOK', 'kr', ',', '.', NULL, NULL),
(90, 'Oman', 'Rials', 'OMR', '﷼', ',', '.', NULL, NULL),
(91, 'Pakistan', 'Rupees', 'PKR', '₨', ',', '.', NULL, NULL),
(92, 'Panama', 'Balboa', 'PAB', 'B/.', ',', '.', NULL, NULL),
(93, 'Paraguay', 'Guarani', 'PYG', 'Gs', ',', '.', NULL, NULL),
(94, 'Peru', 'Nuevos Soles', 'PE', 'S/.', ',', '.', NULL, NULL),
(95, 'Philippines', 'Pesos', 'PHP', 'Php', ',', '.', NULL, NULL),
(96, 'Poland', 'Zlotych', 'PL', 'zł', ',', '.', NULL, NULL),
(97, 'Qatar', 'Rials', 'QAR', '﷼', ',', '.', NULL, NULL),
(98, 'Romania', 'New Lei', 'RO', 'lei', ',', '.', NULL, NULL),
(99, 'Russia', 'Rubles', 'RUB', 'руб', ',', '.', NULL, NULL),
(100, 'Saint Helena', 'Pounds', 'SHP', '£', ',', '.', NULL, NULL),
(101, 'Saudi Arabia', 'Riyals', 'SAR', '﷼', ',', '.', NULL, NULL),
(102, 'Serbia', 'Dinars', 'RSD', 'Дин.', ',', '.', NULL, NULL),
(103, 'Seychelles', 'Rupees', 'SCR', '₨', ',', '.', NULL, NULL),
(104, 'Singapore', 'Dollars', 'SGD', '$', ',', '.', NULL, NULL),
(105, 'Slovenia', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(106, 'Solomon Islands', 'Dollars', 'SBD', '$', ',', '.', NULL, NULL),
(107, 'Somalia', 'Shillings', 'SOS', 'S', ',', '.', NULL, NULL),
(108, 'South Africa', 'Rand', 'ZAR', 'R', ',', '.', NULL, NULL),
(109, 'South Korea', 'Won', 'KRW', '₩', ',', '.', NULL, NULL),
(110, 'Spain', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(111, 'Sri Lanka', 'Rupees', 'LKR', '₨', ',', '.', NULL, NULL),
(112, 'Sweden', 'Kronor', 'SEK', 'kr', ',', '.', NULL, NULL),
(113, 'Switzerland', 'Francs', 'CHF', 'CHF', ',', '.', NULL, NULL),
(114, 'Suriname', 'Dollars', 'SRD', '$', ',', '.', NULL, NULL),
(115, 'Syria', 'Pounds', 'SYP', '£', ',', '.', NULL, NULL),
(116, 'Taiwan', 'New Dollars', 'TWD', 'NT$', ',', '.', NULL, NULL),
(117, 'Thailand', 'Baht', 'THB', '฿', ',', '.', NULL, NULL),
(118, 'Trinidad and Tobago', 'Dollars', 'TTD', 'TT$', ',', '.', NULL, NULL),
(119, 'Turkey', 'Lira', 'TRY', 'TL', ',', '.', NULL, NULL),
(120, 'Turkey', 'Liras', 'TRL', '£', ',', '.', NULL, NULL),
(121, 'Tuvalu', 'Dollars', 'TVD', '$', ',', '.', NULL, NULL),
(122, 'Ukraine', 'Hryvnia', 'UAH', '₴', ',', '.', NULL, NULL),
(123, 'United Kingdom', 'Pounds', 'GBP', '£', ',', '.', NULL, NULL),
(124, 'United States of America', 'Dollars', 'USD', '$', ',', '.', NULL, NULL),
(125, 'Uruguay', 'Pesos', 'UYU', '$U', ',', '.', NULL, NULL),
(126, 'Uzbekistan', 'Sums', 'UZS', 'лв', ',', '.', NULL, NULL),
(127, 'Vatican City', 'Euro', 'EUR', '€', '.', ',', NULL, NULL),
(128, 'Venezuela', 'Bolivares Fuertes', 'VEF', 'Bs', ',', '.', NULL, NULL),
(129, 'Vietnam', 'Dong', 'VND', '₫', ',', '.', NULL, NULL),
(130, 'Yemen', 'Rials', 'YER', '﷼', ',', '.', NULL, NULL),
(131, 'Zimbabwe', 'Zimbabwe Dollars', 'ZWD', 'Z$', ',', '.', NULL, NULL),
(132, 'Iraq', 'Iraqi dinar', 'IQD', 'د.ع', ',', '.', NULL, NULL),
(133, 'Kenya', 'Kenyan shilling', 'KES', 'KSh', ',', '.', NULL, NULL),
(134, 'Bangladesh', 'Taka', 'BDT', '৳', ',', '.', NULL, NULL),
(135, 'Algerie', 'Algerian dinar', 'DZD', 'د.ج', ' ', '.', NULL, NULL),
(136, 'United Arab Emirates', 'United Arab Emirates dirham', 'AED', 'د.إ', ',', '.', NULL, NULL),
(137, 'Uganda', 'Uganda shillings', 'UGX', 'USh', ',', '.', NULL, NULL),
(138, 'Tanzania', 'Tanzanian shilling', 'TZS', 'TSh', ',', '.', NULL, NULL),
(139, 'Angola', 'Kwanza', 'AOA', 'Kz', ',', '.', NULL, NULL),
(140, 'Kuwait', 'Kuwaiti dinar', 'KWD', 'KD', ',', '.', NULL, NULL),
(141, 'Bahrain', 'Bahraini dinar', 'BHD', 'BD', ',', '.', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `customer_groups`
--

CREATE TABLE `customer_groups` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(5,2) NOT NULL,
  `price_calculation_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'percentage',
  `selling_price_group_id` int DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_groups`
--

INSERT INTO `customer_groups` (`id`, `business_id`, `name`, `amount`, `price_calculation_type`, `selling_price_group_id`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Corporate', 0.00, 'percentage', NULL, 2, '2023-07-22 12:07:36', '2023-07-22 12:07:36'),
(2, 1, 'Retail', 0.00, 'percentage', NULL, 2, '2023-07-22 12:07:46', '2023-07-22 12:07:46'),
(3, 1, 'Wholesale', 0.00, 'percentage', NULL, 2, '2023-07-22 12:07:56', '2023-07-22 12:07:56');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard_configurations`
--

CREATE TABLE `dashboard_configurations` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `created_by` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `configuration` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discounts`
--

CREATE TABLE `discounts` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_id` int NOT NULL,
  `brand_id` int DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `location_id` int DEFAULT NULL,
  `priority` int DEFAULT NULL,
  `discount_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `starts_at` datetime DEFAULT NULL,
  `ends_at` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `spg` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Applicable in specified selling price group only. Use of applicable_in_spg column is discontinued',
  `applicable_in_cg` tinyint(1) DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `discount_variations`
--

CREATE TABLE `discount_variations` (
  `discount_id` int NOT NULL,
  `variation_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `displacement_engine_ccs`
--

CREATE TABLE `displacement_engine_ccs` (
  `id` bigint UNSIGNED NOT NULL,
  `cc` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `displacement_engine_ccs`
--

INSERT INTO `displacement_engine_ccs` (`id`, `cc`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '160', 1, '2023-08-16 07:25:21', '2023-08-16 07:27:02'),
(3, '120', 1, '2023-08-25 09:05:12', '2023-08-25 09:05:12'),
(4, '1500', 1, '2023-08-26 03:26:49', '2023-08-26 03:26:49');

-- --------------------------------------------------------

--
-- Table structure for table `document_and_notes`
--

CREATE TABLE `document_and_notes` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int NOT NULL,
  `notable_id` int NOT NULL,
  `notable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `heading` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_allowances_and_deductions`
--

CREATE TABLE `essentials_allowances_and_deductions` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('allowance','deduction') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(22,4) NOT NULL,
  `amount_type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci NOT NULL,
  `applicable_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_attendances`
--

CREATE TABLE `essentials_attendances` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `business_id` int NOT NULL,
  `clock_in_time` datetime DEFAULT NULL,
  `clock_out_time` datetime DEFAULT NULL,
  `essentials_shift_id` int DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clock_in_note` text COLLATE utf8mb4_unicode_ci,
  `clock_out_note` text COLLATE utf8mb4_unicode_ci,
  `clock_in_location` text COLLATE utf8mb4_unicode_ci,
  `clock_out_location` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_documents`
--

CREATE TABLE `essentials_documents` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int NOT NULL,
  `user_id` int NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_document_shares`
--

CREATE TABLE `essentials_document_shares` (
  `id` int UNSIGNED NOT NULL,
  `document_id` int NOT NULL,
  `value_type` enum('user','role') COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_holidays`
--

CREATE TABLE `essentials_holidays` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `business_id` int NOT NULL,
  `location_id` int DEFAULT NULL,
  `note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_kb`
--

CREATE TABLE `essentials_kb` (
  `id` bigint UNSIGNED NOT NULL,
  `business_id` bigint UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kb_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` bigint UNSIGNED DEFAULT NULL COMMENT 'id from essentials_kb table',
  `share_with` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'public, private, only_with',
  `created_by` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_kb_users`
--

CREATE TABLE `essentials_kb_users` (
  `id` bigint UNSIGNED NOT NULL,
  `kb_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_leaves`
--

CREATE TABLE `essentials_leaves` (
  `id` int UNSIGNED NOT NULL,
  `essentials_leave_type_id` int DEFAULT NULL,
  `business_id` int NOT NULL,
  `user_id` int NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `ref_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('pending','approved','cancelled') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reason` text COLLATE utf8mb4_unicode_ci,
  `status_note` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_leave_types`
--

CREATE TABLE `essentials_leave_types` (
  `id` int UNSIGNED NOT NULL,
  `leave_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_leave_count` int DEFAULT NULL,
  `leave_count_interval` enum('month','year') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_messages`
--

CREATE TABLE `essentials_messages` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int NOT NULL,
  `user_id` int NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_payroll_groups`
--

CREATE TABLE `essentials_payroll_groups` (
  `id` bigint UNSIGNED NOT NULL,
  `business_id` int NOT NULL,
  `location_id` int DEFAULT NULL COMMENT 'payroll for work location',
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'due',
  `gross_total` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `created_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_payroll_group_transactions`
--

CREATE TABLE `essentials_payroll_group_transactions` (
  `payroll_group_id` bigint UNSIGNED NOT NULL,
  `transaction_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_reminders`
--

CREATE TABLE `essentials_reminders` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int NOT NULL,
  `user_id` int NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL,
  `end_time` time DEFAULT NULL,
  `repeat` enum('one_time','every_day','every_week','every_month') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_shifts`
--

CREATE TABLE `essentials_shifts` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` enum('fixed_shift','flexible_shift') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed_shift',
  `business_id` int NOT NULL,
  `start_time` time DEFAULT NULL,
  `end_time` time DEFAULT NULL,
  `is_allowed_auto_clockout` tinyint(1) NOT NULL DEFAULT '0',
  `auto_clockout_time` time DEFAULT NULL,
  `holidays` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_todos_users`
--

CREATE TABLE `essentials_todos_users` (
  `todo_id` int NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_todo_comments`
--

CREATE TABLE `essentials_todo_comments` (
  `id` int UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `task_id` int NOT NULL,
  `comment_by` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_to_dos`
--

CREATE TABLE `essentials_to_dos` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int NOT NULL,
  `task` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `task_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estimated_hours` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_user_allowance_and_deductions`
--

CREATE TABLE `essentials_user_allowance_and_deductions` (
  `user_id` int NOT NULL,
  `allowance_deduction_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `essentials_user_sales_targets`
--

CREATE TABLE `essentials_user_sales_targets` (
  `id` bigint UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `target_start` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `target_end` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `commission_percent` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `essentials_user_sales_targets`
--

INSERT INTO `essentials_user_sales_targets` (`id`, `user_id`, `target_start`, `target_end`, `commission_percent`, `created_at`, `updated_at`) VALUES
(1, 2, 100000.0000, 0.0000, 0.0000, '2023-08-06 18:51:44', '2023-08-06 18:51:44');

-- --------------------------------------------------------

--
-- Table structure for table `essentials_user_shifts`
--

CREATE TABLE `essentials_user_shifts` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `essentials_shift_id` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expense_categories`
--

CREATE TABLE `expense_categories` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `expense_categories`
--

INSERT INTO `expense_categories` (`id`, `name`, `business_id`, `code`, `parent_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Shop Rent', 1, 'Rent', NULL, NULL, '2023-07-22 12:09:14', '2023-07-22 12:09:14'),
(2, 'Internet Bill', 1, 'Bill', NULL, NULL, '2023-07-22 12:09:29', '2023-07-22 12:09:29'),
(3, 'Service Charge', 1, 'Service Charge', NULL, NULL, '2023-07-22 12:09:52', '2023-07-22 12:09:52'),
(4, 'Entertainment', 1, 'Entertainment', NULL, NULL, '2023-07-22 12:10:25', '2023-07-22 12:10:25'),
(5, 'Mobile Phone Bill', 1, 'Mobile Phone Bill', NULL, NULL, '2023-07-22 12:13:07', '2023-07-22 12:13:07'),
(6, 'Utility Bill', 1, 'Utility Bill', NULL, NULL, '2023-07-22 12:13:56', '2023-07-22 12:13:56'),
(7, 'Current Bill', 1, 'CB', 6, NULL, '2023-07-22 12:55:07', '2023-07-22 12:55:07');

-- --------------------------------------------------------

--
-- Table structure for table `exterior_colors`
--

CREATE TABLE `exterior_colors` (
  `id` bigint UNSIGNED NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `exterior_colors`
--

INSERT INTO `exterior_colors` (`id`, `color`, `color_code`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'Black', '#000', 1, '2023-08-16 09:15:21', '2023-08-16 09:15:21');

-- --------------------------------------------------------

--
-- Table structure for table `foregin_purchases`
--

CREATE TABLE `foregin_purchases` (
  `id` bigint UNSIGNED NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `lot_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` int DEFAULT NULL,
  `source_of_product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_order_id` int DEFAULT NULL,
  `vehicle_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_condition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_id` int DEFAULT NULL,
  `packge_trim_id` int DEFAULT NULL,
  `chassis_id` int DEFAULT NULL,
  `engine_id` int DEFAULT NULL,
  `year_of_manufacture` int DEFAULT NULL,
  `exterior_color_id` int DEFAULT NULL,
  `interior_color_id` int DEFAULT NULL,
  `millage` int DEFAULT NULL,
  `action_grade` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seating_capacity` int DEFAULT NULL,
  `tyre_size_id` int DEFAULT NULL,
  `tracking_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing_information` json DEFAULT NULL,
  `vehicle_price` int DEFAULT NULL,
  `total_estimated_cost` int DEFAULT NULL,
  `total_cost` int DEFAULT NULL,
  `margin` int DEFAULT NULL,
  `sale_price` int DEFAULT NULL,
  `vehicle_location_id` int DEFAULT NULL,
  `vehicle_location_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lc_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wholesale_discount` int DEFAULT NULL,
  `wholesale_price` int DEFAULT NULL,
  `sale_price_note` text COLLATE utf8mb4_unicode_ci,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `foregin_purchases`
--

INSERT INTO `foregin_purchases` (`id`, `purchase_date`, `lot_number`, `supplier`, `source_of_product`, `pre_order_id`, `vehicle_type`, `vehicle_condition`, `vehicle_id`, `packge_trim_id`, `chassis_id`, `engine_id`, `year_of_manufacture`, `exterior_color_id`, `interior_color_id`, `millage`, `action_grade`, `seating_capacity`, `tyre_size_id`, `tracking_code`, `vehicle_image`, `vehicle_description`, `pricing_information`, `vehicle_price`, `total_estimated_cost`, `total_cost`, `margin`, `sale_price`, `vehicle_location_id`, `vehicle_location_name`, `sale_status`, `lc_status`, `wholesale_discount`, `wholesale_price`, `sale_price_note`, `created_by`, `created_at`, `updated_at`) VALUES
(1, '2023-08-28', 'asdf', 8, 'Pre Order', 1, 'Bike', 'Recondition', 2, NULL, 0, NULL, 2011, NULL, NULL, 23, '2030', NULL, NULL, NULL, NULL, NULL, '[{\"amount\": \"35\", \"cost_type\": \"Duty\"}]', 2222, 35, 2257, -2222, 4444, NULL, 'asdfas', 'Sold', 'Pending', 44, 4400, NULL, 1, '2023-08-28 11:09:04', '2023-08-28 11:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `group_sub_taxes`
--

CREATE TABLE `group_sub_taxes` (
  `group_tax_id` int UNSIGNED NOT NULL,
  `tax_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `group_sub_taxes`
--

INSERT INTO `group_sub_taxes` (`group_tax_id`, `tax_id`) VALUES
(2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `interior_colors`
--

CREATE TABLE `interior_colors` (
  `id` bigint UNSIGNED NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `interior_colors`
--

INSERT INTO `interior_colors` (`id`, `color`, `color_code`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Black', '#000', 1, '2023-08-16 08:43:30', '2023-08-16 08:43:30');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_layouts`
--

CREATE TABLE `invoice_layouts` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `header_text` text COLLATE utf8mb4_unicode_ci,
  `invoice_no_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_no_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading_line1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading_line2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading_line3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading_line4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_heading_line5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_heading_not_paid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `invoice_heading_paid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quotation_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_total_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `round_off_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_due_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_client_id` tinyint(1) NOT NULL DEFAULT '0',
  `client_id_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_tax_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_time_format` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_time` tinyint(1) NOT NULL DEFAULT '1',
  `show_brand` tinyint(1) NOT NULL DEFAULT '0',
  `show_sku` tinyint(1) NOT NULL DEFAULT '1',
  `show_cat_code` tinyint(1) NOT NULL DEFAULT '1',
  `show_expiry` tinyint(1) NOT NULL DEFAULT '0',
  `show_lot` tinyint(1) NOT NULL DEFAULT '0',
  `show_image` tinyint(1) NOT NULL DEFAULT '0',
  `show_sale_description` tinyint(1) NOT NULL DEFAULT '0',
  `sales_person_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_sales_person` tinyint(1) NOT NULL DEFAULT '0',
  `table_product_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_qty_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_unit_price_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_subtotal_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_code_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_logo` tinyint(1) NOT NULL DEFAULT '0',
  `show_business_name` tinyint(1) NOT NULL DEFAULT '0',
  `show_location_name` tinyint(1) NOT NULL DEFAULT '1',
  `show_landmark` tinyint(1) NOT NULL DEFAULT '1',
  `show_city` tinyint(1) NOT NULL DEFAULT '1',
  `show_state` tinyint(1) NOT NULL DEFAULT '1',
  `show_zip_code` tinyint(1) NOT NULL DEFAULT '1',
  `show_country` tinyint(1) NOT NULL DEFAULT '1',
  `show_mobile_number` tinyint(1) NOT NULL DEFAULT '1',
  `show_alternate_number` tinyint(1) NOT NULL DEFAULT '0',
  `show_email` tinyint(1) NOT NULL DEFAULT '0',
  `show_tax_1` tinyint(1) NOT NULL DEFAULT '1',
  `show_tax_2` tinyint(1) NOT NULL DEFAULT '0',
  `show_barcode` tinyint(1) NOT NULL DEFAULT '0',
  `show_payments` tinyint(1) NOT NULL DEFAULT '0',
  `show_customer` tinyint(1) NOT NULL DEFAULT '0',
  `customer_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `commission_agent_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_commission_agent` tinyint(1) NOT NULL DEFAULT '0',
  `show_reward_point` tinyint(1) NOT NULL DEFAULT '0',
  `highlight_color` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `footer_text` text COLLATE utf8mb4_unicode_ci,
  `module_info` text COLLATE utf8mb4_unicode_ci,
  `common_settings` text COLLATE utf8mb4_unicode_ci,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `business_id` int UNSIGNED NOT NULL,
  `show_letter_head` tinyint(1) NOT NULL DEFAULT '0',
  `letter_head` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `show_qr_code` tinyint(1) NOT NULL DEFAULT '0',
  `qr_code_fields` text COLLATE utf8mb4_unicode_ci,
  `design` varchar(190) COLLATE utf8mb4_unicode_ci DEFAULT 'classic',
  `cn_heading` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'cn = credit note',
  `cn_no_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cn_amount_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `table_tax_headings` text COLLATE utf8mb4_unicode_ci,
  `show_previous_bal` tinyint(1) NOT NULL DEFAULT '0',
  `prev_bal_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `change_return_label` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_fields` text COLLATE utf8mb4_unicode_ci,
  `contact_custom_fields` text COLLATE utf8mb4_unicode_ci,
  `location_custom_fields` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_layouts`
--

INSERT INTO `invoice_layouts` (`id`, `name`, `header_text`, `invoice_no_prefix`, `quotation_no_prefix`, `invoice_heading`, `sub_heading_line1`, `sub_heading_line2`, `sub_heading_line3`, `sub_heading_line4`, `sub_heading_line5`, `invoice_heading_not_paid`, `invoice_heading_paid`, `quotation_heading`, `sub_total_label`, `discount_label`, `tax_label`, `total_label`, `round_off_label`, `total_due_label`, `paid_label`, `show_client_id`, `client_id_label`, `client_tax_label`, `date_label`, `date_time_format`, `show_time`, `show_brand`, `show_sku`, `show_cat_code`, `show_expiry`, `show_lot`, `show_image`, `show_sale_description`, `sales_person_label`, `show_sales_person`, `table_product_label`, `table_qty_label`, `table_unit_price_label`, `table_subtotal_label`, `cat_code_label`, `logo`, `show_logo`, `show_business_name`, `show_location_name`, `show_landmark`, `show_city`, `show_state`, `show_zip_code`, `show_country`, `show_mobile_number`, `show_alternate_number`, `show_email`, `show_tax_1`, `show_tax_2`, `show_barcode`, `show_payments`, `show_customer`, `customer_label`, `commission_agent_label`, `show_commission_agent`, `show_reward_point`, `highlight_color`, `footer_text`, `module_info`, `common_settings`, `is_default`, `business_id`, `show_letter_head`, `letter_head`, `show_qr_code`, `qr_code_fields`, `design`, `cn_heading`, `cn_no_label`, `cn_amount_label`, `table_tax_headings`, `show_previous_bal`, `prev_bal_label`, `change_return_label`, `product_custom_fields`, `contact_custom_fields`, `location_custom_fields`, `created_at`, `updated_at`) VALUES
(1, 'Default', NULL, 'Invoice No.', NULL, 'Invoice', NULL, NULL, NULL, NULL, NULL, '', '', NULL, 'Subtotal', 'Discount', 'Tax', 'Total', NULL, 'Total Due', 'Total Paid', 0, NULL, NULL, 'Date', NULL, 1, 0, 1, 1, 0, 0, 0, 0, NULL, 0, 'Product', 'Quantity', 'Unit Price', 'Subtotal', NULL, NULL, 0, 0, 1, 1, 1, 1, 1, 1, 1, 0, 0, 1, 0, 0, 1, 1, 'Customer', NULL, 0, 0, '#000000', '', NULL, NULL, 1, 1, 0, NULL, 0, NULL, 'classic', NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2023-06-13 13:55:56', '2023-06-13 13:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_schemes`
--

CREATE TABLE `invoice_schemes` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `scheme_type` enum('blank','year') COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sequential',
  `prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_number` int DEFAULT NULL,
  `invoice_count` int NOT NULL DEFAULT '0',
  `total_digits` int DEFAULT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_schemes`
--

INSERT INTO `invoice_schemes` (`id`, `business_id`, `name`, `scheme_type`, `number_type`, `prefix`, `start_number`, `invoice_count`, `total_digits`, `is_default`, `created_at`, `updated_at`) VALUES
(1, 1, 'Default', 'blank', 'sequential', '', 1, 0, 4, 1, '2023-06-13 13:55:56', '2023-06-13 13:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `local_purchases`
--

CREATE TABLE `local_purchases` (
  `id` bigint UNSIGNED NOT NULL,
  `purchase_date` date DEFAULT NULL,
  `purchase_form` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `supplier` int DEFAULT NULL,
  `invoice_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_mode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remarks` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source_of_product` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pre_order_id` int DEFAULT NULL,
  `vehicle_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_condition` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_id` int DEFAULT NULL,
  `packge_trim_id` int DEFAULT NULL,
  `chassis_id` int DEFAULT NULL,
  `engine_id` int DEFAULT NULL,
  `year_of_manufacture` int DEFAULT NULL,
  `exterior_color_id` int DEFAULT NULL,
  `interior_color_id` int DEFAULT NULL,
  `millage` int DEFAULT NULL,
  `action_grade` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registration_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seating_capacity` int DEFAULT NULL,
  `tyre_size_id` int DEFAULT NULL,
  `tracking_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pricing_information` json DEFAULT NULL,
  `vehicle_price` int DEFAULT NULL,
  `total_estimated_cost` int DEFAULT NULL,
  `total_cost` int DEFAULT NULL,
  `margin` int DEFAULT NULL,
  `sale_price` int DEFAULT NULL,
  `sale_price_note` text COLLATE utf8mb4_unicode_ci,
  `vehicle_location_id` int DEFAULT NULL,
  `vehicle_location_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_field_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sale_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `wholesale_discount` int DEFAULT NULL,
  `wholesale_price` int DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `local_purchases`
--

INSERT INTO `local_purchases` (`id`, `purchase_date`, `purchase_form`, `supplier`, `invoice_number`, `purchase_mode`, `remarks`, `source_of_product`, `pre_order_id`, `vehicle_type`, `vehicle_condition`, `vehicle_id`, `packge_trim_id`, `chassis_id`, `engine_id`, `year_of_manufacture`, `exterior_color_id`, `interior_color_id`, `millage`, `action_grade`, `registration_no`, `registration_year`, `seating_capacity`, `tyre_size_id`, `tracking_code`, `vehicle_image`, `vehicle_description`, `pricing_information`, `vehicle_price`, `total_estimated_cost`, `total_cost`, `margin`, `sale_price`, `sale_price_note`, `vehicle_location_id`, `vehicle_location_name`, `tracking_field_name`, `sale_status`, `payment_status`, `wholesale_discount`, `wholesale_price`, `created_by`, `created_at`, `updated_at`) VALUES
(2, '2010-09-11', 'Supplier', 2, '202308280001', 'Purchase', '891', 'Pre Order', NULL, 'Passenger', 'Used', 6, 3, 891, 462, 1992, 2, NULL, 0, '0', NULL, NULL, 17, 2, '466', NULL, 'Esse consectetur ex', '[{\"amount\": \"337\", \"cost_type\": \"C&F Bill\"}]', 818, 337, 1155, -845, 2000, NULL, 1, NULL, 'on', NULL, NULL, 361, 1639, 1, '2023-08-28 08:50:25', '2023-08-28 08:50:25'),
(3, '2023-08-28', 'Supplier', 2, '202308280002', 'Purchase', '', 'Pre Order', 0, 'Bike', 'Recondition', 2, 0, 0, 0, 2024, 0, 0, 23, '2030', '', '', 0, 0, '', NULL, '', '\"\"', 2000, 50, 2050, -950, 3000, NULL, 0, 'ksdfjsld', '', NULL, NULL, 50, 2950, 1, '2023-08-28 08:52:24', '2023-08-28 10:21:56');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int NOT NULL,
  `file_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `uploaded_by` int DEFAULT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_media_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
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
(8, '2017_07_05_071953_create_currencies_table', 1),
(9, '2017_07_05_073658_create_business_table', 1),
(10, '2017_07_22_075923_add_business_id_users_table', 1),
(11, '2017_07_23_113209_create_brands_table', 1),
(12, '2017_07_26_083429_create_permission_tables', 1),
(13, '2017_07_26_110000_create_tax_rates_table', 1),
(14, '2017_07_26_122313_create_units_table', 1),
(15, '2017_07_27_075706_create_contacts_table', 1),
(16, '2017_08_04_071038_create_categories_table', 1),
(17, '2017_08_08_115903_create_products_table', 1),
(18, '2017_08_09_061616_create_variation_templates_table', 1),
(19, '2017_08_09_061638_create_variation_value_templates_table', 1),
(20, '2017_08_10_061146_create_product_variations_table', 1),
(21, '2017_08_10_061216_create_variations_table', 1),
(22, '2017_08_19_054827_create_transactions_table', 1),
(23, '2017_08_31_073533_create_purchase_lines_table', 1),
(24, '2017_10_15_064638_create_transaction_payments_table', 1),
(25, '2017_10_31_065621_add_default_sales_tax_to_business_table', 1),
(26, '2017_11_20_051930_create_table_group_sub_taxes', 1),
(27, '2017_11_20_063603_create_transaction_sell_lines', 1),
(28, '2017_11_21_064540_create_barcodes_table', 1),
(29, '2017_11_23_181237_create_invoice_schemes_table', 1),
(30, '2017_12_25_122822_create_business_locations_table', 1),
(31, '2017_12_25_160253_add_location_id_to_transactions_table', 1),
(32, '2017_12_25_163227_create_variation_location_details_table', 1),
(33, '2018_01_04_115627_create_sessions_table', 1),
(34, '2018_01_05_112817_create_invoice_layouts_table', 1),
(35, '2018_01_06_112303_add_invoice_scheme_id_and_invoice_layout_id_to_business_locations', 1),
(36, '2018_01_08_104124_create_expense_categories_table', 1),
(37, '2018_01_08_123327_modify_transactions_table_for_expenses', 1),
(38, '2018_01_09_111005_modify_payment_status_in_transactions_table', 1),
(39, '2018_01_09_111109_add_paid_on_column_to_transaction_payments_table', 1),
(40, '2018_01_25_172439_add_printer_related_fields_to_business_locations_table', 1),
(41, '2018_01_27_184322_create_printers_table', 1),
(42, '2018_01_30_181442_create_cash_registers_table', 1),
(43, '2018_01_31_125836_create_cash_register_transactions_table', 1),
(44, '2018_02_07_173326_modify_business_table', 1),
(45, '2018_02_08_105425_add_enable_product_expiry_column_to_business_table', 1),
(46, '2018_02_08_111027_add_expiry_period_and_expiry_period_type_columns_to_products_table', 1),
(47, '2018_02_08_131118_add_mfg_date_and_exp_date_purchase_lines_table', 1),
(48, '2018_02_08_155348_add_exchange_rate_to_transactions_table', 1),
(49, '2018_02_09_124945_modify_transaction_payments_table_for_contact_payments', 1),
(50, '2018_02_12_113640_create_transaction_sell_lines_purchase_lines_table', 1),
(51, '2018_02_12_114605_add_quantity_sold_in_purchase_lines_table', 1),
(52, '2018_02_13_183323_alter_decimal_fields_size', 1),
(53, '2018_02_14_161928_add_transaction_edit_days_to_business_table', 1),
(54, '2018_02_15_161032_add_document_column_to_transactions_table', 1),
(55, '2018_02_17_124709_add_more_options_to_invoice_layouts', 1),
(56, '2018_02_19_111517_add_keyboard_shortcut_column_to_business_table', 1),
(57, '2018_02_19_121537_stock_adjustment_move_to_transaction_table', 1),
(58, '2018_02_20_165505_add_is_direct_sale_column_to_transactions_table', 1),
(59, '2018_02_21_105329_create_system_table', 1),
(60, '2018_02_23_100549_version_1_2', 1),
(61, '2018_02_23_125648_add_enable_editing_sp_from_purchase_column_to_business_table', 1),
(62, '2018_02_26_103612_add_sales_commission_agent_column_to_business_table', 1),
(63, '2018_02_26_130519_modify_users_table_for_sales_cmmsn_agnt', 1),
(64, '2018_02_26_134500_add_commission_agent_to_transactions_table', 1),
(65, '2018_02_27_121422_add_item_addition_method_to_business_table', 1),
(66, '2018_02_27_170232_modify_transactions_table_for_stock_transfer', 1),
(67, '2018_03_05_153510_add_enable_inline_tax_column_to_business_table', 1),
(68, '2018_03_06_210206_modify_product_barcode_types', 1),
(69, '2018_03_13_181541_add_expiry_type_to_business_table', 1),
(70, '2018_03_16_113446_product_expiry_setting_for_business', 1),
(71, '2018_03_19_113601_add_business_settings_options', 1),
(72, '2018_03_26_125334_add_pos_settings_to_business_table', 1),
(73, '2018_03_26_165350_create_customer_groups_table', 1),
(74, '2018_03_27_122720_customer_group_related_changes_in_tables', 1),
(75, '2018_03_29_110138_change_tax_field_to_nullable_in_business_table', 1),
(76, '2018_03_29_115502_add_changes_for_sr_number_in_products_and_sale_lines_table', 1),
(77, '2018_03_29_134340_add_inline_discount_fields_in_purchase_lines', 1),
(78, '2018_03_31_140921_update_transactions_table_exchange_rate', 1),
(79, '2018_04_03_103037_add_contact_id_to_contacts_table', 1),
(80, '2018_04_03_122709_add_changes_to_invoice_layouts_table', 1),
(81, '2018_04_09_135320_change_exchage_rate_size_in_business_table', 1),
(82, '2018_04_17_123122_add_lot_number_to_business', 1),
(83, '2018_04_17_160845_add_product_racks_table', 1),
(84, '2018_04_20_182015_create_res_tables_table', 1),
(85, '2018_04_24_105246_restaurant_fields_in_transaction_table', 1),
(86, '2018_04_24_114149_add_enabled_modules_business_table', 1),
(87, '2018_04_24_133704_add_modules_fields_in_invoice_layout_table', 1),
(88, '2018_04_27_132653_quotation_related_change', 1),
(89, '2018_05_02_104439_add_date_format_and_time_format_to_business', 1),
(90, '2018_05_02_111939_add_sell_return_to_transaction_payments', 1),
(91, '2018_05_14_114027_add_rows_positions_for_products', 1),
(92, '2018_05_14_125223_add_weight_to_products_table', 1),
(93, '2018_05_14_164754_add_opening_stock_permission', 1),
(94, '2018_05_15_134729_add_design_to_invoice_layouts', 1),
(95, '2018_05_16_183307_add_tax_fields_invoice_layout', 1),
(96, '2018_05_18_191956_add_sell_return_to_transaction_table', 1),
(97, '2018_05_21_131349_add_custom_fileds_to_contacts_table', 1),
(98, '2018_05_21_131607_invoice_layout_fields_for_sell_return', 1),
(99, '2018_05_21_131949_add_custom_fileds_and_website_to_business_locations_table', 1),
(100, '2018_05_22_123527_create_reference_counts_table', 1),
(101, '2018_05_22_154540_add_ref_no_prefixes_column_to_business_table', 1),
(102, '2018_05_24_132620_add_ref_no_column_to_transaction_payments_table', 1),
(103, '2018_05_24_161026_add_location_id_column_to_business_location_table', 1),
(104, '2018_05_25_180603_create_modifiers_related_table', 1),
(105, '2018_05_29_121714_add_purchase_line_id_to_stock_adjustment_line_table', 1),
(106, '2018_05_31_114645_add_res_order_status_column_to_transactions_table', 1),
(107, '2018_06_05_103530_rename_purchase_line_id_in_stock_adjustment_lines_table', 1),
(108, '2018_06_05_111905_modify_products_table_for_modifiers', 1),
(109, '2018_06_06_110524_add_parent_sell_line_id_column_to_transaction_sell_lines_table', 1),
(110, '2018_06_07_152443_add_is_service_staff_to_roles_table', 1),
(111, '2018_06_07_182258_add_image_field_to_products_table', 1),
(112, '2018_06_13_133705_create_bookings_table', 1),
(113, '2018_06_15_173636_add_email_column_to_contacts_table', 1),
(114, '2018_06_27_182835_add_superadmin_related_fields_business', 1),
(115, '2018_07_10_101913_add_custom_fields_to_products_table', 1),
(116, '2018_07_17_103434_add_sales_person_name_label_to_invoice_layouts_table', 1),
(117, '2018_07_17_163920_add_theme_skin_color_column_to_business_table', 1),
(118, '2018_07_24_160319_add_lot_no_line_id_to_transaction_sell_lines_table', 1),
(119, '2018_07_25_110004_add_show_expiry_and_show_lot_colums_to_invoice_layouts_table', 1),
(120, '2018_07_25_172004_add_discount_columns_to_transaction_sell_lines_table', 1),
(121, '2018_07_26_124720_change_design_column_type_in_invoice_layouts_table', 1),
(122, '2018_07_26_170424_add_unit_price_before_discount_column_to_transaction_sell_line_table', 1),
(123, '2018_07_28_103614_add_credit_limit_column_to_contacts_table', 1),
(124, '2018_08_08_110755_add_new_payment_methods_to_transaction_payments_table', 1),
(125, '2018_08_08_122225_modify_cash_register_transactions_table_for_new_payment_methods', 1),
(126, '2018_08_14_104036_add_opening_balance_type_to_transactions_table', 1),
(127, '2018_09_04_155900_create_accounts_table', 1),
(128, '2018_09_06_114438_create_selling_price_groups_table', 1),
(129, '2018_09_06_154057_create_variation_group_prices_table', 1),
(130, '2018_09_07_102413_add_permission_to_access_default_selling_price', 1),
(131, '2018_09_07_134858_add_selling_price_group_id_to_transactions_table', 1),
(132, '2018_09_10_112448_update_product_type_to_single_if_null_in_products_table', 1),
(133, '2018_09_10_152703_create_account_transactions_table', 1),
(134, '2018_09_10_173656_add_account_id_column_to_transaction_payments_table', 1),
(135, '2018_09_19_123914_create_notification_templates_table', 1),
(136, '2018_09_22_110504_add_sms_and_email_settings_columns_to_business_table', 1),
(137, '2018_09_24_134942_add_lot_no_line_id_to_stock_adjustment_lines_table', 1),
(138, '2018_09_26_105557_add_transaction_payments_for_existing_expenses', 1),
(139, '2018_09_27_111609_modify_transactions_table_for_purchase_return', 1),
(140, '2018_09_27_131154_add_quantity_returned_column_to_purchase_lines_table', 1),
(141, '2018_10_02_131401_add_return_quantity_column_to_transaction_sell_lines_table', 1),
(142, '2018_10_03_104918_add_qty_returned_column_to_transaction_sell_lines_purchase_lines_table', 1),
(143, '2018_10_03_185947_add_default_notification_templates_to_database', 1),
(144, '2018_10_09_153105_add_business_id_to_transaction_payments_table', 1),
(145, '2018_10_16_135229_create_permission_for_sells_and_purchase', 1),
(146, '2018_10_22_114441_add_columns_for_variable_product_modifications', 1),
(147, '2018_10_22_134428_modify_variable_product_data', 1),
(148, '2018_10_30_181558_add_table_tax_headings_to_invoice_layout', 1),
(149, '2018_10_31_122619_add_pay_terms_field_transactions_table', 1),
(150, '2018_10_31_161328_add_new_permissions_for_pos_screen', 1),
(151, '2018_10_31_174752_add_access_selected_contacts_only_to_users_table', 1),
(152, '2018_10_31_175627_add_user_contact_access', 1),
(153, '2018_10_31_180559_add_auto_send_sms_column_to_notification_templates_table', 1),
(154, '2018_11_02_171949_change_card_type_column_to_varchar_in_transaction_payments_table', 1),
(155, '2018_11_08_105621_add_role_permissions', 1),
(156, '2018_11_26_114135_add_is_suspend_column_to_transactions_table', 1),
(157, '2018_11_28_104410_modify_units_table_for_multi_unit', 1),
(158, '2018_11_28_170952_add_sub_unit_id_to_purchase_lines_and_sell_lines', 1),
(159, '2018_11_29_115918_add_primary_key_in_system_table', 1),
(160, '2018_12_03_185546_add_product_description_column_to_products_table', 1),
(161, '2018_12_06_114937_modify_system_table_and_users_table', 1),
(162, '2018_12_13_160007_add_custom_fields_display_options_to_invoice_layouts_table', 1),
(163, '2018_12_14_103307_modify_system_table', 1),
(164, '2018_12_18_133837_add_prev_balance_due_columns_to_invoice_layouts_table', 1),
(165, '2018_12_18_170656_add_invoice_token_column_to_transaction_table', 1),
(166, '2018_12_20_133639_add_date_time_format_column_to_invoice_layouts_table', 1),
(167, '2018_12_21_120659_add_recurring_invoice_fields_to_transactions_table', 1),
(168, '2018_12_24_154933_create_notifications_table', 1),
(169, '2019_01_08_112015_add_document_column_to_transaction_payments_table', 1),
(170, '2019_01_10_124645_add_account_permission', 1),
(171, '2019_01_16_125825_add_subscription_no_column_to_transactions_table', 1),
(172, '2019_01_28_111647_add_order_addresses_column_to_transactions_table', 1),
(173, '2019_02_13_173821_add_is_inactive_column_to_products_table', 1),
(174, '2019_02_19_103118_create_discounts_table', 1),
(175, '2019_02_21_120324_add_discount_id_column_to_transaction_sell_lines_table', 1),
(176, '2019_02_21_134324_add_permission_for_discount', 1),
(177, '2019_03_04_170832_add_service_staff_columns_to_transaction_sell_lines_table', 1),
(178, '2019_03_09_102425_add_sub_type_column_to_transactions_table', 1),
(179, '2019_03_09_124457_add_indexing_transaction_sell_lines_purchase_lines_table', 1),
(180, '2019_03_12_120336_create_activity_log_table', 1),
(181, '2019_03_15_132925_create_media_table', 1),
(182, '2019_05_08_130339_add_indexing_to_parent_id_in_transaction_payments_table', 1),
(183, '2019_05_10_132311_add_missing_column_indexing', 1),
(184, '2019_05_14_091812_add_show_image_column_to_invoice_layouts_table', 1),
(185, '2019_05_25_104922_add_view_purchase_price_permission', 1),
(186, '2019_06_17_103515_add_profile_informations_columns_to_users_table', 1),
(187, '2019_06_18_135524_add_permission_to_view_own_sales_only', 1),
(188, '2019_06_19_112058_add_database_changes_for_reward_points', 1),
(189, '2019_06_28_133732_change_type_column_to_string_in_transactions_table', 1),
(190, '2019_07_13_111420_add_is_created_from_api_column_to_transactions_table', 1),
(191, '2019_07_15_165136_add_fields_for_combo_product', 1),
(192, '2019_07_19_103446_add_mfg_quantity_used_column_to_purchase_lines_table', 1),
(193, '2019_07_22_152649_add_not_for_selling_in_product_table', 1),
(194, '2019_07_29_185351_add_show_reward_point_column_to_invoice_layouts_table', 1),
(195, '2019_08_08_162302_add_sub_units_related_fields', 1),
(196, '2019_08_26_133419_update_price_fields_decimal_point', 1),
(197, '2019_09_02_160054_remove_location_permissions_from_roles', 1),
(198, '2019_09_03_185259_add_permission_for_pos_screen', 1),
(199, '2019_09_04_163141_add_location_id_to_cash_registers_table', 1),
(200, '2019_09_04_184008_create_types_of_services_table', 1),
(201, '2019_09_06_131445_add_types_of_service_fields_to_transactions_table', 1),
(202, '2019_09_09_134810_add_default_selling_price_group_id_column_to_business_locations_table', 1),
(203, '2019_09_12_105616_create_product_locations_table', 1),
(204, '2019_09_17_122522_add_custom_labels_column_to_business_table', 1),
(205, '2019_09_18_164319_add_shipping_fields_to_transactions_table', 1),
(206, '2019_09_19_170927_close_all_active_registers', 1),
(207, '2019_09_23_161906_add_media_description_cloumn_to_media_table', 1),
(208, '2019_10_18_155633_create_account_types_table', 1),
(209, '2019_10_22_163335_add_common_settings_column_to_business_table', 1),
(210, '2019_10_29_132521_add_update_purchase_status_permission', 1),
(211, '2019_11_09_110522_add_indexing_to_lot_number', 1),
(212, '2019_11_19_170824_add_is_active_column_to_business_locations_table', 1),
(213, '2019_11_21_162913_change_quantity_field_types_to_decimal', 1),
(214, '2019_11_25_160340_modify_categories_table_for_polymerphic_relationship', 1),
(215, '2019_12_02_105025_create_warranties_table', 1),
(216, '2019_12_03_180342_add_common_settings_field_to_invoice_layouts_table', 1),
(217, '2019_12_05_183955_add_more_fields_to_users_table', 1),
(218, '2019_12_06_174904_add_change_return_label_column_to_invoice_layouts_table', 1),
(219, '2019_12_11_121307_add_draft_and_quotation_list_permissions', 1),
(220, '2019_12_12_180126_copy_expense_total_to_total_before_tax', 1),
(221, '2019_12_19_181412_make_alert_quantity_field_nullable_on_products_table', 1),
(222, '2019_12_25_173413_create_dashboard_configurations_table', 1),
(223, '2020_01_08_133506_create_document_and_notes_table', 1),
(224, '2020_01_09_113252_add_cc_bcc_column_to_notification_templates_table', 1),
(225, '2020_01_16_174818_add_round_off_amount_field_to_transactions_table', 1),
(226, '2020_01_28_162345_add_weighing_scale_settings_in_business_settings_table', 1),
(227, '2020_02_18_172447_add_import_fields_to_transactions_table', 1),
(228, '2020_03_13_135844_add_is_active_column_to_selling_price_groups_table', 1),
(229, '2020_03_16_115449_add_contact_status_field_to_contacts_table', 1),
(230, '2020_03_26_124736_add_allow_login_column_in_users_table', 1),
(231, '2020_04_13_154150_add_feature_products_column_to_business_loactions', 1),
(232, '2020_04_15_151802_add_user_type_to_users_table', 1),
(233, '2020_04_22_153905_add_subscription_repeat_on_column_to_transactions_table', 1),
(234, '2020_04_28_111436_add_shipping_address_to_contacts_table', 1),
(235, '2020_06_01_094654_add_max_sale_discount_column_to_users_table', 1),
(236, '2020_06_12_162245_modify_contacts_table', 1),
(237, '2020_06_22_103104_change_recur_interval_default_to_one', 1),
(238, '2020_07_09_174621_add_balance_field_to_contacts_table', 1),
(239, '2020_07_23_104933_change_status_column_to_varchar_in_transaction_table', 1),
(240, '2020_09_07_171059_change_completed_stock_transfer_status_to_final', 1),
(241, '2020_09_21_123224_modify_booking_status_column_in_bookings_table', 1),
(242, '2020_09_22_121639_create_discount_variations_table', 1),
(243, '2020_10_05_121550_modify_business_location_table_for_invoice_layout', 1),
(244, '2020_10_16_175726_set_status_as_received_for_opening_stock', 1),
(245, '2020_10_23_170823_add_for_group_tax_column_to_tax_rates_table', 1),
(246, '2020_11_04_130940_add_more_custom_fields_to_contacts_table', 1),
(247, '2020_11_10_152841_add_cash_register_permissions', 1),
(248, '2020_11_17_164041_modify_type_column_to_varchar_in_contacts_table', 1),
(249, '2020_12_18_181447_add_shipping_custom_fields_to_transactions_table', 1),
(250, '2020_12_22_164303_add_sub_status_column_to_transactions_table', 1),
(251, '2020_12_24_153050_add_custom_fields_to_transactions_table', 1),
(252, '2020_12_28_105403_add_whatsapp_text_column_to_notification_templates_table', 1),
(253, '2020_12_29_165925_add_model_document_type_to_media_table', 1),
(254, '2021_02_08_175632_add_contact_number_fields_to_users_table', 1),
(255, '2021_02_11_172217_add_indexing_for_multiple_columns', 1),
(256, '2021_02_23_122043_add_more_columns_to_customer_groups_table', 1),
(257, '2021_02_24_175551_add_print_invoice_permission_to_all_roles', 1),
(258, '2021_03_03_162021_add_purchase_order_columns_to_purchase_lines_and_transactions_table', 1),
(259, '2021_03_11_120229_add_sales_order_columns', 1),
(260, '2021_03_16_120705_add_business_id_to_activity_log_table', 1),
(261, '2021_03_16_153427_add_code_columns_to_business_table', 1),
(262, '2021_03_18_173308_add_account_details_column_to_accounts_table', 1),
(263, '2021_03_18_183119_add_prefer_payment_account_columns_to_transactions_table', 1),
(264, '2021_03_22_120810_add_more_types_of_service_custom_fields', 1),
(265, '2021_03_24_183132_add_shipping_export_custom_field_details_to_contacts_table', 1),
(266, '2021_03_25_170715_add_export_custom_fields_info_to_transactions_table', 1),
(267, '2021_04_15_063449_add_denominations_column_to_cash_registers_table', 1),
(268, '2021_05_22_083426_add_indexing_to_account_transactions_table', 1),
(269, '2021_07_08_065808_add_additional_expense_columns_to_transaction_table', 1),
(270, '2021_07_13_082918_add_qr_code_columns_to_invoice_layouts_table', 1),
(271, '2021_07_21_061615_add_fields_to_show_commission_agent_in_invoice_layout', 1),
(272, '2021_08_13_105549_add_crm_contact_id_to_users_table', 1),
(273, '2021_08_25_114932_add_payment_link_fields_to_transaction_payments_table', 1),
(274, '2021_09_01_063110_add_spg_column_to_discounts_table', 1),
(275, '2021_09_03_061528_modify_cash_register_transactions_table', 1),
(276, '2021_10_05_061658_add_source_column_to_transactions_table', 1),
(277, '2021_12_16_121851_add_parent_id_column_to_expense_categories_table', 1),
(278, '2022_04_14_075120_add_payment_type_column_to_transaction_payments_table', 1),
(279, '2022_04_21_083327_create_cash_denominations_table', 1),
(280, '2022_05_10_055307_add_delivery_date_column_to_transactions_table', 1),
(281, '2022_06_13_123135_add_currency_precision_and_quantity_precision_fields_to_business_table', 1),
(282, '2022_06_28_133342_add_secondary_unit_columns_to_products_sell_line_purchase_lines_tables', 1),
(283, '2022_07_13_114307_create_purchase_requisition_related_columns', 1),
(284, '2022_08_25_132707_add_service_staff_timer_fields_to_products_and_users_table', 1),
(285, '2023_01_28_114255_add_letter_head_column_to_invoice_layouts_table', 1),
(286, '2023_02_11_161510_add_event_column_to_activity_log_table', 1),
(287, '2023_02_11_161511_add_batch_uuid_column_to_activity_log_table', 1),
(288, '2023_03_02_170312_add_provider_to_oauth_clients_table', 1),
(289, '2023_03_21_122731_add_sale_invoice_scheme_id_business_table', 1),
(290, '2023_03_21_170446_add_number_type_to_invoice_scheme', 1),
(291, '2023_04_17_155216_add_custom_fields_to_products', 1),
(292, '2023_04_28_130247_add_price_type_to_group_price_table', 1),
(293, '2018_06_27_185405_create_packages_table', 2),
(294, '2018_06_28_182803_create_subscriptions_table', 2),
(295, '2018_07_17_182021_add_rows_to_system_table', 2),
(296, '2018_07_19_131721_add_options_to_packages_table', 2),
(297, '2018_08_17_155534_add_min_termination_alert_days', 2),
(298, '2018_08_28_105945_add_business_based_username_settings_to_system_table', 2),
(299, '2018_08_30_105906_add_superadmin_communicator_logs_table', 2),
(300, '2018_11_02_130636_add_custom_permissions_to_packages_table', 2),
(301, '2018_11_05_161848_add_more_fields_to_packages_table', 2),
(302, '2018_12_10_124621_modify_system_table_values_null_default', 2),
(303, '2019_05_10_135434_add_missing_database_column_indexes', 2),
(304, '2019_08_16_115300_create_superadmin_frontend_pages_table', 2),
(305, '2018_10_01_151252_create_documents_table', 3),
(306, '2018_10_02_151803_create_document_shares_table', 3),
(307, '2018_10_09_134558_create_reminders_table', 3),
(308, '2018_11_16_170756_create_to_dos_table', 3),
(309, '2019_02_22_120329_essentials_messages', 3),
(310, '2019_02_22_161513_add_message_permissions', 3),
(311, '2019_03_29_164339_add_essentials_version_to_system_table', 3),
(312, '2019_05_17_153306_create_essentials_leave_types_table', 3),
(313, '2019_05_17_175921_create_essentials_leaves_table', 3),
(314, '2019_05_21_154517_add_essentials_settings_columns_to_business_table', 3),
(315, '2019_05_21_181653_create_table_essentials_attendance', 3),
(316, '2019_05_30_110049_create_essentials_payrolls_table', 3),
(317, '2019_06_04_105723_create_essentials_holidays_table', 3),
(318, '2019_06_28_134217_add_payroll_columns_to_transactions_table', 3),
(319, '2019_08_26_103520_add_approve_leave_permission', 3),
(320, '2019_08_27_103724_create_essentials_allowance_and_deduction_table', 3),
(321, '2019_08_27_105236_create_essentials_user_allowances_and_deductions', 3),
(322, '2019_09_20_115906_add_more_columns_to_essentials_to_dos_table', 3),
(323, '2019_09_23_120439_create_essentials_todo_comments_table', 3),
(324, '2019_12_05_170724_add_hrm_columns_to_users_table', 3),
(325, '2019_12_09_105809_add_allowance_and_deductions_permission', 3),
(326, '2020_03_28_152838_create_essentials_shift_table', 3),
(327, '2020_03_30_162029_create_user_shifts_table', 3),
(328, '2020_03_31_134558_add_shift_id_to_attendance_table', 3),
(329, '2020_11_05_105157_modify_todos_date_column_type', 3),
(330, '2020_11_11_174852_add_end_time_column_to_essentials_reminders_table', 3),
(331, '2020_11_26_170527_create_essentials_kb_table', 3),
(332, '2020_11_30_112615_create_essentials_kb_users_table', 3),
(333, '2021_02_12_185514_add_clock_in_location_to_essentials_attendances_table', 3),
(334, '2021_02_16_190203_add_essentials_module_indexing', 3),
(335, '2021_02_27_133448_add_columns_to_users_table', 3),
(336, '2021_03_04_174857_create_payroll_groups_table', 3),
(337, '2021_03_04_175025_create_payroll_group_transactions_table', 3),
(338, '2021_03_09_123914_add_auto_clockout_to_essentials_shifts', 3),
(339, '2021_06_17_121451_add_location_id_to_table', 3),
(340, '2021_09_28_091541_create_essentials_user_sales_targets_table', 3),
(341, '2022_10_31_115725_create_accounting_account_types_table', 4),
(342, '2022_11_01_104108_create_accounting_accounts_table', 4),
(343, '2022_11_10_135427_create_accounts_transactions_table', 4),
(344, '2022_11_14_171948_create_accounting_acc_trans_mapping', 4),
(345, '2022_12_02_133536_create_accounting_budgets_table', 4),
(346, '2022_12_19_124743_add_accounting_settings_column_to_business_table', 4),
(347, '2022_12_26_182821_AddAccountingModuleVersionToSystemTable', 4),
(348, '2023_05_25_131005_add_default_map_transactions_fields', 4),
(349, '2022_08_04_143146_create_cms_pages_table', 5),
(350, '2022_09_10_161849_add_layout_column_to_cms_pages_table', 5),
(351, '2022_09_10_163209_create_cms_site_details_table', 5),
(352, '2022_09_15_122547_create_cms_page_metas_table', 5),
(353, '2022_09_16_130337_create_default_data_for_cms', 5),
(354, '2020_03_19_130231_add_contact_id_to_users_table', 6),
(355, '2020_03_27_133605_create_schedules_table', 6),
(356, '2020_03_27_133628_create_schedule_users_table', 6),
(357, '2020_03_30_112834_create_schedule_logs_table', 6),
(358, '2020_04_02_182331_add_crm_module_version_to_system_table', 6),
(359, '2020_04_08_153231_modify_cloumn_in_contacts_table', 6),
(360, '2020_04_09_101052_create_lead_users_table', 6),
(361, '2020_04_16_114747_create_crm_campaigns_table', 6),
(362, '2021_01_07_155757_add_followup_additional_info_column_to_crm_schedules_table', 6),
(363, '2021_02_02_140021_add_additional_info_to_crm_campaigns_table', 6),
(364, '2021_02_02_173651_add_new_columns_to_contacts_table', 6),
(365, '2021_02_04_120439_create_call_logs_table', 6),
(366, '2021_02_08_172047_add_mobile_name_column_to_crm_call_logs_table', 6),
(367, '2021_02_16_190038_add_crm_module_indexing', 6),
(368, '2021_02_19_120846_create_crm_followup_invoices', 6),
(369, '2021_02_22_132125_add_follow_up_by_to_crm_schedules_table', 6),
(370, '2021_03_24_160736_add_department_and_designation_to_users_table', 6),
(371, '2021_06_15_152924_create_proposal_templates_table', 6),
(372, '2021_06_16_114448_add_recursive_fields_to_crm_schedules_table', 6),
(373, '2021_06_16_125740_create_proposals_table', 6),
(374, '2021_09_24_065738_add_crm_settings_column_to_business_table', 6),
(375, '2022_02_09_055012_create_crm_marketplaces_table', 6),
(376, '2022_02_17_113045_add_source_id_to_marketplace', 6),
(377, '2022_03_02_180929_add_followup_category_id', 6),
(378, '2022_05_26_061553_create_crm_contact_person_commissions_table', 6),
(379, '2022_06_06_073006_add_cc_and_bcc_columns_to_crm_proposals_table', 6),
(380, '2019_03_07_155813_make_repair_statuses_table', 7),
(381, '2019_03_08_120634_add_repair_columns_to_transactions_table', 7),
(382, '2019_03_14_182704_add_repair_permissions', 7),
(383, '2019_03_29_110241_add_repair_version_column_to_system_table', 7),
(384, '2019_04_12_113901_add_repair_settings_column_to_business_table', 7),
(385, '2020_05_05_125008_create_device_models_table', 7),
(386, '2020_05_06_103135_add_repair_model_id_column_to_products_table', 7),
(387, '2020_07_11_120308_add_columns_to_repair_statuses_table', 7),
(388, '2020_07_31_130737_create_job_sheets_table', 7),
(389, '2020_08_07_124241_add_job_sheet_id_to_transactions_table', 7),
(390, '2020_08_22_104640_add_email_template_field_to_repair_status_table', 7),
(391, '2020_10_19_131934_add_job_sheet_custom_fields_to_repair_job_sheets_table', 7),
(392, '2020_11_25_111050_add_parts_column_to_repair_job_sheets_table', 7),
(393, '2020_12_30_101842_add_use_for_repair_column_to_brands_table', 7),
(394, '2021_02_16_190423_add_repair_module_indexing', 7);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_permissions`
--

INSERT INTO `model_has_permissions` (`permission_id`, `model_type`, `model_id`) VALUES
(80, 'App\\User', 2),
(82, 'App\\User', 2),
(80, 'App\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` int UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(4, 'App\\User', 2),
(1, 'App\\User', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_origins`
--

CREATE TABLE `model_origins` (
  `id` bigint UNSIGNED NOT NULL,
  `model` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_origins`
--

INSERT INTO `model_origins` (`id`, `model`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 'Model origin', NULL, '2023-08-16 09:23:43', '2023-08-16 09:24:15'),
(3, 'test', NULL, '2023-08-25 09:09:06', '2023-08-25 09:09:06');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notification_templates`
--

CREATE TABLE `notification_templates` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int NOT NULL,
  `template_for` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_body` text COLLATE utf8mb4_unicode_ci,
  `sms_body` text COLLATE utf8mb4_unicode_ci,
  `whatsapp_text` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bcc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `auto_send` tinyint(1) NOT NULL DEFAULT '0',
  `auto_send_sms` tinyint(1) NOT NULL DEFAULT '0',
  `auto_send_wa_notif` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notification_templates`
--

INSERT INTO `notification_templates` (`id`, `business_id`, `template_for`, `email_body`, `sms_body`, `whatsapp_text`, `subject`, `cc`, `bcc`, `auto_send`, `auto_send_sms`, `auto_send_wa_notif`, `created_at`, `updated_at`) VALUES
(1, 1, 'new_sale', '<p>Dear {contact_name},</p>\n\n                    <p>Your invoice number is {invoice_number}<br />\n                    Total amount: {total_amount}<br />\n                    Paid amount: {received_amount}</p>\n\n                    <p>Thank you for shopping with us.</p>\n\n                    <p>{business_logo}</p>\n\n                    <p>&nbsp;</p>', 'Dear {contact_name}, Thank you for shopping with us. {business_name}', NULL, 'Thank you from {business_name}', NULL, NULL, 0, 0, 0, '2023-06-13 13:55:56', '2023-06-13 13:55:56'),
(2, 1, 'payment_received', '<p>Dear {contact_name},</p>\n\n                <p>We have received a payment of {received_amount}</p>\n\n                <p>{business_logo}</p>', 'Dear {contact_name}, We have received a payment of {received_amount}. {business_name}', NULL, 'Payment Received, from {business_name}', NULL, NULL, 0, 0, 0, '2023-06-13 13:55:56', '2023-06-13 13:55:56'),
(3, 1, 'payment_reminder', '<p>Dear {contact_name},</p>\n\n                    <p>This is to remind you that you have pending payment of {due_amount}. Kindly pay it as soon as possible.</p>\n\n                    <p>{business_logo}</p>', 'Dear {contact_name}, You have pending payment of {due_amount}. Kindly pay it as soon as possible. {business_name}', NULL, 'Payment Reminder, from {business_name}', NULL, NULL, 0, 0, 0, '2023-06-13 13:55:56', '2023-06-13 13:55:56'),
(4, 1, 'new_booking', '<p>Dear {contact_name},</p>\n\n                    <p>Your booking is confirmed</p>\n\n                    <p>Date: {start_time} to {end_time}</p>\n\n                    <p>Table: {table}</p>\n\n                    <p>Location: {location}</p>\n\n                    <p>{business_logo}</p>', 'Dear {contact_name}, Your booking is confirmed. Date: {start_time} to {end_time}, Table: {table}, Location: {location}', NULL, 'Booking Confirmed - {business_name}', NULL, NULL, 0, 0, 0, '2023-06-13 13:55:56', '2023-06-13 13:55:56'),
(5, 1, 'new_order', '<p>Dear {contact_name},</p>\n\n                    <p>We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'Dear {contact_name}, We have a new order with reference number {order_ref_number}. Kindly process the products as soon as possible. {business_name}', NULL, 'New Order, from {business_name}', NULL, NULL, 0, 0, 0, '2023-06-13 13:55:56', '2023-06-13 13:55:56'),
(6, 1, 'payment_paid', '<p>Dear {contact_name},</p>\n\n                    <p>We have paid amount {paid_amount} again invoice number {order_ref_number}.<br />\n                    Kindly note it down.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'We have paid amount {paid_amount} again invoice number {order_ref_number}.\n                    Kindly note it down. {business_name}', NULL, 'Payment Paid, from {business_name}', NULL, NULL, 0, 0, 0, '2023-06-13 13:55:56', '2023-06-13 13:55:56'),
(7, 1, 'items_received', '<p>Dear {contact_name},</p>\n\n                    <p>We have received all items from invoice reference number {order_ref_number}. Thank you for processing it.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'We have received all items from invoice reference number {order_ref_number}. Thank you for processing it. {business_name}', NULL, 'Items received, from {business_name}', NULL, NULL, 0, 0, 0, '2023-06-13 13:55:56', '2023-06-13 13:55:56'),
(8, 1, 'items_pending', '<p>Dear {contact_name},<br />\n                    This is to remind you that we have not yet received some items from invoice reference number {order_ref_number}. Please process it as soon as possible.</p>\n\n                    <p>{business_name}<br />\n                    {business_logo}</p>', 'This is to remind you that we have not yet received some items from invoice reference number {order_ref_number} . Please process it as soon as possible.{business_name}', NULL, 'Items Pending, from {business_name}', NULL, NULL, 0, 0, 0, '2023-06-13 13:55:56', '2023-06-13 13:55:56'),
(9, 1, 'new_quotation', '<p>Dear {contact_name},</p>\n\n                    <p>Your quotation number is {invoice_number}<br />\n                    Total amount: {total_amount}</p>\n\n                    <p>Thank you for shopping with us.</p>\n\n                    <p>{business_logo}</p>\n\n                    <p>&nbsp;</p>', 'Dear {contact_name}, Thank you for shopping with us. {business_name}', NULL, 'Thank you from {business_name}', NULL, NULL, 0, 0, 0, '2023-06-13 13:55:56', '2023-06-13 13:55:56'),
(10, 1, 'purchase_order', '<p>Dear {contact_name},</p>\n\n                    <p>We have a new purchase order with reference number {order_ref_number}. The respective invoice is attached here with.</p>\n\n                    <p>{business_logo}</p>', 'We have a new purchase order with reference number {order_ref_number}. {business_name}', NULL, 'New Purchase Order, from {business_name}', NULL, NULL, 0, 0, 0, '2023-06-13 13:55:56', '2023-06-13 13:55:56');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int UNSIGNED NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provider` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int UNSIGNED NOT NULL,
  `client_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_count` int NOT NULL COMMENT 'No. of Business Locations, 0 = infinite option.',
  `user_count` int NOT NULL,
  `product_count` int NOT NULL,
  `bookings` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Enable/Disable bookings',
  `kitchen` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Enable/Disable kitchen',
  `order_screen` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Enable/Disable order_screen',
  `tables` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Enable/Disable tables',
  `invoice_count` int NOT NULL,
  `interval` enum('days','months','years') COLLATE utf8mb4_unicode_ci NOT NULL,
  `interval_count` int NOT NULL,
  `trial_days` int NOT NULL,
  `price` decimal(22,4) NOT NULL,
  `custom_permissions` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int NOT NULL,
  `sort_order` int NOT NULL DEFAULT '0',
  `is_active` tinyint(1) NOT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_one_time` tinyint(1) NOT NULL DEFAULT '0',
  `enable_custom_link` tinyint(1) NOT NULL DEFAULT '0',
  `custom_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_link_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `name`, `description`, `location_count`, `user_count`, `product_count`, `bookings`, `kitchen`, `order_screen`, `tables`, `invoice_count`, `interval`, `interval_count`, `trial_days`, `price`, `custom_permissions`, `created_by`, `sort_order`, `is_active`, `is_private`, `is_one_time`, `enable_custom_link`, `custom_link`, `custom_link_text`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Regular Package', 'Daily Package', 0, 0, 0, 0, 0, 0, 0, 0, 'years', 2, 30, 0.0000, '{\"accounting_module\":\"1\",\"essentials_module\":\"1\"}', 1, 1, 1, 1, 0, 1, NULL, NULL, NULL, '2023-06-15 13:30:55', '2023-06-15 13:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `package_trim_variants`
--

CREATE TABLE `package_trim_variants` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_manufacture_id` bigint UNSIGNED NOT NULL,
  `vehicle_model_id` bigint UNSIGNED NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `package_trim_variants`
--

INSERT INTO `package_trim_variants` (`id`, `name`, `vehicle_manufacture_id`, `vehicle_model_id`, `created_by`, `created_at`, `updated_at`) VALUES
(3, '572', 4, 3, 1, '2023-08-25 02:43:15', '2023-08-25 02:43:15');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'profit_loss_report.view', 'web', '2023-06-13 13:42:56', NULL),
(2, 'direct_sell.access', 'web', '2023-06-13 13:42:56', NULL),
(3, 'product.opening_stock', 'web', '2023-06-13 13:42:57', '2023-06-13 13:42:57'),
(4, 'crud_all_bookings', 'web', '2023-06-13 13:42:57', '2023-06-13 13:42:57'),
(5, 'crud_own_bookings', 'web', '2023-06-13 13:42:57', '2023-06-13 13:42:57'),
(6, 'access_default_selling_price', 'web', '2023-06-13 13:42:57', '2023-06-13 13:42:57'),
(7, 'purchase.payments', 'web', '2023-06-13 13:42:58', '2023-06-13 13:42:58'),
(8, 'sell.payments', 'web', '2023-06-13 13:42:58', '2023-06-13 13:42:58'),
(9, 'edit_product_price_from_sale_screen', 'web', '2023-06-13 13:42:58', '2023-06-13 13:42:58'),
(10, 'edit_product_discount_from_sale_screen', 'web', '2023-06-13 13:42:58', '2023-06-13 13:42:58'),
(11, 'roles.view', 'web', '2023-06-13 13:42:58', '2023-06-13 13:42:58'),
(12, 'roles.create', 'web', '2023-06-13 13:42:58', '2023-06-13 13:42:58'),
(13, 'roles.update', 'web', '2023-06-13 13:42:58', '2023-06-13 13:42:58'),
(14, 'roles.delete', 'web', '2023-06-13 13:42:58', '2023-06-13 13:42:58'),
(15, 'account.access', 'web', '2023-06-13 13:42:58', '2023-06-13 13:42:58'),
(16, 'discount.access', 'web', '2023-06-13 13:42:58', '2023-06-13 13:42:58'),
(17, 'view_purchase_price', 'web', '2023-06-13 13:42:59', '2023-06-13 13:42:59'),
(18, 'view_own_sell_only', 'web', '2023-06-13 13:42:59', '2023-06-13 13:42:59'),
(19, 'edit_product_discount_from_pos_screen', 'web', '2023-06-13 13:42:59', '2023-06-13 13:42:59'),
(20, 'edit_product_price_from_pos_screen', 'web', '2023-06-13 13:42:59', '2023-06-13 13:42:59'),
(21, 'access_shipping', 'web', '2023-06-13 13:42:59', '2023-06-13 13:42:59'),
(22, 'purchase.update_status', 'web', '2023-06-13 13:42:59', '2023-06-13 13:42:59'),
(23, 'list_drafts', 'web', '2023-06-13 13:42:59', '2023-06-13 13:42:59'),
(24, 'list_quotations', 'web', '2023-06-13 13:42:59', '2023-06-13 13:42:59'),
(25, 'view_cash_register', 'web', '2023-06-13 13:43:00', '2023-06-13 13:43:00'),
(26, 'close_cash_register', 'web', '2023-06-13 13:43:00', '2023-06-13 13:43:00'),
(27, 'print_invoice', 'web', '2023-06-13 13:43:00', '2023-06-13 13:43:00'),
(28, 'user.view', 'web', '2023-06-13 13:43:02', NULL),
(29, 'user.create', 'web', '2023-06-13 13:43:02', NULL),
(30, 'user.update', 'web', '2023-06-13 13:43:02', NULL),
(31, 'user.delete', 'web', '2023-06-13 13:43:02', NULL),
(32, 'supplier.view', 'web', '2023-06-13 13:43:02', NULL),
(33, 'supplier.create', 'web', '2023-06-13 13:43:02', NULL),
(34, 'supplier.update', 'web', '2023-06-13 13:43:02', NULL),
(35, 'supplier.delete', 'web', '2023-06-13 13:43:02', NULL),
(36, 'customer.view', 'web', '2023-06-13 13:43:02', NULL),
(37, 'customer.create', 'web', '2023-06-13 13:43:02', NULL),
(38, 'customer.update', 'web', '2023-06-13 13:43:02', NULL),
(39, 'customer.delete', 'web', '2023-06-13 13:43:02', NULL),
(40, 'product.view', 'web', '2023-06-13 13:43:02', NULL),
(41, 'product.create', 'web', '2023-06-13 13:43:02', NULL),
(42, 'product.update', 'web', '2023-06-13 13:43:02', NULL),
(43, 'product.delete', 'web', '2023-06-13 13:43:02', NULL),
(44, 'purchase.view', 'web', '2023-06-13 13:43:02', NULL),
(45, 'purchase.create', 'web', '2023-06-13 13:43:02', NULL),
(46, 'purchase.update', 'web', '2023-06-13 13:43:02', NULL),
(47, 'purchase.delete', 'web', '2023-06-13 13:43:02', NULL),
(48, 'sell.view', 'web', '2023-06-13 13:43:02', NULL),
(49, 'sell.create', 'web', '2023-06-13 13:43:02', NULL),
(50, 'sell.update', 'web', '2023-06-13 13:43:02', NULL),
(51, 'sell.delete', 'web', '2023-06-13 13:43:02', NULL),
(52, 'purchase_n_sell_report.view', 'web', '2023-06-13 13:43:02', NULL),
(53, 'contacts_report.view', 'web', '2023-06-13 13:43:02', NULL),
(54, 'stock_report.view', 'web', '2023-06-13 13:43:02', NULL),
(55, 'tax_report.view', 'web', '2023-06-13 13:43:02', NULL),
(56, 'trending_product_report.view', 'web', '2023-06-13 13:43:02', NULL),
(57, 'register_report.view', 'web', '2023-06-13 13:43:02', NULL),
(58, 'sales_representative.view', 'web', '2023-06-13 13:43:02', NULL),
(59, 'expense_report.view', 'web', '2023-06-13 13:43:02', NULL),
(60, 'business_settings.access', 'web', '2023-06-13 13:43:02', NULL),
(61, 'barcode_settings.access', 'web', '2023-06-13 13:43:02', NULL),
(62, 'invoice_settings.access', 'web', '2023-06-13 13:43:02', NULL),
(63, 'brand.view', 'web', '2023-06-13 13:43:02', NULL),
(64, 'brand.create', 'web', '2023-06-13 13:43:02', NULL),
(65, 'brand.update', 'web', '2023-06-13 13:43:02', NULL),
(66, 'brand.delete', 'web', '2023-06-13 13:43:02', NULL),
(67, 'tax_rate.view', 'web', '2023-06-13 13:43:02', NULL),
(68, 'tax_rate.create', 'web', '2023-06-13 13:43:02', NULL),
(69, 'tax_rate.update', 'web', '2023-06-13 13:43:02', NULL),
(70, 'tax_rate.delete', 'web', '2023-06-13 13:43:02', NULL),
(71, 'unit.view', 'web', '2023-06-13 13:43:02', NULL),
(72, 'unit.create', 'web', '2023-06-13 13:43:02', NULL),
(73, 'unit.update', 'web', '2023-06-13 13:43:02', NULL),
(74, 'unit.delete', 'web', '2023-06-13 13:43:02', NULL),
(75, 'category.view', 'web', '2023-06-13 13:43:02', NULL),
(76, 'category.create', 'web', '2023-06-13 13:43:02', NULL),
(77, 'category.update', 'web', '2023-06-13 13:43:02', NULL),
(78, 'category.delete', 'web', '2023-06-13 13:43:02', NULL),
(79, 'expense.access', 'web', '2023-06-13 13:43:02', NULL),
(80, 'access_all_locations', 'web', '2023-06-13 13:43:02', NULL),
(81, 'dashboard.data', 'web', '2023-06-13 13:43:02', NULL),
(82, 'location.1', 'web', '2023-06-13 13:55:56', '2023-06-13 13:55:56'),
(83, 'essentials.create_message', 'web', '2023-06-13 14:59:44', '2023-06-13 14:59:44'),
(84, 'essentials.view_message', 'web', '2023-06-13 14:59:44', '2023-06-13 14:59:44'),
(85, 'essentials.approve_leave', 'web', '2023-06-13 14:59:44', '2023-06-13 14:59:44'),
(86, 'essentials.assign_todos', 'web', '2023-06-13 14:59:45', '2023-06-13 14:59:45'),
(87, 'essentials.add_allowance_and_deduction', 'web', '2023-06-13 14:59:45', '2023-06-13 14:59:45'),
(88, 'view_export_buttons', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(89, 'edit_purchase_payment', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(90, 'delete_purchase_payment', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(91, 'edit_pos_payment', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(92, 'view_paid_sells_only', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(93, 'view_due_sells_only', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(94, 'view_partial_sells_only', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(95, 'view_overdue_sells_only', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(96, 'direct_sell.update', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(97, 'direct_sell.delete', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(98, 'view_commission_agent_sell', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(99, 'edit_sell_payment', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(100, 'delete_sell_payment', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(101, 'access_types_of_service', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(102, 'access_sell_return', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(103, 'access_own_sell_return', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(104, 'edit_invoice_number', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(105, 'draft.update', 'web', '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(106, 'draft.delete', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(107, 'quotation.update', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(108, 'quotation.delete', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(109, 'access_pending_shipments_only', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(110, 'access_commission_agent_shipping', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(111, 'access_printers', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(112, 'expense.add', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(113, 'expense.edit', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(114, 'expense.delete', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(115, 'edit_account_transaction', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(116, 'delete_account_transaction', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(117, 'accounting.access_accounting_module', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(118, 'accounting.manage_accounts', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(119, 'accounting.view_journal', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(120, 'accounting.add_journal', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(121, 'accounting.edit_journal', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(122, 'accounting.delete_journal', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(123, 'accounting.map_transactions', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(124, 'accounting.view_transfer', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(125, 'accounting.add_transfer', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(126, 'accounting.edit_transfer', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(127, 'accounting.delete_transfer', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(128, 'accounting.manage_budget', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(129, 'accounting.view_reports', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(130, 'essentials.crud_leave_type', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(131, 'essentials.allow_users_for_attendance_from_web', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(132, 'essentials.allow_users_for_attendance_from_api', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(133, 'essentials.view_allowance_and_deduction', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(134, 'essentials.crud_department', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(135, 'essentials.crud_designation', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(136, 'essentials.view_all_payroll', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(137, 'essentials.create_payroll', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(138, 'essentials.update_payroll', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(139, 'essentials.delete_payroll', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(140, 'essentials.add_todos', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(141, 'essentials.edit_todos', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(142, 'essentials.delete_todos', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(143, 'essentials.access_sales_target', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(144, 'superadmin.access_package_subscriptions', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(145, 'supplier.view_own', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(146, 'customer.view_own', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(147, 'customer_irrespective_of_sell', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(148, 'view_own_purchase', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(149, 'draft.view_own', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(150, 'quotation.view_own', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(151, 'access_own_shipping', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(152, 'view_own_expense', 'web', '2023-07-15 06:29:42', '2023-07-15 06:29:42'),
(153, 'essentials.crud_all_leave', 'web', '2023-07-15 06:29:43', '2023-07-15 06:29:43'),
(154, 'essentials.view_own_attendance', 'web', '2023-07-15 06:29:43', '2023-07-15 06:29:43'),
(155, 'all_expense.access', 'web', '2023-07-22 11:34:55', '2023-07-22 11:34:55'),
(156, 'essentials.crud_own_leave', 'web', '2023-07-22 11:34:55', '2023-07-22 11:34:55'),
(157, 'essentials.crud_all_attendance', 'web', '2023-07-22 11:34:55', '2023-07-22 11:34:55'),
(158, 'repair.create', 'web', '2023-07-24 08:36:32', '2023-07-24 08:36:32'),
(159, 'repair.update', 'web', '2023-07-24 08:36:32', '2023-07-24 08:36:32'),
(160, 'repair.view', 'web', '2023-07-24 08:36:32', '2023-07-24 08:36:32'),
(161, 'repair.delete', 'web', '2023-07-24 08:36:32', '2023-07-24 08:36:32'),
(162, 'repair_status.update', 'web', '2023-07-24 08:36:32', '2023-07-24 08:36:32'),
(163, 'repair_status.access', 'web', '2023-07-24 08:36:32', '2023-07-24 08:36:32'),
(164, 'selling_price_group.1', 'web', '2023-08-05 09:22:22', '2023-08-05 09:22:22'),
(165, 'selling_price_group.2', 'web', '2023-08-05 09:22:30', '2023-08-05 09:22:30'),
(166, 'selling_price_group.3', 'web', '2023-08-05 09:22:44', '2023-08-05 09:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `printers`
--

CREATE TABLE `printers` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection_type` enum('network','windows','linux') COLLATE utf8mb4_unicode_ci NOT NULL,
  `capability_profile` enum('default','simple','SP2000','TEP-200M','P822D') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `char_per_line` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `port` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `printers`
--

INSERT INTO `printers` (`id`, `business_id`, `name`, `connection_type`, `capability_profile`, `char_per_line`, `ip_address`, `port`, `path`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'test', 'windows', 'default', '42', '', '', 'dasdf', 1, '2023-08-13 14:40:31', '2023-08-13 14:40:31');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `type` enum('single','variable','modifier','combo') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `unit_id` int UNSIGNED DEFAULT NULL,
  `secondary_unit_id` int DEFAULT NULL,
  `sub_unit_ids` text COLLATE utf8mb4_unicode_ci,
  `brand_id` int UNSIGNED DEFAULT NULL,
  `category_id` int UNSIGNED DEFAULT NULL,
  `sub_category_id` int UNSIGNED DEFAULT NULL,
  `tax` int UNSIGNED DEFAULT NULL,
  `tax_type` enum('inclusive','exclusive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `enable_stock` tinyint(1) NOT NULL DEFAULT '0',
  `alert_quantity` decimal(22,4) DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barcode_type` enum('C39','C128','EAN13','EAN8','UPCA','UPCE') COLLATE utf8mb4_unicode_ci DEFAULT 'C128',
  `expiry_period` decimal(4,2) DEFAULT NULL,
  `expiry_period_type` enum('days','months') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_sr_no` tinyint(1) NOT NULL DEFAULT '0',
  `weight` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field6` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field7` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field8` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field9` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field10` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field11` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field12` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field13` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field14` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field15` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field16` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field17` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field18` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field19` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_custom_field20` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int UNSIGNED NOT NULL,
  `preparation_time_in_minutes` int DEFAULT NULL,
  `warranty_id` int DEFAULT NULL,
  `is_inactive` tinyint(1) NOT NULL DEFAULT '0',
  `repair_model_id` int UNSIGNED DEFAULT NULL,
  `not_for_selling` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_locations`
--

CREATE TABLE `product_locations` (
  `product_id` int NOT NULL,
  `location_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_racks`
--

CREATE TABLE `product_racks` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `location_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `rack` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `row` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` int UNSIGNED NOT NULL,
  `variation_template_id` int DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `is_dummy` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `purchase_lines`
--

CREATE TABLE `purchase_lines` (
  `id` int UNSIGNED NOT NULL,
  `transaction_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `variation_id` int UNSIGNED NOT NULL,
  `quantity` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `secondary_unit_quantity` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `pp_without_discount` decimal(22,4) NOT NULL DEFAULT '0.0000' COMMENT 'Purchase price before inline discounts',
  `discount_percent` decimal(5,2) NOT NULL DEFAULT '0.00' COMMENT 'Inline discount percentage',
  `purchase_price` decimal(22,4) NOT NULL,
  `purchase_price_inc_tax` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `item_tax` decimal(22,4) NOT NULL COMMENT 'Tax for one quantity',
  `tax_id` int UNSIGNED DEFAULT NULL,
  `purchase_requisition_line_id` int DEFAULT NULL,
  `purchase_order_line_id` int DEFAULT NULL,
  `quantity_sold` decimal(22,4) NOT NULL DEFAULT '0.0000' COMMENT 'Quanity sold from this purchase line',
  `quantity_adjusted` decimal(22,4) NOT NULL DEFAULT '0.0000' COMMENT 'Quanity adjusted in stock adjustment from this purchase line',
  `quantity_returned` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `po_quantity_purchased` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `mfg_quantity_used` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `mfg_date` date DEFAULT NULL,
  `exp_date` date DEFAULT NULL,
  `lot_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_unit_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reference_counts`
--

CREATE TABLE `reference_counts` (
  `id` int UNSIGNED NOT NULL,
  `ref_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ref_count` int NOT NULL,
  `business_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reference_counts`
--

INSERT INTO `reference_counts` (`id`, `ref_type`, `ref_count`, `business_id`, `created_at`, `updated_at`) VALUES
(1, 'contacts', 5, 1, '2023-06-13 13:55:56', '2023-08-27 02:57:27'),
(2, 'business_location', 5, 1, '2023-06-13 13:55:56', '2023-07-18 20:07:11'),
(3, 'expense', 2, 1, '2023-07-22 12:15:51', '2023-08-05 16:43:31'),
(4, 'sell_payment', 1, 1, '2023-07-22 12:15:51', '2023-07-22 12:15:51'),
(5, 'opening_balance', 1, 1, '2023-07-22 13:06:22', '2023-07-22 13:06:22'),
(6, 'expense_payment', 1, 1, '2023-08-05 16:43:53', '2023-08-05 16:43:53');

-- --------------------------------------------------------

--
-- Table structure for table `repair_device_models`
--

CREATE TABLE `repair_device_models` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `repair_checklist` text COLLATE utf8mb4_unicode_ci,
  `brand_id` int UNSIGNED DEFAULT NULL,
  `device_id` int UNSIGNED DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `repair_job_sheets`
--

CREATE TABLE `repair_job_sheets` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `location_id` int UNSIGNED DEFAULT NULL,
  `contact_id` int UNSIGNED NOT NULL,
  `job_sheet_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `service_type` enum('carry_in','pick_up','on_site') COLLATE utf8mb4_unicode_ci NOT NULL,
  `pick_up_on_site_addr` text COLLATE utf8mb4_unicode_ci,
  `brand_id` int UNSIGNED DEFAULT NULL,
  `device_id` int UNSIGNED DEFAULT NULL,
  `device_model_id` int UNSIGNED DEFAULT NULL,
  `checklist` text COLLATE utf8mb4_unicode_ci,
  `security_pwd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `security_pattern` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `serial_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_id` int NOT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `product_configuration` text COLLATE utf8mb4_unicode_ci,
  `defects` text COLLATE utf8mb4_unicode_ci,
  `product_condition` text COLLATE utf8mb4_unicode_ci,
  `service_staff` int UNSIGNED DEFAULT NULL,
  `comment_by_ss` text COLLATE utf8mb4_unicode_ci COMMENT 'comment made by technician',
  `estimated_cost` decimal(22,4) DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `parts` text COLLATE utf8mb4_unicode_ci,
  `custom_field_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `repair_statuses`
--

CREATE TABLE `repair_statuses` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sort_order` int DEFAULT NULL,
  `business_id` int NOT NULL,
  `is_completed_status` tinyint(1) NOT NULL DEFAULT '0',
  `sms_template` text COLLATE utf8mb4_unicode_ci,
  `email_subject` text COLLATE utf8mb4_unicode_ci,
  `email_body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `res_product_modifier_sets`
--

CREATE TABLE `res_product_modifier_sets` (
  `modifier_set_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL COMMENT 'Table use to store the modifier sets applicable for a product'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `res_tables`
--

CREATE TABLE `res_tables` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `location_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_by` int UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `is_service_staff` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `business_id`, `is_default`, `is_service_staff`, `created_at`, `updated_at`) VALUES
(1, 'Admin#1', 'web', 1, 1, 0, '2023-06-13 13:55:56', '2023-06-13 13:55:56'),
(2, 'Cashier#1', 'web', 1, 0, 0, '2023-06-13 13:55:56', '2023-06-13 13:55:56'),
(3, 'A-1010#1', 'web', 1, 0, 1, '2023-07-15 06:29:41', '2023-07-15 06:29:41'),
(4, 'Office Executive#1', 'web', 1, 0, 0, '2023-07-22 11:24:47', '2023-07-22 11:24:47');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` int UNSIGNED NOT NULL,
  `role_id` int UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(25, 2),
(26, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(80, 2),
(6, 4),
(32, 4),
(33, 4),
(34, 4),
(35, 4),
(36, 4),
(37, 4),
(38, 4),
(39, 4),
(63, 4),
(64, 4),
(65, 4),
(66, 4),
(71, 4),
(72, 4),
(73, 4),
(74, 4),
(75, 4),
(76, 4),
(77, 4),
(78, 4),
(83, 4),
(84, 4),
(85, 4),
(86, 4),
(87, 4),
(112, 4),
(113, 4),
(114, 4),
(130, 4),
(131, 4),
(133, 4),
(134, 4),
(135, 4),
(136, 4),
(137, 4),
(138, 4),
(139, 4),
(140, 4),
(141, 4),
(142, 4),
(143, 4),
(144, 4),
(147, 4),
(155, 4),
(156, 4),
(157, 4);

-- --------------------------------------------------------

--
-- Table structure for table `selling_price_groups`
--

CREATE TABLE `selling_price_groups` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `business_id` int UNSIGNED NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `selling_price_groups`
--

INSERT INTO `selling_price_groups` (`id`, `name`, `description`, `business_id`, `is_active`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Retail', NULL, 1, 1, NULL, '2023-08-05 09:22:22', '2023-08-05 09:22:22'),
(2, 'Wholesale', NULL, 1, 1, NULL, '2023-08-05 09:22:30', '2023-08-05 09:22:30'),
(3, 'Corporate', NULL, 1, 1, NULL, '2023-08-05 09:22:44', '2023-08-05 09:22:44');

-- --------------------------------------------------------

--
-- Table structure for table `sell_line_warranties`
--

CREATE TABLE `sell_line_warranties` (
  `sell_line_id` int NOT NULL,
  `warranty_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stock_adjustments_temp`
--

CREATE TABLE `stock_adjustments_temp` (
  `id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stock_adjustment_lines`
--

CREATE TABLE `stock_adjustment_lines` (
  `id` int UNSIGNED NOT NULL,
  `transaction_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `variation_id` int UNSIGNED NOT NULL,
  `quantity` decimal(22,4) NOT NULL,
  `secondary_unit_quantity` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `unit_price` decimal(22,4) DEFAULT NULL COMMENT 'Last purchase unit price',
  `removed_purchase_line` int DEFAULT NULL,
  `lot_no_line_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subscriptions`
--

CREATE TABLE `subscriptions` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `package_id` int UNSIGNED NOT NULL,
  `start_date` date DEFAULT NULL,
  `trial_end_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `package_price` decimal(22,4) NOT NULL,
  `package_details` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_id` int UNSIGNED NOT NULL,
  `paid_via` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('approved','waiting','declined') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'waiting',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `subscriptions`
--

INSERT INTO `subscriptions` (`id`, `business_id`, `package_id`, `start_date`, `trial_end_date`, `end_date`, `package_price`, `package_details`, `created_id`, `paid_via`, `payment_transaction_id`, `status`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2023-06-17', '2025-07-17', '2025-06-17', 0.0000, '{\"location_count\":\"0\",\"user_count\":\"0\",\"product_count\":\"0\",\"invoice_count\":\"0\",\"name\":\"Regular Package\",\"accounting_module\":\"1\",\"essentials_module\":\"1\"}', 1, 'offline', '123456789', 'approved', NULL, '2023-06-17 13:22:28', '2023-06-17 13:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `superadmin_communicator_logs`
--

CREATE TABLE `superadmin_communicator_logs` (
  `id` int UNSIGNED NOT NULL,
  `business_ids` text COLLATE utf8mb4_unicode_ci,
  `subject` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `superadmin_frontend_pages`
--

CREATE TABLE `superadmin_frontend_pages` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_shown` tinyint(1) NOT NULL,
  `menu_order` int DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system`
--

CREATE TABLE `system` (
  `id` int UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `system`
--

INSERT INTO `system` (`id`, `key`, `value`) VALUES
(1, 'db_version', '5.1'),
(2, 'default_business_active_status', '1'),
(3, 'superadmin_version', '4.0'),
(4, 'app_currency_id', '2'),
(5, 'invoice_business_name', 'Autopilot'),
(6, 'invoice_business_landmark', 'Landmark'),
(7, 'invoice_business_zip', 'Zip'),
(8, 'invoice_business_state', 'State'),
(9, 'invoice_business_city', 'City'),
(10, 'invoice_business_country', 'Country'),
(11, 'email', 'superadmin@example.com'),
(12, 'package_expiry_alert_days', '5'),
(13, 'enable_business_based_username', '0'),
(14, 'essentials_version', '3.4'),
(16, 'superadmin_register_tc', NULL),
(17, 'welcome_email_subject', NULL),
(18, 'welcome_email_body', NULL),
(19, 'additional_js', NULL),
(20, 'additional_css', NULL),
(21, 'offline_payment_details', NULL),
(22, 'superadmin_enable_register_tc', '0'),
(23, 'allow_email_settings_to_businesses', '0'),
(24, 'enable_new_business_registration_notification', '0'),
(25, 'enable_new_subscription_notification', '0'),
(26, 'enable_welcome_email', '0'),
(27, 'enable_offline_payment', '1'),
(28, 'cms_version', '1.0'),
(29, 'accounting_version', '0.7'),
(30, 'crm_version', '2.1'),
(31, 'repair_version', '1.7');

-- --------------------------------------------------------

--
-- Table structure for table `tax_rates`
--

CREATE TABLE `tax_rates` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` double(22,4) NOT NULL,
  `is_tax_group` tinyint(1) NOT NULL DEFAULT '0',
  `for_tax_group` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tax_rates`
--

INSERT INTO `tax_rates` (`id`, `business_id`, `name`, `amount`, `is_tax_group`, `for_tax_group`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Vat', 5.0000, 0, 0, 1, NULL, '2023-07-15 02:37:02', '2023-07-15 02:37:02'),
(2, 1, 'Japan', 5.0000, 1, 0, 1, NULL, '2023-07-15 03:47:58', '2023-07-15 03:47:58');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `location_id` int UNSIGNED DEFAULT NULL,
  `res_table_id` int UNSIGNED DEFAULT NULL COMMENT 'fields to restaurant module',
  `res_waiter_id` int UNSIGNED DEFAULT NULL COMMENT 'fields to restaurant module',
  `res_order_status` enum('received','cooked','served') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `sub_type` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_quotation` tinyint(1) NOT NULL DEFAULT '0',
  `payment_status` enum('paid','due','partial') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `adjustment_type` enum('normal','abnormal') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_id` int UNSIGNED DEFAULT NULL,
  `customer_group_id` int DEFAULT NULL COMMENT 'used to add customer group while selling',
  `invoice_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ref_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscription_repeat_on` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_date` datetime NOT NULL,
  `total_before_tax` decimal(22,4) NOT NULL DEFAULT '0.0000' COMMENT 'Total before the purchase/invoice tax, this includeds the indivisual product tax',
  `tax_id` int UNSIGNED DEFAULT NULL,
  `tax_amount` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `discount_type` enum('fixed','percentage') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `discount_amount` decimal(22,4) DEFAULT '0.0000',
  `rp_redeemed` int NOT NULL DEFAULT '0' COMMENT 'rp is the short form of reward points',
  `rp_redeemed_amount` decimal(22,4) NOT NULL DEFAULT '0.0000' COMMENT 'rp is the short form of reward points',
  `shipping_details` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci,
  `delivery_date` datetime DEFAULT NULL,
  `shipping_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivered_to` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_charges` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `shipping_custom_field_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_custom_field_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_custom_field_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_custom_field_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_custom_field_5` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_notes` text COLLATE utf8mb4_unicode_ci,
  `staff_note` text COLLATE utf8mb4_unicode_ci,
  `is_export` tinyint(1) NOT NULL DEFAULT '0',
  `export_custom_fields_info` longtext COLLATE utf8mb4_unicode_ci,
  `round_off_amount` decimal(22,4) NOT NULL DEFAULT '0.0000' COMMENT 'Difference of rounded total and actual total',
  `additional_expense_key_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_expense_value_1` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `additional_expense_key_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_expense_value_2` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `additional_expense_key_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_expense_value_3` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `additional_expense_key_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_expense_value_4` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `final_total` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `expense_category_id` int UNSIGNED DEFAULT NULL,
  `expense_sub_category_id` int DEFAULT NULL,
  `expense_for` int UNSIGNED DEFAULT NULL,
  `commission_agent` int DEFAULT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_direct_sale` tinyint(1) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) NOT NULL DEFAULT '0',
  `exchange_rate` decimal(20,3) NOT NULL DEFAULT '1.000',
  `total_amount_recovered` decimal(22,4) DEFAULT NULL COMMENT 'Used for stock adjustment.',
  `transfer_parent_id` int DEFAULT NULL,
  `return_parent_id` int DEFAULT NULL,
  `opening_stock_product_id` int DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `repair_completed_on` datetime DEFAULT NULL,
  `repair_warranty_id` int DEFAULT NULL,
  `repair_brand_id` int DEFAULT NULL,
  `repair_status_id` int DEFAULT NULL,
  `repair_model_id` int DEFAULT NULL,
  `repair_job_sheet_id` int UNSIGNED DEFAULT NULL,
  `repair_defects` text COLLATE utf8mb4_unicode_ci,
  `repair_serial_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repair_checklist` text COLLATE utf8mb4_unicode_ci,
  `repair_security_pwd` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repair_security_pattern` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `repair_due_date` datetime DEFAULT NULL,
  `repair_device_id` int DEFAULT NULL,
  `repair_updates_notif` tinyint(1) NOT NULL DEFAULT '0',
  `crm_is_order_request` tinyint(1) NOT NULL DEFAULT '0',
  `essentials_duration` decimal(8,2) NOT NULL,
  `essentials_duration_unit` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `essentials_amount_per_unit_duration` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `essentials_allowances` text COLLATE utf8mb4_unicode_ci,
  `essentials_deductions` text COLLATE utf8mb4_unicode_ci,
  `purchase_requisition_ids` text COLLATE utf8mb4_unicode_ci,
  `prefer_payment_method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefer_payment_account` int DEFAULT NULL,
  `sales_order_ids` text COLLATE utf8mb4_unicode_ci,
  `purchase_order_ids` text COLLATE utf8mb4_unicode_ci,
  `custom_field_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `import_batch` int DEFAULT NULL,
  `import_time` datetime DEFAULT NULL,
  `types_of_service_id` int DEFAULT NULL,
  `packing_charge` decimal(22,4) DEFAULT NULL,
  `packing_charge_type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `service_custom_field_1` text COLLATE utf8mb4_unicode_ci,
  `service_custom_field_2` text COLLATE utf8mb4_unicode_ci,
  `service_custom_field_3` text COLLATE utf8mb4_unicode_ci,
  `service_custom_field_4` text COLLATE utf8mb4_unicode_ci,
  `service_custom_field_5` text COLLATE utf8mb4_unicode_ci,
  `service_custom_field_6` text COLLATE utf8mb4_unicode_ci,
  `is_created_from_api` tinyint(1) NOT NULL DEFAULT '0',
  `rp_earned` int NOT NULL DEFAULT '0' COMMENT 'rp is the short form of reward points',
  `order_addresses` text COLLATE utf8mb4_unicode_ci,
  `is_recurring` tinyint(1) NOT NULL DEFAULT '0',
  `recur_interval` double(22,4) DEFAULT NULL,
  `recur_interval_type` enum('days','months','years') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recur_repetitions` int DEFAULT NULL,
  `recur_stopped_on` datetime DEFAULT NULL,
  `recur_parent_id` int DEFAULT NULL,
  `invoice_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pay_term_number` int DEFAULT NULL,
  `pay_term_type` enum('days','months') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `selling_price_group_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `business_id`, `location_id`, `res_table_id`, `res_waiter_id`, `res_order_status`, `type`, `sub_type`, `status`, `sub_status`, `is_quotation`, `payment_status`, `adjustment_type`, `contact_id`, `customer_group_id`, `invoice_no`, `ref_no`, `source`, `subscription_no`, `subscription_repeat_on`, `transaction_date`, `total_before_tax`, `tax_id`, `tax_amount`, `discount_type`, `discount_amount`, `rp_redeemed`, `rp_redeemed_amount`, `shipping_details`, `shipping_address`, `delivery_date`, `shipping_status`, `delivered_to`, `shipping_charges`, `shipping_custom_field_1`, `shipping_custom_field_2`, `shipping_custom_field_3`, `shipping_custom_field_4`, `shipping_custom_field_5`, `additional_notes`, `staff_note`, `is_export`, `export_custom_fields_info`, `round_off_amount`, `additional_expense_key_1`, `additional_expense_value_1`, `additional_expense_key_2`, `additional_expense_value_2`, `additional_expense_key_3`, `additional_expense_value_3`, `additional_expense_key_4`, `additional_expense_value_4`, `final_total`, `expense_category_id`, `expense_sub_category_id`, `expense_for`, `commission_agent`, `document`, `is_direct_sale`, `is_suspend`, `exchange_rate`, `total_amount_recovered`, `transfer_parent_id`, `return_parent_id`, `opening_stock_product_id`, `created_by`, `repair_completed_on`, `repair_warranty_id`, `repair_brand_id`, `repair_status_id`, `repair_model_id`, `repair_job_sheet_id`, `repair_defects`, `repair_serial_no`, `repair_checklist`, `repair_security_pwd`, `repair_security_pattern`, `repair_due_date`, `repair_device_id`, `repair_updates_notif`, `crm_is_order_request`, `essentials_duration`, `essentials_duration_unit`, `essentials_amount_per_unit_duration`, `essentials_allowances`, `essentials_deductions`, `purchase_requisition_ids`, `prefer_payment_method`, `prefer_payment_account`, `sales_order_ids`, `purchase_order_ids`, `custom_field_1`, `custom_field_2`, `custom_field_3`, `custom_field_4`, `import_batch`, `import_time`, `types_of_service_id`, `packing_charge`, `packing_charge_type`, `service_custom_field_1`, `service_custom_field_2`, `service_custom_field_3`, `service_custom_field_4`, `service_custom_field_5`, `service_custom_field_6`, `is_created_from_api`, `rp_earned`, `order_addresses`, `is_recurring`, `recur_interval`, `recur_interval_type`, `recur_repetitions`, `recur_stopped_on`, `recur_parent_id`, `invoice_token`, `pay_term_number`, `pay_term_type`, `selling_price_group_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, NULL, NULL, NULL, 'expense', NULL, 'final', NULL, 0, 'paid', NULL, NULL, NULL, NULL, 'EP2023/0001', NULL, NULL, NULL, '2023-07-22 18:14:00', 25000.0000, NULL, 0.0000, NULL, 0.0000, 0, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0.0000, NULL, 0.0000, NULL, 0.0000, NULL, 0.0000, NULL, 0.0000, 25000.0000, 1, NULL, NULL, NULL, NULL, 0, 0, 1.000, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0.00, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 1, 30.0000, 'days', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-22 12:15:51', '2023-07-22 12:15:51'),
(2, 1, 1, NULL, NULL, NULL, 'opening_balance', NULL, 'final', NULL, 0, 'due', NULL, 3, NULL, NULL, '2023/0001', NULL, NULL, NULL, '2023-07-22 19:06:22', 10.0000, NULL, 0.0000, NULL, 0.0000, 0, 0.0000, NULL, NULL, NULL, NULL, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, 0.0000, NULL, 0.0000, NULL, 0.0000, NULL, 0.0000, NULL, 0.0000, 10.0000, NULL, NULL, NULL, NULL, NULL, 0, 0, 1.000, NULL, NULL, NULL, NULL, 2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, 0.00, NULL, 0.0000, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-22 13:06:22', '2023-07-22 13:06:22');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_payments`
--

CREATE TABLE `transaction_payments` (
  `id` int UNSIGNED NOT NULL,
  `transaction_id` int UNSIGNED DEFAULT NULL,
  `business_id` int DEFAULT NULL,
  `is_return` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Used during sales to return the change',
  `amount` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `method` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_transaction_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_holder_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_month` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_year` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_security` varchar(5) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cheque_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_account_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `paid_on` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `paid_through_link` tinyint(1) NOT NULL DEFAULT '0',
  `gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_advance` tinyint(1) NOT NULL DEFAULT '0',
  `payment_for` int DEFAULT NULL COMMENT 'stores the contact id',
  `parent_id` int DEFAULT NULL,
  `note` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_ref_no` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `account_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_payments`
--

INSERT INTO `transaction_payments` (`id`, `transaction_id`, `business_id`, `is_return`, `amount`, `method`, `payment_type`, `transaction_no`, `card_transaction_number`, `card_number`, `card_type`, `card_holder_name`, `card_month`, `card_year`, `card_security`, `cheque_number`, `bank_account_number`, `paid_on`, `created_by`, `paid_through_link`, `gateway`, `is_advance`, `payment_for`, `parent_id`, `note`, `document`, `payment_ref_no`, `account_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0, 25000.0000, 'cash', NULL, NULL, NULL, NULL, 'credit', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-22 18:14:00', 2, 0, NULL, 0, NULL, NULL, NULL, NULL, 'SP2023/0001', NULL, '2023-07-22 12:15:51', '2023-07-22 12:15:51');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_sell_lines`
--

CREATE TABLE `transaction_sell_lines` (
  `id` int UNSIGNED NOT NULL,
  `transaction_id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `variation_id` int UNSIGNED NOT NULL,
  `quantity` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `secondary_unit_quantity` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `quantity_returned` decimal(20,4) NOT NULL DEFAULT '0.0000',
  `unit_price_before_discount` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `unit_price` decimal(22,4) DEFAULT NULL COMMENT 'Sell price excluding tax',
  `line_discount_type` enum('fixed','percentage') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `line_discount_amount` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `unit_price_inc_tax` decimal(22,4) DEFAULT NULL COMMENT 'Sell price including tax',
  `item_tax` decimal(22,4) NOT NULL COMMENT 'Tax for one quantity',
  `tax_id` int UNSIGNED DEFAULT NULL,
  `discount_id` int DEFAULT NULL,
  `lot_no_line_id` int DEFAULT NULL,
  `sell_line_note` text COLLATE utf8mb4_unicode_ci,
  `so_line_id` int DEFAULT NULL,
  `so_quantity_invoiced` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `res_service_staff_id` int DEFAULT NULL,
  `res_line_order_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_sell_line_id` int DEFAULT NULL,
  `children_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT 'Type of children for the parent, like modifier or combo',
  `sub_unit_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaction_sell_lines_purchase_lines`
--

CREATE TABLE `transaction_sell_lines_purchase_lines` (
  `id` int UNSIGNED NOT NULL,
  `sell_line_id` int UNSIGNED DEFAULT NULL COMMENT 'id from transaction_sell_lines',
  `stock_adjustment_line_id` int UNSIGNED DEFAULT NULL COMMENT 'id from stock_adjustment_lines',
  `purchase_line_id` int UNSIGNED NOT NULL COMMENT 'id from purchase_lines',
  `quantity` decimal(22,4) NOT NULL,
  `qty_returned` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `types_of_services`
--

CREATE TABLE `types_of_services` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `business_id` int NOT NULL,
  `location_price_group` text COLLATE utf8mb4_unicode_ci,
  `packing_charge` decimal(22,4) DEFAULT NULL,
  `packing_charge_type` enum('fixed','percent') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `enable_custom_fields` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tyre_sizes`
--

CREATE TABLE `tyre_sizes` (
  `id` bigint UNSIGNED NOT NULL,
  `size` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tyre_sizes`
--

INSERT INTO `tyre_sizes` (`id`, `size`, `created_by`, `created_at`, `updated_at`) VALUES
(2, '23', 1, '2023-08-16 08:07:39', '2023-08-16 08:07:39'),
(3, '24', 1, '2023-08-25 03:46:20', '2023-08-25 03:46:20');

-- --------------------------------------------------------

--
-- Table structure for table `units`
--

CREATE TABLE `units` (
  `id` int UNSIGNED NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `actual_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `allow_decimal` tinyint(1) NOT NULL,
  `base_unit_id` int DEFAULT NULL,
  `base_unit_multiplier` decimal(20,4) DEFAULT NULL,
  `created_by` int UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `units`
--

INSERT INTO `units` (`id`, `business_id`, `actual_name`, `short_name`, `allow_decimal`, `base_unit_id`, `base_unit_multiplier`, `created_by`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pieces', 'Pc(s)', 0, NULL, NULL, 1, NULL, '2023-06-13 13:55:56', '2023-06-13 13:55:56'),
(2, 1, 'kilogram', '', 0, NULL, NULL, 1, '2023-08-06 14:35:34', '2023-08-05 09:00:45', '2023-08-06 14:35:34'),
(3, 1, 'KG', '', 0, NULL, NULL, 2, '2023-08-06 14:35:59', '2023-08-06 14:35:50', '2023-08-06 14:35:59'),
(4, 1, 'taest', '', 0, NULL, NULL, 1, '2023-08-08 17:01:38', '2023-08-06 16:20:19', '2023-08-08 17:01:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int UNSIGNED NOT NULL,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'user',
  `surname` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `language` char(7) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `contact_no` char(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `business_id` int UNSIGNED DEFAULT NULL,
  `essentials_department_id` int DEFAULT NULL,
  `essentials_designation_id` int DEFAULT NULL,
  `essentials_salary` decimal(22,4) DEFAULT NULL,
  `essentials_pay_period` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `essentials_pay_cycle` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `available_at` datetime DEFAULT NULL COMMENT 'Service staff avilable at. Calculated from product preparation_time_in_minutes',
  `paused_at` datetime DEFAULT NULL COMMENT 'Service staff available time paused at, Will be nulled on resume.',
  `max_sales_discount_percent` decimal(5,2) DEFAULT NULL,
  `allow_login` tinyint(1) NOT NULL DEFAULT '1',
  `status` enum('active','inactive','terminated') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `crm_contact_id` int UNSIGNED DEFAULT NULL,
  `is_cmmsn_agnt` tinyint(1) NOT NULL DEFAULT '0',
  `cmmsn_percent` decimal(4,2) NOT NULL DEFAULT '0.00',
  `selected_contacts` tinyint(1) NOT NULL DEFAULT '0',
  `dob` date DEFAULT NULL,
  `gender` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marital_status` enum('married','unmarried','divorced') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blood_group` char(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_number` char(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `family_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fb_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter_link` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_media_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social_media_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permanent_address` text COLLATE utf8mb4_unicode_ci,
  `current_address` text COLLATE utf8mb4_unicode_ci,
  `guardian_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_3` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_field_4` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_details` longtext COLLATE utf8mb4_unicode_ci,
  `id_proof_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_proof_number` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `crm_department` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Contact person''s department',
  `crm_designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Contact person''s designation',
  `location_id` int DEFAULT NULL COMMENT 'user primary work location',
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_type`, `surname`, `first_name`, `last_name`, `username`, `email`, `password`, `language`, `contact_no`, `address`, `remember_token`, `business_id`, `essentials_department_id`, `essentials_designation_id`, `essentials_salary`, `essentials_pay_period`, `essentials_pay_cycle`, `available_at`, `paused_at`, `max_sales_discount_percent`, `allow_login`, `status`, `crm_contact_id`, `is_cmmsn_agnt`, `cmmsn_percent`, `selected_contacts`, `dob`, `gender`, `marital_status`, `blood_group`, `contact_number`, `alt_number`, `family_number`, `fb_link`, `twitter_link`, `social_media_1`, `social_media_2`, `permanent_address`, `current_address`, `guardian_name`, `custom_field_1`, `custom_field_2`, `custom_field_3`, `custom_field_4`, `bank_details`, `id_proof_name`, `id_proof_number`, `crm_department`, `crm_designation`, `location_id`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'user', 'Mr', 'Sheikh Badrul Islam', 'Shimul', 'shimul', 'hello@enspiredasia.com', '$2y$10$IHh4DCdL0id/fD4matBLR.yTST5Co.5Lv.u68nd65D14bH5vctW0.', 'en', NULL, NULL, '0YOQXJVOMpEnfmzHpfil882040MPIxUoAeS3gyPRuvUdzvnuqYKxuMZZ8pc8', 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'active', NULL, 0, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"account_holder_name\":null,\"account_number\":null,\"bank_name\":null,\"bank_code\":null,\"branch\":null,\"tax_payer_id\":null}', NULL, NULL, NULL, NULL, NULL, NULL, '2023-06-13 13:55:56', '2023-07-24 02:44:18'),
(2, 'user', 'Mr', 'Murad', 'Hossain', 'murad', 'mensa.digiworld@gmail.com', '$2y$10$jlb2M.iAcmkO5Br3VgwCFeFthxaH6CKU5/r1U3dJ/zUs07d7CiFfe', 'en', NULL, NULL, 'ggRNRd3E3btzb5VKj5qom4fqK9gFtbcliNenUEZf2T7BfNKiZH6qjKxCTowS', 1, NULL, NULL, NULL, 'month', NULL, NULL, NULL, NULL, 1, 'active', NULL, 0, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"account_holder_name\":null,\"account_number\":null,\"bank_name\":null,\"bank_code\":null,\"branch\":null,\"tax_payer_id\":null}', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-22 11:23:10', '2023-07-22 11:25:13'),
(3, 'user', 'Mr', 'Md', 'Alam', 'alam', 'mdalam7246@gmail.com', '$2a$12$3YFfQGHo6B.fhdXQIJe6Fe1GJIR28wCcY1Jp1tZtJPhH89Tk0egiS', 'en', NULL, NULL, 'DFmbhQpKLr9ME4F7vL2TWEMTq54OkIOfxgCYaWq3CnTZMjA5THeQaprBJcAr', 1, NULL, NULL, NULL, 'month', NULL, NULL, NULL, NULL, 1, 'active', NULL, 0, 0.00, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '{\"account_holder_name\":null,\"account_number\":null,\"bank_name\":null,\"bank_code\":null,\"branch\":null,\"tax_payer_id\":null}', NULL, NULL, NULL, NULL, NULL, NULL, '2023-07-22 11:23:10', '2023-08-14 01:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `user_contact_access`
--

CREATE TABLE `user_contact_access` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int NOT NULL,
  `contact_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_contact_access`
--

INSERT INTO `user_contact_access` (`id`, `user_id`, `contact_id`) VALUES
(1, 2, 2),
(2, 2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `variations`
--

CREATE TABLE `variations` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `sub_sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_variation_id` int UNSIGNED NOT NULL,
  `variation_value_id` int DEFAULT NULL,
  `default_purchase_price` decimal(22,4) DEFAULT NULL,
  `dpp_inc_tax` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `profit_percent` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `default_sell_price` decimal(22,4) DEFAULT NULL,
  `sell_price_inc_tax` decimal(22,4) DEFAULT NULL COMMENT 'Sell price including tax',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `combo_variations` text COLLATE utf8mb4_unicode_ci COMMENT 'Contains the combo variation details'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variation_group_prices`
--

CREATE TABLE `variation_group_prices` (
  `id` int UNSIGNED NOT NULL,
  `variation_id` int UNSIGNED NOT NULL,
  `price_group_id` int UNSIGNED NOT NULL,
  `price_inc_tax` decimal(22,4) NOT NULL,
  `price_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'fixed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variation_location_details`
--

CREATE TABLE `variation_location_details` (
  `id` int UNSIGNED NOT NULL,
  `product_id` int UNSIGNED NOT NULL,
  `product_variation_id` int UNSIGNED NOT NULL COMMENT 'id from product_variations table',
  `variation_id` int UNSIGNED NOT NULL,
  `location_id` int UNSIGNED NOT NULL,
  `qty_available` decimal(22,4) NOT NULL DEFAULT '0.0000',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variation_templates`
--

CREATE TABLE `variation_templates` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variation_templates`
--

INSERT INTO `variation_templates` (`id`, `name`, `business_id`, `created_at`, `updated_at`) VALUES
(1, 'Size', 1, '2023-08-05 09:53:18', '2023-08-05 09:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `variation_value_templates`
--

CREATE TABLE `variation_value_templates` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `variation_template_id` int UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `variation_value_templates`
--

INSERT INTO `variation_value_templates` (`id`, `name`, `variation_template_id`, `created_at`, `updated_at`) VALUES
(1, 'S', 1, '2023-08-05 09:53:18', '2023-08-05 09:53:18'),
(2, 'M', 1, '2023-08-05 09:53:18', '2023-08-05 09:53:18'),
(3, 'L', 1, '2023-08-05 09:53:18', '2023-08-05 09:53:18');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_manufactures`
--

CREATE TABLE `vehicle_manufactures` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_manufactures`
--

INSERT INTO `vehicle_manufactures` (`id`, `name`, `category`, `country_id`, `image`, `created_by`, `created_at`, `updated_at`) VALUES
(4, 'Bike Manufacture', 'Bike', 99, '', 1, '2023-08-17 02:41:03', '2023-08-17 02:41:03'),
(5, 'Bike Manufacture 2', 'Bike', 1, '', 1, '2023-08-17 03:53:34', '2023-08-17 03:53:34'),
(6, 'Commercial Manufacture', 'Commercial', 2, '', 1, '2023-08-18 02:22:05', '2023-08-18 02:22:05'),
(7, 'asfsd', 'Passenger', 1, 'image/Ts57RVIzgd2SHg1cu4CdvTh44mvirSFHJNJHBMJO.jpg', 1, '2023-08-24 09:13:43', '2023-08-24 09:13:43'),
(8, 'test', 'Passenger', 7, '', 1, '2023-08-25 08:00:29', '2023-08-25 08:00:29'),
(9, 'Quia excepteur repel', 'Bike', 15, '', 1, '2023-08-25 09:18:50', '2023-08-25 09:18:50'),
(10, 'Nemo est quia impedi', 'Commercial', 134, '', 1, '2023-08-25 09:26:11', '2023-08-25 09:26:11'),
(11, 'Manufacture For Delete Test', 'Passenger', 11, '', 1, '2023-08-25 13:26:15', '2023-08-25 13:26:15');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_models`
--

CREATE TABLE `vehicle_models` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_manufacture_id` bigint UNSIGNED NOT NULL,
  `category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_models`
--

INSERT INTO `vehicle_models` (`id`, `name`, `vehicle_manufacture_id`, `category`, `image`, `created_by`, `created_at`, `updated_at`) VALUES
(3, 'Vehicle Model Bike', 4, 'Bike', '', 1, '2023-08-17 03:11:06', '2023-08-17 03:11:06'),
(4, 'Commercial Model', 6, 'Commercial', '', 1, '2023-08-18 02:22:27', '2023-08-18 02:22:27'),
(5, 'Et accusantium quas ', 6, 'Commercial', '', 1, '2023-08-25 08:08:35', '2023-08-25 08:08:35'),
(7, 'Model Test For Delete', 11, 'Passenger', '', 1, '2023-08-26 01:51:24', '2023-08-26 01:51:24');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_pre_orders`
--

CREATE TABLE `vehicle_pre_orders` (
  `id` bigint UNSIGNED NOT NULL,
  `customer_id` int DEFAULT NULL,
  `pre_order_recived_by` int DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `vehicle_category` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_id` bigint UNSIGNED DEFAULT NULL,
  `preferred_year` int DEFAULT NULL,
  `preferred_color` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferred_millage` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preferred_grade` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `other_requirements` text COLLATE utf8mb4_unicode_ci,
  `budget` int DEFAULT NULL,
  `expected_delivery_date` date DEFAULT NULL,
  `booking_amount` int DEFAULT NULL,
  `additional_information` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `purchase_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `terms_condition` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_pre_orders`
--

INSERT INTO `vehicle_pre_orders` (`id`, `customer_id`, `pre_order_recived_by`, `order_date`, `vehicle_category`, `product_id`, `preferred_year`, `preferred_color`, `preferred_millage`, `preferred_grade`, `other_requirements`, `budget`, `expected_delivery_date`, `booking_amount`, `additional_information`, `status`, `purchase_status`, `terms_condition`, `created_by`, `created_at`, `updated_at`) VALUES
(1, 3, 2, '1995-08-12', 'Bike', 2, 2030, 'Black', '23', 'asdfjl', 'Sed soluta sit excep', 2322, '1989-01-21', 64, 'sdfsd sdfsd', NULL, NULL, NULL, 1, '2023-08-20 13:54:28', '2023-08-20 15:03:56'),
(2, 1, 2, '1985-09-13', NULL, 2, 0, 'Iure architecto eius', 'Iure consequatur Co', 'Officia id officia o', 'Sequi ut laborum sin', 0, '1989-01-13', 97, 'Est dolores explicab', NULL, NULL, NULL, 1, '2023-08-24 03:13:03', '2023-08-24 03:13:03'),
(3, 8, 2, '1977-01-02', 'Bike', 2, 43534, 'Quia tempore volupt', 'Repudiandae sit vel', 'Tempor eius inventor', 'Quam ut voluptatem d', 0, '1987-08-13', 77, 'Dignissimos in quaer', 'In-progress', 'Pending', 'Terms & Condition 1', 1, '2023-08-27 05:05:16', '2023-08-27 05:05:16');

-- --------------------------------------------------------

--
-- Table structure for table `vehicle_products`
--

CREATE TABLE `vehicle_products` (
  `id` bigint UNSIGNED NOT NULL,
  `product_category` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `vehicle_manufacture_id` bigint UNSIGNED NOT NULL,
  `body_type_id` bigint UNSIGNED DEFAULT NULL,
  `number_of_gears` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `loading_capacity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_wheels` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_of_doors` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drive_system` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transmission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vehicle_model_id` bigint UNSIGNED NOT NULL,
  `fuel_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_origin_id` bigint UNSIGNED DEFAULT NULL,
  `chassis_code_id` bigint UNSIGNED DEFAULT NULL,
  `displacement_engine_cc_id` bigint UNSIGNED DEFAULT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vehicle_products`
--

INSERT INTO `vehicle_products` (`id`, `product_category`, `vehicle_manufacture_id`, `body_type_id`, `number_of_gears`, `loading_capacity`, `number_of_wheels`, `number_of_doors`, `drive_system`, `transmission`, `vehicle_model_id`, `fuel_type`, `model_origin_id`, `chassis_code_id`, `displacement_engine_cc_id`, `created_by`, `created_at`, `updated_at`) VALUES
(2, 'Bike', 4, 2, '7', NULL, NULL, NULL, NULL, NULL, 3, 'Hybrid', 1, NULL, 1, 1, '2023-08-20 13:35:21', '2023-08-20 13:35:21'),
(3, 'Bike', 4, 2, '2', NULL, NULL, NULL, NULL, NULL, 3, 'Propane', 1, NULL, 1, 1, '2023-08-26 03:13:52', '2023-08-26 03:13:52'),
(4, 'Bike', 4, 2, '2', NULL, NULL, NULL, NULL, NULL, 3, 'Propane', 1, NULL, 1, 1, '2023-08-26 03:14:02', '2023-08-26 03:14:02'),
(5, 'Commercial', 6, 3, NULL, '4', '4', NULL, '2WD', 'Automatic', 4, 'Diesel', 1, 2, 4, 1, '2023-08-26 03:27:09', '2023-08-26 03:27:09'),
(6, 'Passenger', 11, 1, NULL, NULL, NULL, '4', 'FWD', '', 7, 'E85', 1, 4, 4, 1, '2023-08-26 03:32:53', '2023-08-26 03:33:48');

-- --------------------------------------------------------

--
-- Table structure for table `warranties`
--

CREATE TABLE `warranties` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `business_id` int NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `duration` int NOT NULL,
  `duration_type` enum('days','months','years') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `warranties`
--

INSERT INTO `warranties` (`id`, `name`, `business_id`, `description`, `duration`, `duration_type`, `created_at`, `updated_at`) VALUES
(1, 'Spare Parts Warrenty', 1, NULL, 1, 'days', '2023-08-05 12:39:00', '2023-08-05 12:39:00'),
(2, 'Hybrid G', 1, NULL, 1, 'days', '2023-08-06 17:38:23', '2023-08-06 17:38:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounting_accounts`
--
ALTER TABLE `accounting_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounting_accounts_transactions`
--
ALTER TABLE `accounting_accounts_transactions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounting_account_types`
--
ALTER TABLE `accounting_account_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounting_acc_trans_mappings`
--
ALTER TABLE `accounting_acc_trans_mappings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounting_budgets`
--
ALTER TABLE `accounting_budgets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `accounts_business_id_index` (`business_id`),
  ADD KEY `accounts_account_type_id_index` (`account_type_id`),
  ADD KEY `accounts_created_by_index` (`created_by`);

--
-- Indexes for table `account_transactions`
--
ALTER TABLE `account_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_transactions_account_id_index` (`account_id`),
  ADD KEY `account_transactions_transaction_id_index` (`transaction_id`),
  ADD KEY `account_transactions_transaction_payment_id_index` (`transaction_payment_id`),
  ADD KEY `account_transactions_transfer_transaction_id_index` (`transfer_transaction_id`),
  ADD KEY `account_transactions_created_by_index` (`created_by`),
  ADD KEY `account_transactions_type_index` (`type`),
  ADD KEY `account_transactions_sub_type_index` (`sub_type`),
  ADD KEY `account_transactions_operation_date_index` (`operation_date`);

--
-- Indexes for table `account_types`
--
ALTER TABLE `account_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `account_types_parent_account_type_id_index` (`parent_account_type_id`),
  ADD KEY `account_types_business_id_index` (`business_id`);

--
-- Indexes for table `activity_log`
--
ALTER TABLE `activity_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_log_log_name_index` (`log_name`);

--
-- Indexes for table `barcodes`
--
ALTER TABLE `barcodes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `barcodes_business_id_foreign` (`business_id`);

--
-- Indexes for table `body_types`
--
ALTER TABLE `body_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bookings_contact_id_foreign` (`contact_id`),
  ADD KEY `bookings_business_id_foreign` (`business_id`),
  ADD KEY `bookings_created_by_foreign` (`created_by`),
  ADD KEY `bookings_table_id_index` (`table_id`),
  ADD KEY `bookings_waiter_id_index` (`waiter_id`),
  ADD KEY `bookings_location_id_index` (`location_id`),
  ADD KEY `bookings_booking_status_index` (`booking_status`),
  ADD KEY `bookings_correspondent_id_index` (`correspondent_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brands_business_id_foreign` (`business_id`),
  ADD KEY `brands_created_by_foreign` (`created_by`);

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_owner_id_foreign` (`owner_id`),
  ADD KEY `business_currency_id_foreign` (`currency_id`),
  ADD KEY `business_default_sales_tax_foreign` (`default_sales_tax`);

--
-- Indexes for table `business_locations`
--
ALTER TABLE `business_locations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `business_locations_business_id_index` (`business_id`),
  ADD KEY `business_locations_invoice_scheme_id_foreign` (`invoice_scheme_id`),
  ADD KEY `business_locations_invoice_layout_id_foreign` (`invoice_layout_id`),
  ADD KEY `business_locations_sale_invoice_layout_id_index` (`sale_invoice_layout_id`),
  ADD KEY `business_locations_selling_price_group_id_index` (`selling_price_group_id`),
  ADD KEY `business_locations_receipt_printer_type_index` (`receipt_printer_type`),
  ADD KEY `business_locations_printer_id_index` (`printer_id`);

--
-- Indexes for table `cash_denominations`
--
ALTER TABLE `cash_denominations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_denominations_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `cash_registers`
--
ALTER TABLE `cash_registers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_registers_business_id_foreign` (`business_id`),
  ADD KEY `cash_registers_user_id_foreign` (`user_id`),
  ADD KEY `cash_registers_location_id_index` (`location_id`);

--
-- Indexes for table `cash_register_transactions`
--
ALTER TABLE `cash_register_transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cash_register_transactions_cash_register_id_foreign` (`cash_register_id`),
  ADD KEY `cash_register_transactions_transaction_id_index` (`transaction_id`),
  ADD KEY `cash_register_transactions_type_index` (`type`),
  ADD KEY `cash_register_transactions_transaction_type_index` (`transaction_type`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_business_id_foreign` (`business_id`),
  ADD KEY `categories_created_by_foreign` (`created_by`),
  ADD KEY `categories_parent_id_index` (`parent_id`);

--
-- Indexes for table `categorizables`
--
ALTER TABLE `categorizables`
  ADD KEY `categorizables_categorizable_type_categorizable_id_index` (`categorizable_type`,`categorizable_id`);

--
-- Indexes for table `chassis_codes`
--
ALTER TABLE `chassis_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chassis_codes_vehicle_manufacture_id_foreign` (`vehicle_manufacture_id`);

--
-- Indexes for table `cms_pages`
--
ALTER TABLE `cms_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cms_page_metas`
--
ALTER TABLE `cms_page_metas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `cms_page_metas_cms_page_id_foreign` (`cms_page_id`);

--
-- Indexes for table `cms_site_details`
--
ALTER TABLE `cms_site_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `contacts_business_id_foreign` (`business_id`),
  ADD KEY `contacts_created_by_foreign` (`created_by`),
  ADD KEY `contacts_type_index` (`type`),
  ADD KEY `contacts_contact_status_index` (`contact_status`),
  ADD KEY `contacts_crm_source_index` (`crm_source`),
  ADD KEY `contacts_crm_life_stage_index` (`crm_life_stage`),
  ADD KEY `contacts_converted_by_index` (`converted_by`);

--
-- Indexes for table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_call_logs`
--
ALTER TABLE `crm_call_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crm_call_logs_business_id_index` (`business_id`),
  ADD KEY `crm_call_logs_user_id_index` (`user_id`),
  ADD KEY `crm_call_logs_contact_id_index` (`contact_id`),
  ADD KEY `crm_call_logs_created_by_index` (`created_by`);

--
-- Indexes for table `crm_campaigns`
--
ALTER TABLE `crm_campaigns`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crm_campaigns_business_id_foreign` (`business_id`),
  ADD KEY `crm_campaigns_created_by_index` (`created_by`);

--
-- Indexes for table `crm_contact_person_commissions`
--
ALTER TABLE `crm_contact_person_commissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_lead_users`
--
ALTER TABLE `crm_lead_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crm_lead_users_user_id_index` (`user_id`),
  ADD KEY `crm_lead_users_contact_id_index` (`contact_id`);

--
-- Indexes for table `crm_marketplaces`
--
ALTER TABLE `crm_marketplaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `crm_proposals`
--
ALTER TABLE `crm_proposals`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crm_proposals_business_id_foreign` (`business_id`),
  ADD KEY `crm_proposals_contact_id_foreign` (`contact_id`),
  ADD KEY `crm_proposals_sent_by_index` (`sent_by`);

--
-- Indexes for table `crm_proposal_templates`
--
ALTER TABLE `crm_proposal_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crm_proposal_templates_business_id_foreign` (`business_id`),
  ADD KEY `crm_proposal_templates_created_by_index` (`created_by`);

--
-- Indexes for table `crm_schedules`
--
ALTER TABLE `crm_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crm_schedules_created_by_index` (`created_by`),
  ADD KEY `crm_schedules_business_id_index` (`business_id`),
  ADD KEY `crm_schedules_contact_id_index` (`contact_id`),
  ADD KEY `crm_schedules_schedule_type_index` (`schedule_type`),
  ADD KEY `crm_schedules_notify_type_index` (`notify_type`);

--
-- Indexes for table `crm_schedule_logs`
--
ALTER TABLE `crm_schedule_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crm_schedule_logs_schedule_id_foreign` (`schedule_id`),
  ADD KEY `crm_schedule_logs_created_by_index` (`created_by`);

--
-- Indexes for table `crm_schedule_users`
--
ALTER TABLE `crm_schedule_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `crm_schedule_users_schedule_id_foreign` (`schedule_id`),
  ADD KEY `crm_schedule_users_user_id_index` (`user_id`);

--
-- Indexes for table `currencies`
--
ALTER TABLE `currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_groups_business_id_foreign` (`business_id`),
  ADD KEY `customer_groups_created_by_index` (`created_by`),
  ADD KEY `customer_groups_price_calculation_type_index` (`price_calculation_type`),
  ADD KEY `customer_groups_selling_price_group_id_index` (`selling_price_group_id`);

--
-- Indexes for table `dashboard_configurations`
--
ALTER TABLE `dashboard_configurations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard_configurations_business_id_foreign` (`business_id`);

--
-- Indexes for table `discounts`
--
ALTER TABLE `discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `discounts_business_id_index` (`business_id`),
  ADD KEY `discounts_brand_id_index` (`brand_id`),
  ADD KEY `discounts_category_id_index` (`category_id`),
  ADD KEY `discounts_location_id_index` (`location_id`),
  ADD KEY `discounts_priority_index` (`priority`),
  ADD KEY `discounts_spg_index` (`spg`);

--
-- Indexes for table `discount_variations`
--
ALTER TABLE `discount_variations`
  ADD KEY `discount_variations_discount_id_index` (`discount_id`),
  ADD KEY `discount_variations_variation_id_index` (`variation_id`);

--
-- Indexes for table `displacement_engine_ccs`
--
ALTER TABLE `displacement_engine_ccs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `document_and_notes`
--
ALTER TABLE `document_and_notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `document_and_notes_business_id_index` (`business_id`),
  ADD KEY `document_and_notes_notable_id_index` (`notable_id`),
  ADD KEY `document_and_notes_created_by_index` (`created_by`);

--
-- Indexes for table `essentials_allowances_and_deductions`
--
ALTER TABLE `essentials_allowances_and_deductions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essentials_allowances_and_deductions_business_id_index` (`business_id`);

--
-- Indexes for table `essentials_attendances`
--
ALTER TABLE `essentials_attendances`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essentials_attendances_user_id_index` (`user_id`),
  ADD KEY `essentials_attendances_business_id_index` (`business_id`),
  ADD KEY `essentials_attendances_essentials_shift_id_index` (`essentials_shift_id`);

--
-- Indexes for table `essentials_documents`
--
ALTER TABLE `essentials_documents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `essentials_document_shares`
--
ALTER TABLE `essentials_document_shares`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essentials_document_shares_document_id_index` (`document_id`),
  ADD KEY `essentials_document_shares_value_type_index` (`value_type`);

--
-- Indexes for table `essentials_holidays`
--
ALTER TABLE `essentials_holidays`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essentials_holidays_business_id_index` (`business_id`),
  ADD KEY `essentials_holidays_location_id_index` (`location_id`);

--
-- Indexes for table `essentials_kb`
--
ALTER TABLE `essentials_kb`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essentials_kb_business_id_index` (`business_id`),
  ADD KEY `essentials_kb_parent_id_index` (`parent_id`),
  ADD KEY `essentials_kb_created_by_index` (`created_by`);

--
-- Indexes for table `essentials_kb_users`
--
ALTER TABLE `essentials_kb_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essentials_kb_users_kb_id_index` (`kb_id`),
  ADD KEY `essentials_kb_users_user_id_index` (`user_id`);

--
-- Indexes for table `essentials_leaves`
--
ALTER TABLE `essentials_leaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essentials_leaves_essentials_leave_type_id_index` (`essentials_leave_type_id`),
  ADD KEY `essentials_leaves_business_id_index` (`business_id`),
  ADD KEY `essentials_leaves_user_id_index` (`user_id`);

--
-- Indexes for table `essentials_leave_types`
--
ALTER TABLE `essentials_leave_types`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essentials_leave_types_business_id_index` (`business_id`);

--
-- Indexes for table `essentials_messages`
--
ALTER TABLE `essentials_messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essentials_messages_business_id_index` (`business_id`),
  ADD KEY `essentials_messages_user_id_index` (`user_id`),
  ADD KEY `essentials_messages_location_id_index` (`location_id`);

--
-- Indexes for table `essentials_payroll_groups`
--
ALTER TABLE `essentials_payroll_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `essentials_payroll_group_transactions`
--
ALTER TABLE `essentials_payroll_group_transactions`
  ADD KEY `essentials_payroll_group_transactions_payroll_group_id_foreign` (`payroll_group_id`);

--
-- Indexes for table `essentials_reminders`
--
ALTER TABLE `essentials_reminders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essentials_reminders_business_id_index` (`business_id`),
  ADD KEY `essentials_reminders_user_id_index` (`user_id`);

--
-- Indexes for table `essentials_shifts`
--
ALTER TABLE `essentials_shifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essentials_shifts_type_index` (`type`),
  ADD KEY `essentials_shifts_business_id_index` (`business_id`);

--
-- Indexes for table `essentials_todo_comments`
--
ALTER TABLE `essentials_todo_comments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essentials_todo_comments_task_id_index` (`task_id`),
  ADD KEY `essentials_todo_comments_comment_by_index` (`comment_by`);

--
-- Indexes for table `essentials_to_dos`
--
ALTER TABLE `essentials_to_dos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essentials_to_dos_status_index` (`status`),
  ADD KEY `essentials_to_dos_priority_index` (`priority`),
  ADD KEY `essentials_to_dos_created_by_index` (`created_by`),
  ADD KEY `essentials_to_dos_business_id_index` (`business_id`),
  ADD KEY `essentials_to_dos_task_id_index` (`task_id`);

--
-- Indexes for table `essentials_user_allowance_and_deductions`
--
ALTER TABLE `essentials_user_allowance_and_deductions`
  ADD KEY `essentials_user_allowance_and_deductions_user_id_index` (`user_id`),
  ADD KEY `allow_deduct_index` (`allowance_deduction_id`);

--
-- Indexes for table `essentials_user_sales_targets`
--
ALTER TABLE `essentials_user_sales_targets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `essentials_user_shifts`
--
ALTER TABLE `essentials_user_shifts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `essentials_user_shifts_user_id_index` (`user_id`),
  ADD KEY `essentials_user_shifts_essentials_shift_id_index` (`essentials_shift_id`);

--
-- Indexes for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD PRIMARY KEY (`id`),
  ADD KEY `expense_categories_business_id_foreign` (`business_id`);

--
-- Indexes for table `exterior_colors`
--
ALTER TABLE `exterior_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `foregin_purchases`
--
ALTER TABLE `foregin_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `group_sub_taxes`
--
ALTER TABLE `group_sub_taxes`
  ADD KEY `group_sub_taxes_group_tax_id_foreign` (`group_tax_id`),
  ADD KEY `group_sub_taxes_tax_id_foreign` (`tax_id`);

--
-- Indexes for table `interior_colors`
--
ALTER TABLE `interior_colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_layouts`
--
ALTER TABLE `invoice_layouts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_layouts_business_id_foreign` (`business_id`);

--
-- Indexes for table `invoice_schemes`
--
ALTER TABLE `invoice_schemes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_schemes_business_id_foreign` (`business_id`),
  ADD KEY `invoice_schemes_scheme_type_index` (`scheme_type`),
  ADD KEY `invoice_schemes_number_type_index` (`number_type`);

--
-- Indexes for table `local_purchases`
--
ALTER TABLE `local_purchases`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`),
  ADD KEY `media_business_id_index` (`business_id`),
  ADD KEY `media_uploaded_by_index` (`uploaded_by`);

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
-- Indexes for table `model_origins`
--
ALTER TABLE `model_origins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `notification_templates`
--
ALTER TABLE `notification_templates`
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
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `package_trim_variants`
--
ALTER TABLE `package_trim_variants`
  ADD PRIMARY KEY (`id`),
  ADD KEY `package_trim_variants_vehicle_manufacture_id_foreign` (`vehicle_manufacture_id`),
  ADD KEY `package_trim_variants_vehicle_model_id_foreign` (`vehicle_model_id`);

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
-- Indexes for table `printers`
--
ALTER TABLE `printers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `printers_business_id_foreign` (`business_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_sub_category_id_foreign` (`sub_category_id`),
  ADD KEY `products_tax_foreign` (`tax`),
  ADD KEY `products_name_index` (`name`),
  ADD KEY `products_business_id_index` (`business_id`),
  ADD KEY `products_unit_id_index` (`unit_id`),
  ADD KEY `products_created_by_index` (`created_by`),
  ADD KEY `products_warranty_id_index` (`warranty_id`),
  ADD KEY `products_type_index` (`type`),
  ADD KEY `products_tax_type_index` (`tax_type`),
  ADD KEY `products_barcode_type_index` (`barcode_type`),
  ADD KEY `products_secondary_unit_id_index` (`secondary_unit_id`),
  ADD KEY `products_repair_model_id_index` (`repair_model_id`);

--
-- Indexes for table `product_locations`
--
ALTER TABLE `product_locations`
  ADD KEY `product_locations_product_id_index` (`product_id`),
  ADD KEY `product_locations_location_id_index` (`location_id`);

--
-- Indexes for table `product_racks`
--
ALTER TABLE `product_racks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_racks_business_id_index` (`business_id`),
  ADD KEY `product_racks_location_id_index` (`location_id`),
  ADD KEY `product_racks_product_id_index` (`product_id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_variations_name_index` (`name`),
  ADD KEY `product_variations_product_id_index` (`product_id`);

--
-- Indexes for table `purchase_lines`
--
ALTER TABLE `purchase_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `purchase_lines_transaction_id_foreign` (`transaction_id`),
  ADD KEY `purchase_lines_product_id_foreign` (`product_id`),
  ADD KEY `purchase_lines_variation_id_foreign` (`variation_id`),
  ADD KEY `purchase_lines_tax_id_foreign` (`tax_id`),
  ADD KEY `purchase_lines_sub_unit_id_index` (`sub_unit_id`),
  ADD KEY `purchase_lines_lot_number_index` (`lot_number`);

--
-- Indexes for table `reference_counts`
--
ALTER TABLE `reference_counts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reference_counts_business_id_index` (`business_id`);

--
-- Indexes for table `repair_device_models`
--
ALTER TABLE `repair_device_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `repair_device_models_business_id_index` (`business_id`),
  ADD KEY `repair_device_models_brand_id_index` (`brand_id`),
  ADD KEY `repair_device_models_device_id_index` (`device_id`),
  ADD KEY `repair_device_models_created_by_index` (`created_by`);

--
-- Indexes for table `repair_job_sheets`
--
ALTER TABLE `repair_job_sheets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `repair_job_sheets_business_id_index` (`business_id`),
  ADD KEY `repair_job_sheets_location_id_index` (`location_id`),
  ADD KEY `repair_job_sheets_contact_id_index` (`contact_id`),
  ADD KEY `repair_job_sheets_brand_id_index` (`brand_id`),
  ADD KEY `repair_job_sheets_device_id_index` (`device_id`),
  ADD KEY `repair_job_sheets_device_model_id_index` (`device_model_id`),
  ADD KEY `repair_job_sheets_status_id_index` (`status_id`),
  ADD KEY `repair_job_sheets_service_staff_index` (`service_staff`),
  ADD KEY `repair_job_sheets_created_by_index` (`created_by`);

--
-- Indexes for table `repair_statuses`
--
ALTER TABLE `repair_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `res_product_modifier_sets`
--
ALTER TABLE `res_product_modifier_sets`
  ADD KEY `res_product_modifier_sets_modifier_set_id_foreign` (`modifier_set_id`);

--
-- Indexes for table `res_tables`
--
ALTER TABLE `res_tables`
  ADD PRIMARY KEY (`id`),
  ADD KEY `res_tables_business_id_foreign` (`business_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `roles_business_id_foreign` (`business_id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `selling_price_groups`
--
ALTER TABLE `selling_price_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `selling_price_groups_business_id_foreign` (`business_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `stock_adjustment_lines`
--
ALTER TABLE `stock_adjustment_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stock_adjustment_lines_product_id_foreign` (`product_id`),
  ADD KEY `stock_adjustment_lines_variation_id_foreign` (`variation_id`),
  ADD KEY `stock_adjustment_lines_transaction_id_index` (`transaction_id`),
  ADD KEY `stock_adjustment_lines_lot_no_line_id_index` (`lot_no_line_id`);

--
-- Indexes for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `subscriptions_business_id_foreign` (`business_id`),
  ADD KEY `subscriptions_package_id_index` (`package_id`),
  ADD KEY `subscriptions_created_id_index` (`created_id`);

--
-- Indexes for table `superadmin_communicator_logs`
--
ALTER TABLE `superadmin_communicator_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `superadmin_frontend_pages`
--
ALTER TABLE `superadmin_frontend_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system`
--
ALTER TABLE `system`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tax_rates_business_id_foreign` (`business_id`),
  ADD KEY `tax_rates_created_by_foreign` (`created_by`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transactions_tax_id_foreign` (`tax_id`),
  ADD KEY `transactions_business_id_index` (`business_id`),
  ADD KEY `transactions_type_index` (`type`),
  ADD KEY `transactions_contact_id_index` (`contact_id`),
  ADD KEY `transactions_transaction_date_index` (`transaction_date`),
  ADD KEY `transactions_created_by_index` (`created_by`),
  ADD KEY `transactions_location_id_index` (`location_id`),
  ADD KEY `transactions_expense_for_foreign` (`expense_for`),
  ADD KEY `transactions_expense_category_id_index` (`expense_category_id`),
  ADD KEY `transactions_sub_type_index` (`sub_type`),
  ADD KEY `transactions_return_parent_id_index` (`return_parent_id`),
  ADD KEY `type` (`type`),
  ADD KEY `transactions_status_index` (`status`),
  ADD KEY `transactions_sub_status_index` (`sub_status`),
  ADD KEY `transactions_res_table_id_index` (`res_table_id`),
  ADD KEY `transactions_res_waiter_id_index` (`res_waiter_id`),
  ADD KEY `transactions_res_order_status_index` (`res_order_status`),
  ADD KEY `transactions_payment_status_index` (`payment_status`),
  ADD KEY `transactions_discount_type_index` (`discount_type`),
  ADD KEY `transactions_commission_agent_index` (`commission_agent`),
  ADD KEY `transactions_transfer_parent_id_index` (`transfer_parent_id`),
  ADD KEY `transactions_types_of_service_id_index` (`types_of_service_id`),
  ADD KEY `transactions_packing_charge_type_index` (`packing_charge_type`),
  ADD KEY `transactions_recur_parent_id_index` (`recur_parent_id`),
  ADD KEY `transactions_selling_price_group_id_index` (`selling_price_group_id`),
  ADD KEY `transactions_delivery_date_index` (`delivery_date`),
  ADD KEY `transactions_repair_model_id_index` (`repair_model_id`),
  ADD KEY `transactions_repair_warranty_id_index` (`repair_warranty_id`),
  ADD KEY `transactions_repair_brand_id_index` (`repair_brand_id`),
  ADD KEY `transactions_repair_status_id_index` (`repair_status_id`),
  ADD KEY `transactions_repair_device_id_index` (`repair_device_id`),
  ADD KEY `transactions_repair_job_sheet_id_index` (`repair_job_sheet_id`);

--
-- Indexes for table `transaction_payments`
--
ALTER TABLE `transaction_payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_payments_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_payments_created_by_index` (`created_by`),
  ADD KEY `transaction_payments_parent_id_index` (`parent_id`),
  ADD KEY `transaction_payments_payment_type_index` (`payment_type`);

--
-- Indexes for table `transaction_sell_lines`
--
ALTER TABLE `transaction_sell_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_sell_lines_transaction_id_foreign` (`transaction_id`),
  ADD KEY `transaction_sell_lines_product_id_foreign` (`product_id`),
  ADD KEY `transaction_sell_lines_variation_id_foreign` (`variation_id`),
  ADD KEY `transaction_sell_lines_tax_id_foreign` (`tax_id`),
  ADD KEY `transaction_sell_lines_children_type_index` (`children_type`),
  ADD KEY `transaction_sell_lines_parent_sell_line_id_index` (`parent_sell_line_id`),
  ADD KEY `transaction_sell_lines_line_discount_type_index` (`line_discount_type`),
  ADD KEY `transaction_sell_lines_discount_id_index` (`discount_id`),
  ADD KEY `transaction_sell_lines_lot_no_line_id_index` (`lot_no_line_id`),
  ADD KEY `transaction_sell_lines_sub_unit_id_index` (`sub_unit_id`);

--
-- Indexes for table `transaction_sell_lines_purchase_lines`
--
ALTER TABLE `transaction_sell_lines_purchase_lines`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sell_line_id` (`sell_line_id`),
  ADD KEY `stock_adjustment_line_id` (`stock_adjustment_line_id`),
  ADD KEY `purchase_line_id` (`purchase_line_id`);

--
-- Indexes for table `types_of_services`
--
ALTER TABLE `types_of_services`
  ADD PRIMARY KEY (`id`),
  ADD KEY `types_of_services_business_id_index` (`business_id`);

--
-- Indexes for table `tyre_sizes`
--
ALTER TABLE `tyre_sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `units`
--
ALTER TABLE `units`
  ADD PRIMARY KEY (`id`),
  ADD KEY `units_business_id_foreign` (`business_id`),
  ADD KEY `units_created_by_foreign` (`created_by`),
  ADD KEY `units_base_unit_id_index` (`base_unit_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD KEY `users_business_id_foreign` (`business_id`),
  ADD KEY `users_user_type_index` (`user_type`),
  ADD KEY `users_essentials_department_id_index` (`essentials_department_id`),
  ADD KEY `users_essentials_designation_id_index` (`essentials_designation_id`),
  ADD KEY `users_crm_contact_id_index` (`crm_contact_id`);

--
-- Indexes for table `user_contact_access`
--
ALTER TABLE `user_contact_access`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_contact_access_user_id_index` (`user_id`),
  ADD KEY `user_contact_access_contact_id_index` (`contact_id`);

--
-- Indexes for table `variations`
--
ALTER TABLE `variations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variations_product_id_foreign` (`product_id`),
  ADD KEY `variations_product_variation_id_foreign` (`product_variation_id`),
  ADD KEY `variations_name_index` (`name`),
  ADD KEY `variations_sub_sku_index` (`sub_sku`),
  ADD KEY `variations_variation_value_id_index` (`variation_value_id`);

--
-- Indexes for table `variation_group_prices`
--
ALTER TABLE `variation_group_prices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_group_prices_variation_id_foreign` (`variation_id`),
  ADD KEY `variation_group_prices_price_group_id_foreign` (`price_group_id`);

--
-- Indexes for table `variation_location_details`
--
ALTER TABLE `variation_location_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_location_details_location_id_foreign` (`location_id`),
  ADD KEY `variation_location_details_product_id_index` (`product_id`),
  ADD KEY `variation_location_details_product_variation_id_index` (`product_variation_id`),
  ADD KEY `variation_location_details_variation_id_index` (`variation_id`);

--
-- Indexes for table `variation_templates`
--
ALTER TABLE `variation_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_templates_business_id_foreign` (`business_id`);

--
-- Indexes for table `variation_value_templates`
--
ALTER TABLE `variation_value_templates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `variation_value_templates_name_index` (`name`),
  ADD KEY `variation_value_templates_variation_template_id_index` (`variation_template_id`);

--
-- Indexes for table `vehicle_manufactures`
--
ALTER TABLE `vehicle_manufactures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vehicle_models`
--
ALTER TABLE `vehicle_models`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_models_vehicle_manufacture_id_foreign` (`vehicle_manufacture_id`);

--
-- Indexes for table `vehicle_pre_orders`
--
ALTER TABLE `vehicle_pre_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_pre_orders_product_id_foreign` (`product_id`);

--
-- Indexes for table `vehicle_products`
--
ALTER TABLE `vehicle_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vehicle_products_vehicle_manufacture_id_foreign` (`vehicle_manufacture_id`),
  ADD KEY `vehicle_products_body_type_id_foreign` (`body_type_id`),
  ADD KEY `vehicle_products_vehicle_model_id_foreign` (`vehicle_model_id`),
  ADD KEY `vehicle_products_model_origin_id_foreign` (`model_origin_id`),
  ADD KEY `vehicle_products_chassis_code_id_foreign` (`chassis_code_id`),
  ADD KEY `vehicle_products_displacement_engine_cc_id_foreign` (`displacement_engine_cc_id`);

--
-- Indexes for table `warranties`
--
ALTER TABLE `warranties`
  ADD PRIMARY KEY (`id`),
  ADD KEY `warranties_business_id_index` (`business_id`),
  ADD KEY `warranties_duration_type_index` (`duration_type`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounting_accounts`
--
ALTER TABLE `accounting_accounts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=88;

--
-- AUTO_INCREMENT for table `accounting_accounts_transactions`
--
ALTER TABLE `accounting_accounts_transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounting_account_types`
--
ALTER TABLE `accounting_account_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `accounting_acc_trans_mappings`
--
ALTER TABLE `accounting_acc_trans_mappings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounting_budgets`
--
ALTER TABLE `accounting_budgets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_transactions`
--
ALTER TABLE `account_transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `account_types`
--
ALTER TABLE `account_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `activity_log`
--
ALTER TABLE `activity_log`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=184;

--
-- AUTO_INCREMENT for table `barcodes`
--
ALTER TABLE `barcodes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `body_types`
--
ALTER TABLE `body_types`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `business_locations`
--
ALTER TABLE `business_locations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cash_denominations`
--
ALTER TABLE `cash_denominations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cash_registers`
--
ALTER TABLE `cash_registers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cash_register_transactions`
--
ALTER TABLE `cash_register_transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `chassis_codes`
--
ALTER TABLE `chassis_codes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cms_pages`
--
ALTER TABLE `cms_pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `cms_page_metas`
--
ALTER TABLE `cms_page_metas`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cms_site_details`
--
ALTER TABLE `cms_site_details`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `country`
--
ALTER TABLE `country`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

--
-- AUTO_INCREMENT for table `crm_call_logs`
--
ALTER TABLE `crm_call_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_campaigns`
--
ALTER TABLE `crm_campaigns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_contact_person_commissions`
--
ALTER TABLE `crm_contact_person_commissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_lead_users`
--
ALTER TABLE `crm_lead_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_marketplaces`
--
ALTER TABLE `crm_marketplaces`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_proposals`
--
ALTER TABLE `crm_proposals`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_proposal_templates`
--
ALTER TABLE `crm_proposal_templates`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_schedules`
--
ALTER TABLE `crm_schedules`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_schedule_logs`
--
ALTER TABLE `crm_schedule_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `crm_schedule_users`
--
ALTER TABLE `crm_schedule_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `currencies`
--
ALTER TABLE `currencies`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT for table `customer_groups`
--
ALTER TABLE `customer_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dashboard_configurations`
--
ALTER TABLE `dashboard_configurations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `discounts`
--
ALTER TABLE `discounts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `displacement_engine_ccs`
--
ALTER TABLE `displacement_engine_ccs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `document_and_notes`
--
ALTER TABLE `document_and_notes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essentials_allowances_and_deductions`
--
ALTER TABLE `essentials_allowances_and_deductions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essentials_attendances`
--
ALTER TABLE `essentials_attendances`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essentials_documents`
--
ALTER TABLE `essentials_documents`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essentials_document_shares`
--
ALTER TABLE `essentials_document_shares`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essentials_holidays`
--
ALTER TABLE `essentials_holidays`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essentials_kb`
--
ALTER TABLE `essentials_kb`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essentials_kb_users`
--
ALTER TABLE `essentials_kb_users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essentials_leaves`
--
ALTER TABLE `essentials_leaves`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essentials_leave_types`
--
ALTER TABLE `essentials_leave_types`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essentials_messages`
--
ALTER TABLE `essentials_messages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essentials_payroll_groups`
--
ALTER TABLE `essentials_payroll_groups`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essentials_reminders`
--
ALTER TABLE `essentials_reminders`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essentials_shifts`
--
ALTER TABLE `essentials_shifts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essentials_todo_comments`
--
ALTER TABLE `essentials_todo_comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essentials_to_dos`
--
ALTER TABLE `essentials_to_dos`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `essentials_user_sales_targets`
--
ALTER TABLE `essentials_user_sales_targets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `essentials_user_shifts`
--
ALTER TABLE `essentials_user_shifts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expense_categories`
--
ALTER TABLE `expense_categories`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `exterior_colors`
--
ALTER TABLE `exterior_colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `foregin_purchases`
--
ALTER TABLE `foregin_purchases`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `interior_colors`
--
ALTER TABLE `interior_colors`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `invoice_layouts`
--
ALTER TABLE `invoice_layouts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_schemes`
--
ALTER TABLE `invoice_schemes`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `local_purchases`
--
ALTER TABLE `local_purchases`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=401;

--
-- AUTO_INCREMENT for table `model_origins`
--
ALTER TABLE `model_origins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notification_templates`
--
ALTER TABLE `notification_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `package_trim_variants`
--
ALTER TABLE `package_trim_variants`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=167;

--
-- AUTO_INCREMENT for table `printers`
--
ALTER TABLE `printers`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_racks`
--
ALTER TABLE `product_racks`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `purchase_lines`
--
ALTER TABLE `purchase_lines`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `reference_counts`
--
ALTER TABLE `reference_counts`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `repair_device_models`
--
ALTER TABLE `repair_device_models`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `repair_job_sheets`
--
ALTER TABLE `repair_job_sheets`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `repair_statuses`
--
ALTER TABLE `repair_statuses`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `res_tables`
--
ALTER TABLE `res_tables`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `selling_price_groups`
--
ALTER TABLE `selling_price_groups`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stock_adjustment_lines`
--
ALTER TABLE `stock_adjustment_lines`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `subscriptions`
--
ALTER TABLE `subscriptions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `superadmin_communicator_logs`
--
ALTER TABLE `superadmin_communicator_logs`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `superadmin_frontend_pages`
--
ALTER TABLE `superadmin_frontend_pages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system`
--
ALTER TABLE `system`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `tax_rates`
--
ALTER TABLE `tax_rates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `transaction_payments`
--
ALTER TABLE `transaction_payments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction_sell_lines`
--
ALTER TABLE `transaction_sell_lines`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transaction_sell_lines_purchase_lines`
--
ALTER TABLE `transaction_sell_lines_purchase_lines`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `types_of_services`
--
ALTER TABLE `types_of_services`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tyre_sizes`
--
ALTER TABLE `tyre_sizes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `units`
--
ALTER TABLE `units`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_contact_access`
--
ALTER TABLE `user_contact_access`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `variations`
--
ALTER TABLE `variations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variation_group_prices`
--
ALTER TABLE `variation_group_prices`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variation_location_details`
--
ALTER TABLE `variation_location_details`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variation_templates`
--
ALTER TABLE `variation_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `variation_value_templates`
--
ALTER TABLE `variation_value_templates`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_manufactures`
--
ALTER TABLE `vehicle_manufactures`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vehicle_models`
--
ALTER TABLE `vehicle_models`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vehicle_pre_orders`
--
ALTER TABLE `vehicle_pre_orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `vehicle_products`
--
ALTER TABLE `vehicle_products`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `warranties`
--
ALTER TABLE `warranties`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barcodes`
--
ALTER TABLE `barcodes`
  ADD CONSTRAINT `barcodes_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `bookings_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `brands_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `business`
--
ALTER TABLE `business`
  ADD CONSTRAINT `business_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `currencies` (`id`),
  ADD CONSTRAINT `business_default_sales_tax_foreign` FOREIGN KEY (`default_sales_tax`) REFERENCES `tax_rates` (`id`),
  ADD CONSTRAINT `business_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `business_locations`
--
ALTER TABLE `business_locations`
  ADD CONSTRAINT `business_locations_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `business_locations_invoice_layout_id_foreign` FOREIGN KEY (`invoice_layout_id`) REFERENCES `invoice_layouts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `business_locations_invoice_scheme_id_foreign` FOREIGN KEY (`invoice_scheme_id`) REFERENCES `invoice_schemes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cash_registers`
--
ALTER TABLE `cash_registers`
  ADD CONSTRAINT `cash_registers_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cash_registers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cash_register_transactions`
--
ALTER TABLE `cash_register_transactions`
  ADD CONSTRAINT `cash_register_transactions_cash_register_id_foreign` FOREIGN KEY (`cash_register_id`) REFERENCES `cash_registers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `categories_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chassis_codes`
--
ALTER TABLE `chassis_codes`
  ADD CONSTRAINT `chassis_codes_vehicle_manufacture_id_foreign` FOREIGN KEY (`vehicle_manufacture_id`) REFERENCES `vehicle_manufactures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `cms_page_metas`
--
ALTER TABLE `cms_page_metas`
  ADD CONSTRAINT `cms_page_metas_cms_page_id_foreign` FOREIGN KEY (`cms_page_id`) REFERENCES `cms_pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `contacts`
--
ALTER TABLE `contacts`
  ADD CONSTRAINT `contacts_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `contacts_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crm_campaigns`
--
ALTER TABLE `crm_campaigns`
  ADD CONSTRAINT `crm_campaigns_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crm_lead_users`
--
ALTER TABLE `crm_lead_users`
  ADD CONSTRAINT `crm_lead_users_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crm_proposals`
--
ALTER TABLE `crm_proposals`
  ADD CONSTRAINT `crm_proposals_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `crm_proposals_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crm_proposal_templates`
--
ALTER TABLE `crm_proposal_templates`
  ADD CONSTRAINT `crm_proposal_templates_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crm_schedules`
--
ALTER TABLE `crm_schedules`
  ADD CONSTRAINT `crm_schedules_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crm_schedule_logs`
--
ALTER TABLE `crm_schedule_logs`
  ADD CONSTRAINT `crm_schedule_logs_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `crm_schedules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `crm_schedule_users`
--
ALTER TABLE `crm_schedule_users`
  ADD CONSTRAINT `crm_schedule_users_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `crm_schedules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `customer_groups`
--
ALTER TABLE `customer_groups`
  ADD CONSTRAINT `customer_groups_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dashboard_configurations`
--
ALTER TABLE `dashboard_configurations`
  ADD CONSTRAINT `dashboard_configurations_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `essentials_kb`
--
ALTER TABLE `essentials_kb`
  ADD CONSTRAINT `essentials_kb_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `essentials_kb` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `essentials_payroll_group_transactions`
--
ALTER TABLE `essentials_payroll_group_transactions`
  ADD CONSTRAINT `essentials_payroll_group_transactions_payroll_group_id_foreign` FOREIGN KEY (`payroll_group_id`) REFERENCES `essentials_payroll_groups` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `expense_categories`
--
ALTER TABLE `expense_categories`
  ADD CONSTRAINT `expense_categories_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `group_sub_taxes`
--
ALTER TABLE `group_sub_taxes`
  ADD CONSTRAINT `group_sub_taxes_group_tax_id_foreign` FOREIGN KEY (`group_tax_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `group_sub_taxes_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_layouts`
--
ALTER TABLE `invoice_layouts`
  ADD CONSTRAINT `invoice_layouts_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `invoice_schemes`
--
ALTER TABLE `invoice_schemes`
  ADD CONSTRAINT `invoice_schemes_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

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
-- Constraints for table `package_trim_variants`
--
ALTER TABLE `package_trim_variants`
  ADD CONSTRAINT `package_trim_variants_vehicle_manufacture_id_foreign` FOREIGN KEY (`vehicle_manufacture_id`) REFERENCES `vehicle_manufactures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `package_trim_variants_vehicle_model_id_foreign` FOREIGN KEY (`vehicle_model_id`) REFERENCES `vehicle_models` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `printers`
--
ALTER TABLE `printers`
  ADD CONSTRAINT `printers_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_repair_model_id_foreign` FOREIGN KEY (`repair_model_id`) REFERENCES `repair_device_models` (`id`),
  ADD CONSTRAINT `products_sub_category_id_foreign` FOREIGN KEY (`sub_category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `products_tax_foreign` FOREIGN KEY (`tax`) REFERENCES `tax_rates` (`id`),
  ADD CONSTRAINT `products_unit_id_foreign` FOREIGN KEY (`unit_id`) REFERENCES `units` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD CONSTRAINT `product_variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `purchase_lines`
--
ALTER TABLE `purchase_lines`
  ADD CONSTRAINT `purchase_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_lines_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_lines_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `purchase_lines_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `repair_device_models`
--
ALTER TABLE `repair_device_models`
  ADD CONSTRAINT `repair_device_models_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `repair_device_models_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `repair_device_models_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `repair_device_models_device_id_foreign` FOREIGN KEY (`device_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `repair_job_sheets`
--
ALTER TABLE `repair_job_sheets`
  ADD CONSTRAINT `repair_job_sheets_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`),
  ADD CONSTRAINT `repair_job_sheets_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `repair_job_sheets_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `repair_job_sheets_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `repair_job_sheets_device_id_foreign` FOREIGN KEY (`device_id`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `repair_job_sheets_device_model_id_foreign` FOREIGN KEY (`device_model_id`) REFERENCES `repair_device_models` (`id`),
  ADD CONSTRAINT `repair_job_sheets_service_staff_foreign` FOREIGN KEY (`service_staff`) REFERENCES `users` (`id`);

--
-- Constraints for table `res_product_modifier_sets`
--
ALTER TABLE `res_product_modifier_sets`
  ADD CONSTRAINT `res_product_modifier_sets_modifier_set_id_foreign` FOREIGN KEY (`modifier_set_id`) REFERENCES `products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `res_tables`
--
ALTER TABLE `res_tables`
  ADD CONSTRAINT `res_tables_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `roles`
--
ALTER TABLE `roles`
  ADD CONSTRAINT `roles_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `selling_price_groups`
--
ALTER TABLE `selling_price_groups`
  ADD CONSTRAINT `selling_price_groups_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_adjustment_lines`
--
ALTER TABLE `stock_adjustment_lines`
  ADD CONSTRAINT `stock_adjustment_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_adjustment_lines_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_adjustment_lines_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subscriptions`
--
ALTER TABLE `subscriptions`
  ADD CONSTRAINT `subscriptions_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tax_rates`
--
ALTER TABLE `tax_rates`
  ADD CONSTRAINT `tax_rates_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tax_rates_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_contact_id_foreign` FOREIGN KEY (`contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_expense_category_id_foreign` FOREIGN KEY (`expense_category_id`) REFERENCES `expense_categories` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_expense_for_foreign` FOREIGN KEY (`expense_for`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `business_locations` (`id`),
  ADD CONSTRAINT `transactions_repair_job_sheet_id_foreign` FOREIGN KEY (`repair_job_sheet_id`) REFERENCES `repair_job_sheets` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_payments`
--
ALTER TABLE `transaction_payments`
  ADD CONSTRAINT `transaction_payments_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_sell_lines`
--
ALTER TABLE `transaction_sell_lines`
  ADD CONSTRAINT `transaction_sell_lines_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_sell_lines_tax_id_foreign` FOREIGN KEY (`tax_id`) REFERENCES `tax_rates` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_sell_lines_transaction_id_foreign` FOREIGN KEY (`transaction_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_sell_lines_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `units`
--
ALTER TABLE `units`
  ADD CONSTRAINT `units_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `units_created_by_foreign` FOREIGN KEY (`created_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `users_crm_contact_id_foreign` FOREIGN KEY (`crm_contact_id`) REFERENCES `contacts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variations`
--
ALTER TABLE `variations`
  ADD CONSTRAINT `variations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `variations_product_variation_id_foreign` FOREIGN KEY (`product_variation_id`) REFERENCES `product_variations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variation_group_prices`
--
ALTER TABLE `variation_group_prices`
  ADD CONSTRAINT `variation_group_prices_price_group_id_foreign` FOREIGN KEY (`price_group_id`) REFERENCES `selling_price_groups` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `variation_group_prices_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variation_location_details`
--
ALTER TABLE `variation_location_details`
  ADD CONSTRAINT `variation_location_details_location_id_foreign` FOREIGN KEY (`location_id`) REFERENCES `business_locations` (`id`),
  ADD CONSTRAINT `variation_location_details_variation_id_foreign` FOREIGN KEY (`variation_id`) REFERENCES `variations` (`id`);

--
-- Constraints for table `variation_templates`
--
ALTER TABLE `variation_templates`
  ADD CONSTRAINT `variation_templates_business_id_foreign` FOREIGN KEY (`business_id`) REFERENCES `business` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `variation_value_templates`
--
ALTER TABLE `variation_value_templates`
  ADD CONSTRAINT `variation_value_templates_variation_template_id_foreign` FOREIGN KEY (`variation_template_id`) REFERENCES `variation_templates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_models`
--
ALTER TABLE `vehicle_models`
  ADD CONSTRAINT `vehicle_models_vehicle_manufacture_id_foreign` FOREIGN KEY (`vehicle_manufacture_id`) REFERENCES `vehicle_manufactures` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_pre_orders`
--
ALTER TABLE `vehicle_pre_orders`
  ADD CONSTRAINT `vehicle_pre_orders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `vehicle_products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vehicle_products`
--
ALTER TABLE `vehicle_products`
  ADD CONSTRAINT `vehicle_products_body_type_id_foreign` FOREIGN KEY (`body_type_id`) REFERENCES `body_types` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_products_chassis_code_id_foreign` FOREIGN KEY (`chassis_code_id`) REFERENCES `chassis_codes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_products_displacement_engine_cc_id_foreign` FOREIGN KEY (`displacement_engine_cc_id`) REFERENCES `displacement_engine_ccs` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_products_model_origin_id_foreign` FOREIGN KEY (`model_origin_id`) REFERENCES `model_origins` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_products_vehicle_manufacture_id_foreign` FOREIGN KEY (`vehicle_manufacture_id`) REFERENCES `vehicle_manufactures` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `vehicle_products_vehicle_model_id_foreign` FOREIGN KEY (`vehicle_model_id`) REFERENCES `vehicle_models` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
