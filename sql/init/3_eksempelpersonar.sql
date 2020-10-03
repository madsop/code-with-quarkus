SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
SET NAMES utf8;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- --------------------------------------------------------
INSERT INTO `person` (`id`, `givenName`, `familyName`, `phone`, `nameEnlister`, `adressLine1`, `adressLine2`, `postnumber`, `email`, `countyID`, `groupID`, `hasReceived`, `hasConsented`, `isDigital`, `userCreated`, `lastCall`, `ringerID`, `lokallag`) VALUES
(123452,	'Donald', ' Duck',	'12345678',	'Dolly',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(123453,	'Hetti', ' Duck',	'12345677',	'Dolly',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(123454,	'Letti', ' Duck',	'12345679',	'Dolly',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(123455,	'Netti', ' Duck',	'12345676',	'Dolly',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(123456,	'Klodrik', ' Duck',	'12345675',	'Guffen',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(123457,	'Anton', ' Duck',	'12345674',	'Guffen',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, null),
(123458,	'Bestemor', ' Duck',	'12345673',	'Guffen',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(123459,	'Skrue', 'McDuck',	'12345672',	'Guffen',	NULL,	NULL,	'3050',	NULL,	6,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(1234510,	'Gulbrand', 'Gråstein',	'12345671',	'Guffen',	NULL,	NULL,	'3050',	NULL,	6,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(1234511,	'Spøkelseskladden', '',	'12345670',	'Guffen',	NULL,	NULL,	'3050',	NULL,	6,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1);



INSERT INTO `person` (`id`, `givenName`, `familyName`, `phone`, `nameEnlister`, `adressLine1`, `adressLine2`, `postnumber`, `email`, `countyID`, `groupID`, `hasReceived`, `hasConsented`, `isDigital`, `userCreated`, `lastCall`, `ringerID`, `lokallag`) VALUES
(223452,	'Aster', 'ix',	'22345678',	'Julius',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(223453,	'Obel', 'ix',	'22345677',	'Julius',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(223454,	'Idef', 'ix',	'22345679',	'Julius',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(223455,	'Majest', 'ix',	'22345676',	'Julius',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(223456,	'Miracul', 'ix',	'22345675',	'Julius',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(223457,	'Hermet', 'ix',	'22345665',	'Julius',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(223458,	'Trubadur', 'ix',	'22346676',	'Julius',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(223459,	'Barometr', 'ix',	'22346677',	'Julius',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(223460,	'Gode', 'mine',	'22346678',	'Julius',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(223461,	'Senil', 'ix',	'22346679',	'Julius',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(223462,	'Armam', 'ix',	'22345680',	'Julius',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(223463,	'Lillef', 'ix',	'22345681',	'Julius',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(223464,	'Remoul', 'adine',	'22345682',	'Julius',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1),
(223465,	'Tragicom', 'ix',	'22345683',	'Julius',	NULL,	NULL,	'0',	NULL,	-1,	1,	NULL,	NULL,	0,	'2020-08-22 23:29:09',	0,	NULL, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;