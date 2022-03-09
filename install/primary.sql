-- phpMyAdmin SQL Dump
-- version 4.4.10
-- http://www.phpmyadmin.net
--
-- Client :  localhost:3306
-- Généré le :  Mar 20 Juin 2017 à 23:27
-- Version du serveur :  5.5.42
-- Version de PHP :  7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `flashgame`
--

-- --------------------------------------------------------

--
-- Structure de la table `2d_categories`
--

CREATE TABLE `2d_categories` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `url` varchar(45) NOT NULL,
  `id_relation` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `2d_comments`
--

CREATE TABLE `2d_comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_game` int(11) DEFAULT NULL,
  `id_relation` int(11) DEFAULT '0',
  `score` int(11) DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `2d_favorites`
--

CREATE TABLE `2d_favorites` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_game` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `2d_games`
--

CREATE TABLE `2d_games` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `id_category` int(11) DEFAULT NULL,
  `ids_keywords` varchar(45) DEFAULT NULL,
  `description` varchar(1000) DEFAULT NULL,
  `control` varchar(200) DEFAULT NULL,
  `tips` varchar(200) DEFAULT NULL,
  `note` float DEFAULT '0',
  `played` int(11) DEFAULT '0',
  `type` tinyint(1) DEFAULT '1',
  `import` int(11) DEFAULT '0',
  `console` varchar(45) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `image` varchar(200) DEFAULT NULL,
  `file` varchar(200) DEFAULT NULL,
  `embed` varchar(200) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `date_upload` datetime DEFAULT NULL,
  `date_publish` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `2d_keywords`
--

CREATE TABLE `2d_keywords` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `url` varchar(45) NOT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `2d_likes`
--

CREATE TABLE `2d_likes` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_com` int(11) DEFAULT NULL,
  `nb_like` int(11) DEFAULT '0',
  `nb_unlike` int(11) DEFAULT '0',
  `date_creation` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `2d_notes`
--

CREATE TABLE `2d_notes` (
  `id` int(11) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `id_game` int(11) DEFAULT NULL,
  `note` float DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `2d_pages`
--

CREATE TABLE `2d_pages` (
  `id` int(11) NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `url` varchar(45) DEFAULT NULL,
  `content` mediumtext,
  `display_footer` tinyint(1) DEFAULT '0',
  `date_creation` datetime DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `2d_profiles_comments`
--

CREATE TABLE `2d_profiles_comments` (
  `id` int(11) NOT NULL,
  `comment` varchar(45) DEFAULT NULL,
  `id_user_page` int(11) DEFAULT NULL,
  `id_user_member` int(11) DEFAULT NULL,
  `date_creation` datetime DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `2d_sessions`
--

CREATE TABLE `2d_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) unsigned NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `2d_stats`
--

CREATE TABLE `2d_stats` (
  `id` int(11) NOT NULL,
  `attribut` int(11) DEFAULT NULL,
  `value` int(11) DEFAULT NULL,
  `date_creation` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `2d_users`
--

CREATE TABLE `2d_users` (
  `id` int(11) NOT NULL,
  `url` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `passkey` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `status` tinyint(1) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `date_inscription` datetime DEFAULT NULL,
  `ip` varchar(45) DEFAULT NULL,
  `facebook` varchar(45) DEFAULT NULL,
  `twitter` varchar(45) DEFAULT NULL,
  `google` varchar(45) DEFAULT NULL,
  `linkedin` varchar(45) DEFAULT NULL,
  `location` tinytext,
  `about` tinytext,
  `auth_coms` tinyint(1) DEFAULT '0',
  `nb_favs` int(11) DEFAULT '0',
  `nb_notes` int(11) DEFAULT '0',
  `nb_coms` int(11) DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Contenu de la table `2d_users`
--

INSERT INTO `2d_users` (`id`, `url`, `username`, `email`, `password`, `passkey`, `role`, `status`, `image`, `date_inscription`, `ip`, `facebook`, `twitter`, `google`, `linkedin`, `location`, `about`, `auth_coms`, `nb_favs`, `nb_notes`, `nb_coms`) VALUES
(1, 'admin', 'Admin', 'admin@coffeetheme.com', 'password', 'q4v54xxm3thw12pc10kn', '1', 1, '', '2017-02-27 02:51:43', '::1', NULL, NULL, NULL, NULL, 'Miami', 'Welcome to my profile', 0, 34, 155, 22);

--
-- Index pour les tables exportées
--

--
-- Index pour la table `2d_categories`
--
ALTER TABLE `2d_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`),
  ADD UNIQUE KEY `url_UNIQUE` (`url`);

--
-- Index pour la table `2d_comments`
--
ALTER TABLE `2d_comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Index pour la table `2d_favorites`
--
ALTER TABLE `2d_favorites`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Index pour la table `2d_games`
--
ALTER TABLE `2d_games`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`),
  ADD UNIQUE KEY `url_UNIQUE` (`url`);

--
-- Index pour la table `2d_keywords`
--
ALTER TABLE `2d_keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id2d_keywords_UNIQUE` (`id`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`),
  ADD UNIQUE KEY `url_UNIQUE` (`url`);

--
-- Index pour la table `2d_likes`
--
ALTER TABLE `2d_likes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Index pour la table `2d_notes`
--
ALTER TABLE `2d_notes`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Index pour la table `2d_pages`
--
ALTER TABLE `2d_pages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `title_UNIQUE` (`title`),
  ADD UNIQUE KEY `url_UNIQUE` (`url`);

--
-- Index pour la table `2d_profiles_comments`
--
ALTER TABLE `2d_profiles_comments`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Index pour la table `2d_sessions`
--
ALTER TABLE `2d_sessions`
  ADD KEY `ci_sessions_timestamp` (`timestamp`);

--
-- Index pour la table `2d_stats`
--
ALTER TABLE `2d_stats`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Index pour la table `2d_users`
--
ALTER TABLE `2d_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `username_UNIQUE` (`username`),
  ADD UNIQUE KEY `url_UNIQUE` (`url`),
  ADD UNIQUE KEY `mail_UNIQUE` (`email`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `2d_categories`
--
ALTER TABLE `2d_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `2d_comments`
--
ALTER TABLE `2d_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `2d_favorites`
--
ALTER TABLE `2d_favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `2d_games`
--
ALTER TABLE `2d_games`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `2d_keywords`
--
ALTER TABLE `2d_keywords`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `2d_likes`
--
ALTER TABLE `2d_likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `2d_notes`
--
ALTER TABLE `2d_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `2d_pages`
--
ALTER TABLE `2d_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `2d_profiles_comments`
--
ALTER TABLE `2d_profiles_comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `2d_stats`
--
ALTER TABLE `2d_stats`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT pour la table `2d_users`
--
ALTER TABLE `2d_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
