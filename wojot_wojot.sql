-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Czas generowania: 27 Gru 2017, 11:47
-- Wersja serwera: 5.5.58-cll
-- Wersja PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `wojot_wojot`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `categories`
--

CREATE TABLE `categories` (
  `id_category` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `categories`
--

INSERT INTO `categories` (`id_category`, `name`) VALUES
(1, 'slider'),
(2, 'clubbing'),
(3, 'products'),
(4, 'interior'),
(5, 'cars'),
(6, 'sessions'),
(7, 'other');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `ci_sessions`
--

INSERT INTO `ci_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('04c9d9fc727cc632cb04181cc4b122b0d92479bd', '40.77.167.6', 1473736256, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333733363235363b),
('05a8e613a809081ff682465afcc24f04fcbbbb97', '104.236.81.135', 1473883604, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333838333630343b),
('06b1359110ed1c64707f5e539361c36a9b3646af', '149.202.54.50', 1473871887, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333837313838373b),
('06bd9ff5d95efec97dc133e0ffb90f0c9262866d', '69.30.198.186', 1473919967, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333931393936373b),
('081f75daa0a9152ba9ba5c354aab8ad00ce3c4f7', '151.80.44.115', 1473805903, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333830353930333b),
('087352f5553a741d246eb3bd273b1f17f83b4f70', '83.7.179.38', 1473769481, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333736393438313b),
('08ea3c737d72e0e3262574f978718aeb6a4dffad', '151.80.44.115', 1473805901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333830353930313b),
('0a83f3cd165cbbaf6ccaf320e503cbd16423e52c', '83.26.57.132', 1473609529, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333630393532393b),
('0e917b1080a3b3f0d676495c841a673b58b3e317', '151.80.44.115', 1473805897, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333830353839373b),
('123bd2096814699a364370969a2fac90b711c71a', '40.77.167.6', 1473737406, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333733373430363b),
('142a461bac4b8c128553c18a0734d8744ffe006b', '151.80.44.115', 1473805898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333830353839383b),
('14db8644de6888dc9958e6db691648bd29c01ee4', '207.46.13.138', 1473887456, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333838373435363b),
('15e8ee6f22ea908af394b9ebcb2277b1caa64282', '69.30.198.186', 1473919958, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333931393935383b),
('1601c856df77501190b611e5c737f048f2086b98', '83.26.57.132', 1473614472, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333631343430313b6c6f67696e7c733a353a22776f6a6f74223b69735f6c6f676765647c623a313b),
('1617e1c17e8105221b371b587f0ae02c9ac3dc59', '86.132.208.154', 1473806155, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333830363135353b),
('16977bf7beacfdb649176a024573abec0cfa4248', '68.180.230.154', 1473782548, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333738323534383b),
('178de2dd2a675b49adf6c0b69fec5a4bb60af986', '216.244.66.227', 1473914021, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333931343032313b),
('191645474f80900094c4aa8711406f616f660afd', '45.79.103.178', 1473784540, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333738343534303b),
('1b9c2cdbf244cf49c4624b70862959c4422e2466', '192.154.111.122', 1473750584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333735303538343b),
('1f424000cdb00058fed9d3266c83ece8591fc1d3', '83.19.210.121', 1473796202, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333739363137363b),
('25d058659c0c752161c571ff7db1e976612e202a', '149.202.54.50', 1473871892, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333837313839323b),
('2963e5d90c1bd4598390a7a10809e4054fa52b9f', '66.249.64.189', 1473665974, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333636353937343b),
('2b5acc71d62ddd7567907c0a9080ecf6d95ecb00', '83.19.210.121', 1473796949, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333739363934393b),
('2bc7b99585e4bca9b360d6810e43347e3a011867', '83.149.126.98', 1473655755, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333635353735353b),
('305c20196c998d572393063f668ea88cd5d6518b', '176.115.242.11', 1473625614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333632353631343b),
('30e868f3a26257c5b935bdb5bf2565dc0fa1f6d6', '69.30.198.186', 1473920122, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333932303132323b),
('313046f5261af5eddf77105a16f379ad8dd556be', '86.132.208.154', 1473806157, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333830363135373b),
('318ead800f9cfcdaafa27b7f91f0c857247ec6c7', '83.26.57.132', 1473664413, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333636343431333b),
('322930568f4f9b0d2ea345da69e89c5cdcaeb2c6', '45.79.71.122', 1473701825, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333730313832353b),
('359a1148406f38f317e3d560b4bf50464b3d319d', '148.251.123.200', 1473748257, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333734383233353b),
('3ae92af2592814d341e6b48c16d9908bdb33b68d', '180.76.15.134', 1473621781, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333632313738313b),
('3d0e39cf4e58b91b32946f380937e4c455090116', '180.76.15.137', 1473797504, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333739373530343b),
('3f0f10f0c9f985fc9f8166fa0bb64c84820b5990', '216.244.66.237', 1473777151, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333737373135313b),
('40f5c6f349fff14f955c17c2142b3aef87340b74', '66.249.93.6', 1473790088, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333739303038383b),
('43ce131d2c70861b35d74ebd4a28f99133df6246', '138.201.59.34', 1473863955, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333836333935353b),
('43e8f5f960638ff83a85fa2d3e3fef9df7abd719', '104.236.81.135', 1473883570, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333838333537303b),
('47e586cbe0d99d59f9c86ac97578fd399aad1e24', '69.30.198.186', 1473920040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333932303034303b),
('4850faad4e7c82332fa39fc593771f1ce26e7001', '168.1.128.76', 1473848841, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333834383834313b),
('48cb71ae792a3629a62a3fd5fa20731bee454ecd', '178.154.189.35', 1473832860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333833323835393b),
('491bb541292c6768715ffaaa2359fc6a53fdc834', '93.219.123.52', 1473793912, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333739333931323b),
('4bd8e334112aa5f4600f9901bc2481bd2ed09020', '69.30.198.202', 1473819849, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333831393834393b),
('4c58830febe6a60aaad4cae0883f704a44545c01', '216.244.66.227', 1473914020, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333931343032303b),
('4ce82b7e3f6975a54394d4b750166d153cf2c09a', '66.249.93.2', 1473840653, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333834303635333b),
('4fefb01c8d346b61a7111f78e74ccc06eaa99417', '69.30.198.186', 1473920136, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333932303133363b),
('519d1c39f92b218c916bed59c4bd64da793d2070', '149.202.54.50', 1473871898, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333837313839383b),
('545a1c83c92d038df6d9e794e1a2d2c45f2b353c', '151.80.44.115', 1473805895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333830353839353b),
('56193177a841401bea97e24dd92207820c867350', '207.46.13.29', 1473763512, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333736333531323b),
('583dc425d10296f2c238aa0083949295e4011015', '66.249.64.148', 1473699792, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333639393739323b),
('5870739113a86b0f0f6a2fbd6c52faf9f68e066d', '149.202.54.50', 1473871889, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333837313838393b),
('587646cce27d9442e4f256097539839ae9135486', '163.172.66.164', 1473722939, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333732323933393b),
('59c8045e2e0608bb46fa93ace30c63cd0c8e9fd4', '192.154.104.2', 1473847042, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333834373034323b),
('5aa83a72996b8ae108b3ccfcc71c11c2a535a26e', '157.55.39.155', 1473922141, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333932323134313b),
('5b70105843e09f52c3796e83d11a84d2bc5115de', '66.249.64.113', 1473612367, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333631323336373b),
('5fe3dc8c493daaa969e9298e0b6d0e87ff03dc5a', '40.77.167.6', 1473702117, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333730323131373b),
('60579a1f20ccec61e685445e07c51ab78f02c6b7', '69.30.198.186', 1473920015, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333932303031353b),
('60efabbf4940cc78b873610750d5778f245f24bf', '157.55.39.220', 1473904704, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333930343730343b),
('6203d1c2f3b7ca58adbec12e1748dfc234fa8f66', '178.154.189.35', 1473832860, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333833323836303b),
('68c5bbdafe6fec4df7763ec8bd558d50d27848b8', '83.19.210.121', 1473796819, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333739363535333b),
('6b000f65f0859f06149ff141efef9c344f6fdbc6', '83.26.57.132', 1473663899, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333636333839383b),
('6b39ed3426156188937de1d68fad06b8e7d84d84', '141.8.184.23', 1473660417, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333636303431373b),
('6d78e16eb114eacaed4930731743e56613d07fae', '83.26.57.132', 1473621874, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333632313837343b),
('7009d559d02721d7639448b106f5bebb6a38c495', '151.80.44.115', 1473805906, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333830353930363b),
('70f536ab8d8bda608746cf625d77805e75ea39a9', '207.46.13.138', 1473887390, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333838373339303b),
('72245ea97d5e6e15c2a9c9ad1446bdf8ed57b586', '91.246.208.85', 1473698839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333639383833393b),
('739f078238b2a55208d9a9bd326cf8975fd83791', '188.165.200.217', 1473691761, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333639313736313b),
('7b65851aac8d7e250d9c5f1b0e833c019653899b', '178.154.189.35', 1473734502, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333733343530323b),
('81bf58adb91ad1af81142ed06730c06488c735db', '66.249.64.109', 1473652878, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333635323837383b),
('8220df393075e389fbb0714e4f9260268ed96e15', '216.244.66.227', 1473625904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333632353930343b),
('8239669c5f9f1b532beb7571fda2a9e03c20556f', '104.236.81.135', 1473883601, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333838333630313b),
('82e4653915118b885e338161b596b649aa51efb2', '104.236.81.135', 1473883590, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333838333539303b),
('8d0928bfa17740491b86a8bf47e79f2cf2b64ba8', '157.55.39.37', 1473701397, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333730313339373b),
('8d7e98838b8bac5641933ab4cfb295682bf8fdb4', '66.249.64.128', 1473656665, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333635363636353b),
('8f5257f895ea3915d3ec9d6a0258b1c792e2a401', '79.96.79.40', 1473751965, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333735313936353b),
('8f93bb733c24368a51efe012c3a0b85c9a738f25', '51.255.65.66', 1473625541, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333632353534313b),
('92c42b0154ce9e69f52afdff7d993861b51de415', '104.236.81.135', 1473883579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333838333537393b),
('95c8c75152a9231bedbdd76720a6b2ae82033385', '66.249.76.37', 1473799666, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333739393636363b),
('9846eba05d60a9a6cbe230b9d27db0e373276494', '66.249.64.148', 1473919501, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333931393530313b),
('98e6a7a9fa365e715b5aeafc120e45f616449e7f', '104.236.81.135', 1473883609, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333838333630393b),
('9dbb438b3138e98870ff9688e109054a548fde5f', '104.236.81.135', 1473883575, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333838333537353b),
('9e7049a846b934a8461411e4db4fe91c48333d19', '104.236.81.135', 1473883572, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333838333537323b),
('a1a71287e292d08ac3618e21f7f87a52c5b8606a', '40.77.167.94', 1473905826, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333930353832363b),
('a3add73633a8d4ff8dab944f4207bc7c8186d70a', '45.79.71.122', 1473644670, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333634343637303b),
('a51e4a81a110764fccbd0802505b5a668e9385d3', '104.236.81.135', 1473883594, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333838333539343b),
('a70a3a32bc33a4bb1fad22a8273bfb6f834c0b13', '40.77.167.6', 1473681166, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333638313136363b),
('a78b31c5006d779196f5fc6cbd038c0f5169d9df', '40.77.167.6', 1473641051, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333634313035313b),
('acefcfeb18d84659243d67786c5afdafdc1090b5', '5.9.85.4', 1473912960, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333931323936303b),
('ae63741833728ccb5ea785bb3567581c2de67ff4', '180.76.15.20', 1473693254, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333639333235343b),
('b11842cde0f3c8abebc4d96645acd1b03b5d55bb', '192.154.104.2', 1473847040, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333834373034303b),
('b232b24e5b052b78b2ec1c62582fe8f7d5c815aa', '149.202.54.50', 1473871882, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333837313838323b),
('b23389bda35175ce481c15ad0ccc92270832199b', '104.236.81.135', 1473883584, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333838333538343b),
('b63716527cbd03c072e588b130d8eb9921c2bea9', '207.46.13.29', 1473764232, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333736343233313b),
('b6478856abb46eada03b912c257546d9ef251c88', '93.127.159.230', 1473666355, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333636363335353b),
('b82bf17934a35d19f2cef8f5491521dbe8e410ae', '45.79.71.122', 1473691875, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333639313837353b),
('ba6434790002565f88549ec3d1ade1db59089b52', '66.249.93.6', 1473750476, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333735303437363b),
('baa524c3d9ba0b9cedb78427a903c5b37338dcf3', '217.99.198.88', 1473674854, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333637343835323b),
('baa6dc1b5e9d69179d2d26fefc9d8b226bf218f8', '40.77.167.6', 1473627578, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333632373537373b),
('bae617d7bf2443bf94e292be07d358680daa374a', '178.154.149.5', 1473660420, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333636303432303b),
('bb20b198009c25c88cb1e5038ddde301d35f60e6', '192.154.111.122', 1473750583, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333735303538333b),
('bb210f558050e3333f449cb9b294ffd95d6bfb10', '79.96.79.40', 1473863265, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333836333236343b),
('bcf021ef99fe69d4aab16aea0464355389741707', '149.202.54.50', 1473871901, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333837313930313b),
('bdf8a805b48a64dbd988a143f48df16565aadbbb', '45.79.71.122', 1473644671, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333634343637313b),
('c0696c0f9e21247e761ade1117f9756c55fd98b3', '79.96.79.40', 1473751839, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333735313833393b),
('c0b114f4a7bb5c3bfeee7a53f18ae6ff5e3dc256', '78.10.38.55', 1473768450, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333736383435303b),
('c3410407fdb76ce847bc9103c2ee847eabcaee23', '66.249.64.113', 1473617353, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333631373335333b),
('c5a584beb96bdb7834fe4fa70494f0c323a1d52d', '52.87.251.204', 1473729433, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333732393433333b),
('c949195c28c853143be28c4bb96b34aa0bcef424', '91.194.84.106', 1473706923, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333730363932333b),
('cfbe2d5d5f315c44027ca733fa7f9dc25a97f840', '66.249.93.209', 1473851208, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333835313230383b),
('d045b9f2a411f7cf56cc85c7bc3c6ff649df6fb0', '157.55.39.155', 1473921617, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333932313631373b),
('d2c246924111fde166d088045d7112e8761ca6cf', '207.46.13.30', 1473704869, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333730343836393b),
('d3786d4aa8964d5a1ac586e0911d6fcdb5a3f6a3', '66.249.64.191', 1473627833, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333632373833323b),
('d43ce1b1326c5621c4a1f369e614d14ad5eb43fb', '84.10.58.2', 1473920523, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333932303234333b),
('d6e6b2ad654994359da7d8a9a183d013d6a91476', '83.142.184.146', 1473840207, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333834303230373b),
('da9b43cdb1c171a153c51205775b0bdfb9a1a9a1', '216.244.66.237', 1473777150, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333737373135303b),
('dfcfb9e55ee9677bfab71e91a2185a2d3a9bd39f', '83.27.73.57', 1473706907, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333730363930343b),
('e0b200b047444e7c6d8bd4e1cf937b48b30e2745', '79.96.79.40', 1473661469, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333636313436383b),
('e3dd01a9d0974f943c80a5fabc44af2f9f53569f', '66.249.64.111', 1473872837, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333837323833373b),
('e7d6733c41e9ada1906b4cb0a42fea56cb700c59', '69.30.198.186', 1473919955, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333931393935353b),
('e818493ad59819a113ebd181e587c013d7e55ece', '66.249.93.6', 1473673023, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333637333032333b),
('e833c445e68f0c7d576e23400bf962dae3463a03', '149.202.54.50', 1473871895, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333837313839353b),
('e8af1a09267d7696244f9c9f186e9dfda8aa39b5', '188.165.200.217', 1473896934, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333839363933343b),
('eb25bc1e4fa7217ecdb5ac07df2a3860be628f74', '79.96.79.40', 1473643469, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333634333436393b),
('eb2fb9f0bcff3a393be030689a9b45d6e3ab4e1f', '79.96.79.40', 1473834316, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333833343331363b),
('eb804b5dc257d96010855b7c9f0c2917acc3cfff', '198.37.114.84', 1473845062, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333834353036323b),
('ebaba79f5167ab10711bed86d51cbdc77a6d165a', '40.77.167.6', 1473640347, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333634303334373b),
('f051764326255273bd89aaea72566d241ea9c499', '144.76.7.107', 1473814286, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333831343238363b),
('f261005a1d1623da2ec128796e75f99acc7f8784', '66.249.64.145', 1473912845, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333931323834353b),
('f4e35fb5c06b41695113371ea4570a49f6ffd8b7', '40.77.167.6', 1473681852, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333638313835323b),
('f5289d4a1f2b48165ede7af366afada0bc2adbee', '69.30.221.250', 1473647343, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333634373334333b),
('f6d653629fe9480956d1d5f9d103b473f5d302cd', '151.80.44.115', 1473805904, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333830353930343b),
('f92a2c3807c410f91bd97a22c27ec63482ef2b23', '84.10.58.2', 1473920551, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333932303535313b),
('fcf0808d283eb1fff36fad9252edceca77124ece', '66.249.64.189', 1473913499, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333931333439393b),
('fff7ceb13dab4dee1405d5fe1a0f6fea8f1b7f17', '83.142.184.146', 1473850053, 0x5f5f63695f6c6173745f726567656e65726174657c693a313437333835303035333b);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `messages`
--

CREATE TABLE `messages` (
  `id_message` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telephone` varchar(20) DEFAULT NULL,
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `messages`
--

INSERT INTO `messages` (`id_message`, `name`, `email`, `telephone`, `message`) VALUES
(1, 'Wojciech', 'wojotek@gmail.com', '+48666700779', 'test'),
(2, 'Wojciech', 'wojotek@gmail.com', '+48666700779', 'asd<test> \'asd'),
(3, 'Wojciech', 'wojotek@gmail.com', '', 'asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd asd'),
(4, 'Wojciech', 'wojotek@gmail.com', '+48666700779', 'test'),
(5, 'Stefan', 'stefek@gmail.com', '+48666700779', 'Cześć, piszę w sprawie ąćżźó'),
(6, 'Stefan', 'test@test.com', '666700800', 'Test wiadomosci\r\nwieloliniowej'),
(7, 'Wojciech', 'wojotek@gmail.com', '+48666700779', 'asd'),
(8, 'Wojciech', 'wojotek@gmail.com', '', 'asd'),
(9, 'Wojciech', 'wojotek@gmail.com', '+48666700779', 'asddasdasd asd sa dsa d\r\n asd sad'),
(10, 'Martyna', 'martys.xd@vp.pl', '502566293', 'Witam , poszukuje fotografa na studniówkę , zainteresowały mnie twoje zdjęcia więc dlatego pisze z Pytaniem czy masz jakiś cennik czy poprostu według uznania ? Zależy nam na dobrym Fotografie ,'),
(11, 'wesleysltyl', 'wesley_hodell94@rambler.ru', '123456', 'Welcome http://www.wojot.pl your discount code: jw2ddXeWLu8iBN \r\n \r\nSubscribe your suggestions via the contact form on the websites of companies all domain zones of the world.  \r\n \r\nCan order the test for $10 (send 10 thousand messages), then the Supplement, and continue on... \r\nBesides distribution, you can buy these base prices below. \r\nFrom sent out by the base removed and the official sites of the countries hosting sites. \r\nAlso you can buy the base hosting sites and official sites anywhere in the world. \r\nP.S. \r\nPlease Do not respond to it offer from its mailbox, as it is created automatically and will not come to us! \r\nMailbox for communication: contact-forma@seznam.cz \r\n \r\nPrice-list 351  domains: \r\n \r\nHit of sales! 55089093 sites 28 countries of the European Union - $1200 \r\nHit of sales! .com 124228147  sites commercial - $1950 \r\nHit of sales! Enterprises and organizations of the Russian Federation - 2030078 contact-form - 150$ \r\nHit of sales! Base 15 Russian-speaking countries-CIS+Baltic States+Israel 811247 site - 100$ \r\nTop: 1355847 the best domains from all countries of the world - 100$ \r\nTop: 16821856 the most visited webdomains in the world - 250$ \r\n \r\n.com 124228147  sites commercial - $1950 \r\n.net 15689222  sites network - $450 \r\n.org 10922428  sites organization - $350 \r\n.info 5454638  sites information - $250 \r\n.biz 2361884  sites business - $150 \r\n.us 3139563 sites United States of America - $200 \r\n.us 578927  sites International zone United States of America:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on - $80 \r\n.mx 609278  sites United Mexican States- $80 \r\n.mx 86593 sites International zone United Mexican States:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on -$50 \r\n.at 1356722 sites Republic of Austria - $100 \r\n.at 181907 sites International zone Austria :.com .net .biz .info .name .tel .mobi .asia .xxx, and so on -$50 \r\n.ca 2587463  sites CAN- $150 \r\n.ca 288395 sites International zone CAN:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on -$50 \r\n.cn 5970231  sites People\'s Republic of China - $250 \r\n.cn 1372416  sites International zone China:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on -$100 \r\n.au 1699430  sites AUS - $100 \r\n.au 461279  sites International zone Australia:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on -$80 \r\n.de 15078512  sites Federal Republic of Germany - $450 \r\n.de 3894156  sites International zone Germany:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on -$200 \r\n.es 1685048  sites Kingdom of Spain - $100 \r\n.es 541916 sites International zone Kingdom of Spain:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on -$80 \r\n.ar 551804  sites Argentina - $80 \r\n.br 2367290  sites Brazil - $150 \r\n.be 1349658  sites Belgium - $100 \r\n.ch 1471685  sites Swiss Confederation - $100 \r\n.cl 302082  sites Republic Of Chile - $80 \r\n.co 1577728  sites Colombia  - $100 \r\n.cz 900208  sites Czech Republic - $80 \r\n.dk 1320155  sites Denmark - $100 \r\n.eu 3321576  sites European Union - $150 \r\n.fr 2298045  sites French Republic - $150 \r\n.gr 356168  sites Hellenic republic - $80 \r\n.il 224167  sites Israel - $80 \r\n.il 38537  sites International zone State of Israel:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on -$50 \r\n.io 149698  sites Brittish Indian Ocean - $50 \r\n.it 2255831  sites Italy - $150 \r\n.jp 1126243  sites JPN - $100 \r\n.kz 101069  sites Republic of Kazakhstan - $50 \r\n.kz 5876 sites International zone Kazakhstan:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on \r\n.ua 286782  sites Ukraine - $80 \r\n.ua 117700 sites International zone Ukraine:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on -$50 \r\n.ma 48825  sites Kingdom of Morocco - $50 \r\n.nl 2980711  sites Netherlands - $150 \r\n.my 283349  sites MYS- $80 \r\n.no 579185  sites Kingdom of Norway - $80 \r\n.nz 537127  sites New Zealand - $80 \r\n.pt 225136  sites Portuguese Republic - $80 \r\n.pl 1675325  sites Republic of Poland - $100 \r\n.se 112544  sites Kingdom Of Sweden - $50 \r\n.ro 430554  sites ROU - $80 \r\n.rs 75503  sites Serbia - $50 \r\n.sg 164351  sites Singapore - $50 \r\n.tk 15634253  sites Tokelau - $450 \r\n.za 803189  sites South Africa - $80 \r\n.tr 317690  sites Republic Of Turkey - $80 \r\n.tw 89857  sites Taiwan - $50 \r\n.tv 512500  sites TUV - $80 \r\n.uk 2679335  sites United Kingdom- $150 \r\n.ee 78161  sites Republic Of Estonia- $50 \r\n.ee 10490  sites International zone Republic Of Estonia:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on \r\n.asia 228418  sites - $80 \r\n.?? (.xn--p1ai) 869759  sites Russian Federation - $80 \r\n.com.ru, .net.ru, .org.ru, .spb.ru, .msk.ru  78068  sites Russian Federation - $50 \r\n.su 125358  sites Russian Federation - $50 \r\n.ru 5075935  sites Russian Federation - $250 \r\n.ru 514668 sites International zone Russia:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on -$80 \r\n.attorney 8224  sites attorneys and legal organizations- $50 \r\n.audio 23052  sites music, stereo/sound systems- $50 \r\n.az 11103  sites Azerbaijan - $50 \r\n.az 2036  sites International zone Azerbaijan Republic:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on \r\n.band 7390  sites - $50 \r\n.bayern 29871  sites - $50 \r\n.beer 11834  sites breweries and beer aficionados - $50 \r\n.berlin 58088  sites Berlin, Federal Republic of Germany- $50 \r\n.bg 13251  sites Bulgaria - $50 \r\n.bi 1567  sites Burundi- $50 \r\n.bid 107425  sites - $50 \r\n.bike 13714  sites - $50 \r\n.bio 12702  sites biodiversity, biographies- $50 \r\n.black 6582  sites - $50 \r\n.blackfriday 12106  sites - $50 \r\n.blue 16852  sites - $50 \r\n.bm 8093  sites BMU - $50 \r\n.boutique 7523  sites - $50 \r\n.brussels 6114  sites - $50 \r\n.business 10803  sites - $50 \r\n.buzz 9367  sites - $50 \r\n.by 64847 sites Republic Of Belarus - $50 \r\n.by 1574 sites International zone Republic Of Belarus:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on \r\n.bzh 5303  sites - $50 \r\n.cafe 5150  sites - $50 \r\n.camera 5236  sites - $50 \r\n.camp 5530  sites - $50 \r\n.cards 5067  sites - $50 \r\n.care 10766  sites - $50 \r\n.careers 6799  sites - $50 \r\n.casa 18918  sites - $50 \r\n.cat 66000  sites - $50 \r\n.cc 46723  sites  Cocos Keeling Islands- $50 \r\n.center 29966  sites - $50 \r\n.chat 7324  sites - $50 \r\n.christmas 15255  sites - $50 \r\n.church 12541  sites - $50 \r\n.ci 5664  sites Republic of Cote d\'Ivoire- $50 \r\n.city 16679  sites - $50 \r\n.click 181015  sites - $50 \r\n.clothing 13639  sites - $50 \r\n.club 564417  sites - $80 \r\n.cm 12002  sites Republic Of Cameroon- $50 \r\n.coach 5836  sites flights and motor coaches travel- $50 \r\n.coffee 10097  sites - $50 \r\n.cologne 5037  sites - $50 \r\n.com.cy 11092  sites - $50 \r\n.com.ni 23747  sites - $50 \r\n.com.np 32828  sites - $50 \r\n.community 8656  sites - $50 \r\n.company 42783  sites - $50 \r\n.construction 6404  sites - $50 \r\n.consulting 15520  sites - $50 \r\n.cool 10766  sites - $50 \r\n.coop 7500  sites - $50 \r\n.coop 7879  sites - $50 \r\n.country 7144  sites - $50 \r\n.cricket 33413  sites - $50 \r\n.cymru 5482  sites - $50 \r\n.date 116437  sites - $50 \r\n.deals 7532  sites - $50 \r\n.dental 5661  sites - $50 \r\n.design 23876  sites - $50 \r\n.diet 18291  sites - $50 \r\n.digital 12478  sites - $50 \r\n.direct 7942  sites - $50 \r\n.directory 18963  sites - $50 \r\n.do 5265  sites DOM- $50 \r\n.domains 7127  sites - $50 \r\n.download 25656  sites - $50 \r\n.edu.np 4183  sites higher education - $50 \r\n.education 17243  sites - $50 \r\n.email 53422  sites - $50 \r\n.enterprises 5053  sites - $50 \r\n.equipment 6898  sites - $50 \r\n.estate 10245  sites - $50 \r\n.events 15887  sites - $50 \r\n.expert 26846  sites - $50 \r\n.faith 39757  sites - $50 \r\n.farm 7902  sites - $50 \r\n.fashion 9313  sites - $50 \r\n.fi 116327  sites Republic Of Finland - $50 \r\n.fi 69631 sites International zone Republic Of Finland:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on - $50 \r\n.fit 7047  sites - $50 \r\n.fitness 6973  sites - $50 \r\n.flowers 25590  sites - $50 \r\n.fo 3104  sites FRO - $50 \r\n.forsale 7446  sites - $50 \r\n.foundation 6241  sites - $50 \r\n.frl 12840  sites - $50 \r\n.gallery 16903  sites - $50 \r\n.gd 4248  sites - $50 \r\n.ge 17360  sites - $50 \r\n.gift 12281  sites - $50 \r\n.global 20196  sites - $50 \r\n.gov.np 1677 sites national and state government agencies- $50 \r\n.graphics 7855  sites - $50 \r\n.gt 15251  sites - $50 \r\n.guide 12044  sites - $50 \r\n.guru 65588  sites - $50 \r\n.gy 2667  sites - $50 \r\n.hamburg 22985  sites - $50 \r\n.healthcare 6183  sites - $50 \r\n.help 34800  sites - $50 \r\n.hiphop 7264  sites - $50 \r\n.hk 116193  sites - $50 \r\n.hk 44398  sites - $50 \r\n.hn 4742  sites - $50 \r\n.holdings 5212  sites - $50 \r\n.holiday 5217  sites - $50 \r\n.host 5730  sites - $50 \r\n.hosting 15132  sites - $50 \r\n.house 13832  sites - $50 \r\n.hr 33575  sites - $50 \r\n.hu 618632  sites - $80 \r\n.id 24222  sites - $50 \r\n.ie 196000  sites - $50 \r\n.immo 10768  sites - $50 \r\n.immobilien 7794  sites - $50 \r\n.in 1143582  sites Republic Of India - $100 \r\n.ink 8825  sites - $50 \r\n.institute 7311  sites - $50 \r\n.international 1828  sites international entities - $50 \r\n.ir 427835  sites Islamic Republic Of Iran- $80 \r\n.is 14876  sites Iceland - $50 \r\n.jobs 89950  sites Employment- $50 \r\n.kaufen 9134  sites - $50 \r\n.kg 8929  sites Kyrgyzstan - $50 \r\n.kim 36637  sites people named Kim- $50 \r\n.kitchen 5822  sites - $50 \r\n.kiwi 9972  sites - $50 \r\n.koeln 23485  sites - $50 \r\n.kr 205547  sites Korea- $50 \r\n.la 32000  sites Laos - $50 \r\n.land 14274  sites real estate- $50 \r\n.lawyer 12830  sites lawyers and legal organizations - $50 \r\n.legal 7022  sites lawyers and legal organizations- $50 \r\n.life 29931  sites - $50 \r\n.lighting 5876  sites - $50 \r\n.link 209593  sites - $50 \r\n.live 13848  sites - $50 \r\n.loan 148407  sites lenders and banks- $50 \r\n.lol 59470  sites laughing out loud- $50 \r\n.london 60443  sites London, United Kingdom- $50 \r\n.love 15287  sites dating sites- $50 \r\n.lt 51083  sites Lithuania- $50 \r\n.lt 27710  sites International zone Republic Of Lithuania:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on \r\n.lu 14194  sites Luxembourg - $50 \r\n.lv 32886  sites Republic Of Latvia- $50 \r\n.lv 8887 sites International zone Latvia:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on \r\n.management 9288 sites business management - $50 \r\n.market 8350  sites retailers and marketing services- $50 \r\n.marketing 14262  sites marketing services- $50 \r\n.mc 2700  sites Monaco - $50 \r\n.md 10425  sites Moldova - $50 \r\n.me 761696  sites Montenegro - $80 \r\n.media 22231  sites general media interests - $50 \r\n.melbourne 8252  sites - $50 \r\n.menu 6512  sites restaurants- $50 \r\n.mg 3330  sites Republic Of Madagascar- $50 \r\n.miami 13231  sites Miami, USA - $50 \r\n.mobi 688419  sites mobile devices - $80 \r\n.money 5228  sites financial- $50 \r\n.moscow 22067  sites Moscow Russia- $50 \r\n.mw 1744  sites Malawi - $50 \r\n.name 130818  sites by name, individuals - $50 \r\n.network 13837  sites - $50 \r\n.news 59662  sites news sites- $50 \r\n.ninja 49007  sites - $50 \r\n.nrw 9596  sites - $50 \r\n.nu 39710  sites Niue- $50 \r\n.nyc 73153  sites - $50 \r\n.one 47863  sites - $50 \r\n.online 135973  sites - $50 \r\n.ooo 13427  sites - $50 \r\n.org.np 6317  sites - $50 \r\n.org.ua 41372  sites - $50 \r\n.ovh 39855  sites - $50 \r\n.paris 19783  sites - $50 \r\n.party 222578  sites nightclubs and social gatherings- $50 \r\n.pe 16586  sites Peru - $50 \r\n.pg 1829  sites Papua - $50 \r\n.ph 17960  sites Republic Of The Philippines - $50 \r\n.photo 22865  sites photo-sharing and photography - $50 \r\n.photography 50934  sites photo-sharing and photography- $50 \r\n.photos 18750  sites photo-sharing and photography- $50 \r\n.pics 29821  sites photo-sharing and photography- $50 \r\n.pictures 6207  sites photo-sharing and photography- $50 \r\n.pink 14373  sites those who like the color pink- $50 \r\n.pk 44474  sites Pakistan - $50 \r\n.porn 13023  sites pornography - $50 \r\n.press 8736  sites - $50 \r\n.pro 118600  sites professions- $50 \r\n.properties 10475  sites - $50 \r\n.property 41366  sites - $50 \r\n.pub 42703  sites - $50 \r\n.quebec 10402  sites - $50 \r\n.racing 27001  sites - $50 \r\n.realtor 73465  sites - $50 \r\n.red 71773  sites - $50 \r\n.ren 237303  sites - $50 \r\n.rentals 10823  sites short-term ownership - $50 \r\n.repair 6228  sites general repair/maintenance businesses- $50 \r\n.restaurant 5299  sites - $50 \r\n.review 65390  sites public reviews- $50 \r\n.reviews 16732  sites public reviews- $50 \r\n.rocks 57908  sites - $50 \r\n.ru.com  6500  sites Russian Federation - $50 \r\n.ruhr 11118  sites - $50 \r\n.sa 8605  sites Kingdom Of Saudi Arabia- $50 \r\n.sale 7850  sites - $50 \r\n.sc 5318  sites Seychelles- $50 \r\n.school 5812  sites - $50 \r\n.science 337115  sites - $80 \r\n.scot 10675  sites - $50 \r\n.services 20796  sites - $50 \r\n.sex 8655  sites - $50 \r\n.sexy 22260  sites - $50 \r\n.shoes 5597  sites - $50 \r\n.si 39753  sites Republic Of Slovenia- $50 \r\n.singles 5559  sites - $50 \r\n.site 86601  sites - $50 \r\n.sk 347101  sites Slovak Republic- $80 \r\n.ski 6771  sites - $50 \r\n.social 15208  sites - $50 \r\n.software 9450  sites - $50 \r\n.solar 6067  sites - $50 \r\n.solutions 43143  sites - $50 \r\n.space 112426  sites - $50 \r\n.studio 5101  sites - $50 \r\n.sucks 7083  sites - $50 \r\n.support 15577  sites - $50 \r\n.sv 7878  sites El Salvador- $50 \r\n.swiss 6300  sites - $50 \r\n.sydney 7837  sites - $50 \r\n.systems 17893  sites - $50 \r\n.tattoo 7554  sites tattoo aficionados- $50 \r\n.tc 16394  sites Turks and Caicos Islands- $50 \r\n.team 5128  sites team sports- $50 \r\n.tech 27200  sites - $50 \r\n.technology 23981 sites technology- $50 \r\n.tel 116752  sites Internet communication services- $50 \r\n.th 23968  sites Thailand- $50 \r\n.tips 34287  sites general help topics- $50 \r\n.tj 6504  sites Republic Of Tajikistan- $50 \r\n.to 16327  sites Kingdom Of Tonga- $50 \r\n.today 47996  sites - $50 \r\n.tokyo 45233  sites - $50 \r\n.tools 6469  sites manufacturing industries - $50 \r\n.top 1031307  sites - $100 \r\n.trade 23418  sites businesses- $50 \r\n.training 15992  sites training and how-tos - $50 \r\n.travel 18000  sites travel and tourism industry related- $50 \r\n.uno 19394  sites - $50 \r\n.uy 12673  sites Eastern Republic Of Uruguay- $50 \r\n.ve 14018  sites Bolivarian Republic Of Venezuela - $50 \r\n.vegas 12948  sites Las Vegas NV United States of America - $50 \r\n.ventures 7366  sites - $50 \r\n.vg 8393  sites British Virgin Islands- $50 \r\n.video 11804  sites video sharing- $50 \r\n.vlaanderen 6262  sites - $50 \r\n.vn 76661  sites Vietnam- $50 \r\n.wales 11463  sites - $50 \r\n.wang 629622  sites - $80 \r\n.watch 5080  sites Watches - $50 \r\n.webcam 71942  sites web cam shows and video sharing- $50 \r\n.website 122048  sites - $50 \r\n.wedding 6864  sites wedding-oriented businesses - $50 \r\n.wien 13064  sites - $50 \r\n.wiki 14629  sites wikis - $50 \r\n.win 591324  sites - $50 \r\n.work 95686  sites - $50 \r\n.works 8712  sites - $50 \r\n.world 26145  sites - $50 \r\n.ws 36610  sites Samoa- $50 \r\n.wtf 6848  sites - $50 \r\n.xin 58102  sites - $50 \r\n.xn--3ds443g 35898  sites - $50 \r\n.xn--55qx5d 48356  sites - $50 \r\n.xn--6qq986b3xl 22488  sites - $50 \r\n.xn--czru2d 11620  sites - $50 \r\n.xn--fiq228c5hs 17945  sites - $50 \r\n.xn--io0a7i 31399  sites - $50 \r\n.xn--j6w193g 31776  sites - $50 \r\n.xn--kput3i 19501  sites - $50 \r\n.xn--mgberp4a5d4ar 2536  sites - $50 \r\n.xn--rhqv96g 7723  sites - $50 \r\n.xn--ses554g 344539  sites - $80 \r\n.xxx 119879  sites adult entertainment- $50 \r\n.xyz 1790370  sites - $50 \r\n.yoga 7093  sites - $50 \r\n.zone 14029  sites - $50 \r\n.?????? (.xn--80adxhks) 19582  sites Moscow Russian Federation - $50 \r\n.??? (.xn--j1amh) 10563  sites Ukraine - $50 \r\n.academy 21046  sites academic institutes- $50 \r\n.accountant 15675 sites accountants and accounting firms - $50 \r\n.adult 10540  sites adult entertainment - $50 \r\n.ae 13405  sites UAE - $50 \r\n.aero  18325  sites air-transport industry - $50 \r\n.agency 25318  sites business associations - $50 \r\n.am 9025  sites Republic Of Armenia- $50 \r\n.am 1684  sites International zone Armenia:.com .net .biz .info .name .tel .mobi .asia .xxx, and so on \r\n.amsterdam 26141  sites Amsterdam, Kingdom of the Netherlands - $50 \r\nLiveInternet - 904529 domains + Hotlog - 147356 domains + Yandex Catalog - 125831 domains + List.mail.ru Directory - 107639 domains - 100$ \r\nDMOZ Directory 3051246 domain names from them 89923 in the Russian-speaking area - 150$'),
(12, 'Monika', 'monika18765@wp.pl', '', 'Witam. Wstępnie bylibyśmy zainteresowani usługą foto video na nasze wesele. Czy termin 2 czerwca 2018 ma Pan jeszcze wolny? Czy ceny na stronie są aktualne? Jak to wygląda są dwie osoby, Pan fotografuje a druga osoba kameruje? Byłabym wdzięczna za odpowiedź.'),
(13, 'Wojciech', 'wojotek@gmail.com', '+48666700779', 'ąężźćńł'),
(14, 'Wojciech', 'wojotek@gmail.com', '+48666700779', 'ąężźćńł'),
(15, 'Arkadiusz', 'sklep-arczi@wp.pl', '797517271', 'Witam serdecznie jakiś czas temu otrzymałem e mail na temat obróbki fotek produktowych w cenie 1 zł . Zajmuje się sprzedażą części samochodowych i piżam . Jestem zainteresowany współpracą .\r\nPozdrawiam'),
(16, 'Kamil', 'kowalcio16@wp.pl', '', 'Witam, Chciałbym poznac Państwa ofertę na wesele jednodniowe,termin wesela to 22.09.2018 ?'),
(17, 'Sailipreits', 'r8974jjil@gmail.com', '86783536386', 'http://undeclaiming.xyz <a href=\"http://undeclaiming.xyz\">norsk kasino</a> [url=http://undeclaiming.xyz]norsk kasino[/url]'),
(18, 'Klaudia', 'ekonomisci98@wp.pl', '', 'Witam.\r\nW zwiazku z tym ze w nastepnym roku mamy studniowke i poszukujemy fotografa, a slyszalysmy wiele pozytywnych opinii na temat Pana pracy, chcialybysmy zorientowac sie jaki bylby koszt zdjec na okolo 15 osob wraz z osobami towarzyszacymi czyli 30 osob? Jestesmy z Ekonomika, a studniowka odbedzie sie w Lejli w Porebie dnia 20 stycznia 2018. Pozdrawiamy.'),
(19, 'Tomasz Sajdak', 'kamikaze199238@o2.pl', '607205323', 'Cześć Wojtek:)\r\nMam pytanie odnośnie twoich usług fotograficznych. Może na wstępie powiem że ja i moja narzeczona planujemy szybkie wesele 27 stycznia 2018 roku,mamy DJ,salę zarezerwowaną,potrzebujemy jeszcze fotografa do cykniecia nam fotek żebyśmy mieli jakąś pamiątkę z naszych zaślubin:) Czy masz może wolny termin 27 stycznia i jaki jest koszt za usługi? Jakie rzeczy obejmuje twoja oferta? Pozdrawiam:)\r\nTomasz Sajdak'),
(20, 'Bartosz', 'bartekgl@gmail.com', '535445773', 'Dzień dobry \r\n\r\nProszę o podanie cen wykonania zdjęć typu duch oraz flat . Ubranek niemowlęcych \r\n\r\nPozdrawiam \r\nBartosz');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `migrations`
--

CREATE TABLE `migrations` (
  `version` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `migrations`
--

INSERT INTO `migrations` (`version`) VALUES
(5);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `order`
--

CREATE TABLE `order` (
  `id_order` int(5) UNSIGNED NOT NULL,
  `photo_id` int(5) UNSIGNED NOT NULL,
  `category_id` int(5) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `photos`
--

CREATE TABLE `photos` (
  `id_photo` int(5) UNSIGNED NOT NULL,
  `name` varchar(100) NOT NULL,
  `category_id` varchar(50) NOT NULL,
  `photo_order` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `photos`
--

INSERT INTO `photos` (`id_photo`, `name`, `category_id`, `photo_order`) VALUES
(410, 'b93b525f6bfe9fcd47d379ecf254b702', '1', 8),
(411, '187663d1723c03b7092be800aba9c1d0', '1', 2),
(412, '11111475da6801c4170ac2893b001357', '1', 1),
(413, '691e8038955ed0462e23e5d46d01ba5a', '1', 4),
(414, '819857cd8ada85dcef7bf33411152fae', '1', 7),
(415, 'cc52962fb9f0347aa16c55b174dce349', '1', 6),
(416, '049e24abe9bd3bd0497a2a518c06faf9', '1', 3),
(417, '1e69ca806adba3fc1a655e2d48be67b2', '2', 0),
(418, '143db9b2adf19d7e68502bd7ae94d25f', '2', 1),
(419, '4e17f421b50871c4273315411f3c936c', '2', 2),
(420, '2dedfe1b959de2a60dcdf44bc3e529ce', '2', 3),
(421, 'a8e8082cfe170c2f6520ba05196272e5', '2', 4),
(422, '47533b6705fbb6d5cbf429ada11e20d5', '2', 5),
(423, 'f7ae09d315842146de2a8975b871b847', '2', 6),
(425, 'cbc9116e5443c3d7110ee3e2b4d97d59', '2', 7),
(426, 'bc9b48e2625b93a5f7094cabcf33e8e2', '2', 8),
(427, 'c807d821ba58421687821445f6ee6f66', '2', 9),
(428, 'f5599e3c20f29311e60b2dd55325110a', '2', 10),
(429, '735f9ec2fb11dcc4b8d6c611abc3968a', '2', 11),
(430, 'be04b737f7de19c26820a1a254980356', '2', 12),
(431, 'e9b5cd9f1a18b021616e7565b5922db9', '2', 13),
(432, 'e6c3968306d19dfdf9db7d5642e831f7', '2', 14),
(433, '5d2d25d306610e5266ba6565e6302b46', '2', 15),
(434, '9c498b52b51f9cfe6e799e32753961e1', '2', 16),
(435, '3273ee1786239e7950296f52c3479047', '2', 17),
(436, '8082d69b81200aa1f7fb64dd87ba6c4c', '2', 18),
(437, 'd931316430da300f11872f6bd5eefc3c', '2', 19),
(438, '8c2916bbea4abbc16c52536a02b4e3e0', '2', 20),
(439, 'b2701bc15e41adf7fa0328082f6eba09', '2', 21),
(440, 'dcba5589fc2e5a2ddf4e2d6f7ef673af', '2', 22),
(441, 'b372ea12e12163592deb0dd75ac9ac53', '2', 23),
(442, 'c1308d5564211ee1015fe45bf2d7d24b', '2', 24),
(443, '1877d1888313d97f01c1b9f45d2399bb', '2', 25),
(444, 'ec48c60c61b005f40e8d5196bb3b119b', '2', 26),
(445, '1eeaa2b53eade595a9ae93da261d87a4', '2', 27),
(446, '9bf29f2d596897f574894a6b57af7290', '2', 28),
(447, '6db1df87a564920f780da7527b2cdd88', '2', 29),
(448, '60b7636fba561dd16f8388d062511884', '2', 30),
(449, '653e78b9220d4f6bfb40346142bc8bee', '2', 31),
(450, '7c5bf64937555670367a5197f0e97562', '2', 32),
(451, 'd20c6f514d75c5885981e4b4c49877e2', '2', 33),
(452, '971b2ccf52515bddf56dd3eb7139c281', '2', 34),
(453, 'de930564296375cf402025aff73fcc7b', '2', 35),
(454, '340720c54b4696949ac935574213dabc', '2', 36),
(455, '3f7dee615dc9115eee134f95396f0af0', '2', 37),
(456, 'd26a9c1bbb86820a0462664229544cfc', '2', 38),
(457, '7c45ae4eed4ea80ad90ee7e2da0b0e18', '2', 39),
(458, '6bd8e5efad232a5ce53fd1c0ccd94b0d', '2', 40),
(483, '6a04857c894d716abbaa8c6ee9c29ccb', '7', 0),
(484, '2fece4a4ba75f335962c1fe59b846cbe', '7', 1),
(485, '2bfab3e6c39464cfc759738e153a86b2', '7', 2),
(486, 'b81e9e463176d00f119af520747cb846', '7', 3),
(487, 'f902de7a04cf7d1dd12037a4cb0e2a65', '7', 4),
(488, '541bf99805b07a0cd93f3212314cb5eb', '7', 5),
(489, '912b6ad955fe7439924c35a01fe20afb', '7', 6),
(490, 'f611170974015c1ee1ea0ac999207eba', '3', 0),
(491, '92bdf95aa3abb08c08873d0f208bc8aa', '3', 1),
(492, '1b74d5b43fe3a3bf249f9d75f8ae28d5', '3', 2),
(493, 'c9e4f5d915ddef42ed4472807bbc3a3b', '3', 3),
(494, '7d700054d9ef62f965dcb09b10a5431f', '3', 4),
(495, 'b61aa706fb8e1ede169e1cb695e0cfc4', '3', 5),
(496, 'ac97eb50933d977974d3e64ac7bca6d7', '3', 6),
(497, 'b62fc42490008db54f42b1ce0e6b6d32', '3', 7),
(498, 'a980017842ea9821e1a48eb13f3bee13', '3', 8),
(499, '88be23fb9036ed676ac261bdab88ba48', '3', 9),
(500, 'a9f4e6d354c17d305f3ce85eb590a82f', '3', 10),
(501, '743e50138a7aca65ca034f966b3bfa55', '3', 11),
(502, '0b235fb7677bfe38364c97f13d131cd9', '3', 12),
(503, '18b701b0fc736bbc20c5549c3eb1a19b', '3', 13),
(504, '6682115928d6263139770bfe5040eb94', '3', 14),
(506, '44ec48f88deecaeab34323adb09429cd', '3', 15),
(507, '4ebc496e3e966c9ade0734691cd9e395', '3', 16),
(508, 'f22490300f6584d5e1518739efe20edd', '3', 17),
(509, '0ea9338df90236ab256b4151c1c9b953', '3', 18),
(514, '7f7337b0d65cc0634907b134d10c8347', '1', 5),
(515, 'cb80fcb58965af668142602c29de3328', '3', 19),
(516, '1de77df6dd471617990dc0cae6889918', '3', 20),
(517, 'e4c39e222281ee1b16d5b7c993e3eec7', '3', 21),
(518, 'ac196895b75bab6346ca548ecb28b252', '3', 22),
(519, 'e6fc6a8b5bf36020546d6a97e3531064', '3', 23),
(520, 'be4a0ca9f0f7e0696729d49167c5b44c', '3', 24),
(521, 'cd0e95e79ecf1161953571ed16fbe85b', '3', 25),
(522, 'ce5de5b8b2af12658ff95d51d5658793', '3', 26),
(523, 'cd8971c641217898cb21dfa9664a1cd3', '3', 27),
(524, '20a3909988b687801e3e28c2a44628b1', '3', 28),
(525, '6f23e0812973f37047f6376c24acb8b6', '3', 29),
(526, '53b1a51a08788b718f958ea5bb085d38', '3', 30),
(527, '95e7a71c9dfebefeecd17f616dcede9e', '3', 31),
(528, 'e06ae48d3a057a771cb93ae6166d91e3', '3', 32),
(529, 'cc5fb1c06d6340a7b7196ab41df95dbc', '3', 33),
(530, '8d914eee19fd003f9e14b8343ff6133e', '3', 34),
(531, '277a2de0494326e6ead99231730f07ed', '3', 35),
(532, '4ca75791cd0a293ee6bc670be2528b4a', '3', 36),
(533, '5d5cbc16ecb9e1437ccca9d58f1a7c90', '3', 37),
(535, 'c09e13cec35fd45a1005a28c26bd0ad0', '3', 38),
(538, 'e01d5dbc9a1bc1e37d78862201546438', '3', 39),
(539, 'dcfe075bb0318c6499890291d582f92d', '3', 40),
(540, '6249bf98b75e5227cd7db0fc3ccba126', '3', 41),
(541, '8fb978f75aa474a43694d3763a5867aa', '3', 42),
(542, '279970bdcab03055ce90f860967325a5', '3', 43),
(543, '5c051e7cddd55cb33e25652689bdd0b2', '3', 44),
(544, '79ee1e0b6e8c37e8ee38b736dbb457bf', '3', 45),
(546, '4a7e2fd656f1a904b390c20575b937ec', '3', 46),
(547, 'e73d6a4aa64dfcfec026a9b7f5e1aa1a', '3', 47),
(548, '00a8a93bdf42545b0d7a0aba9f0870f2', '3', 48),
(549, 'e81f3bcb20aef16c6f6f819898b83260', '3', 49),
(550, '6a43ba41382cf7194f216538edf89c46', '3', 50),
(551, '689d141375244cd8105db7a646f6baa4', '3', 51),
(552, '3fe0756ab50ac07e907617dff87f6652', '5', 1),
(553, 'c642b7a2a4f6faea41cd4b913b1f7694', '5', 2),
(554, '292c2af8e9e0fb103af1b0c8fd4f631e', '5', 3),
(555, '4711aa19f1db07cbff80df0ecad2e4b8', '5', 4),
(556, '664f70db7b9f68c93376b66cf06e0481', '5', 5),
(557, 'c21eb154ccde366a2526a018210c2efd', '5', 6),
(558, 'ea5905b0c1742fa14b7085db7667730d', '5', 7),
(559, '6d9910cbc1d3b115dfb77ffb0886b7cd', '5', 8),
(560, 'd64faf685eacb5e07022a1cfded3871d', '5', 9),
(561, 'fc79c0a086d73c5084f7d1c60d8a1a67', '5', 10),
(562, '4ca13a32066990b62675ba4d658e04b8', '5', 11),
(563, 'c48e99b76d41a58ce67d1c59656a852b', '5', 12),
(564, '72466a21c89959bc81fc3a207821f1fd', '5', 13),
(565, '29eafb7244697f0730417ad0895ac91c', '5', 14),
(566, 'd157aeee0a53c07b05c533936d173d7d', '5', 15),
(567, 'ba68d75774e41409a144cfb6d05e6121', '5', 16),
(568, '25ac645e8ac4ff805ef9f0b2ba8832a4', '5', 17),
(569, '224f097f3c65a18a8ccdc6772914eb29', '5', 18),
(570, '3db8bc8a057a522a31e7244aca972382', '5', 19),
(571, '189b2b5e0bab187f471996a7ab3aba23', '5', 20),
(572, 'fa7fad64ead35e35999c72602b02c976', '5', 21),
(573, '691625f4108d532e2070f4640cfdfc62', '5', 22),
(574, 'c08b4c64853dd72632a9da23a623997b', '5', 23),
(575, '72c32d636154c39e6db55eeb63f228bc', '5', 24),
(586, '3ffa406dbf6f108611ebb2f5a87e06ed', '4', 1),
(587, '10f3f0ede693f672c6d86e38fcdb86a3', '4', 2),
(588, '17812e85311d425ddfcdd332291f4568', '4', 3),
(589, 'a5d682c8f1a9c81864fc025d92de9f06', '4', 4),
(590, 'e43fe3d6ec82efa501c63abca3f3250e', '4', 5),
(591, '614c7cc17fa5a7afc626eac38e2ac4f2', '4', 6),
(592, '0a914c6a1192d6f187f80a254e032e43', '4', 7),
(593, 'bb52c2f5a385464bdfe6e43633a9c174', '4', 8),
(594, 'a0dabf0de34c390ad131170d7f30eb2a', '4', 9),
(595, '51323c4a0cd2d9f636c608553c6fc61e', '4', 10),
(596, 'a2f805c42d1a1005e4dfcc3dae0e877e', '4', 11),
(597, '4dc321d21366c73b22214b9913dd15bc', '4', 12),
(598, 'f0a0c6c2b7ebc322b31ba2cb82a3dc62', '4', 13),
(599, '764672dc9ecfc93e5deb6348b82b1fd9', '4', 14),
(600, '2c0e09e95e95745f852882850423758f', '4', 15),
(601, 'cc2a90122ccec4403fecfe63da6ea3b0', '4', 16),
(602, '2bee4480269ce8ba12bde9e71dfeb72d', '4', 17),
(603, 'f2a5effc7afd41577adc36d77b5b9aee', '4', 18),
(604, '8154b999bdb39f10b1672ef0c8436ca0', '4', 19),
(605, 'a195b755009f58b57246be7b241319d5', '4', 20),
(606, 'da454fd2e4137d1185e1cfe3025ecfb2', '5', 25),
(607, 'df7023a592a27c9d1d421ccbe1eff10b', '5', 26),
(608, 'ec3f5de3c1170bbe700908328acc7588', '5', 27),
(609, 'ffd22c4ccdf10d9155e7b6c180f28cc1', '6', 0),
(610, '41e681fdc96e656adcd2071ac985d0f8', '6', 1),
(611, 'b4988fe972cd6dac2ba87f2f1b15cd60', '6', 2),
(612, '319f4cebe3a5b06aa5663b3c6bdb61b7', '6', 3),
(613, '200ba0e38cbd9228bafec2788b0fdba0', '6', 4),
(614, '3a53ac1a3bf3465b95f72f6d8558b66b', '6', 5),
(615, '880af822ffa1b1b21fb931b203fbe7b4', '6', 6),
(616, 'c49df6c4abe0e66ae6fc89db97a2eb45', '6', 7),
(617, '209940d975b0bc44313388f863b9afe8', '6', 8),
(618, '3930f0e5f6084fc7acf1cac33874a47a', '6', 9),
(619, 'ca58139c8458b480b32e34d05c03d4ec', '6', 10),
(620, '309771554262a0d200cf5fc4fb2c3880', '6', 11),
(621, 'cfea25540f454f85182ea62ff76374a2', '6', 12),
(622, 'f56f210dba8420bf4c33981cce70c2d1', '6', 13),
(623, 'd8a786b854ff01f408e8c80e8c7e890e', '6', 14),
(624, '328b6dfd76ee72b08bb8c5376cd67269', '6', 15),
(625, '6df6f7ec0f44261eeef401908117b216', '6', 16),
(626, 'ac11a29f585c998564e2b3e850e9cc0d', '6', 17),
(627, '8af47f45a4faf1716ff431213813121b', '6', 18),
(628, 'd69b8fc7411904a737afba2fe2ba8913', '6', 19),
(629, '0427b93d365a9c3d41342e07988647ed', '6', 20),
(630, 'b60647863d6ce3bf978e4faf21d36120', '6', 21),
(631, '67bed677ee60b8839a87287c427c4edb', '6', 22),
(632, '8171260da509fc5a78f5b3e3e0d8cb6c', '6', 23),
(633, '2919de4e9bc12e2abea93a5a5d783074', '6', 24),
(634, '6b414615791f7818c82fab1b942ad899', '6', 25),
(635, '3762d83a6c3fe9529f30ed732eb7abf3', '6', 26),
(636, '45adbdbf967584e327549f9b68c940fb', '6', 27),
(637, 'b64a1d2c5e45e0da0b56f6d097c82ee6', '6', 28),
(638, '41b6c4cb399ca8bb332786778b267393', '6', 29),
(639, '035b5eb205ddccac2a785f8c3fac1a49', '6', 30),
(640, '73f3ef7a2c039ef2737d621f7654672e', '6', 31),
(641, '1f3979be64073931b5696a029b3de265', '6', 32),
(642, '40f86ba4713757cc31b536c72cc020c5', '6', 33),
(643, 'a6b5fecd9ff6747ed122b80b2fe18c00', '6', 34),
(644, '175b9a05e5f0d67b5aacb90d4bffef54', '6', 35),
(646, '0e263c8e16d37bd4c82485f205757fe1', '6', 36),
(647, 'df00c29d9c70914f55b132048d910338', '6', 37),
(650, 'a5765d527b2c806eae4c772ef21af287', '6', 38),
(651, 'd4733d69fc33a72b4b9783b286c97640', '6', 39),
(652, 'fdbf3c293dd6d13a86113b8859ca0ddf', '6', 40),
(653, '3faf4ea88ee9d691b37f2bee7060854f', '6', 41),
(654, '960b4940da6021857906ce794ba79d55', '6', 42),
(655, '29562acdd9b254f4545f40dff06d5fb8', '6', 43),
(656, '5712ed3ca7237791367a4c6d06741ce3', '6', 44),
(657, 'c1bc2c522b3ccdea5b7e1fe7a07d4c43', '7', 7),
(658, '07011b9b20107262ac68dfc29c11326d', '7', 8),
(659, '05affb906c6d0d8778d53e736d859f4a', '7', 9),
(660, '0884968980d55b2a2ca308a7741a3f4e', '7', 10),
(661, 'cea3dd1e2b4e24ec1217398c441f40c5', '7', 11),
(662, '331dc328ca8c6e9519de2e2f370ed195', '7', 12),
(663, 'aa5f94bd00212308bdb342302e7d332e', '7', 13),
(664, 'edf09d7ebaf750603de543f123d3a189', '7', 14),
(665, '2088505ee2e6beb4f1e58754b36a131e', '7', 15),
(666, '5a37a29e9ed58c99b5482bfa3ec474d1', '7', 16),
(670, '46d6600c8522ac2d0e960c832f999e81', '7', 17),
(671, '48a8d5761c39f14b107ab44b83133af2', '7', 18),
(672, '07cc8724be6ffeb8ba292c56603d312d', '7', 19),
(673, '5bf6acb49987172d46ce8eeb698a7dd0', '3', 52),
(674, 'e4253add805c482d6cf5ede1cc6e8214', '3', 53),
(675, '4a9f2b929e24826020b20b6d94b035b2', '3', 54),
(676, '5a7b562440dc8bed1ebfbf9176b3d5ac', '3', 55),
(677, 'ec131b71c3037151e4fa248564ab86b3', '3', 56),
(678, 'a12e9dd8c2b7c5441b24c91cb069aa76', '3', 57),
(679, 'c346d1a4d42b34205aca6b01717e01ea', '3', 58),
(680, '5122b1693fe220d86c0adad5e18062e5', '3', 59),
(681, 'edfbecf15a5edf1b7b0b90ec3f48663f', '3', 60),
(682, '987d8e03c0c565979fd8e10bd03785e7', '3', 61),
(683, '7c921aa1a204a7e47c4c2f3219963921', '3', 62),
(684, '86bcabd3d8c848f9398fe9f8d2ae8577', '3', 63),
(685, '4da39fa49c22c18339d1ed563ff1a2d2', '3', 64),
(686, '3068b64a5c1f5159ebf08798ba260453', '3', 65),
(687, '3b2dd8efbb8ffe6715b70ba1e818c33c', '3', 66),
(688, '599d569c31dfaa4ebe8f69cbe2d32dc1', '3', 67),
(689, '4be51aec7a8b693803912c7883319615', '3', 68),
(690, '2e476e7405a391adee0de2ef240df392', '3', 69),
(691, '85129bf16b8019bfac1552aa91497882', '3', 70),
(692, 'd3040b5b17d7b8318ecb7f3f3c76807d', '3', 71),
(693, '11b0f4901fbf0ef971163993a1f591bc', '3', 72),
(694, '30416ef73ad0c6cb8de82991c5996c45', '3', 73),
(695, 'ac8266a42a3cff6e91d23bcce9fd1d42', '3', 74),
(696, '9dfbe6c8e73457e2e931ed5e86204fe5', '3', 75),
(697, '1e613ab03aa1b62b5885494e3cff096a', '3', 76),
(698, 'f17ab6bcd2cb5838e7d0c99119d7819c', '3', 77),
(699, '413b2aa64181f8415ddb51908ef8fb83', '3', 78),
(700, '08c540b9e68b64e2cf1ed48ef898e6b4', '3', 79),
(701, '1f61db13a59b827aa6400fe450f30203', '3', 80),
(702, '19c313b37bdb06660e0593b6d04633b9', '3', 81),
(703, '869a6edfc22c2ddf1271a4000799898e', '3', 82),
(704, '8a5d85a4a17abdbb622e99c23330b1e6', '3', 83),
(705, '5f214870470d6f66d6acaf72e3cf271d', '3', 84),
(706, 'f6d043ec87beb7ee603c6bd6e61e70f1', '3', 85),
(707, '18b1f4b384d8671302922143506ab705', '3', 86),
(708, '95ea977eef07ecb57782c6dae922ac2e', '3', 87),
(710, 'ab55e5b59f5e353ced347a0ff62bc301', '7', 20),
(711, 'd2457ad832e0afb333d7a15a2b2d8680', '7', 21),
(712, '7bffc058cd9f6b0b787f6b1631270a67', '7', 22),
(713, '786b6043ee6bf2a49b3b1c8284327c98', '7', 23),
(714, 'f0055fa7d0380d7d1ed57965337729c6', '7', 24),
(715, '76dfb809ca344f7b9749b7ea6c811d88', '7', 25),
(716, 'fe2777818894cb9b3b9ee201126ea813', '7', 26),
(717, '22d5d8d3966237828b40267071c31181', '7', 27),
(718, '2c5c1dbda1e55f1b838cf138aca78cd4', '7', 28),
(719, 'f60e8afdaea97801c880f77134406660', '7', 29),
(720, '35a5c2774871653757b01d0a3b170d43', '7', 30),
(721, 'd7baefdee78ebdd543e22add18701ead', '7', 31),
(722, 'fa79f2ed358e5e6890b68a7ef097062c', '7', 32),
(723, '0081baf1d05a0c0df070a64e1fae954d', '7', 33),
(724, 'd034d2a205399ed3c12805e72f4698e8', '7', 34),
(725, '53ac690df3bf9ae2432e088d2fa475e9', '7', 35),
(726, '3977108d68a6dcba9b3360d4c92a2176', '7', 36),
(727, '1aefa16260c2c59553c69cbbea596256', '7', 37),
(728, 'e9f6a44377462d59897eae34fff852ab', '7', 38),
(729, 'fe53fdc23d30971b2f0190ef38f5aeb2', '7', 39),
(730, 'b85f38c658aa89ea169eba2f5f2b4f09', '7', 40),
(731, '58fd823b7a13709ccd947d98024073e2', '7', 41),
(732, 'c5a93a17d05a203bd659ba84434715a7', '7', 42),
(733, '990588d0cc553a438a93024d045cd0e7', '7', 43),
(734, '9725c42da5e8aacd6b3782c568414ab8', '7', 44),
(735, '7df32db6124345b0c84fe258eb1e2a22', '7', 45),
(736, '950edc723344fa40906fcd8a570947a1', '7', 46),
(737, 'a71022db73eb75a65aa3c89cc7f4c658', '7', 47),
(738, '0ab0e87ee922133250710addde7e8215', '7', 48),
(739, 'e78660ef48efea104406e1b861618035', '7', 49),
(740, 'c4a7a9bc964af2ed6e896aad0e57a662', '7', 50),
(741, 'cb7771ef04e1784c8795285c5d72fa78', '7', 51),
(742, '0e5710413f411a660c87d1f1346c53af', '7', 52),
(743, '6512f3e83aa7ced2a2e1cd51ca851356', '7', 53),
(744, 'c09c6f72eca260f8b9182e398058adb2', '7', 54),
(745, '32c7f34d8b06df61a115bbf93e4f16a2', '7', 55),
(746, '78564af5bc28062e1a2ac35152b763cb', '7', 56),
(747, '0e77a5f5032efd1d72292fbdb87ece43', '7', 57);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `id_user` int(5) UNSIGNED NOT NULL,
  `login` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`id_user`, `login`, `password`) VALUES
(1, 'wojot', 'b2444e218cab8f66a6c21fce2e18876c');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_message`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id_order`);

--
-- Indexes for table `photos`
--
ALTER TABLE `photos`
  ADD PRIMARY KEY (`id_photo`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `categories`
--
ALTER TABLE `categories`
  MODIFY `id_category` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `messages`
--
ALTER TABLE `messages`
  MODIFY `id_message` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT dla tabeli `order`
--
ALTER TABLE `order`
  MODIFY `id_order` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `photos`
--
ALTER TABLE `photos`
  MODIFY `id_photo` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=748;
--
-- AUTO_INCREMENT dla tabeli `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
