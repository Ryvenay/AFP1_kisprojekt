-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2020. Sze 30. 11:25
-- Kiszolgáló verziója: 5.7.26
-- PHP verzió: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `miniproject`
--
CREATE DATABASE IF NOT EXISTS `miniproject` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `miniproject`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `banner` varchar(255) NOT NULL,
  `author` bigint(20) NOT NULL,
  `category` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `banner`, `author`, `category`, `create_date`) VALUES
(1, 'Hundred Sins, Azahriah - OYE', '<h1>Avalible on: </h1>\r\nSpotify: <a href= \"https://tinyurl.hu/aBlR/ \">https://tinyurl.hu/aBlR/ </a>\r\n</p>\r\n<p>\r\nApple Music: <a href= \"https://tinyurl.hu/T4mB/ \">https://tinyurl.hu/T4mB/</a>\r\n</p>\r\n<p>\r\nDeezer: <a href= \"https://tinyurl.hu/Kn4e/\">https://tinyurl.hu/Kn4e/</a>\r\n</p>\r\n</p>\r\n<h2>Lyrics:</h2>\r\n<p>I’m like baby,\r\nYou’re an obstacle\r\nI said baby,\r\nI’m on a rocky road\r\nYeah I’d like to tell you that it’s all about me\r\nI tried too hard but I can’t find a way to set you free\r\n</p>\r\n<p>\r\nAnd I’m like: riding down the 95 we leaving in a hole\r\nFeels like months but it’s 2 hours, I feel as I’m growing old\r\nPopping pills and pouring champagne in a swimming pool\r\nOkay It’s just my shady thoughts, the truth is that I’m still alone (2x)\r\n</p>\r\n<p>\r\nWhat do you say to that\r\nWhat do you say to that\r\nWhat do you say to that\r\nWhat do you say to that\r\n</p>\r\n<p>\r\nLike isn’t it crazy, isn’t it crazy\r\nI guess we made it out\r\nBut how could you blame me how could you blame me? - I’m the one who is always right\r\nBut you cannot feel me you cannot feel me - you don’t got this type of life\r\nBut in the end we all fall together I said we all fall\r\nYeah I guess that you should show me how to write a blasphemy and\r\nHow to be a better me cause I don’t wanna sell my soul\r\nAnd if you wanna come with me we sailing through the 7 seas and say goodbye as enemies: tell me if you want these\r\n</p>\r\n<p>\r\nAnd I’m like: riding down the 95 we leaving in a hole\r\nFeels like months but it’s 2 hours, I feel as I’m growing old\r\nPopping pills and pouring champagne in a swimming pool\r\nOkay It’s just my shady thoughts, the truth is that I’m still alone (2x)\r\n</p>\r\n', 'https://e-cdns-images.dzcdn.net/images/cover/fe2bf9346e6a409ca88045b40ef2ceb6/350x350.jpg', 1, 'Pop', '2020-09-30 09:09:31'),
(4, 'Sam Tompkins ft. Jaykae - Faded', '<h1>Avalible on:</h1>\r\n<p><a href=\"https://www.youtube.com/watch?v=6tv8dXUi3Tk&ab_channel=SamTompkins\">Youtube</a></p>\r\n<p><a href=\"https://open.spotify.com/track/12NFoeJNey6mHD6bgkRaE7?si=anPv8LmKSJqiALnkJ-Sgig\">Spotify</a></p>\r\n<h2 >Writer saids:</h2>\r\n<p>hey guys - so the ep is finally out and i thought the best way to release it would be release a video with one of my favourite rappers in the world, jaykae. i wrote this video concept and couldn’t wait to put it out! i know it’s a different style to the last couple of tracks, but it was super fun to do and have been so excited to share it with you guys!!!\r\n</p>', 'https://images.genius.com/898256bdac893600b0e3c538651d9e3d.543x543x1.jpg', 1, 'Trap', '2020-09-30 09:31:08'),
(2, 'Larry Carlton 10:00PM', '<h1>Avalible on:</h1><p><a href="https://www.youtube.com/watch?v=6tv8dXUi3Tk&ab_channel=SamTompkins">Youtube</a></p><p><a href="https://open.spotify.com/track/12NFoeJNey6mHD6bgkRaE7?si=anPv8LmKSJqiALnkJ-Sgig">Spotify</a></p><h2 >Album: Sleepwalk</h2><h3>1982 Warner Records Inc.</h3><p>Bass: Abe Laboriel</p><p>Drums: Jeff Porcaro</p><p>Guitar, Producer: Larry Carlton</p><p>Keyboards: Terry Trotter</p><p>Writer: Larry Carlton</p>', 'https://img.discogs.com/sK__7zx1uD2QbSGCYK-4TURfGzg=/fit-in/600x603/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-1569027-1476107851-7698.jpeg.jpg', 1, 'Jazz', '2020-09-30 09:19:29'),
(3, 'Ren and Sam Tompkins - Blind Eyed', '<h1>Avalible on:</h1>\r\n<p><a href=\"https://www.youtube.com/watch?v=2W-MXP8B5zk&ab_channel=Ren\">Youtube</a></p>\r\n<p><a href=\"https://open.spotify.com/track/4YrGPhQPYPqvIjEeeZZUfu?si=rIp4dFlUTeGIhqWJ5bgBGA\">Spotify</a></p>\r\n<h2 >Writer saids:</h2>\r\n<p>Also I feel like I should say this. There are some of you who will have been following my story for a few years, and will know that my health was absolutely destroyed, leaving me disabled for years. It was only after a stem cell transplant that I started on the road to regaining my health. Before people ask me why I\’m smoking after going through so much, I thought I’d just explain... \r\n</p>\r\n<p>I’ve had to live like an absolute saint for so many years, missing out on the years where people are normally experimenting with every substance under the sun, watching what I eat, how much energy I use, putting everything under the microscope… I decided to have a week where I said fuck it, and did what I wanted. And you know what, It felt fuuucking great. I’ve since quit again (so you don’t have to worry mum and dad!) and gone back to seriously looking after my body and taking it easy, but it felt nice, and actually strangely quite cathartic to do something so obviously bad for me for a while. Don’t smoke or do drugs kiddies! Your body is a temple</p>', 'https://images.genius.com/e84d5d23956890d281eae4ff231f44f5.640x640x1.jpg', 1, 'Live', '2020-09-30 09:26:41'),
(5, 'Free Youth - We Can Move', '<h1>Avalible on:</h1>\r\n<p><a href=\"https://www.youtube.com/watch?v=EfBa6z3BTfo\">Youtube</a></p>\r\n<p><a href=\"https://open.spotify.com/track/4SkLc98e2adim07nVge5Mh?si=HPnL14pTQWGz5v4Wfx7bag\">Spotify</a></p>\r\n<h2 >Song made: 1985</h2>\r\n<h3>Top comment</h3>\r\n<p>No matter where I am or what time it is everytime I hear this track it makes me just want to get up and dance like I have never danced before but then I realise I can’t because I’m on the bus or I’m at work or I’m in a queue at the supermarket. Infectious disco at its very  best\r\n</p>', 'https://img.discogs.com/l0WYarXrTNwHIDDaMtpPTz_IKhQ=/fit-in/354x359/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-7920723-1451692315-3304.jpeg.jpg', 1, 'Funk', '2020-09-30 10:52:58'),
(6, 'Meristem - Circus', '<h1>Avalible on:</h1>\r\n<p><a href=\"https://www.youtube.com/watch?v=YWu5IuI9y98&ab_channel=Meristem\">Youtube</a></p>\r\n<p><a href=\"https://open.spotify.com/track/4XI2Ark6g6LVVAcJbZws4w\">Spotify</a></p>\r\n<h2 >Album: Dark Phase</h2>\r\n<p>1st track from Dark Phase EP MERISTEM</p>\r\n<p> Barkóczi Bence: Songwriting, guitars, electronics</p>\r\n<p> Schiszler Soma: Bass, mixing, producing</p>\r\n<p> Markó Ádám: Drums</p>\r\n<p> Brucker Bence: Mastering</p>\r\n<p> Hofgad Bálint: keys, electronics</p>\r\n', 'https://www.rockstar.hu/upload/pics/dark_phase_front_cover(1).png', 1, 'Metal', '2020-09-30 11:13:39'),
(7, 'Ours Samplus - Blue Bird', '<h1>Avalible on:</h1>\r\n<p><a href=\"https://www.youtube.com/watch?v=eiseOhPrd-w\">Youtube</a></p>\r\n<p><a href=\"https://open.spotify.com/track/5Ub65lHOysyiaNEw0l1fkm\">Spotify</a></p>\r\n<h2>Orphan Loops by Ours Samplus (Beat Tape, 2018)</h2>\r\n<p>Original release date: Ours Samplus 2014</p>\r\n<p>France</p>', 'https://img.discogs.com/tSBHNnaO3MNEve-VfLsLQfBMEqI=/fit-in/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/A-5581072-1553005538-4222.jpeg.jpg', 1, 'Hiphop/rap', '2020-09-30 11:20:07'),
(8, 'Judas Priest - Before the Dawn', '<h1>Avalible on:</h1>\r\n<p><a href=\"https://www.youtube.com/watch?v=1Qjoffl_Lgo\">Youtube</a></p>\r\n<p><a href=\"https://open.spotify.com/track/29KPwkhfGpRkrL57TmFbDE?si=KaA_0m68R3CeMPqSPin62A\">Spotify</a></p>\r\n<h2>Lyrics:</h2>\r\n<p>Before the dawn, I hear you whisper In your sleep \"Don\’t let the morning take him\" Outside the birds begin to call As if to summon up my leaving</p>\r\n<p>It\’s been a lifetime since I found someone Since I found someone who would stay I\’ve waited too long, and now you\’re leaving Oh please don\’t take it all away</p>\r\n<p>It\’s been a lifetime since I found someone Since I found someone who would stay I\’ve waited too long, and now you\’re leaving</p>\r\n<p>Oh please don\’t take it all away</p>\r\n<p>Before the dawn, I hear you whisper In your sleep \"Don\’t let the morning take him\"</p>', 'https://i.ytimg.com/vi/B0-WnkR3xjo/hqdefault.jpg', 1, 'Metal', '2020-09-30 11:25:10');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `regdate`) VALUES
(1, 'admin', 'admin', '2020-09-30 06:08:01');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
