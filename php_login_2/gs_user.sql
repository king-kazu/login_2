-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost:3306
-- 生成日時: 2022 年 2 月 09 日 16:04
-- サーバのバージョン： 5.7.32
-- PHP のバージョン: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- データベース: `gs_user`
--

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_users`
--

CREATE TABLE `gs_users` (
  `id` int(11) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_users`
--

INSERT INTO `gs_users` (`id`, `name`, `email`, `password`) VALUES
(21, '佐藤　一郎', 'xyz@xyz', '$2y$10$5mOmG7Gu1KwtD2WrA.P5le9p5KOpsYxpank2KPhcAOyxY0Vm3rKr6'),
(25, 'かきく', 'kakiku@kakiku', '$2y$10$dOJhwVgIc5GxzU7PI7myseJZa/txXi7..zeQJ0a9dFn.DDhTk.t1K'),
(26, '田中', 'ooo@ppp', '$2y$10$7DmztUV95x8lEuz2QZYUmeOzZ5RVvLANL9DH14h3tBVKwF9WG2j2e'),
(28, 'kkk', 'kkk@kkk', '$2y$10$sqWfqxbE83SwI8NbnNdmouov4KQqSlMGFTrrfBj1xM3bGKg.HthwK'),
(29, '中田', 'nakata@nakata', '$2y$10$olI16os1VTuMgYG4CbJgr.B7R2mTeCWJ8vAadmfsf9.jxgbAaBbiW'),
(30, '岩田', 'iwata@iwata', '$2y$10$5z1MQoJ9g8FiNwbvXgV60em.QndpPJtjXsd/ZOCpvJHyz7q71.Yle'),
(32, 'yamaoka', 'yamaoka@yamaoka', 'yamaokayamaoka'),
(33, 'okada', 'okada@okada', '$2y$10$YQCSzndcz18/Upy8PjV2NuD9GK5NEoXdb6v76J8vGoxxPjSg33Zg.'),
(34, '田中', 'tanaka@tanaka', '$2y$10$/P8BmSKn12LI9icIr98sqeBjInjwwwnz6lxbS8vzwad1pTShPcHdC'),
(35, 'mama', 'mama@mama', '$2y$10$9W6/BKJ8Mde7UrswnTLqk.WWlqA9Z4yOUCafG03wWqmBz6DsoPZ2S');

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `gs_users`
--
ALTER TABLE `gs_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- ダンプしたテーブルの AUTO_INCREMENT
--

--
-- テーブルの AUTO_INCREMENT `gs_users`
--
ALTER TABLE `gs_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
