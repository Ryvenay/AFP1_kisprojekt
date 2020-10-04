-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1:3306
-- Létrehozás ideje: 2020. Okt 04. 16:54
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
  `genre` varchar(255) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `featured` bit(1) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `author` (`author`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `articles`
--

INSERT INTO `articles` (`id`, `title`, `content`, `banner`, `author`, `category`, `genre`, `create_date`, `featured`) VALUES
(1, 'Hundred Sins, Azahriah - OYE', '<h1>Avalible on: </h1>\r\nSpotify: <a href= \"https://tinyurl.hu/aBlR/ \">https://tinyurl.hu/aBlR/ </a>\r\n</p>\r\n<p>\r\nApple Music: <a href= \"https://tinyurl.hu/T4mB/ \">https://tinyurl.hu/T4mB/</a>\r\n</p>\r\n<p>\r\nDeezer: <a href= \"https://tinyurl.hu/Kn4e/\">https://tinyurl.hu/Kn4e/</a>\r\n</p>\r\n</p>\r\n<h2>Lyrics:</h2>\r\n<p>I’m like baby,\r\nYou’re an obstacle\r\nI said baby,\r\nI’m on a rocky road\r\nYeah I’d like to tell you that it’s all about me\r\nI tried too hard but I can’t find a way to set you free\r\n</p>\r\n<p>\r\nAnd I’m like: riding down the 95 we leaving in a hole\r\nFeels like months but it’s 2 hours, I feel as I’m growing old\r\nPopping pills and pouring champagne in a swimming pool\r\nOkay It’s just my shady thoughts, the truth is that I’m still alone (2x)\r\n</p>\r\n<p>\r\nWhat do you say to that\r\nWhat do you say to that\r\nWhat do you say to that\r\nWhat do you say to that\r\n</p>\r\n<p>\r\nLike isn’t it crazy, isn’t it crazy\r\nI guess we made it out\r\nBut how could you blame me how could you blame me? - I’m the one who is always right\r\nBut you cannot feel me you cannot feel me - you don’t got this type of life\r\nBut in the end we all fall together I said we all fall\r\nYeah I guess that you should show me how to write a blasphemy and\r\nHow to be a better me cause I don’t wanna sell my soul\r\nAnd if you wanna come with me we sailing through the 7 seas and say goodbye as enemies: tell me if you want these\r\n</p>\r\n<p>\r\nAnd I’m like: riding down the 95 we leaving in a hole\r\nFeels like months but it’s 2 hours, I feel as I’m growing old\r\nPopping pills and pouring champagne in a swimming pool\r\nOkay It’s just my shady thoughts, the truth is that I’m still alone (2x)\r\n</p>\r\n', 'https://e-cdns-images.dzcdn.net/images/cover/fe2bf9346e6a409ca88045b40ef2ceb6/350x350.jpg', 1, 'Review', 'Pop', '2020-09-30 09:09:31', b'1'),
(4, 'Sam Tompkins ft. Jaykae - Faded', '<h1>Avalible on:</h1>\r\n<p><a href=\"https://www.youtube.com/watch?v=6tv8dXUi3Tk&ab_channel=SamTompkins\">Youtube</a></p>\r\n<p><a href=\"https://open.spotify.com/track/12NFoeJNey6mHD6bgkRaE7?si=anPv8LmKSJqiALnkJ-Sgig\">Spotify</a></p>\r\n<h2 >Writer saids:</h2>\r\n<p>hey guys - so the ep is finally out and i thought the best way to release it would be release a video with one of my favourite rappers in the world, jaykae. i wrote this video concept and couldn’t wait to put it out! i know it’s a different style to the last couple of tracks, but it was super fun to do and have been so excited to share it with you guys!!!\r\n</p>', 'https://images.genius.com/898256bdac893600b0e3c538651d9e3d.543x543x1.jpg', 1, 'Review', 'Trap', '2020-09-30 09:31:08', b'1'),
(2, 'Larry Carlton 10:00PM', '<h1>Avalible on:</h1>\r\n<p><a href=\"https://www.youtube.com/watch?v=6tv8dXUi3Tk&ab_channel=SamTompkins\">Youtube</a></p>\r\n<p><a href=\"https://open.spotify.com/track/12NFoeJNey6mHD6bgkRaE7?si=anPv8LmKSJqiALnkJ-Sgig\">Spotify</a></p>\r\n<h2 >Album: Sleepwalk</h2>\r\n<h3>1982 Warner Records Inc.</h3>\r\n<p>Bass: Abe Laboriel</p>\r\n<p>Drums: Jeff Porcaro</p>\r\n<p>Guitar, Producer: Larry Carlton</p>\r\n<p>Keyboards: Terry Trotter</p>\r\n<p>Writer: Larry Carlton</p>', 'https://img.discogs.com/sK__7zx1uD2QbSGCYK-4TURfGzg=/fit-in/600x603/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-1569027-1476107851-7698.jpeg.jpg', 1, 'Review', 'Jazz', '2020-09-30 09:19:29', b'0'),
(3, 'Ren and Sam Tompkins - Blind Eyed', '<h1>Avalible on:</h1>\r\n<p><a href=\"https://www.youtube.com/watch?v=2W-MXP8B5zk&ab_channel=Ren\">Youtube</a></p>\r\n<p><a href=\"https://open.spotify.com/track/4YrGPhQPYPqvIjEeeZZUfu?si=rIp4dFlUTeGIhqWJ5bgBGA\">Spotify</a></p>\r\n<h2 >Writer saids:</h2>\r\n<p>Also I feel like I should say this. There are some of you who will have been following my story for a few years, and will know that my health was absolutely destroyed, leaving me disabled for years. It was only after a stem cell transplant that I started on the road to regaining my health. Before people ask me why I’m smoking after going through so much, I thought I’d just explain... \r\n</p>\r\n<p>I’ve had to live like an absolute saint for so many years, missing out on the years where people are normally experimenting with every substance under the sun, watching what I eat, how much energy I use, putting everything under the microscope… I decided to have a week where I said fuck it, and did what I wanted. And you know what, It felt fuuucking great. I’ve since quit again (so you don’t have to worry mum and dad!) and gone back to seriously looking after my body and taking it easy, but it felt nice, and actually strangely quite cathartic to do something so obviously bad for me for a while. Don’t smoke or do drugs kiddies! Your body is a temple</p>', 'https://images.genius.com/e84d5d23956890d281eae4ff231f44f5.640x640x1.jpg', 1, 'Review', 'Live', '2020-09-30 09:26:41', b'0'),
(5, 'Free Youth - We Can Move', '<h1>Avalible on:</h1>\r\n<p><a href=\"https://www.youtube.com/watch?v=EfBa6z3BTfo\">Youtube</a></p>\r\n<p><a href=\"https://open.spotify.com/track/4SkLc98e2adim07nVge5Mh?si=HPnL14pTQWGz5v4Wfx7bag\">Spotify</a></p>\r\n<h2 >Song made: 1985</h2>\r\n<h3>Top comment</h3>\r\n<p>No matter where I am or what time it is everytime I hear this track it makes me just want to get up and dance like I have never danced before but then I realise I can’t because I’m on the bus or I’m at work or I’m in a queue at the supermarket. Infectious disco at its very  best\r\n</p>', 'https://img.discogs.com/l0WYarXrTNwHIDDaMtpPTz_IKhQ=/fit-in/354x359/filters:strip_icc():format(jpeg):mode_rgb():quality(90)/discogs-images/R-7920723-1451692315-3304.jpeg.jpg', 1, 'Other', 'Funk', '2020-09-30 10:52:58', b'0'),
(6, 'Meristem - Circus', '<h1>Avalible on:</h1>\r\n<p><a href=\"https://www.youtube.com/watch?v=YWu5IuI9y98&ab_channel=Meristem\">Youtube</a></p>\r\n<p><a href=\"https://open.spotify.com/track/4XI2Ark6g6LVVAcJbZws4w\">Spotify</a></p>\r\n<h2 >Album: Dark Phase</h2>\r\n<p>1st track from Dark Phase EP MERISTEM</p>\r\n<p> Barkóczi Bence: Songwriting, guitars, electronics</p>\r\n<p> Schiszler Soma: Bass, mixing, producing</p>\r\n<p> Markó Ádám: Drums</p>\r\n<p> Brucker Bence: Mastering</p>\r\n<p> Hofgad Bálint: keys, electronics</p>\r\n', 'https://www.rockstar.hu/upload/pics/dark_phase_front_cover(1).png', 1, 'Review', 'Metal', '2020-09-30 11:13:39', b'0'),
(7, 'Ours Samplus - Blue Bird', '<h1>Avalible on:</h1>\r\n<p><a href=\"https://www.youtube.com/watch?v=eiseOhPrd-w\">Youtube</a></p>\r\n<p><a href=\"https://open.spotify.com/track/5Ub65lHOysyiaNEw0l1fkm\">Spotify</a></p>\r\n<h2>Orphan Loops by Ours Samplus (Beat Tape, 2018)</h2>\r\n<p>Original release date: Ours Samplus 2014</p>\r\n<p>France</p>', 'https://img.discogs.com/tSBHNnaO3MNEve-VfLsLQfBMEqI=/fit-in/300x300/filters:strip_icc():format(jpeg):mode_rgb():quality(40)/discogs-images/A-5581072-1553005538-4222.jpeg.jpg', 1, 'Other', 'Hiphop/rap', '2020-09-30 11:20:07', b'0'),
(8, 'Judas Priest - Before the Dawn', '<h1>Avalible on:</h1>\r\n<p><a href=\"https://www.youtube.com/watch?v=1Qjoffl_Lgo\">Youtube</a></p>\r\n<p><a href=\"https://open.spotify.com/track/29KPwkhfGpRkrL57TmFbDE?si=KaA_0m68R3CeMPqSPin62A\">Spotify</a></p>\r\n<h2>Lyrics:</h2>\r\n<p>Before the dawn, I hear you whisper In your sleep \"Don’t let the morning take him\" Outside the birds begin to call As if to summon up my leaving</p>\r\n<p>It’s been a lifetime since I found someone Since I found someone who would stay I’ve waited too long, and now you’re leaving Oh please don’t take it all away</p>\r\n<p>It’s been a lifetime since I found someone Since I found someone who would stay I’ve waited too long, and now you’re leaving</p>\r\n<p>Oh please don’t take it all away</p>\r\n<p>Before the dawn, I hear you whisper In your sleep \"Don’t let the morning take him\"</p>', 'https://i.ytimg.com/vi/B0-WnkR3xjo/hqdefault.jpg', 1, 'Other', 'Metal', '2020-09-30 11:25:10', b'0'),
(9, 'TTNG - Baboon', '<h1>Avalible on: </h1>\r\n<p><a href= \"https://open.spotify.com/track/6gFhXzwUBpe6VIWsoF3DwG\">Spotify</a></p>\r\n<p><a href= \"https://www.youtube.com/watch?v=djOOAtQGPCE\">Youtube</a></p>\r\n</p><h2>Stuart Smith:</h2><p>I was lucky to have met a guy on my first day of Uni (in fact I think he was the first guy I met at uni) who had come from Grimsby, where (at the time) there had been a strong math/hardcore scene. He was the one who introduced me to Don Cab and Ghosts and Vodka, as well as a bunch of UK math and hardcore\r\nbands like Stand, Andy, Glenn, And Ritch, The Jesus Years, and The Little Explorer. I instantly fell in love with its complexity and ability to capture and convey emotion in a way that the more mainstream bands couldn’t. That and the fact that Oxford itself had a really strong scene, helped my music education. Whilst none of us in the band were in a position to play like these bands, I think Tim and I both had a musical connection and a distinct idea about the type of band we wanted to be.</p>\r\n', 'https://f4.bcbits.com/img/a1031581300_10.jpg', 1, 'Interview', 'Progressive Rock Jazz Fusion Folk Throat Singing', '2020-10-04 15:18:37', b'0'),
(10, 'MONO x Julien Levy - After You Comes The Flood', '<h1>Avalible on: </h1>\r\n<p><a href= \"https://open.spotify.com/track/4SgzZEkJW2dIqmUautmerZ\">Spotify</a></p>\r\n<p><a href= \"https://www.youtube.com/watch?v=Lm9Yqv3lJuE&feature=emb_logo\">Youtube</a></p>\r\n</p><h2>Taka:</h2><p>Nowhere Now Here became a musical trail of all the troubles we faced as we walked towards our new chapter. In 2017, because of our troubles and termination with our Japanese management and label, as well as our drummer’s departure, we were in a state of not being able to take one step. We didn’t have any of our schedule locked, and we were all in the mood of ‘if it was a regular band, this is when they’d disband‘. We were really in the dark and couldn’t see anything ahead. We were in a crucial time of needing to decide whether the band should reborn or stop its activity.</p>\r\n', 'https://bayanbox.ir/view/3287504103987928067/photo-2016-06-28-02-01-43.jpg', 1, 'Interview', 'Rock Jazz', '2020-10-04 15:34:58', b'1'),
(11, 'GOROD - Bekhten\'s Curse', '<h1>Avalible on: </h1>\r\n<p><a href= \"https://open.spotify.com/track/3ez32DgJCl63Sy6uPByqRw?si=2FsazfrTQmK4U6wK_QUlSw\">Spotify</a></p>\r\n<p><a href= \"https://www.youtube.com/watch?v=WBU1H-9yvmQ&feature=emb_logo\">Youtube</a></p>\r\n</p><h2>Julien:</h2><p>We actually never thought about completely changing our music to suddenly become a thrash metal band. We already made a self-released EP in 2011 named Transcendence which includes an acoustic song, one 15-minute experimental prog track, and an instrumental cover of Cynic… but it was never meant that Gorod would turn into an acoustic progressive band or anything else!</p>\r\n', 'https://www.heavyblogisheavy.com/wp-content/uploads/2018/10/Gorod-Aethra-ReviewBanner.jpg', 1, 'Interview', 'Metal', '2020-10-04 15:38:34', b'0'),
(12, 'MØL - Bruma', '<h1>Avalible on: </h1>\r\n<p><a href= \"https://open.spotify.com/track/5Rz22iXHLXy0nAMUsgUdFf?si=PkLV0d8WRv6fjySREAUs1g\">Spotify</a></p>\r\n<p><a href= \"https://www.youtube.com/watch?v=uHlZA5OYj2I&feature=emb_logo\">Youtube</a></p>\r\n</p><h2>Dimmu Borgir:</h2><p>As drummer Ken explains, Dimmu Borgir‘s was the very first heavy music he got in touch with:’I was wondering what this double pedal stuff, blast beats, and shrieky vocals was. I think, except for Frederik the other guys don’t like it that much, but those cheap keyboards and the whole soundscape intrigued me.‘ As he goes on, he states that he hasn’t listened to shoegaze before until he started another band with Nicolai and got introduced to Ride: ‘They really had an influence on my drumming and changed my point of view. I know realized how you could play drums for a song and change the beat always while keeping it super steady.</p>\r\n', 'https://cdn.shopify.com/s/files/1/1528/8689/products/MOL_JORD_3000x3000_2000x.jpg?v=1597252215', 1, 'Interview', 'Metal', '2020-10-04 15:52:41', b'0'),
(13, 'Defecto - Excluded', '<h1>Avalible on: </h1>\r\n<p><a href= \"https://open.spotify.com/track/6QUu5rYDzzn2pwBcj1n1By?si=aeSY4bvdRfawT8uwtl4kUg\">Spotify</a></p>\r\n<p><a href= \"https://www.youtube.com/watch?v=T51BKR365vc&feature=emb_logo\">Youtube</a></p>\r\n</p><h2>Mirza:</h2><p>Feels good, man. I was a big part in that happening. Defecto are besides being my friends some of the most gifted people I have ever worked with.</p>\r\n', 'https://images.genius.com/31006e9fe5e6bd4f1da0c7456d0f5758.1000x1000x1.jpg', 1, 'Interview', 'Metal', '2020-10-04 15:57:12', b'1'),
(14, 'KRAUSE - Vague Outlines', '<h1>Avalible on: </h1>\r\n<p><a href= \"https://open.spotify.com/track/5yD4dj1Yg8QK2W8qU9APrr?si=e3wLSONERN6YpDJAkzk0OA\">Spotify</a></p>\r\n<p><a href= \"https://www.youtube.com/watch?v=-xURI7weLsA&feature=emb_logo\">Youtube</a></p>\r\n</p><h2>Common:</h2><p>There’s a perverse thrill to the thought of the clang-y chaos of shelves collapsing into each other, and it’s this exact emotional sensation captured so beautifully on Athenian noise rock Krause’s brand new single “Vague Outlines of Almost Recognisable Shapes” which we at Everything Is Noise are thrilled to be premiering for you today.</p>\r\n', 'https://f4.bcbits.com/img/a1551398796_5.jpg', 1, 'Other', 'Metal', '2020-10-04 16:07:15', b'0'),
(15, 'Convulsif - Feed my spirit side by side', '<h1>Avalible on: </h1>\r\n<p><a href= \"https://soundcloud.com/hummus-records-1/convulsif-feed-my-spirit-side\">Soundcloud</a></p>\r\n<p><a href= \"https://www.youtube.com/watch?v=Id5NFE8R8HU&feature=emb_logo\">Youtube</a></p>\r\n</p><h2>Common:</h2><p>Well, if you ask me, The Chemical Mind uses experimentation to knock it out of the park every time. The Chemical Mind is an expressive and atmospheric project created by composer and multi-instrumentalist Nick Krueger. His music is not new to us at Everything Is Noise for good reason. The project’s 2019 album Beneath the Shadow It Casts was a haunting and beautiful black metal release that certainly captured my attention when I first listened.</p>\r\n', 'https://f4.bcbits.com/img/a3431541039_5.jpg', 1, 'Other', 'Metal', '2020-10-04 16:10:34', b'0');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- A tábla adatainak kiíratása `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `regdate`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', '2020-09-30 06:08:01');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
