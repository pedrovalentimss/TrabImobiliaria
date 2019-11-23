-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 23-Nov-2019 às 02:36
-- Versão do servidor: 10.4.8-MariaDB
-- versão do PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `imobiliaria`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `clientes`
--

CREATE TABLE `clientes` (
  `nome` varchar(30) NOT NULL,
  `cpf` varchar(20) NOT NULL,
  `telefone` varchar(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `clientes`
--

INSERT INTO `clientes` (`nome`, `cpf`, `telefone`, `id`) VALUES
('Pedro', '123', '123456789', 1),
('João', '12345', '234256', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `imoveis`
--

CREATE TABLE `imoveis` (
  `endereco` varchar(50) NOT NULL,
  `valor` double NOT NULL,
  `status` varchar(20) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `imoveis`
--

INSERT INTO `imoveis` (`endereco`, `valor`, `status`, `id`) VALUES
('Rua Quartzo', 100000, 'Disponivel', 1),
('Rua Legal', 100, '', 2),
('Rua Tri', 100000, '', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `locacoes`
--

CREATE TABLE `locacoes` (
  `dt_inicio` datetime NOT NULL,
  `dt_final` datetime NOT NULL,
  `cliente` varchar(40) NOT NULL,
  `imovel` varchar(40) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `locacoes`
--

INSERT INTO `locacoes` (`dt_inicio`, `dt_final`, `cliente`, `imovel`, `id`) VALUES
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Pedro', '', 1),
('0000-00-00 00:00:00', '0000-00-00 00:00:00', 'Pedro', 'Rua Quartzo', 2),
('2019-11-01 11:00:00', '2019-11-22 11:00:00', 'Pedro', 'Rua Quartzo', 3),
('2019-11-12 22:00:00', '2019-11-23 03:03:00', 'Pedro', 'Rua Quartzo', 4);

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `imoveis`
--
ALTER TABLE `imoveis`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `locacoes`
--
ALTER TABLE `locacoes`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `imoveis`
--
ALTER TABLE `imoveis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `locacoes`
--
ALTER TABLE `locacoes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
