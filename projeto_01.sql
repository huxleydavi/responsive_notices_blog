-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 04-Jul-2017 às 14:26
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projeto_01`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.online`
--

CREATE TABLE `tb_admin.online` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `ultima_acao` datetime NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_admin.online`
--

INSERT INTO `tb_admin.online` (`id`, `ip`, `ultima_acao`, `token`) VALUES
(2, '::1', '2017-07-04 11:10:22', '595b9e4ddb7f3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.usuarios`
--

CREATE TABLE `tb_admin.usuarios` (
  `id` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `cargo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_admin.usuarios`
--

INSERT INTO `tb_admin.usuarios` (`id`, `user`, `password`, `img`, `nome`, `cargo`) VALUES
(1, 'hux', 'ley', 'hx.jpg', 'Huxley Davi O. Moreira', 2),
(2, 'teste', 'teste', 'teste.jpg', 'Teste', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_admin.visitas`
--

CREATE TABLE `tb_admin.visitas` (
  `id` int(11) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `dia` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_admin.visitas`
--

INSERT INTO `tb_admin.visitas` (`id`, `ip`, `dia`) VALUES
(1, '::1', '2017-06-12'),
(2, '192.168.0.2', '2017-06-11'),
(3, '::1', '2017-06-13'),
(4, '::1', '2017-06-13'),
(5, '::1', '2017-06-13'),
(6, '::1', '2017-06-13'),
(7, '::1', '2017-06-14'),
(8, '::1', '2017-06-14'),
(9, '::1', '2017-06-16'),
(10, '::1', '2017-06-20'),
(11, '::1', '2017-06-20'),
(12, '::1', '2017-06-20'),
(13, '::1', '2017-06-20'),
(14, '::1', '2017-06-26'),
(15, '::1', '2017-06-27'),
(16, '::1', '2017-07-03');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.categorias`
--

CREATE TABLE `tb_site.categorias` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.categorias`
--

INSERT INTO `tb_site.categorias` (`id`, `nome`, `slug`, `order_id`) VALUES
(3, 'Geral', 'geral', 3),
(4, 'Cotidiano', 'cotidiano', 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.config`
--

CREATE TABLE `tb_site.config` (
  `titulo` varchar(255) NOT NULL,
  `nome_autor` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `icone1` varchar(255) NOT NULL,
  `descricao1` text NOT NULL,
  `icone2` varchar(255) NOT NULL,
  `descricao2` text NOT NULL,
  `icone3` varchar(255) NOT NULL,
  `descricao3` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.config`
--

INSERT INTO `tb_site.config` (`titulo`, `nome_autor`, `descricao`, `icone1`, `descricao1`, `icone2`, `descricao2`, `icone3`, `descricao3`) VALUES
('Projeto editado', 'Guilherme Grillo', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur commodo consequat finibus. Integer luctus, lacus vitae pretium venenatis, nisl ante fermentum lorem, non volutpat neque ex quis erat. Sed nec turpis et mauris condimentum vestibulum ut sed dui. Morbi eget orci quam. Cras vel augue nec diam tempus efficitur. Aliquam et posuere libero. Integer malesuada justo sit amet ullamcorper pretium. Phasellus pellentesque tincidunt congue. Aliquam dictum ipsum aliquam, elementum massa quis, viverra nibh.\r\n\r\nDuis in hendrerit felis. Aliquam consequat augue quis urna aliquam, id tempor arcu lacinia. Donec egestas leo porttitor lacus laoreet varius. Nam ut pellentesque sapien. Pellentesque placerat dignissim rutrum. Praesent ex mauris, fringilla in tempor id, pharetra nec nibh. Curabitur a ligula sapien. Maecenas condimentum pellentesque fermentum. Fusce blandit lobortis erat, eu mattis metus convallis eleifend. Integer tincidunt ac arcu ut feugiat. Aliquam ac est interdum massa gravida tincidunt a ac leo. Maecenas elit magna, tempus ut eleifend a, sollicitudin et arcu. Aliquam sed tempor velit, at pulvinar tortor. Vestibulum eu lorem sit amet risus porta fringilla ut in nisl.', 'fa fa-css3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur commodo consequat finibus. Integer luctus, lacus vitae pretium venenatis, nisl ante fermentum lorem, non volutpat neque ex quis erat. Sed nec turpis et mauris condimentum vestibulum ut sed dui. Morbi eget orci quam.', 'fa fa-html5', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur commodo consequat finibus. Integer luctus, lacus vitae pretium venenatis, nisl ante fermentum lorem, non volutpat neque ex quis erat. Sed nec turpis et mauris condimentum vestibulum ut sed dui. Morbi ege', 'fa fa-gg-circle', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur commodo consequat finibus. Integer luctus, lacus vitae pretium venenatis, nisl ante fermentum lorem, non volutpat neque ex quis erat. Sed nec turpis et mauris condimentum vestibulum ut sed dui. Morbi eget orci quam. ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.depoimentos`
--

CREATE TABLE `tb_site.depoimentos` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `depoimento` text NOT NULL,
  `data` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.depoimentos`
--

INSERT INTO `tb_site.depoimentos` (`id`, `nome`, `depoimento`, `data`, `order_id`) VALUES
(8, 'Guilherme', 'Olá, funcionando', '19/09/2019', 11),
(9, 'João', 'Olá, funcionando', '19/09/2019', 10),
(10, 'Mario', 'Depoimento', '19/09/2019', 9),
(11, 'Outro', 'Ok', '19/08/2016', 8),
(12, 'Guilherme Grillo', 'Depoimento de teste', '25/05/1993', 12),
(13, 'Joao', 'outro depoimento editado', '25/05/1993', 13);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.noticias`
--

CREATE TABLE `tb_site.noticias` (
  `id` int(11) NOT NULL,
  `categoria_id` int(11) NOT NULL,
  `data` date NOT NULL,
  `titulo` varchar(255) NOT NULL,
  `conteudo` text NOT NULL,
  `capa` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.noticias`
--

INSERT INTO `tb_site.noticias` (`id`, `categoria_id`, `data`, `titulo`, `conteudo`, `capa`, `slug`, `order_id`) VALUES
(7, 3, '2017-07-04', 'Lorem Ipsum', '<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus egestas sodales est, non eleifend dui accumsan a. Sed ex lorem, posuere sed mauris ornare, scelerisque viverra purus. In lacinia, risus eget pulvinar rutrum, velit leo dignissim massa, vitae bibendum nisi velit id elit. Cras consequat, eros suscipit sodales elementum, eros tortor auctor elit, ac sagittis odio leo nec urna. Proin malesuada nibh eu leo sodales tempor. Donec faucibus orci justo, id pharetra eros eleifend at. Nullam ornare diam ac libero dapibus, quis aliquam purus condimentum. Nulla in libero tristique, dapibus purus vel, porta mauris. Vivamus sed aliquet neque, sit amet tincidunt massa.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Fusce interdum tristique scelerisque. Donec sem lacus, rutrum id sodales id, imperdiet at ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec tristique ante ut consectetur interdum. Quisque ut leo vel lectus volutpat eleifend. In et cursus sem, non ultrices nisi. Maecenas quis neque quam. Duis ornare sit amet ligula id finibus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Cras accumsan ac ante vel pretium. Nam tempus at arcu a luctus. Aenean pretium sapien quam, in tempus magna maximus sed. Suspendisse odio turpis, condimentum imperdiet eleifend et, viverra ut ante. Proin et quam nunc. Nunc in odio at sapien bibendum gravida. Nulla risus lacus, aliquet eget consectetur in, posuere ut dui. Etiam pulvinar tempor eros id tincidunt. Curabitur facilisis lacus non nibh gravida efficitur. Nullam mattis congue dolor, vel euismod dolor hendrerit eget. Vivamus luctus, ante eget volutpat accumsan, tellus ex scelerisque turpis, eget posuere tellus dolor vitae nulla.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Nam felis sem, scelerisque non rhoncus at, aliquet vel arcu. Aliquam ut euismod lorem. Praesent sed justo cursus turpis lacinia gravida sed a justo. Maecenas sit amet sollicitudin dui. In suscipit massa non nibh cursus auctor. Etiam a dapibus lorem. Aliquam erat volutpat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam elementum a ipsum sit amet blandit. Duis in urna id neque blandit volutpat ac quis ligula.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Duis pulvinar ante eu tincidunt faucibus. Nulla facilisi. Nam rutrum a dolor sit amet ultricies. Aenean elementum dolor sed lacus venenatis iaculis. Quisque sagittis arcu eget sagittis lobortis. Donec in felis arcu. Nullam nec gravida quam. Nullam mollis, dolor non aliquam viverra, neque lorem finibus diam, et vulputate justo purus nec purus.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"http://consciencia.net/img/2014/03/cotidiano2.jpg\" /></p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus egestas sodales est, non eleifend dui accumsan a. Sed ex lorem, posuere sed mauris ornare, scelerisque viverra purus. In lacinia, risus eget pulvinar rutrum, velit leo dignissim massa, vitae bibendum nisi velit id elit. Cras consequat, eros suscipit sodales elementum, eros tortor auctor elit, ac sagittis odio leo nec urna. Proin malesuada nibh eu leo sodales tempor. Donec faucibus orci justo, id pharetra eros eleifend at. Nullam ornare diam ac libero dapibus, quis aliquam purus condimentum. Nulla in libero tristique, dapibus purus vel, porta mauris. Vivamus sed aliquet neque, sit amet tincidunt massa.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Fusce interdum tristique scelerisque. Donec sem lacus, rutrum id sodales id, imperdiet at ligula. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Donec tristique ante ut consectetur interdum. Quisque ut leo vel lectus volutpat eleifend. In et cursus sem, non ultrices nisi. Maecenas quis neque quam. Duis ornare sit amet ligula id finibus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Cras accumsan ac ante vel pretium. Nam tempus at arcu a luctus. Aenean pretium sapien quam, in tempus magna maximus sed. Suspendisse odio turpis, condimentum imperdiet eleifend et, viverra ut ante. Proin et quam nunc. Nunc in odio at sapien bibendum gravida. Nulla risus lacus, aliquet eget consectetur in, posuere ut dui. Etiam pulvinar tempor eros id tincidunt. Curabitur facilisis lacus non nibh gravida efficitur. Nullam mattis congue dolor, vel euismod dolor hendrerit eget. Vivamus luctus, ante eget volutpat accumsan, tellus ex scelerisque turpis, eget posuere tellus dolor vitae nulla.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Nam felis sem, scelerisque non rhoncus at, aliquet vel arcu. Aliquam ut euismod lorem. Praesent sed justo cursus turpis lacinia gravida sed a justo. Maecenas sit amet sollicitudin dui. In suscipit massa non nibh cursus auctor. Etiam a dapibus lorem. Aliquam erat volutpat. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nullam elementum a ipsum sit amet blandit. Duis in urna id neque blandit volutpat ac quis ligula.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\">Duis pulvinar ante eu tincidunt faucibus. Nulla facilisi. Nam rutrum a dolor sit amet ultricies. Aenean elementum dolor sed lacus venenatis iaculis. Quisque sagittis arcu eget sagittis lobortis. Donec in felis arcu. Nullam nec gravida quam. Nullam mollis, dolor non aliquam viverra, neque lorem finibus diam, et vulputate justo purus nec purus.</p>\r\n<p style=\"margin: 0px 0px 15px; padding: 0px; text-align: justify; font-family: \'Open Sans\', Arial, sans-serif;\"><em>Italico,<strong>BOLD</strong></em></p>', '595b9f0736cd5.jpg', 'lorem-ipsum', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.servicos`
--

CREATE TABLE `tb_site.servicos` (
  `id` int(11) NOT NULL,
  `servico` text NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.servicos`
--

INSERT INTO `tb_site.servicos` (`id`, `servico`, `order_id`) VALUES
(4, 'Meu serviço #1', 4),
(5, 'Meu serviço #2 EDITADO novamente', 6),
(6, 'Meu serviço #3 EDITADO NOVAMENTE NOVAMENTE', 7),
(7, 'Meu servico #4', 5);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_site.slides`
--

CREATE TABLE `tb_site.slides` (
  `id` int(11) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `slide` varchar(255) NOT NULL,
  `order_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_site.slides`
--

INSERT INTO `tb_site.slides` (`id`, `nome`, `slide`, `order_id`) VALUES
(8, 'Imagem de teste', '594d4e65b16be.jpg', 8),
(9, 'Meu slide', '594d4ec5ad5dd.jpg', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin.online`
--
ALTER TABLE `tb_admin.online`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_admin.visitas`
--
ALTER TABLE `tb_admin.visitas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_site.categorias`
--
ALTER TABLE `tb_site.categorias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_site.depoimentos`
--
ALTER TABLE `tb_site.depoimentos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_site.noticias`
--
ALTER TABLE `tb_site.noticias`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_site.servicos`
--
ALTER TABLE `tb_site.servicos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_site.slides`
--
ALTER TABLE `tb_site.slides`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin.online`
--
ALTER TABLE `tb_admin.online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_admin.usuarios`
--
ALTER TABLE `tb_admin.usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_admin.visitas`
--
ALTER TABLE `tb_admin.visitas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tb_site.categorias`
--
ALTER TABLE `tb_site.categorias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tb_site.depoimentos`
--
ALTER TABLE `tb_site.depoimentos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tb_site.noticias`
--
ALTER TABLE `tb_site.noticias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_site.servicos`
--
ALTER TABLE `tb_site.servicos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tb_site.slides`
--
ALTER TABLE `tb_site.slides`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
