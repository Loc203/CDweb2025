-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 30, 2025 lúc 11:27 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `chicken_web`
--
CREATE DATABASE IF NOT EXISTS `chicken_web` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `chicken_web`;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts`
--

CREATE TABLE `accounts` (
  `id` bigint(20) NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `birthday` date NOT NULL,
  `create_at` datetime DEFAULT current_timestamp(),
  `current_password` varchar(255) DEFAULT NULL,
  `delete_at` datetime(6) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `enabled` varchar(255) DEFAULT NULL,
  `full_name` varchar(255) NOT NULL,
  `id_other` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `is_active` varchar(99) DEFAULT 'true',
  `is_delete` varchar(99) DEFAULT 'false',
  `number_login_fail` int(11) DEFAULT 0,
  `password` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `type_name` varchar(255) DEFAULT NULL,
  `update_at` datetime DEFAULT current_timestamp(),
  `verification_code` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts`
--

INSERT INTO `accounts` (`id`, `account_name`, `address`, `birthday`, `create_at`, `current_password`, `delete_at`, `email`, `enabled`, `full_name`, `id_other`, `image`, `is_active`, `is_delete`, `number_login_fail`, `password`, `phone`, `type_name`, `update_at`, `verification_code`) VALUES
(1, 'admin', 'Admin address', '2025-05-29', NULL, '$2a$10$wNoSlp1SkJa9Gwf.JQDbqeX3n0XuTd2qpK3boUfdnqPW801GForI6', NULL, 'admin@gmail.com', 'true', 'Admin', NULL, NULL, 'true', 'false', 0, '$2a$10$3aplpchlvIbWkiHYp.6zCeSGTnffWkCeMooL8XaDOYxBk0LuN0msG', '123456789', NULL, NULL, NULL),
(2, 'locuser', 'Phường Linh Trung, Thành phố Thủ Đức, Hồ Chí Minh', '2025-05-01', '2025-05-29 23:46:16', '$2a$10$cfNTBgSwnLw.EGUYrxEm0uS4lf/TISWtOm6JM3ioTCgiuVwHnj3G.', NULL, 'tranlocmom@gmail.com', 'false', 'Tran Huu Loc', NULL, NULL, 'true', 'false', 0, '$2a$10$.OH3d.MAharSUwYL6DarFuingpDW6LyrnF/bIAvIv4h0gkTwhspie', '0342761815', NULL, '2025-05-29 23:46:16', '$2a$10$KXrYTl67fh9EBKXVyHxekuSnvX5UwAmrRplo5Yxm/7GEv6GwKqmG2');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `accounts_roles`
--

CREATE TABLE `accounts_roles` (
  `account_entity_id` bigint(20) NOT NULL,
  `roles_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `accounts_roles`
--

INSERT INTO `accounts_roles` (`account_entity_id`, `roles_name`) VALUES
(1, 'ADMIN'),
(2, 'USER');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `address`
--

CREATE TABLE `address` (
  `id` bigint(20) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `id_account` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(255) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `id_account` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `carts`
--

INSERT INTO `carts` (`id`, `created_at`, `status`, `total_price`, `updated_at`, `id_account`) VALUES
(1, '2025-05-29 23:48:05', 'active', 0, '2025-05-30 16:01:16.000000', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `cart_items`
--

CREATE TABLE `cart_items` (
  `id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `product_size` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `id_cart` int(11) NOT NULL,
  `id_product` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `image_category` varchar(255) DEFAULT NULL,
  `name_category` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `categories`
--

INSERT INTO `categories` (`id`, `image_category`, `name_category`) VALUES
(1, 'https://texaschickenvn.com/vnt_upload/product/07_2023/Ga_sot_bo_toi_thao_moc_danh_muc.jpg', 'GÀ SỐT BƠ TỎI & THẢO MỘC'),
(2, 'https://texaschickenvn.com/vnt_upload/product/07_2023/Combo_Gion_Tan_C.png', 'COMBO GÀ RÁN (1 NGƯỜI)'),
(3, 'https://texaschickenvn.com/vnt_upload/product/07_2023/Combo_Vui_Ve_D.png', 'COMBO GÀ RÁN (2 NGƯỜI)'),
(4, 'https://texaschickenvn.com/vnt_upload/product/07_2023/Combo_C.png', 'COMBO GIA ĐÌNH & BẠN BÈ'),
(5, 'https://texaschickenvn.com/vnt_upload/product/07_2023/Combo_Tiet_Kiem_A.png', 'COMBO TIẾT KIỆM'),
(6, 'https://texaschickenvn.com/vnt_upload/product/07_2022/Chicken_Box_12PCs.png', 'SET GÀ RÁN CÓ XƯƠNG'),
(7, 'https://texaschickenvn.com/vnt_upload/product/07_2022/Ga_gion_co_xuong___1_mieng_1.png', 'CÁC MÓN GÀ RÁN'),
(8, 'https://texaschickenvn.com/vnt_upload/product/07_2022/Burger_Mexicana.png', 'BURGER'),
(9, 'https://texaschickenvn.com/vnt_upload/product/07_2022/Banh_cuon_Tex.png', 'BÁNH CUỘN'),
(10, 'https://texaschickenvn.com/vnt_upload/product/05_2025/Khoai_tay_chien_pho_mai.jpg', 'CÁC MÓN ĂN KÈM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `image_products`
--

CREATE TABLE `image_products` (
  `id` bigint(20) NOT NULL,
  `image` mediumtext DEFAULT NULL,
  `id_product` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `image_products`
--

INSERT INTO `image_products` (`id`, `image`, `id_product`) VALUES
(5, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748578422/7740b168-5234-42bd-b041-9448c97ab421.png', 3),
(6, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748578424/6f4dc55d-a46f-42ad-b6e1-a3b7be2cfa98.png', 3),
(7, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748591582/bac3f31d-b171-44c4-b72b-7d10785ef274.png', 4),
(8, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748591585/d5db04f3-8604-4c59-8878-f1ec90491e5d.png', 4),
(9, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748591961/b7c4e74b-08a2-42e1-8dce-e3a8c2167100.png', 5),
(10, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748591963/23f82391-2dcf-4e90-a8fe-6007764fc7db.png', 5),
(11, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748591964/e3117f45-5585-451b-b741-91e4fa465e09.png', 6),
(12, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748591967/92aa1e97-12d9-461c-9afc-c87c65546ee0.png', 6),
(13, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748592062/8fb8a8ed-ef67-4b6a-b43c-d6864cce0833.png', 7),
(14, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748592065/21e20ad2-7916-4010-8fa0-f4af7bc6d592.png', 7),
(15, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748592062/2e5901da-518e-43a6-8a88-17c860358650.png', 8),
(16, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748592065/1d5b0b95-ef85-4c49-a87f-57eb5e2915b4.png', 8),
(17, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748592182/067b354e-d56c-4b8f-a054-ecc03fc912c1.png', 9),
(18, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748592184/295b8d26-423c-42af-9c81-9e186a07b739.png', 9),
(19, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748592182/87bb4b63-2e5d-4550-8ae1-59a373537af6.png', 10),
(20, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748592184/3a1ed65f-f1f3-4d69-a978-1bee4c5fb036.png', 10),
(21, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748592992/4edeef41-488d-44a7-8fb8-ee08fc63328c.png', 11),
(22, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748592994/fe5f1b5b-151a-4246-9fca-1d6318ea4253.png', 11),
(23, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748593105/531bba8b-2e40-4a1f-969e-2013fbbf8c13.png', 12),
(24, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748593108/ac1d7de9-25be-4448-b844-481e6cf91a89.png', 12),
(25, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748593889/371d423c-96da-47a6-8121-d344d0ff8fcc.png', 13),
(26, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748593891/7c40dd96-3627-4339-b7f6-e6c153a961f1.png', 13),
(27, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748594004/f3714a3b-57a8-47c6-b6f7-70f24e15e946.png', 14),
(28, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748594007/fd674514-c796-4564-9fd9-25b2fc58f71a.png', 14),
(29, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748594154/4d86d257-88eb-4740-9cf3-62ef78f84068.png', 15),
(30, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748594161/bc6558dc-3c16-4ef9-abfa-fb02c202def3.png', 15),
(31, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748594523/645d3174-46df-4156-ba15-136c4c01a598.jpg', 16),
(32, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748594525/a87b4b39-5d11-46cf-b377-66350cbf6145.jpg', 16),
(33, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748594676/52f85e13-eac6-4c1a-88ad-3ea1a05fb6ce.jpg', 17),
(34, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748594678/8d265d4d-473c-471e-b599-573621986340.jpg', 17),
(35, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748594843/9f248be2-28ca-4b5a-88c1-3a932827b24b.jpg', 18),
(36, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748594845/1f45db9e-afcd-440d-8e3e-1f58633b5bd6.jpg', 18),
(37, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748594955/e9dcd89c-d7da-416c-bc26-1ccca85faed1.jpg', 19),
(38, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748594957/70f45849-bbb5-431d-8cc1-2ba48ed7229a.jpg', 19),
(39, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748595097/ff6895d7-d9eb-4567-bbcd-0a0a0ddb95ad.jpg', 20),
(40, 'http://res.cloudinary.com/dtkkqozjn/image/upload/v1748595099/a78413bd-f089-4c2f-ba54-34d1056d6284.jpg', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `import_coupons`
--

CREATE TABLE `import_coupons` (
  `id` bigint(20) NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `date` datetime(6) DEFAULT NULL,
  `delete_at` datetime(6) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `id_producer` int(11) DEFAULT NULL,
  `id_supplier` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `import_coupons_details`
--

CREATE TABLE `import_coupons_details` (
  `id` bigint(20) NOT NULL,
  `create_at` datetime(6) DEFAULT NULL,
  `delete_at` datetime(6) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `id_import_coupon` bigint(20) NOT NULL,
  `id_product` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `invalidated_token`
--

CREATE TABLE `invalidated_token` (
  `id` varchar(255) NOT NULL,
  `expiry_time` datetime(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `invalidated_token`
--

INSERT INTO `invalidated_token` (`id`, `expiry_time`) VALUES
('3f17158c-2d74-4397-8afb-a8f74a84cd76', '2025-05-29 23:52:58.000000'),
('4477b582-33b0-417c-a8aa-0cfa1ba67ddb', '2025-05-30 12:49:08.000000');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `inventorys`
--

CREATE TABLE `inventorys` (
  `id` bigint(20) NOT NULL,
  `date_add` datetime(6) DEFAULT NULL,
  `last_updated_date` datetime(6) DEFAULT NULL,
  `quantity` bigint(20) DEFAULT NULL,
  `id_size_color_products` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `inventorys`
--

INSERT INTO `inventorys` (`id`, `date_add`, `last_updated_date`, `quantity`, `id_size_color_products`) VALUES
(4, '2025-05-30 11:13:46.000000', '2025-05-30 11:13:46.000000', 20, 4),
(5, '2025-05-30 11:13:46.000000', '2025-05-30 11:13:46.000000', 20, 5),
(6, '2025-05-30 11:13:46.000000', '2025-05-30 11:13:46.000000', 20, 6),
(7, '2025-05-30 14:53:07.000000', '2025-05-30 14:53:07.000000', 58, 7),
(8, '2025-05-30 14:53:07.000000', '2025-05-30 14:53:07.000000', 20, 8),
(9, '2025-05-30 14:53:07.000000', '2025-05-30 14:53:07.000000', 20, 9),
(10, '2025-05-30 14:59:25.000000', '2025-05-30 14:59:25.000000', 1000, 10),
(11, '2025-05-30 14:59:25.000000', '2025-05-30 14:59:25.000000', 1000, 11),
(12, '2025-05-30 14:59:29.000000', '2025-05-30 14:59:29.000000', 1000, 12),
(13, '2025-05-30 14:59:29.000000', '2025-05-30 14:59:29.000000', 1000, 13),
(14, '2025-05-30 15:01:07.000000', '2025-05-30 15:01:07.000000', 1000, 14),
(15, '2025-05-30 15:01:07.000000', '2025-05-30 15:01:07.000000', 1000, 15),
(16, '2025-05-30 15:01:07.000000', '2025-05-30 15:01:07.000000', 1000, 16),
(17, '2025-05-30 15:01:07.000000', '2025-05-30 15:01:07.000000', 1000, 17),
(18, '2025-05-30 15:03:06.000000', '2025-05-30 15:03:06.000000', 1000, 18),
(19, '2025-05-30 15:03:06.000000', '2025-05-30 15:03:06.000000', 1000, 19),
(20, '2025-05-30 15:03:06.000000', '2025-05-30 15:03:06.000000', 1000, 20),
(21, '2025-05-30 15:03:06.000000', '2025-05-30 15:03:06.000000', 1000, 21),
(22, '2025-05-30 15:16:36.000000', '2025-05-30 15:16:36.000000', 1000, 22),
(23, '2025-05-30 15:16:36.000000', '2025-05-30 15:16:36.000000', 1000, 23),
(24, '2025-05-30 15:18:30.000000', '2025-05-30 15:18:30.000000', 1000, 24),
(25, '2025-05-30 15:18:30.000000', '2025-05-30 15:18:30.000000', 1000, 25),
(26, '2025-05-30 15:31:33.000000', '2025-05-30 15:31:33.000000', 998, 26),
(27, '2025-05-30 15:31:33.000000', '2025-05-30 15:31:33.000000', 1000, 27),
(28, '2025-05-30 15:33:29.000000', '2025-05-30 15:33:29.000000', 1000, 28),
(29, '2025-05-30 15:33:29.000000', '2025-05-30 15:33:29.000000', 1000, 29),
(30, '2025-05-30 15:36:03.000000', '2025-05-30 15:36:03.000000', 1000, 30),
(31, '2025-05-30 15:36:03.000000', '2025-05-30 15:36:03.000000', 1000, 31),
(32, '2025-05-30 15:36:03.000000', '2025-05-30 15:36:03.000000', 100, 32),
(33, '2025-05-30 15:36:03.000000', '2025-05-30 15:36:03.000000', 1000, 33),
(34, '2025-05-30 15:42:07.000000', '2025-05-30 15:42:07.000000', 1000, 34),
(35, '2025-05-30 15:42:07.000000', '2025-05-30 15:42:07.000000', 999, 35),
(36, '2025-05-30 15:44:40.000000', '2025-05-30 15:44:40.000000', 58, 36),
(37, '2025-05-30 15:44:40.000000', '2025-05-30 15:44:40.000000', 1000, 37),
(38, '2025-05-30 15:47:27.000000', '2025-05-30 15:47:27.000000', 58, 38),
(39, '2025-05-30 15:47:27.000000', '2025-05-30 15:47:27.000000', 1000, 39),
(40, '2025-05-30 15:49:19.000000', '2025-05-30 15:49:19.000000', 1000, 40),
(41, '2025-05-30 15:49:19.000000', '2025-05-30 15:49:19.000000', 1000, 41),
(42, '2025-05-30 15:51:41.000000', '2025-05-30 15:51:41.000000', 10000, 42),
(43, '2025-05-30 15:51:41.000000', '2025-05-30 15:51:41.000000', 1000, 43),
(44, '2025-05-30 15:51:41.000000', '2025-05-30 15:51:41.000000', 1000, 44);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `content` varchar(255) DEFAULT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `ip` varchar(255) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `src` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `update_at` datetime NOT NULL DEFAULT current_timestamp(),
  `id_account` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `create_at` datetime NOT NULL DEFAULT current_timestamp(),
  `delivery_at` datetime(6) DEFAULT NULL,
  `free_ship` double DEFAULT NULL,
  `note` longtext DEFAULT NULL,
  `sale` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `status_pay` varchar(255) DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `update_at` datetime(6) DEFAULT NULL,
  `id_account` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `orders`
--

INSERT INTO `orders` (`id`, `address`, `create_at`, `delivery_at`, `free_ship`, `note`, `sale`, `status`, `status_pay`, `total_price`, `update_at`, `id_account`) VALUES
(3, 'Phường Linh Trung, Thành phố Thủ Đức, Hồ Chí Minh', '2025-05-30 15:59:17', '2025-05-31 07:00:00.000000', 40000, '', '', 'Chờ xác nhận', 'Chưa thanh toán', 342000, '2025-05-30 15:59:17.000000', 2),
(4, '', '2025-05-30 16:01:16', NULL, 40000, '', '', 'Chờ xác nhận', 'Đã thanh toán', 37050, '2025-05-30 16:01:16.000000', 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `order_details`
--

CREATE TABLE `order_details` (
  `id` int(11) NOT NULL,
  `price` double DEFAULT NULL,
  `product_color` varchar(255) DEFAULT NULL,
  `product_size` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `id_order` int(11) NOT NULL,
  `id_product` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `order_details`
--

INSERT INTO `order_details` (`id`, `price`, `product_color`, `product_size`, `quantity`, `id_order`, `id_product`) VALUES
(3, 342000, 'Không Cay', 'L', 2, 3, 13),
(4, 37050, 'Cay', 'S', 1, 4, 16);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `permissions`
--

CREATE TABLE `permissions` (
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `permissions`
--

INSERT INTO `permissions` (`name`, `description`) VALUES
('ACCOUNTS_DELETE', 'Xóa Quản lý tài khoản'),
('ACCOUNTS_GET', 'Xem danh sách tài khoản'),
('ACCOUNTS_POST', 'Thêm tài khoản'),
('ACCOUNTS_PUT', 'Chỉnh sửa tài khoản'),
('ADMIN_PANEL', 'Admin panel'),
('CART_DELETE', 'Xóa giỏ hàng'),
('CART_GET', 'Xem danh sách giỏ hàng'),
('CART_POST', 'Thêm giỏ hàng'),
('CART_PUT', 'Chỉnh sửa giỏ hàng'),
('ORDERS_DELETE', 'Xóa đơn hàng'),
('ORDERS_GET', 'Xem danh sách đơn hàng'),
('ORDERS_POST', 'Thêm đơn hàng'),
('ORDERS_PUT', 'Chỉnh sửa đơn hàng'),
('PRODUCTS_DELETE', 'Xóa sản phẩm'),
('PRODUCTS_GET', 'Xem danh sách sản phẩm'),
('PRODUCTS_POST', 'Thêm sản phẩm'),
('PRODUCTS_PUT', 'Chỉnh sửa sản phẩm'),
('SALES_DELETE', 'Xóa doanh số'),
('SALES_GET', 'Xem danh sách doanh số'),
('SALES_POST', 'Thêm doanh số'),
('SALES_PUT', 'Chỉnh sửa doanh số');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `producers`
--

CREATE TABLE `producers` (
  `id` int(11) NOT NULL,
  `is_active` varchar(255) DEFAULT NULL,
  `name_producer` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `producers`
--

INSERT INTO `producers` (`id`, `is_active`, `name_producer`) VALUES
(1, 'true', 'Texas Chicken'),
(2, 'true', 'KFC');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `products`
--

CREATE TABLE `products` (
  `id` bigint(20) NOT NULL,
  `description` text DEFAULT NULL,
  `is_active` varchar(255) DEFAULT NULL,
  `is_delete` varchar(255) DEFAULT NULL,
  `name_product` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `id_categorie` bigint(20) NOT NULL,
  `id_producer` int(11) NOT NULL,
  `id_supplier` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `products`
--

INSERT INTO `products` (`id`, `description`, `is_active`, `is_delete`, `name_product`, `status`, `views`, `id_categorie`, `id_producer`, `id_supplier`) VALUES
(3, '- 2 Miếng gà sốt bơ tỏi và thảo mộc\n- 1 Bánh quy bơ mật ong\n- 1 Món ăn kèm tiêu chuẩn tùy chọn (Bắp cải trộn/ Khoai tây nghiền/ Khoai tây chiên)\n- 1 Nước ngọt\n- 2 Tương ớt + 1 tương cà', 'true', 'false', 'Combo A - Gà Sốt Bơ Tỏi & Thảo Mộc', 'Còn hàng', 21, 1, 1, 1),
(4, '- 2 Miếng gà sốt bơ tỏi và thảo mộc\n- 2 Miếng gà có xương (lựa chọn vị cay/ không cay)\n- 1 Món ăn kèm cỡ vừa tùy chọn (Bắp cải trộn/ Khoai tây nghiền/ Khoai tây chiên)\n- 2 Nước ngọt\n- 3 Tương ớt + 1 tương cà', 'true', 'false', 'Combo B - Gà Sốt Bơ Tỏi & Thảo Mộc', 'Còn hàng', 0, 1, 1, 1),
(5, '- 2 Miếng gà rán có xương (lựa chọn vị cay/ không cay)\n- 1 Nước ngọt\n- 2 Tương ớt + 1 Tương cà', 'true', 'false', 'Combo Giòn Tan 1', 'Còn hàng', 0, 2, 1, 1),
(6, '- 2 Miếng gà rán có xương (lựa chọn vị cay/ không cay)\n- 1 Nước ngọt\n- 2 Tương ớt + 1 Tương cà', 'true', 'true', 'Combo Giòn Tan 1', 'Còn hàng', 0, 2, 1, 1),
(7, '- 1 Miếng gà rán có xương (lựa chọn vị cay/ không cay)\n- 1 Bánh cuộn gà không xương ( lựa chọn vị cay/ không cay)\n- 1 Nước ngọt\n- 2 Tương ớt + 1 Tương cà', 'true', 'false', 'Combo Giòn Tan 2', 'Còn hàng', 0, 2, 1, 1),
(8, '- 1 Miếng gà rán có xương (lựa chọn vị cay/ không cay)\n- 1 Bánh cuộn gà không xương ( lựa chọn vị cay/ không cay)\n- 1 Nước ngọt\n- 2 Tương ớt + 1 Tương cà', 'true', 'true', 'Combo Giòn Tan 2', 'Còn hàng', 0, 2, 1, 1),
(9, '- 3 Miếng gà rán có xương (lựa chọn vị cay/ không cay)\n- 1 Khoai tây chiên phô mai\n- 2 Nước ngọt\n- 3 Tương ớt + 2 Tương cà', 'true', 'false', 'Combo Vui Vẻ', 'Còn hàng', 0, 3, 1, 1),
(10, '- 3 Miếng gà rán có xương (lựa chọn vị cay/ không cay)\n- 1 Khoai tây chiên phô mai\n- 2 Nước ngọt\n- 3 Tương ớt + 2 Tương cà', 'true', 'true', 'Combo Vui Vẻ', 'Còn hàng', 0, 3, 1, 1),
(11, '- 9 Miếng gà rán có xương (lựa chọn vị cay/ không cay)\n- 1 Burger tôm (lựa chọn vị cay/ không cay)\n- 1 Bánh cuộn Zesty Crunch (lựa chọn vị cay/ không cay)\n- 1 Bắp cải trộn vừa\n- 5 Nước ngọt\n- 8 Tương ớt + 4 Tương cà', 'true', 'false', 'Combo Nhóm 1', 'Còn hàng', 0, 4, 1, 1),
(12, '- 1 Miếng gà rán có xương ( lựa chọn vị cay/ không cay)\n- 1 Khoai tây nghiền tiêu chuẩn\n- 1 Nước ngọt\n- 1 Tương ớt + 1 Tương cà', 'true', 'false', 'Combo Tiết Kiệm 1', 'Còn hàng', 0, 5, 1, 1),
(13, '- 5 Miếng gà rán có xương (lựa chọn vị cay/ không cay)\n- 4 Tương ớt + 2 Tương cà', 'true', 'false', 'CHICKEN BOX – 5 MIẾNG GÀ RÁN', 'Còn hàng', 4, 6, 1, 1),
(14, '- Burger Mexicana ( lựa chọn vị cay/ không cay)\n- 1 Tương ớt + 1 Tương cà', 'true', 'false', 'Burger Mexicana', 'Còn hàng', 0, 8, 1, 1),
(15, '- Bánh Cuộn Mexicana ( lựa chọn vị cay/ không cay)\n- 1 Tương ớt + 1 Tương cà', 'true', 'false', 'Bánh cuộn Mexicana', 'Còn hàng', 0, 9, 1, 1),
(16, '- 1 Miếng Gà Rán\n- 1 Khoai Tây Chiên (Vừa)/ 1 Khoai Tây Nghiền (Vừa) & 1 Bắp Cải Trộn (Vừa) \n- 1 Pepsi (Tiêu chuẩn)\n- 2 Gói tương (cà/ ớt)', 'true', 'false', 'Combo 1 Miếng Gà', 'Còn hàng', 1, 2, 2, 2),
(17, '- 4 Miếng Gà Rán \n- 1 Khoai Múi Cau (Vừa) \n- 2 Ly Pepsi (Tiêu chuẩn) \n- 5 Gói tương (cà/ ớt)', 'true', 'false', 'Combo Nhóm No Nê', 'Còn hàng', 0, 4, 2, 2),
(18, '- 6 Miếng Gà Rán \n- 1 Mì Ý Gà Viên \n- 1 Khoai Múi Cau (Vừa) \n- 5 Ly Pepsi (Tiêu chuẩn) \n- 8 Gói tương (cà/ ớt)', 'true', 'false', 'Combo Nhóm Hội Tụ', 'Còn hàng', 0, 4, 2, 2),
(19, '- 1 Burger Gà Quay Flava \n- 1 Gói tương (cà/ ớt)', 'true', 'false', 'Burger Gà Quay Flava', 'Còn hàng', 0, 8, 2, 2),
(20, '- Khoai Tây Chiên', 'true', 'false', 'Khoai Tây Chiên', 'Còn hàng', 0, 10, 2, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotions`
--

CREATE TABLE `promotions` (
  `id` bigint(20) NOT NULL,
  `applicable_condition` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) DEFAULT NULL,
  `created_by` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `end_time` datetime(6) DEFAULT NULL,
  `fixed_discount` double DEFAULT NULL,
  `is_delete` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `percentage_discount` double DEFAULT NULL,
  `promotion_type` varchar(255) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `start_time` datetime(6) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `updated_at` datetime(6) DEFAULT NULL,
  `updated_by` varchar(255) DEFAULT NULL,
  `usage_limit` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotion_applicable_account`
--

CREATE TABLE `promotion_applicable_account` (
  `promotion_id` bigint(20) NOT NULL,
  `account_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `promotion_applicable_products`
--

CREATE TABLE `promotion_applicable_products` (
  `promotion_id` bigint(20) NOT NULL,
  `product_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rates`
--

CREATE TABLE `rates` (
  `id` bigint(20) NOT NULL,
  `number_edit` int(11) DEFAULT NULL,
  `number_star` bigint(20) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `id_account` bigint(20) DEFAULT NULL,
  `id_product` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles`
--

CREATE TABLE `roles` (
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles`
--

INSERT INTO `roles` (`name`, `description`) VALUES
('ADMIN', 'Quản trị viên'),
('ORDER_MANAGER', 'Quản lý đơn hàng'),
('PRODUCT_MANAGER', 'Quản lý sản phẩm'),
('SALES_MANAGER', 'Quản lý doanh số'),
('USER', 'Người dùng');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `roles_permissions`
--

CREATE TABLE `roles_permissions` (
  `role_entity_name` varchar(255) NOT NULL,
  `permissions_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `roles_permissions`
--

INSERT INTO `roles_permissions` (`role_entity_name`, `permissions_name`) VALUES
('ADMIN', 'ACCOUNTS_DELETE'),
('ADMIN', 'ACCOUNTS_GET'),
('ADMIN', 'ACCOUNTS_POST'),
('ADMIN', 'ACCOUNTS_PUT'),
('ADMIN', 'ADMIN_PANEL'),
('ADMIN', 'CART_DELETE'),
('ADMIN', 'CART_GET'),
('ADMIN', 'CART_POST'),
('ADMIN', 'CART_PUT'),
('ADMIN', 'ORDERS_DELETE'),
('ADMIN', 'ORDERS_GET'),
('ADMIN', 'ORDERS_POST'),
('ADMIN', 'ORDERS_PUT'),
('ADMIN', 'PRODUCTS_DELETE'),
('ADMIN', 'PRODUCTS_GET'),
('ADMIN', 'PRODUCTS_POST'),
('ADMIN', 'PRODUCTS_PUT'),
('ADMIN', 'SALES_DELETE'),
('ADMIN', 'SALES_GET'),
('ADMIN', 'SALES_POST'),
('ADMIN', 'SALES_PUT'),
('USER', 'CART_DELETE'),
('USER', 'CART_GET'),
('USER', 'CART_POST'),
('USER', 'CART_PUT');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `size_color_products`
--

CREATE TABLE `size_color_products` (
  `id` bigint(20) NOT NULL,
  `color` varchar(255) DEFAULT NULL,
  `discount` bigint(20) NOT NULL,
  `list_price` decimal(10,2) NOT NULL,
  `size` varchar(255) DEFAULT NULL,
  `id_product` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `size_color_products`
--

INSERT INTO `size_color_products` (`id`, `color`, `discount`, `list_price`, `size`, `id_product`) VALUES
(4, 'Không Cay', 10, 159000.00, 'S', 3),
(5, 'Cay', 10, 159000.00, 'S', 3),
(6, 'Không Cay', 10, 200000.00, 'XL', 3),
(7, 'Không Cay', 30, 250000.00, 'S', 4),
(8, 'Cay', 30, 299000.00, 'L', 4),
(9, 'Cay', 30, 250000.00, 'S', 4),
(10, 'Không Cay', 10, 104000.00, 'S', 5),
(11, 'Cay', 10, 104000.00, 'S', 5),
(12, 'Không Cay', 10, 104000.00, 'S', 6),
(13, 'Cay', 10, 104000.00, 'S', 6),
(14, 'Không Cay', 10, 110000.00, 'S', 7),
(15, 'Cay', 10, 110000.00, 'S', 7),
(16, 'Không Cay', 10, 110000.00, 'S', 8),
(17, 'Cay', 10, 110000.00, 'S', 8),
(18, 'Không Cay', 10, 189000.00, 'S', 9),
(19, 'Cay', 10, 189000.00, 'S', 9),
(20, 'Không Cay', 10, 189000.00, 'S', 10),
(21, 'Cay', 10, 189000.00, 'S', 10),
(22, 'Không Cay', 30, 609000.00, 'XL', 11),
(23, 'Cay', 30, 609000.00, 'XL', 11),
(24, 'Không Cay', 20, 84000.00, 'S', 12),
(25, 'Cay', 20, 84000.00, 'S', 12),
(26, 'Không Cay', 10, 190000.00, 'L', 13),
(27, 'Cay', 10, 190000.00, 'L', 13),
(28, 'Không Cay', 10, 66000.00, 'S', 14),
(29, 'Không Cay', 10, 76000.00, 'L', 14),
(30, 'Không Cay', 10, 69000.00, 'S', 15),
(31, 'Không Cay', 10, 79000.00, 'L', 15),
(32, 'Cay', 10, 69000.00, 'S', 15),
(33, 'Cay', 10, 79000.00, 'L', 15),
(34, 'Không Cay', 5, 39000.00, 'S', 16),
(35, 'Cay', 5, 39000.00, 'S', 16),
(36, 'Không Cay', 10, 150000.00, 'L', 17),
(37, 'Cay', 10, 150000.00, 'L', 17),
(38, 'Không Cay', 10, 309000.00, 'XL', 18),
(39, 'Cay', 10, 309000.00, 'XL', 18),
(40, 'Không Cay', 10, 60000.00, 'S', 19),
(41, 'Không Cay', 15, 70000.00, 'L', 19),
(42, 'Không Cay', 5, 20000.00, 'S', 20),
(43, 'Không Cay', 5, 30000.00, 'M', 20),
(44, 'Không Cay', 5, 40000.00, 'L', 20);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `suppliers`
--

CREATE TABLE `suppliers` (
  `id` bigint(20) NOT NULL,
  `is_active` varchar(255) DEFAULT NULL,
  `name_supplier` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Đang đổ dữ liệu cho bảng `suppliers`
--

INSERT INTO `suppliers` (`id`, `is_active`, `name_supplier`) VALUES
(1, 'true', 'Texas Chicken'),
(2, 'true', 'KFC');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tokens`
--

CREATE TABLE `tokens` (
  `id` bigint(20) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `expiry_date` datetime(6) DEFAULT NULL,
  `token` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_ef8srjaet88qrf7w1mvtop0pp` (`account_name`),
  ADD UNIQUE KEY `UK_n7ihswpy07ci568w34q0oi8he` (`email`);

--
-- Chỉ mục cho bảng `accounts_roles`
--
ALTER TABLE `accounts_roles`
  ADD PRIMARY KEY (`account_entity_id`,`roles_name`),
  ADD KEY `FKatqnw27h68cpuj75b6lee4oys` (`roles_name`);

--
-- Chỉ mục cho bảng `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgghjxfw6jc9rhyryy6gdbx2aj` (`id_account`);

--
-- Chỉ mục cho bảng `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKkafd2jybc2ky7yf9k0tvbi5kv` (`id_account`);

--
-- Chỉ mục cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKp3m3a38fr52d9reuijxa959w5` (`id_cart`),
  ADD KEY `FK1xclgrqh1vh4y8rtwnsxlotkh` (`id_product`);

--
-- Chỉ mục cho bảng `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `image_products`
--
ALTER TABLE `image_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKgfyycvlihoomxl1x6vn8689jl` (`id_product`);

--
-- Chỉ mục cho bảng `import_coupons`
--
ALTER TABLE `import_coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKcvpxv3y38xi734dop1enlxhuj` (`id_producer`),
  ADD KEY `FKq9gfvu6ww7fb1jyk64b2wc9ds` (`id_supplier`);

--
-- Chỉ mục cho bảng `import_coupons_details`
--
ALTER TABLE `import_coupons_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKse4evu6bnbjh8v91gl7m21qn1` (`id_import_coupon`),
  ADD KEY `FK7mltgsfk6dr7b59m5sm102nth` (`id_product`);

--
-- Chỉ mục cho bảng `invalidated_token`
--
ALTER TABLE `invalidated_token`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `inventorys`
--
ALTER TABLE `inventorys`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_tpfk4ih5f47w28nohyday5tau` (`id_size_color_products`);

--
-- Chỉ mục cho bảng `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKpa1nokvnsmyat0e2antsvk7b9` (`id_account`);

--
-- Chỉ mục cho bảng `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK2vkxi843ad5ge3soudvq8fl99` (`id_account`);

--
-- Chỉ mục cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK6h10g6el6eyicu33ddse0gm3v` (`id_order`),
  ADD KEY `FK41ypdnsfa4cd6poqkbthg94nc` (`id_product`);

--
-- Chỉ mục cho bảng `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`name`);

--
-- Chỉ mục cho bảng `producers`
--
ALTER TABLE `producers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_700y86df53n74e58jef7a3831` (`name_producer`);

--
-- Chỉ mục cho bảng `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKahmexi74qhdhgyhqjpom9ragb` (`id_categorie`),
  ADD KEY `FKtno0ix1jw9tvv40yyf0tq4lfk` (`id_producer`),
  ADD KEY `FK3wuiekefig4nfevyfr4jd8c2n` (`id_supplier`);

--
-- Chỉ mục cho bảng `promotions`
--
ALTER TABLE `promotions`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `promotion_applicable_account`
--
ALTER TABLE `promotion_applicable_account`
  ADD KEY `FKih5tmc9cj0xk1u9fsst85bjgd` (`account_id`),
  ADD KEY `FK1vt03nk75tux0xsevgvunuixt` (`promotion_id`);

--
-- Chỉ mục cho bảng `promotion_applicable_products`
--
ALTER TABLE `promotion_applicable_products`
  ADD KEY `FKt9kci4qwjwdbsq2gb4lw61n4l` (`product_id`),
  ADD KEY `FKi7lfh13rj99kn2sa409t0gan3` (`promotion_id`);

--
-- Chỉ mục cho bảng `rates`
--
ALTER TABLE `rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKdgwysy3qgmqigx7xoprq8x8dn` (`id_account`),
  ADD KEY `FKskopxivrj8pbhsrxrw8632xuf` (`id_product`);

--
-- Chỉ mục cho bảng `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`name`);

--
-- Chỉ mục cho bảng `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD PRIMARY KEY (`role_entity_name`,`permissions_name`),
  ADD KEY `FK9u1xpvjxbdnkca024o6fyr7uu` (`permissions_name`);

--
-- Chỉ mục cho bảng `size_color_products`
--
ALTER TABLE `size_color_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FKevpxsvls6t80nou109kagy7yf` (`id_product`);

--
-- Chỉ mục cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UK_8thj6wi5w2t28b3lmgv3jge1f` (`name_supplier`);

--
-- Chỉ mục cho bảng `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `accounts`
--
ALTER TABLE `accounts`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `image_products`
--
ALTER TABLE `image_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT cho bảng `import_coupons`
--
ALTER TABLE `import_coupons`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `import_coupons_details`
--
ALTER TABLE `import_coupons_details`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `inventorys`
--
ALTER TABLE `inventorys`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `order_details`
--
ALTER TABLE `order_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `producers`
--
ALTER TABLE `producers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT cho bảng `promotions`
--
ALTER TABLE `promotions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `rates`
--
ALTER TABLE `rates`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `size_color_products`
--
ALTER TABLE `size_color_products`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT cho bảng `suppliers`
--
ALTER TABLE `suppliers`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `tokens`
--
ALTER TABLE `tokens`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `accounts_roles`
--
ALTER TABLE `accounts_roles`
  ADD CONSTRAINT `FKatqnw27h68cpuj75b6lee4oys` FOREIGN KEY (`roles_name`) REFERENCES `roles` (`name`),
  ADD CONSTRAINT `FKau690ip3clw70qfki0pf4fwem` FOREIGN KEY (`account_entity_id`) REFERENCES `accounts` (`id`);

--
-- Các ràng buộc cho bảng `address`
--
ALTER TABLE `address`
  ADD CONSTRAINT `FKgghjxfw6jc9rhyryy6gdbx2aj` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id`);

--
-- Các ràng buộc cho bảng `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `FKkafd2jybc2ky7yf9k0tvbi5kv` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id`);

--
-- Các ràng buộc cho bảng `cart_items`
--
ALTER TABLE `cart_items`
  ADD CONSTRAINT `FK1xclgrqh1vh4y8rtwnsxlotkh` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FKp3m3a38fr52d9reuijxa959w5` FOREIGN KEY (`id_cart`) REFERENCES `carts` (`id`);

--
-- Các ràng buộc cho bảng `image_products`
--
ALTER TABLE `image_products`
  ADD CONSTRAINT `FKgfyycvlihoomxl1x6vn8689jl` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `import_coupons`
--
ALTER TABLE `import_coupons`
  ADD CONSTRAINT `FKcvpxv3y38xi734dop1enlxhuj` FOREIGN KEY (`id_producer`) REFERENCES `producers` (`id`),
  ADD CONSTRAINT `FKq9gfvu6ww7fb1jyk64b2wc9ds` FOREIGN KEY (`id_supplier`) REFERENCES `suppliers` (`id`);

--
-- Các ràng buộc cho bảng `import_coupons_details`
--
ALTER TABLE `import_coupons_details`
  ADD CONSTRAINT `FK7mltgsfk6dr7b59m5sm102nth` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FKse4evu6bnbjh8v91gl7m21qn1` FOREIGN KEY (`id_import_coupon`) REFERENCES `import_coupons` (`id`);

--
-- Các ràng buộc cho bảng `inventorys`
--
ALTER TABLE `inventorys`
  ADD CONSTRAINT `FK8qyhdw18n4fs0hdlcy2nvxbwm` FOREIGN KEY (`id_size_color_products`) REFERENCES `size_color_products` (`id`);

--
-- Các ràng buộc cho bảng `logs`
--
ALTER TABLE `logs`
  ADD CONSTRAINT `FKpa1nokvnsmyat0e2antsvk7b9` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id`);

--
-- Các ràng buộc cho bảng `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK2vkxi843ad5ge3soudvq8fl99` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id`);

--
-- Các ràng buộc cho bảng `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `FK41ypdnsfa4cd6poqkbthg94nc` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `FK6h10g6el6eyicu33ddse0gm3v` FOREIGN KEY (`id_order`) REFERENCES `orders` (`id`);

--
-- Các ràng buộc cho bảng `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `FK3wuiekefig4nfevyfr4jd8c2n` FOREIGN KEY (`id_supplier`) REFERENCES `suppliers` (`id`),
  ADD CONSTRAINT `FKahmexi74qhdhgyhqjpom9ragb` FOREIGN KEY (`id_categorie`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `FKtno0ix1jw9tvv40yyf0tq4lfk` FOREIGN KEY (`id_producer`) REFERENCES `producers` (`id`);

--
-- Các ràng buộc cho bảng `promotion_applicable_account`
--
ALTER TABLE `promotion_applicable_account`
  ADD CONSTRAINT `FK1vt03nk75tux0xsevgvunuixt` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`),
  ADD CONSTRAINT `FKih5tmc9cj0xk1u9fsst85bjgd` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`id`);

--
-- Các ràng buộc cho bảng `promotion_applicable_products`
--
ALTER TABLE `promotion_applicable_products`
  ADD CONSTRAINT `FKi7lfh13rj99kn2sa409t0gan3` FOREIGN KEY (`promotion_id`) REFERENCES `promotions` (`id`),
  ADD CONSTRAINT `FKt9kci4qwjwdbsq2gb4lw61n4l` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `rates`
--
ALTER TABLE `rates`
  ADD CONSTRAINT `FKdgwysy3qgmqigx7xoprq8x8dn` FOREIGN KEY (`id_account`) REFERENCES `accounts` (`id`),
  ADD CONSTRAINT `FKskopxivrj8pbhsrxrw8632xuf` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);

--
-- Các ràng buộc cho bảng `roles_permissions`
--
ALTER TABLE `roles_permissions`
  ADD CONSTRAINT `FK9u1xpvjxbdnkca024o6fyr7uu` FOREIGN KEY (`permissions_name`) REFERENCES `permissions` (`name`),
  ADD CONSTRAINT `FKhvk92iflijfr8bbo6l4bup8u` FOREIGN KEY (`role_entity_name`) REFERENCES `roles` (`name`);

--
-- Các ràng buộc cho bảng `size_color_products`
--
ALTER TABLE `size_color_products`
  ADD CONSTRAINT `FKevpxsvls6t80nou109kagy7yf` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
