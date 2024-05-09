-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 02-Dez-2022 às 05:21
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `hotel`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_acomodacao`
--

CREATE TABLE `tb_acomodacao` (
  `id` int(11) NOT NULL,
  `quant_cas` int(11) NOT NULL,
  `quant_sol` int(11) NOT NULL,
  `cama_ext` int(11) DEFAULT NULL,
  `tipo_aco` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_acomodacao`
--

INSERT INTO `tb_acomodacao` (`id`, `quant_cas`, `quant_sol`, `cama_ext`, `tipo_aco`) VALUES
(0, 2, 2, 2, 2),
(1, 2, 1, 2, 1),
(2, 2, 2, 1, 2),
(3, 4, 1, 0, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_reserva`
--

CREATE TABLE `tb_reserva` (
  `id` int(11) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `id_aco` int(11) DEFAULT NULL,
  `data_entrada` date NOT NULL,
  `tipo` varchar(2) NOT NULL,
  `data_saida` date NOT NULL,
  `quant_hosp` int(11) NOT NULL,
  `val_reserva` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_reserva`
--

INSERT INTO `tb_reserva` (`id`, `id_usuario`, `id_aco`, `data_entrada`, `tipo`, `data_saida`, `quant_hosp`, `val_reserva`) VALUES
(1, NULL, NULL, '0012-03-07', '', '0222-03-13', 1, '1.00'),
(2, NULL, NULL, '0012-03-07', '', '0222-03-13', 1, '1.00'),
(3, NULL, NULL, '0012-03-07', '', '0222-03-13', 1, '1.00'),
(4, NULL, NULL, '0012-03-07', 'sa', '0222-03-13', 1, '1.00'),
(5, NULL, NULL, '2022-12-01', 'S', '2022-12-06', 1, '1.00'),
(6, NULL, NULL, '2022-12-01', 'S', '2022-12-14', 1, '1.00'),
(7, NULL, NULL, '2022-12-01', 'S', '2022-12-14', 1, '1.00'),
(8, 3, NULL, '2022-12-01', 'S', '2022-12-14', 1, '1.00'),
(9, 3, NULL, '2022-12-01', 'S', '2022-12-14', 1, '1.00'),
(10, 3, NULL, '2022-12-01', 'S', '2022-12-14', 1, '1.00'),
(11, 3, NULL, '2022-12-01', 'S', '2022-12-14', 1, '1.00'),
(12, 3, NULL, '2022-12-01', 'S', '2022-12-14', 1, '1.00'),
(13, 3, NULL, '2022-12-01', 'S', '2022-12-14', 1, '1.00'),
(14, 3, NULL, '2022-12-01', 'S', '2022-12-14', 1, '1.00'),
(15, 3, NULL, '2022-12-01', 'S', '2022-12-14', 1, '1.00'),
(16, 3, NULL, '2022-12-01', 'S', '2022-12-14', 1, '1.00'),
(17, 3, NULL, '2022-12-01', 'S', '2022-12-14', 1, '1.00'),
(18, 3, NULL, '2022-12-01', 'S', '2022-12-14', 1, '1.00'),
(19, 3, NULL, '2022-12-01', 'S', '2022-12-14', 1, '1.00'),
(20, 3, NULL, '2022-12-01', 'S', '2022-12-14', 1, '1.00'),
(21, 3, NULL, '2022-12-01', 'S', '2022-12-14', 1, '1.00'),
(22, 3, NULL, '2022-12-01', 'L', '2022-12-14', 1, '1.00'),
(23, 3, NULL, '2022-12-01', 'L', '2022-12-14', 1, '1.00'),
(24, 3, NULL, '2022-12-01', '1', '2022-12-07', 1, '0.00'),
(25, 3, NULL, '2022-12-01', '1', '2022-12-07', 1, '9.99'),
(26, 3, NULL, '2022-12-01', '1', '2022-12-07', 1, '9.99'),
(27, 3, NULL, '2022-12-01', '1', '2022-12-07', 1, '9.99'),
(28, 3, NULL, '2022-12-01', '1', '2022-12-07', 1, '9.99'),
(29, 3, NULL, '2022-12-01', '1', '2022-12-07', 1, '9.99'),
(30, 3, NULL, '2022-12-01', '1', '2022-12-07', 1, '9.99'),
(31, 3, NULL, '2022-12-01', '1', '2022-12-07', 4, '9.99'),
(32, 3, NULL, '2022-12-01', '1', '2022-12-07', 4, '9.99'),
(33, 3, NULL, '2022-12-01', '1', '2022-12-07', 4, '9.99'),
(34, 3, NULL, '2022-12-01', '1', '2022-12-07', 4, '9.99'),
(35, 3, NULL, '2022-12-01', '1', '2022-12-07', 4, '9.99'),
(36, 3, NULL, '2022-12-01', '1', '2022-12-07', 4, '9.99'),
(37, 3, NULL, '2022-12-01', '1', '2022-12-07', 4, '9.99'),
(38, 3, NULL, '2022-12-01', '1', '2022-12-07', 4, '9.99'),
(39, 3, NULL, '2022-12-01', '1', '2022-12-07', 4, '9.99'),
(40, 3, NULL, '2022-12-01', '2', '2022-12-07', 2, '9.99'),
(41, 3, NULL, '2022-12-01', '2', '2022-12-07', 2, '9.99'),
(42, 3, NULL, '2022-12-01', '1', '2022-12-07', 4, '9.99'),
(43, 3, NULL, '2022-12-01', '1', '2022-12-07', 2, '9.99');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tarifa`
--

CREATE TABLE `tb_tarifa` (
  `id` int(11) NOT NULL,
  `tipo_aco` char(1) NOT NULL,
  `val_aco` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_tarifa`
--

INSERT INTO `tb_tarifa` (`id`, `tipo_aco`, `val_aco`) VALUES
(1, 'a', '9.99'),
(2, 'b', '2.00');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id` int(11) NOT NULL,
  `nome` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `senha` varchar(100) NOT NULL,
  `dt_nascimento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`id`, `nome`, `email`, `senha`, `dt_nascimento`) VALUES
(1, 'asd', 'teste@teste.com', '3', '0000-00-00'),
(3, 'asd', 'teste@teste.com', '4', '2022-11-10'),
(6, 'Azevedo', 'azevedp@gmail.com', '123', '2002-12-13'),
(7, 'Abatti', 'abatti@gmail.com', '123', '2000-01-01'),
(8, 'Abatti', 'abatti@gmail.com', '123', '2000-01-01'),
(9, 'Abatti', 'abatti@gmail.com', '123', '2002-01-01'),
(10, 'Abatti', 'abatti@gmail.com', '123', '2002-01-01'),
(11, 'Abatti', 'abatti@gmail.com', '123', '2002-01-01'),
(12, 'Abatti', 'abatti@gmail.com', '123', '2002-01-01');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_acomodacao`
--
ALTER TABLE `tb_acomodacao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tipo_aco` (`tipo_aco`);

--
-- Índices para tabela `tb_reserva`
--
ALTER TABLE `tb_reserva`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_aco` (`id_aco`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Índices para tabela `tb_tarifa`
--
ALTER TABLE `tb_tarifa`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_reserva`
--
ALTER TABLE `tb_reserva`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_acomodacao`
--
ALTER TABLE `tb_acomodacao`
  ADD CONSTRAINT `tb_acomodacao_ibfk_1` FOREIGN KEY (`tipo_aco`) REFERENCES `tb_tarifa` (`id`);

--
-- Limitadores para a tabela `tb_reserva`
--
ALTER TABLE `tb_reserva`
  ADD CONSTRAINT `tb_reserva_ibfk_1` FOREIGN KEY (`id_aco`) REFERENCES `tb_acomodacao` (`id`),
  ADD CONSTRAINT `tb_reserva_ibfk_2` FOREIGN KEY (`id_usuario`) REFERENCES `tb_usuario` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
