-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Tempo de geração: 13-Ago-2020 às 21:05
-- Versão do servidor: 10.4.10-MariaDB
-- versão do PHP: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `brunsker`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `document` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `document`) VALUES
(1, 'Robson', 'Santos', 'robson1@email.com.br', NULL),
(2, 'Alexandre', 'Santos', 'alexandre27@email.com.br', NULL),
(3, 'Willian', 'Santos', 'willian28@email.com.br', NULL),
(4, 'Eleno', 'Santos', 'eleno29@email.com.br', NULL),
(5, 'Lucas', 'Santos', 'lucas30@email.com.br', NULL),
(6, 'Mateus', 'Santos', 'mateus31@email.com.br', NULL),
(7, 'João', 'Santos', 'joão32@email.com.br', NULL),
(8, 'Felipe', 'Santos', 'felipe33@email.com.br', NULL),
(9, 'Anderson', 'Santos', 'anderson34@email.com.br', NULL),
(10, 'Elton', 'Santos', 'elton35@email.com.br', NULL),
(11, 'Leonardo', 'Santos', 'leonardo36@email.com.br', NULL),
(12, 'Regilton', 'Santos', 'regilton37@email.com.br', NULL),
(13, 'Sidney', 'Santos', 'sidney38@email.com.br', NULL),
(14, 'Lourival', 'Santos', 'lourival39@email.com.br', NULL),
(15, 'Henrique', 'Santos', 'henrique40@email.com.br', NULL),
(16, 'Daniel', 'Santos', 'daniel41@email.com.br', NULL),
(17, 'Pedro', 'Santos', 'pedro42@email.com.br', NULL),
(18, 'Andre Roberto', 'Santos', 'andre roberto43@email.com.br', NULL),
(19, 'Ozeias', 'Santos', 'ozeias44@email.com.br', NULL),
(20, 'Arnobio', 'Santos', 'arnobio45@email.com.br', NULL),
(21, 'Roniel', 'Santos', 'roniel46@email.com.br', NULL),
(22, 'Caíque', 'Santos', 'caíque47@email.com.br', NULL),
(23, 'Lucas', 'Santos', 'lucas48@email.com.br', NULL),
(24, 'Francisco', 'Santos', 'francisco49@email.com.br', NULL),
(25, 'Cristian', 'Santos', 'cristian50@email.com.br', NULL),
(26, 'Eduardo', 'Santos', 'eduardo51@email.com.br', NULL),
(27, 'Rodrigo', 'Santos', 'rodrigo52@email.com.br', NULL),
(28, 'Raphael', 'Santos', 'raphael53@email.com.br', NULL),
(29, 'Jose', 'Santos', 'jose54@email.com.br', NULL),
(30, 'Rodrigo', 'Santos', 'rodrigo55@email.com.br', NULL),
(31, 'Diego', 'Santos', 'diego56@email.com.br', NULL),
(32, 'Alexandre', 'Santos', 'alexandre57@email.com.br', NULL),
(33, 'Edimar', 'Santos', 'edimar58@email.com.br', NULL),
(34, 'Jackell', 'Santos', 'jackell59@email.com.br', NULL),
(35, 'Luis', 'Santos', 'luis60@email.com.br', NULL),
(36, 'Lucas', 'Santos', 'lucas61@email.com.br', NULL),
(37, 'Wander', 'Santos', 'wander62@email.com.br', NULL),
(38, 'Tairo', 'Santos', 'tairo63@email.com.br', NULL),
(39, 'Rubens', 'Santos', 'rubens64@email.com.br', NULL),
(40, 'Hugo', 'Santos', 'hugo65@email.com.br', NULL),
(41, 'Gustavo', 'Santos', 'gustavo66@email.com.br', NULL),
(42, 'Paulo', 'Santos', 'paulo67@email.com.br', NULL),
(43, 'Rodrigo', 'Santos', 'rodrigo68@email.com.br', NULL),
(44, 'Denio', 'Santos', 'denio69@email.com.br', NULL),
(45, 'Idalmir', 'Santos', 'idalmir70@email.com.br', NULL),
(46, 'Ataide', 'Santos', 'ataide71@email.com.br', NULL),
(47, 'Luiz', 'Santos', 'luiz72@email.com.br', NULL),
(48, 'Luciano', 'Santos', 'luciano73@email.com.br', NULL),
(49, 'Adir', 'Santos', 'adir74@email.com.br', NULL),
(50, 'Tainan', 'Santos', 'tainan75@email.com.br', NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users_address`
--

DROP TABLE IF EXISTS `users_address`;
CREATE TABLE IF NOT EXISTS `users_address` (
  `user_id` int(11) UNSIGNED DEFAULT NULL,
  `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `zipcode` varchar(10) DEFAULT NULL,
  `street` varchar(255) DEFAULT NULL,
  `number` varchar(255) DEFAULT NULL,
  `district` varchar(50) DEFAULT NULL,
  `complement` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `state` varchar(255) DEFAULT NULL,
  `ibge` int(9) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `addr_user` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `users_address`
--

INSERT INTO `users_address` (`user_id`, `id`, `zipcode`, `street`, `number`, `district`, `complement`, `city`, `state`, `ibge`) VALUES
(1, 51, NULL, 'rua manoel pedro vieira, 810', '810', NULL, 'casa 1', NULL, NULL, NULL),
(2, 52, NULL, 'paraguai', '2041', NULL, 'casa 1', NULL, NULL, NULL),
(3, 53, NULL, 'emilio daroz ', '107', NULL, 'casa 1', NULL, NULL, NULL),
(4, 54, NULL, 'rua lavinia moreira da silva', '145', NULL, 'casa 1', NULL, NULL, NULL),
(5, 55, NULL, 'padre anchieta', '121', NULL, 'casa 1', NULL, NULL, NULL),
(6, 56, NULL, 'rua amoroso costa', '254', NULL, 'casa 1', NULL, NULL, NULL),
(7, 57, NULL, 'alaor martins', '312', NULL, 'casa 1', NULL, NULL, NULL),
(8, 58, NULL, 'rua das violetas', '330', NULL, 'casa 1', NULL, NULL, NULL),
(9, 59, NULL, 'francisco carlos ', '105', NULL, 'casa 1', NULL, NULL, NULL),
(10, 60, NULL, 'torino', '95', NULL, 'casa 1', NULL, NULL, NULL),
(11, 61, NULL, 'rua erotidas', '64', NULL, 'casa 1', NULL, NULL, NULL),
(12, 62, NULL, 'r. orquideas', '169', NULL, 'casa 1', NULL, NULL, NULL),
(13, 63, NULL, 'rua joffre motta', '44', NULL, 'casa 1', NULL, NULL, NULL),
(14, 64, NULL, 'rua piauí', '17', NULL, 'casa 1', NULL, NULL, NULL),
(15, 65, NULL, 'fernandes marques', '1229', NULL, 'casa 1', NULL, NULL, NULL),
(16, 66, NULL, 'av. beta', '07', NULL, 'casa 1', NULL, NULL, NULL),
(17, 67, NULL, 'abagiba', '674', NULL, 'casa 1', NULL, NULL, NULL),
(18, 68, NULL, 'gumercindo araujo', '302', NULL, 'casa 1', NULL, NULL, NULL),
(19, 69, NULL, 'rua 01, quadra 35', '35b', NULL, 'casa 1', NULL, NULL, NULL),
(20, 70, NULL, 'rua piauí', '23d', NULL, 'casa 1', NULL, NULL, NULL),
(21, 71, NULL, 'rua leopoldina araãºjo', '380', NULL, 'casa 1', NULL, NULL, NULL),
(22, 72, NULL, 'rua conceiã§ã£o', '101', NULL, 'casa 1', NULL, NULL, NULL),
(23, 73, NULL, 'rua benedetto bonfilgi', '755', NULL, 'casa 1', NULL, NULL, NULL),
(24, 74, NULL, 'rua sã£o francisco', '17', NULL, 'casa 1', NULL, NULL, NULL),
(25, 75, NULL, 'rua dona zulmira', '479', NULL, 'casa 1', NULL, NULL, NULL),
(26, 76, NULL, 'rua mampituba', '740', NULL, 'casa 1', NULL, NULL, NULL),
(27, 77, NULL, 'dezeseis', '151', NULL, 'casa 1', NULL, NULL, NULL),
(28, 78, NULL, 'rua dos goitacazes', '375', NULL, 'casa 1', NULL, NULL, NULL),
(29, 79, NULL, 'av lucio jose de meneses', '930', NULL, 'casa 1', NULL, NULL, NULL),
(30, 80, NULL, 'caetano', '3457', NULL, 'casa 1', NULL, NULL, NULL),
(31, 81, NULL, 'um nova ', '335', NULL, 'casa 1', NULL, NULL, NULL),
(32, 82, NULL, 'sres area especial', '19', NULL, 'casa 1', NULL, NULL, NULL),
(33, 83, NULL, 'islandia', '99', NULL, 'casa 1', NULL, NULL, NULL),
(34, 84, NULL, 'independência', '700', NULL, 'casa 1', NULL, NULL, NULL),
(35, 85, NULL, 'sebastiã£o thomaz de oliveira', '25', NULL, 'casa 1', NULL, NULL, NULL),
(36, 86, NULL, 'nogueira', '185', NULL, 'casa 1', NULL, NULL, NULL),
(37, 87, NULL, 'tv londrina', '12', NULL, 'casa 1', NULL, NULL, NULL),
(38, 88, NULL, 'teofilo otoni', '222', NULL, 'casa 1', NULL, NULL, NULL),
(39, 89, NULL, 'joã£o rasmussen', '244', NULL, 'casa 1', NULL, NULL, NULL),
(40, 90, NULL, 'travessa elizeu araãºjo', '46', NULL, 'casa 1', NULL, NULL, NULL),
(41, 91, NULL, 'av. dr. joão pessoa', '185', NULL, 'casa 1', NULL, NULL, NULL),
(42, 92, NULL, 'travessa brandão', '4', NULL, 'casa 1', NULL, NULL, NULL),
(43, 93, NULL, 'coqueiros', 'SN', NULL, 'casa 1', NULL, NULL, NULL),
(44, 94, NULL, 'estrada m boi mirim', '820', NULL, 'casa 1', NULL, NULL, NULL),
(45, 95, NULL, 'travessa dos comerciarios ', '5', NULL, 'casa 1', NULL, NULL, NULL),
(46, 96, NULL, 'dos jacarandas', '30', NULL, 'casa 1', NULL, NULL, NULL),
(47, 97, NULL, 'dona ermelinda pereira', '413', NULL, 'casa 1', NULL, NULL, NULL),
(48, 98, NULL, 'rua projetada 02', '742', NULL, 'casa 1', NULL, NULL, NULL),
(49, 99, NULL, 'samambaia', '96', NULL, 'casa 1', NULL, NULL, NULL),
(50, 100, NULL, 'rua dos gerã¢nios', '110', NULL, 'casa 1', NULL, NULL, NULL);

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `users_address`
--
ALTER TABLE `users_address`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
