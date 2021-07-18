SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
SET NAMES utf8;


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `hibernate_sequence`(
 sequence_name varchar(255) CHARACTER SET utf8 not null ,
    next_val bigint,
    primary key (sequence_name)
) engine=MyISAM;

insert into `hibernate_sequence` (`next_val`) values(50);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `fylker` (
  `id` int(2) NOT NULL PRIMARY KEY,
  `navn` varchar(60) NOT NULL
);

INSERT INTO `fylker` (`id`, `navn`) VALUES
(-1, 'Udefinert fylke'),
(01, 'Østfold'),
(02, 'Akershus'),
(03, 'Oslo'),
(04, 'Hedmark'),
(05, 'Oppland'),
(06, 'Buskerud'),
(07, 'Vestfold'),
(08, 'Telemark'),
(09, 'Aust-Agder'),
(10, 'Vest-Agder'),
(11, 'Rogaland'),
(12, 'Hordaland'),
(14, 'Sogn og Fjordane'),
(15, 'Møre og Romsdal'),
(18, 'Nordland'),
(19, 'Troms'),
(20, 'Finnmark'),
(21, 'Svalbard'),
(30, 'Viken'),
(34, 'Innlandet'),
(38, 'Vestfold og Telemark'),
(42, 'Agder'),
(46, 'Vestland'),
(50, 'Trøndelag'),
(54, 'Troms og Finnmark');


-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `lokallag` (
  `id` int(3) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `navn` varchar(100) NOT NULL UNIQUE,
  `hypersysID` int NULL UNIQUE,
  `fylke` int(2) NOT NULL,
  FOREIGN KEY (`fylke`) REFERENCES `fylker` (`id`),
  INDEX(`fylke`)
);

insert into `lokallag` (`id`, `navn`, `fylke`) values (-1, 'Udefinert', -1);

insert into `lokallag` (navn) values
('Raudt Alver'),
('Raudt Årdal'),
('Raudt Austrheim'),
('Raudt Bjørnafjorden'),
('Raudt Bømlo'),
('Raudt Bremanger'),
('Raudt Dalsfjorden'),
('Raudt Flora'),
('Raudt Gloppen'),
('Raudt Hå'),
('Raudt Høyanger'),
('Raudt Indre Sunnfjord'),
('Raudt Kvam'),
('Raudt Kvinnherad'),
('Raudt Lærdal'),
('Raudt Luster'),
('Raudt Ørsta'),
('Raudt Søre Sunnmøre'),
('Raudt Stord'),
('Raudt Stryn'),
('Raudt Time og Klepp'),
('Raudt Ulstein'),
('Raudt Vågsøy'),
('Raudt Vaksdal'),
('Raudt Valdres'),
('Raudt Voss'),
('Rødt'),
('Rødt Ålesund'),
('Rødt Alstahaug'),
('Rødt Alta'),
('Rødt Åmli'),
('Rødt Andøy'),
('Rødt Arendal'),
('Rødt Ås'),
('Rødt Ås Studentlag'),
('Rødt Asker'),
('Rødt Askøy'),
('Rødt Åsnes'),
('Rødt Aurskog-Høland'),
('Rødt Bærum'),
('Rødt Balsfjord'),
('Rødt Bamble'),
('Rødt Bergen Møhlenpris'),
('Rødt Bergen Nord'),
('Rødt Bergen Sentrum'),
('Rødt Bergen Sør'),
('Rødt Bergen Studentlag'),
('Rødt Bergen Vest'),
('Rødt Bodø'),
('Rødt Brønnøy'),
('Rødt Dalane'),
('Rødt Dønna'),
('Rødt Drammen'),
('Rødt Eidsvoll og Hurdal'),
('Rødt Elverum'),
('Rødt Farsund'),
('Rødt Fauske'),
('Rødt Flekkefjord'),
('Rødt Folldal'),
('Rødt Fredrikstad og Hvaler'),
('Rødt Frogn'),
('Rødt Froland'),
('Rødt Frøya'),
('Rødt Gjøvik og Land'),
('Rødt Gran'),
('Rødt Grimstad'),
('Rødt Hadsel'),
('Rødt Halden'),
('Rødt Hamar'),
('Rødt Hamarøy'),
('Rødt Hammerfest'),
('Rødt Harstad'),
('Rødt Haugaland'),
('Rødt Hemnes'),
('Rødt Hitra'),
('Rødt Holmestrand'),
('Rødt Horten'),
('Rødt Indre Østfold'),
('Rødt Kongsberg'),
('Rødt Kongsvinger og omegn'),
('Rødt Kragerø'),
('Rødt Kristiansand'),
('Rødt Kristiansund'),
('Rødt Larvik'),
('Rødt Leirfjord'),
('Rødt Levanger'),
('Rødt Lier'),
('Rødt Lillehammer'),
('Rødt Lillesand'),
('Rødt Lillestrøm'),
('Rødt Lindesnes'),
('Rødt Lørenskog'),
('Rødt Løten'),
('Rødt Lunner'),
('Rødt Lyngdal'),
('Rødt Målselv'),
('Rødt Malvik'),
('Rødt Måsøy'),
('Rødt Melhus'),
('Rødt Midt-Gudbrandsdalen'),
('Rødt Midt-Telemark'),
('Rødt Modum'),
('Rødt Molde'),
('Rødt Moss og omegn'),
('Rødt Nærøysund'),
('Rødt Namsos'),
('Rødt Narvik'),
('Rødt Nedre Romerike'),
('Rødt Nes'),
('Rødt Nesna'),
('Rødt Nesodden'),
('Rødt Nittedal'),
('Rødt Nordre Follo'),
('Rødt Notodden'),
('Rødt Odal'),
('Rødt Øksnes'),
('Rødt Orkland'),
('Rødt Ørland'),
('Rødt Oslo Alna'),
('Rødt Oslo Arbeiderlag'),
('Rødt Oslo Bjerke'),
('Rødt Oslo Gamle Oslo'),
('Rødt Oslo Grorud'),
('Rødt Oslo Grünerløkka'),
('Rødt Oslo Jernbane og Sporveier'),
('Rødt Oslo kommune'),
('Rødt Oslo Kvinnepolitisk'),
('Rødt Oslo Nordre Aker'),
('Rødt Oslo Nordstrand'),
('Rødt Oslo Østensjø'),
('Rødt Oslo Sagene'),
('Rødt Oslo Skole og Barnehage'),
('Rødt Oslo Solidaritetslag'),
('Rødt Oslo Søndre Nordstrand'),
('Rødt Oslo St. Hanshaugen'),
('Rødt Oslo Stovner'),
('Rødt Oslo Studentlag'),
('Rødt Oslo Vest'),
('Rødt Østre Toten'),
('Rødt Øvre Eiker'),
('Rødt Øygarden'),
('Rødt Porsgrunn'),
('Rødt Råde'),
('Rødt Rana'),
('Rødt Ringerike'),
('Rødt Ringsaker'),
('Rødt Risør'),
('Rødt Røst'),
('Rødt Salangen'),
('Rødt Saltdal'),
('Rødt Sandefjord'),
('Rødt Sandnes'),
('Rødt Sarpsborg og omegn'),
('Rødt Setesdal'),
('Rødt Skaun'),
('Rødt Skien'),
('Rødt Skjervøy'),
('Rødt Sola'),
('Rødt Sømna'),
('Rødt Sør-Varanger'),
('Rødt Sørfold'),
('Rødt Sortland'),
('Rødt Stange'),
('Rødt Stavanger'),
('Rødt Stavanger Studentlag'),
('Rødt Steigen'),
('Rødt Steinkjer'),
('Rødt Stjørdal'),
('Rødt Strand'),
('Rødt Sunndal'),
('Rødt Tønsberg og Færder'),
('Rødt Tromsø'),
('Rødt Tromsø Studentlag'),
('Rødt Tvedestrand'),
('Rødt Ullensaker og Nannestad'),
('Rødt Ullensvang'),
('Rødt Vadsø'),
('Rødt Vågan'),
('Rødt Våler i Østfold'),
('Rødt Vefsn'),
('Rødt Vega'),
('Rødt Vegårshei'),
('Rødt Vennesla'),
('Rødt Verdal'),
('Rødt Vestby'),
('Rødt Vestre Toten'),
('Rødt Vestvågøy'),
('Røros'),
('Test-lokallag'),
('Trondheim Helse- og Sosialpolitisk lag'),
('Trondheim Østbyen'),
('Trondheim Strinda'),
('Trondheim Universitetslag'),
('Trondheim-Fagliglag'),
('Trondheim-Sentrum'),
('Uten lag Finnmark'),
('Uten lag Hedmark'),
('uten lag Hordaland'),
('Uten lag Møre og Romsdal'),
('Uten lag Nordland'),
('Uten lag Oppland'),
('Uten lag Rogaland'),
('Uten lag Sogn og Fjordane'),
('Uten lag Telemark'),
('Uten lag Troms'),
('Uten lag Trøndelag'),
('Uten lag Vestfold'),
('Uten lag Vestfold og Telemark'),
('Utland'),
('Organisasjon1 sentralt');

INSERT INTO `lokallag`(navn) values ('Rødt Trondheim Ila');

UPDATE `lokallag` SET navn = 'Rødt Time og Klepp' WHERE navn = 'Raudt Time og Klepp';
UPDATE `lokallag` SET navn = 'Rødt Trondheim Fagliglag' WHERE navn = 'Trondheim-Fagliglag';
UPDATE `lokallag` SET navn = 'Rødt Trondheim Sentrum' WHERE navn = 'Trondheim-Sentrum';
UPDATE `lokallag` SET navn = 'Rødt Trondheim Østbyen' WHERE navn = 'Trondheim Østbyen';
UPDATE `lokallag` SET navn = 'Vaksdal' WHERE navn = 'Raudt Vaksdal';


INSERT INTO `lokallag`(navn) values
('Uten Lag Agder'),
('Uten lag Akershus'),
('Uten lag Buskerud'),
('Uten lag Oslo'),
('Uten lag Østfold');

INSERT INTO `lokallag`(`navn`) values
('GAMVIK'),
('Giske'),
('Gjøvik'),
('Indre Fosen'),
('Karasjok'),
('Land'),
('Nannestad'),
('PORSANGER PORSÁNGU PORSANKI'),
('Raudt Kinn'),
('Raudt Volda'),
('Rødt Flatanger'),
('Tana'),
('Trysil'),
('Tynset'),
('Ullensaker');

UPDATE lokallag SET fylke=-1 where navn in ('Udefinert', 'Rødt', 'Test-lokallag', 'Utland', 'Organisasjon1 sentralt');
UPDATE lokallag SET fylke=1 where navn in ('Uten lag Østfold', 'Rødt Fredrikstad og Hvaler', 'Rødt Halden', 'Rødt Indre Østfold', 'Rødt Moss og omegn', 'Rødt Råde', 'Rødt Sarpsborg og omegn', 'Rødt Våler i Østfold');
UPDATE lokallag SET fylke=2 where navn in ('Uten lag Akershus', 'Rødt Asker', 'Rødt Bærum', 'Rødt Eidsvoll og Hurdal', 'Rødt Frogn', 'Rødt Lillestrøm', 'Rødt Lørenskog', 'Rødt Nes', 'Rødt Nesodden',
'Rødt Nittedal', 'Rødt Nordre Follo', 'Rødt Ullensaker og Nannestad', 'Rødt Vestby', 'Rødt Ås', 'Ullensaker', 'Nannestad', 'Rødt Aurskog-Høland', 'Rødt Ås Studentlag', 'Rødt Nedre Romerike');
UPDATE lokallag SET fylke=3 where navn in ('Rødt Oslo Alna', 'Rødt Oslo Bjerke', 'Rødt Oslo Gamle Oslo', 'Rødt Oslo Grorud', 'Rødt Oslo Grünerløkka', 'Rødt Oslo Nordre Aker', 'Rødt Oslo Nordstrand',
'Rødt Oslo Sagene','Rødt Oslo St. Hanshaugen', 'Rødt Oslo Stovner', 'Rødt Oslo Søndre Nordstrand', 'Rødt Oslo Vest', 'Rødt Oslo Østensjø', 'Rødt Oslo Arbeiderlag', 'Rødt Oslo Jernbane og Sporveier',
'Rødt Oslo Kvinnepolitisk', 'Rødt Oslo Skole og Barnehage', 'Rødt Oslo Solidaritetslag', 'Rødt Oslo Studentlag', 'Rødt Oslo kommune', 'Uten lag Oslo');
UPDATE lokallag SET fylke=4 where navn in ('Rødt Elverum', 'Rødt Folldal', 'Rødt Hamar', 'Rødt Kongsvinger og omegn', 'Rødt Løten', 'Rødt Odal', 'Rødt Ringsaker', 'Rødt Stange', 'Rødt Åsnes', 'Uten lag Hedmark', 'Tynset', 'Trysil');
UPDATE lokallag SET fylke=5 where navn in ('Raudt Valdres', 'Rødt Gjøvik og Land', 'Rødt Gran', 'Rødt Lillehammer', 'Rødt Lunner', 'Rødt Midt-Gudbrandsdalen', 'Rødt Vestre Toten', 'Rødt Østre Toten',
'Uten lag Oppland', 'Land', 'Gjøvik');
UPDATE lokallag SET fylke=6 where navn in ('Rødt Drammen', 'Rødt Kongsberg', 'Rødt Lier', 'Rødt Modum', 'Rødt Øvre Eiker', 'Uten lag Buskerud', 'Rødt Ringerike');
UPDATE lokallag SET fylke=7 where navn in ('Uten lag Vestfold', 'Uten lag Vestfold og Telemark', 'Rødt Holmestrand', 'Rødt Horten', 'Rødt Larvik', 'Rødt Sandefjord', 'Rødt Tønsberg og Færder');
UPDATE lokallag SET fylke=8 where navn in ('Rødt Bamble', 'Rødt Kragerø', 'Rødt Midt-Telemark', 'Rødt Notodden', 'Rødt Porsgrunn', 'Rødt Skien', 'Uten lag Telemark');
UPDATE lokallag SET fylke=9 where navn in ('Rødt Arendal', 'Rødt Froland', 'Rødt Grimstad', 'Rødt Lillesand', 'Rødt Risør', 'Rødt Setesdal', 'Rødt Tvedestrand', 'Rødt Vegårshei', 'Rødt Åmli');
UPDATE lokallag SET fylke=10 where navn in ('Rødt Farsund', 'Rødt Flekkefjord', 'Rødt Kristiansand', 'Rødt Lindesnes', 'Rødt Lyngdal', 'Rødt Vennesla', 'Uten Lag Agder');
UPDATE lokallag SET fylke=11 where navn in ('Raudt Hå', 'Rødt Dalane', 'Rødt Haugaland', 'Rødt Sandnes', 'Rødt Stavanger', 'Rødt Strand', 'Uten lag Rogaland', 'Rødt Stavanger Studentlag', 'Rødt Time og Klepp', 'Rødt Sola');
UPDATE lokallag SET fylke=12 where navn in ('Raudt Alver', 'Raudt Austrheim', 'Raudt Bjørnafjorden', 'Raudt Bømlo', 'Raudt Kvam', 'Raudt Kvinnherad', 'Raudt Stord', 'Raudt Voss', 'Rødt Askøy',
'Rødt Bergen Møhlenpris', 'Rødt Bergen Nord', 'Rødt Bergen Sentrum', 'Rødt Bergen Sør', 'Rødt Bergen Vest', 'Rødt Ullensvang', 'Rødt Øygarden', 'uten lag Hordaland', 'Rødt Bergen Studentlag', 'Vaksdal');
UPDATE lokallag SET fylke=14 where navn in ('Raudt Bremanger', 'Raudt Dalsfjorden', 'Raudt Flora', 'Raudt Gloppen', 'Raudt Høyanger', 'Raudt Indre Sunnfjord', 'Raudt Luster', 'Raudt Lærdal',
'Raudt Stryn', 'Raudt Vågsøy', 'Raudt Årdal', 'Uten lag Sogn og Fjordane', 'Raudt Kinn');
UPDATE lokallag SET fylke=15 where navn in ('Raudt Søre Sunnmøre', 'Raudt Ulstein', 'Raudt Ørsta', 'Raudt Volda', 'Rødt Kristiansund', 'Rødt Molde', 'Rødt Sunndal', 'Rødt Ålesund', 'Uten lag Møre og Romsdal', 'Giske');
UPDATE lokallag SET fylke=50 where navn in ('Rødt Frøya', 'Rødt Hitra', 'Rødt Levanger', 'Rødt Malvik', 'Rødt Melhus', 'Rødt Namsos', 'Rødt Nærøysund', 'Rødt Orkland', 'Rødt Skaun', 'Rødt Steinkjer',
'Rødt Stjørdal', 'Rødt Trondheim Ila', 'Rødt Trondheim Sentrum', 'Rødt Trondheim Østbyen', 'Rødt Verdal', 'Rødt Ørland', 'Røros', 'Trondheim Strinda', 'Uten lag Trøndelag', 'Rødt Trondheim Fagliglag',
'Trondheim Universitetslag', 'Trondheim Helse- og Sosialpolitisk lag', 'Rødt Flatanger', 'Indre Fosen');
UPDATE lokallag SET fylke=18 where navn in ('Rødt Alstahaug', 'Rødt Andøy', 'Rødt Bodø', 'Rødt Brønnøy', 'Rødt Dønna', 'Rødt Fauske', 'Rødt Hadsel', 'Rødt Hamarøy',
'Rødt Hemnes', 'Rødt Leirfjord', 'Rødt Narvik', 'Rødt Nesna', 'Rødt Rana', 'Rødt Røst', 'Rødt Saltdal', 'Rødt Sortland', 'Rødt Steigen', 'Rødt Sømna', 'Rødt Sørfold', 'Rødt Vefsn', 'Rødt Vega', 'Rødt Vestvågøy',
'Rødt Vågan', 'Rødt Øksnes', 'Uten lag Nordland');
UPDATE lokallag SET fylke=19 where navn in ('Uten lag Troms', 'Rødt Balsfjord', 'Rødt Harstad', 'Rødt Målselv', 'Rødt Salangen', 'Rødt Skjervøy', 'Rødt Tromsø', 'Rødt Tromsø Studentlag');
UPDATE lokallag SET fylke=20 where navn in ('Rødt Alta', 'Rødt Hammerfest', 'Rødt Måsøy', 'Rødt Sør-Varanger', 'Rødt Vadsø', 'Uten lag Finnmark', 'GAMVIK', 'Tana', 'Karasjok', 'PORSANGER PORSÁNGU PORSANKI');

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `kommune` (
  `nummer` integer NOT NULL PRIMARY KEY,
  `navn` varchar(50) NOT NULL,
  `lokallag_id` int(3) DEFAULT NULL,
  `fylke_id` int(2) NOT NULL,
  FOREIGN KEY (`lokallag_id`) REFERENCES `lokallag` (`id`),
  INDEX(`lokallag_id`),
  FOREIGN KEY (`fylke_id`) REFERENCES `fylker` (`id`),
  INDEX(`fylke_id`)
);
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ukjent', -1, -1, -1);
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Aremark',118,1, (select id from lokallag where navn = 'Rødt Indre Østfold'));
    INSERT INTO kommune(navn,nummer,fylke_id, lokallag_id) VALUES ('Askim',124,1, (select id from lokallag where navn = 'Rødt Indre Østfold'));
    INSERT INTO kommune(navn,nummer,fylke_id, lokallag_id) VALUES ('Eidsberg',125,1, (select id from lokallag where navn = 'Rødt Indre Østfold'));
    INSERT INTO kommune(navn,nummer,fylke_id, lokallag_id) VALUES ('Fredrikstad',106,1, (select id from lokallag where navn = 'Rødt Fredrikstad og Hvaler'));
    INSERT INTO kommune(navn,nummer,fylke_id, lokallag_id) VALUES ('Halden',101,1, (select id from lokallag where navn = 'Rødt Halden'));
    INSERT INTO kommune(navn,nummer,fylke_id, lokallag_id) VALUES ('Hobøl',138,1, (select id from lokallag where navn = 'Rødt Indre Østfold'));
    INSERT INTO kommune(navn,nummer,fylke_id, lokallag_id) VALUES ('Hvaler',111,1, (select id from lokallag where navn = 'Rødt Fredrikstad og Hvaler'));
    INSERT INTO kommune(navn,nummer,fylke_id, lokallag_id) VALUES ('Marker',119,1, (select id from lokallag where navn = 'Rødt Indre Østfold'));
    INSERT INTO kommune(navn,nummer,fylke_id, lokallag_id) VALUES ('Moss',104,1, (select id from lokallag where navn = 'Rødt Moss og omegn'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Råde',135,1, (select id from lokallag where navn = 'Rødt Råde'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Rakkestad',128,1, (select id from lokallag where navn = 'Rødt Sarpsborg og omegn'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Rømskog',121,2, (select id from lokallag where navn = 'Rødt Aurskog-Høland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Rygge',136,1, (select id from lokallag where navn = 'Rødt Moss og omegn'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sarpsborg',105,1, (select id from lokallag where navn = 'Rødt Sarpsborg og omegn'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Skiptvet',127,1, (select id from lokallag where navn = 'Rødt Indre Østfold'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Spydeberg',123,1, (select id from lokallag where navn = 'Rødt Indre Østfold'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Trøgstad',122,1, (select id from lokallag where navn = 'Rødt Indre Østfold'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Våler i Østfold',137,1, (select id from lokallag where navn = 'Rødt Våler i Østfold'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ås',214,2, (select id from lokallag where navn = 'Rødt Ås'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Asker',220,2, (select id from lokallag where navn = 'Rødt Asker'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Aurskog-Høland',221,2, (select id from lokallag where navn = 'Rødt Aurskog-Høland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Bærum',219,2, (select id from lokallag where navn = 'Rødt Bærum'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Eidsvoll',237,2, (select id from lokallag where navn = 'Rødt Eidsvoll og Hurdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Enebakk',229,2, (select id from lokallag where navn = 'Rødt Nordre Follo'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Fet',227,2, (select id from lokallag where navn = 'Rødt Lillestrøm'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Frogn',215,2, (select id from lokallag where navn = 'Rødt Frogn'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Gjerdrum',234,2, (select id from lokallag where navn = 'Rødt Lillestrøm'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hurdal',239,2, (select id from lokallag where navn = 'Rødt Eidsvoll og Hurdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lørenskog',230,2, (select id from lokallag where navn = 'Rødt Lørenskog'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nannestad',238,2, (select id from lokallag where navn = 'Rødt Ullensaker og Nannestad'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nes i Akershus',236,2, (select id from lokallag where navn = 'Rødt Nes'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nesodden',216,2, (select id from lokallag where navn = 'Rødt Nesodden'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nittedal',233,2, (select id from lokallag where navn = 'Rødt Nittedal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Oppegård',217,2, (select id from lokallag where navn = 'Rødt Nordre Follo'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Rælingen',228,2, (select id from lokallag where navn = 'Rødt Lillestrøm'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Skedsmo',231,2, (select id from lokallag where navn = 'Rødt Lillestrøm'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ski',213,2, (select id from lokallag where navn = 'Rødt Nordre Follo'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sørum',226,2, (select id from lokallag where navn = 'Rødt Lillestrøm'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ullensaker',235,2, (select id from lokallag where navn = 'Rødt Ullensaker og Nannestad'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vestby',211,2, (select id from lokallag where navn = 'Rødt Vestby'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Oslo',301,3, (select id from lokallag where navn = 'Rødt Oslo'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Alvdal',438,4, (select id from lokallag where navn = 'Rødt Folldal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Åmot',429,4, (select id from lokallag where navn = 'Uten lag Hedmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Åsnes',425,4, (select id from lokallag where navn = 'Rødt Åsnes'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Eidskog',420,4, (select id from lokallag where navn = 'Rødt Kongsvinger og omegn'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Elverum',427,4, (select id from lokallag where navn = 'Rødt Elverum'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Engerdal',434,4, (select id from lokallag where navn = 'Uten lag Hedmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Folldal',439,4, (select id from lokallag where navn = 'Rødt Folldal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Grue',423,4, (select id from lokallag where navn = 'Rødt Kongsvinger og omegn'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hamar',403,4, (select id from lokallag where navn = 'Rødt Hamar'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Kongsvinger',402,4, (select id from lokallag where navn = 'Rødt Kongsvinger og omegn'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Løten',415,4, (select id from lokallag where navn = 'Rødt Løten'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nord-Odal',418,4, (select id from lokallag where navn = 'Rødt Odal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Os i Hedmark',441,4, (select id from lokallag where navn = 'Uten lag Hedmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Rendalen',432,4, (select id from lokallag where navn = 'Uten lag Hedmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ringsaker',412,4, (select id from lokallag where navn = 'Rødt Ringsaker'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sør-Odal',419,4, (select id from lokallag where navn = 'Rødt Odal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Stange',417,4, (select id from lokallag where navn = 'Rødt Stange'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Stor-Elvdal',430,4, (select id from lokallag where navn = 'Uten lag Hedmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Tolga',436,4, (select id from lokallag where navn = 'Uten lag Hedmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Trysil',428,4, (select id from lokallag where navn = 'Uten lag Hedmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Tynset',437,4, (select id from lokallag where navn = 'Uten lag Hedmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Våler i Hedmark',426,4, (select id from lokallag where navn = 'Rødt Kongsvinger og omegn'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Dovre',511,5, (select id from lokallag where navn = 'Uten lag Oppland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Etnedal',541,5, (select id from lokallag where navn = 'Raudt Valdres'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Gausdal',522,5, (select id from lokallag where navn = 'Uten lag Oppland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Gjøvik',502,5, (select id from lokallag where navn = 'Rødt Gjøvik og Land'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Gran',534,5, (select id from lokallag where navn = 'Rødt Gran'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Jevnaker',532,6, (select id from lokallag where navn = 'Rødt Ringerike'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lesja',512,5, (select id from lokallag where navn = 'Uten lag Oppland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lillehammer',501,5, (select id from lokallag where navn = 'Rødt Lillehammer'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lom',514,5, (select id from lokallag where navn = 'Uten lag Oppland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lunner',533,5, (select id from lokallag where navn = 'Rødt Lunner'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nord-Aurdal',542,5, (select id from lokallag where navn = 'Raudt Valdres'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nord-Fron',516,5, (select id from lokallag where navn = 'Rødt Midt-Gudbrandsdalen'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nordre Land',538,5, (select id from lokallag where navn = 'Rødt Gjøvik og Land'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Østre Toten',528,5, (select id from lokallag where navn = 'Rødt Østre Toten'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Øyer',521,5, (select id from lokallag where navn = 'Rødt Lillehammer'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Øystre Slidre',544,5, (select id from lokallag where navn = 'Raudt Valdres'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ringebu',520,5, (select id from lokallag where navn = 'Rødt Midt-Gudbrandsdalen'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sel',517,5, (select id from lokallag where navn = 'Uten lag Oppland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Skjåk',513,5, (select id from lokallag where navn = 'Uten lag Oppland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Søndre Land',536,5, (select id from lokallag where navn = 'Rødt Gjøvik og Land'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sør-Aurdal',540,5, (select id from lokallag where navn = 'Raudt Valdres'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sør-Fron',519,5, (select id from lokallag where navn = 'Rødt Midt-Gudbrandsdalen'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vågå',515,5, (select id from lokallag where navn = 'Uten lag Oppland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vang',545,5, (select id from lokallag where navn = 'Raudt Valdres'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vestre Slidre',543,5, (select id from lokallag where navn = 'Raudt Valdres'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vestre Toten',529,5, (select id from lokallag where navn = 'Rødt Vestre Toten'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ål',619,6, (select id from lokallag where navn = 'Rødt Ringerike'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Drammen',602,6, (select id from lokallag where navn = 'Rødt Drammen'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Flå',615,6, (select id from lokallag where navn = 'Rødt Ringerike'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Flesberg',631,6, (select id from lokallag where navn = 'Rødt Kongsberg'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Gol',617,6, (select id from lokallag where navn = 'Rødt Ringerike'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hemsedal',618,6, (select id from lokallag where navn = 'Rødt Ringerike'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hol',620,6, (select id from lokallag where navn = 'Rødt Ringerike'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hole',612,6, (select id from lokallag where navn = 'Rødt Ringerike'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hurum',628,2, (select id from lokallag where navn = 'Rødt Asker'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Kongsberg',604,6, (select id from lokallag where navn = 'Rødt Kongsberg'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Krødsherad',622,6, (select id from lokallag where navn = 'Rødt Ringerike'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lier',626,6, (select id from lokallag where navn = 'Rødt Lier'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Modum',623,6, (select id from lokallag where navn = 'Rødt Modum'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nedre Eiker',625,6, (select id from lokallag where navn = 'Rødt Drammen'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nes i Buskerud',616,6, (select id from lokallag where navn = 'Rødt Ringerike'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nore og Uvdal',633,6, (select id from lokallag where navn = 'Rødt Kongsberg'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Øvre Eiker',624,6, (select id from lokallag where navn = 'Rødt Øvre Eiker'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ringerike',605,6, (select id from lokallag where navn = 'Rødt Ringerike'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Rollag',632,6, (select id from lokallag where navn = 'Rødt Kongsberg'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Røyken',627,2, (select id from lokallag where navn = 'Rødt Asker'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sigdal',621,6, (select id from lokallag where navn = 'Rødt Ringerike'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Færder',729,7, (select id from lokallag where navn = 'Rødt Tønsberg og Færder'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Holmestrand',715,7, (select id from lokallag where navn = 'Rødt Holmestrand'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Horten',701,7, (select id from lokallag where navn = 'Rødt Horten'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Larvik',712,7, (select id from lokallag where navn = 'Rødt Larvik'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Re',716,7, (select id from lokallag where navn = 'Rødt Tønsberg og Færder'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sande i Vestfold',713,7, (select id from lokallag where navn = 'Rødt Holmestrand'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sandefjord',710,7, (select id from lokallag where navn = 'Rødt Sandefjord'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Svelvik',711,6, (select id from lokallag where navn = 'Rødt Drammen'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Tønsberg',704,7, (select id from lokallag where navn = 'Rødt Tønsberg og Færder'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Bamble',814,8, (select id from lokallag where navn = 'Rødt Bamble'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Bø i Telemark',821,8, (select id from lokallag where navn = 'Rødt Midt-Telemark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Drangedal',817,8, (select id from lokallag where navn = 'Uten lag Telemark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Fyresdal',831,8, (select id from lokallag where navn = 'Uten lag Telemark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hjartdal',827,8, (select id from lokallag where navn = 'Rødt Notodden'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Kragerø',815,8, (select id from lokallag where navn = 'Rødt Kragerø'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Kviteseid',829,8, (select id from lokallag where navn = 'Uten lag Telemark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nissedal',830,8, (select id from lokallag where navn = 'Uten lag Telemark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nome',819,8, (select id from lokallag where navn = 'Rødt Midt-Telemark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Notodden',807,8, (select id from lokallag where navn = 'Rødt Notodden'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Porsgrunn',805,8, (select id from lokallag where navn = 'Rødt Porsgrunn'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sauherad',822,8, (select id from lokallag where navn = 'Rødt Midt-Telemark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Seljord',828,8, (select id from lokallag where navn = 'Rødt Notodden'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Siljan',811,8, (select id from lokallag where navn = 'Uten lag Telemark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Skien',806,8, (select id from lokallag where navn = 'Rødt Skien'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Tinn',826,8, (select id from lokallag where navn = 'Rødt Notodden'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Tokke',833,8, (select id from lokallag where navn = 'Uten lag Telemark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vinje',834,8, (select id from lokallag where navn = 'Uten lag Telemark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Åmli',929,9, (select id from lokallag where navn = 'Rødt Åmli'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Arendal',906,9, (select id from lokallag where navn = 'Rødt Arendal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Birkenes',928,9, (select id from lokallag where navn = 'Rødt Lillesand'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Bygland',938,9, (select id from lokallag where navn = 'Rødt Setesdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Bykle',941,9, (select id from lokallag where navn = 'Rødt Setesdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Evje og Hornnes',937,9, (select id from lokallag where navn = 'Rødt Setesdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Froland',919,9, (select id from lokallag where navn = 'Rødt Froland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Gjerstad',911,9, (select id from lokallag where navn = 'Rødt Risør'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Grimstad',904,9, (select id from lokallag where navn = 'Rødt Grimstad'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Iveland',935,10, (select id from lokallag where navn = 'Rødt Vennesla'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lillesand',926,9, (select id from lokallag where navn = 'Rødt Lillesand'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Risør',901,9, (select id from lokallag where navn = 'Rødt Risør'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Tvedestrand',914,9, (select id from lokallag where navn = 'Rødt Tvedestrand'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Valle',940,9, (select id from lokallag where navn = 'Rødt Setesdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vegårshei',912,9, (select id from lokallag where navn = 'Rødt Vegårshei'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Åseral',1026,9, (select id from lokallag where navn = 'Rødt Setesdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Audnedal',1027,10, (select id from lokallag where navn = 'Rødt Lyngdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Farsund',1003,10, (select id from lokallag where navn = 'Rødt Farsund'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Flekkefjord',1004,10, (select id from lokallag where navn = 'Rødt Flekkefjord'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hægebostad',1034,10, (select id from lokallag where navn = 'Rødt Lyngdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Kristiansand',1001,10, (select id from lokallag where navn = 'Rødt Kristiansand'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Kvinesdal',1037,10, (select id from lokallag where navn = 'Rødt Flekkefjord'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lindesnes',1029,10, (select id from lokallag where navn = 'Rødt Lindesnes'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lyngdal',1032,10, (select id from lokallag where navn = 'Rødt Lyngdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Mandal',1002,10, (select id from lokallag where navn = 'Rødt Lindesnes'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Marnardal',1021,10, (select id from lokallag where navn = 'Rødt Lindesnes'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sirdal',1046,10, (select id from lokallag where navn = 'Rødt Flekkefjord'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Søgne',1018,10, (select id from lokallag where navn = 'Rødt Kristiansand'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Songdalen',1017,10, (select id from lokallag where navn = 'Rødt Kristiansand'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vennesla',1014,10, (select id from lokallag where navn = 'Rødt Vennesla'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Bjerkreim',1114,11, (select id from lokallag where navn = 'Rødt Dalane'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Bokn',1145,11, (select id from lokallag where navn = 'Rødt Haugaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Eigersund',1101,11, (select id from lokallag where navn = 'Rødt Dalane'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Finnøy',1141,11, (select id from lokallag where navn = 'Rødt Stavanger'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Forsand',1129,11, (select id from lokallag where navn = 'Rødt Strand'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Gjesdal',1122,11, (select id from lokallag where navn = 'Rødt Sandnes'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hå',1119,11, (select id from lokallag where navn = 'Raudt Hå'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Haugesund',1106,11, (select id from lokallag where navn = 'Rødt Haugaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hjelmeland',1133,11, (select id from lokallag where navn = 'Rødt Strand'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Karmøy',1149,11, (select id from lokallag where navn = 'Rødt Haugaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Klepp',1120,11, (select id from lokallag where navn = 'Raudt Time og Klepp'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Kvitsøy',1144,11, (select id from lokallag where navn = 'Uten lag Rogaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lund',1112,11, (select id from lokallag where navn = 'Rødt Dalane'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Randaberg',1127,11, (select id from lokallag where navn = 'Rødt Stavanger'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Rennesøy',1142,11, (select id from lokallag where navn = 'Rødt Stavanger'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sandnes',1102,11, (select id from lokallag where navn = 'Rødt Sandnes'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sauda',1135,11, (select id from lokallag where navn = 'Uten lag Rogaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sokndal',1111,11, (select id from lokallag where navn = 'Rødt Dalane'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sola',1124,11, (select id from lokallag where navn = 'Rødt Sola'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Stavanger',1103,11, (select id from lokallag where navn = 'Rødt Stavanger'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Strand',1130,11, (select id from lokallag where navn = 'Rødt Strand'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Suldal',1134,11, (select id from lokallag where navn = 'Uten lag Rogaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Time',1121,11, (select id from lokallag where navn = 'Raudt Time og Klepp'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Tysvær',1146,11, (select id from lokallag where navn = 'Rødt Haugaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Utsira',1151,11, (select id from lokallag where navn = 'Rødt Haugaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vindafjord',1160,11, (select id from lokallag where navn = 'Rødt Haugaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Askøy',1247,12, (select id from lokallag where navn = 'Rødt Askøy'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Austevoll',1244,12, (select id from lokallag where navn = 'Uten lag Hordaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Austrheim',1264,12, (select id from lokallag where navn = 'Raudt Austrheim'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Bergen',1201,12, (select id from lokallag where navn = 'Rødt Bergen'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Bømlo',1219,12, (select id from lokallag where navn = 'Raudt Bømlo'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Eidfjord',1232,12, (select id from lokallag where navn = 'Uten lag Hordaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Etne',1211,12, (select id from lokallag where navn = 'Uten lag Hordaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Fedje',1265,12, (select id from lokallag where navn = 'Uten lag Hordaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Fitjar',1222,12, (select id from lokallag where navn = 'Uten lag Hordaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Fjell',1246,12, (select id from lokallag where navn = 'Rødt Øygarden'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Fusa',1241,12, (select id from lokallag where navn = 'Raudt Bjørnafjorden'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Granvin',1234,12, (select id from lokallag where navn = 'Raudt Voss'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Jondal',1227,12, (select id from lokallag where navn = 'Rødt Ullensvang'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Kvam',1238,12, (select id from lokallag where navn = 'Raudt Kvam'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Kvinnherad',1224,12, (select id from lokallag where navn = 'Raudt Kvinnherad'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lindås',1263,12, (select id from lokallag where navn = 'Raudt Alver'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Masfjorden',1266,12, (select id from lokallag where navn = 'Uten lag Hordaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Meland',1256,12, (select id from lokallag where navn = 'Raudt Alver'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Modalen',1252,12, (select id from lokallag where navn = 'Uten lag Hordaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Odda',1228,12, (select id from lokallag where navn = 'Rødt Ullensvang'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Os i Hordaland',1243,12, (select id from lokallag where navn = 'Raudt Bjørnafjorden'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Osterøy',1253,12, (select id from lokallag where navn = 'Uten lag Hordaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Øygarden',1259,12, (select id from lokallag where navn = 'Rødt Øygarden'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Radøy',1260,12, (select id from lokallag where navn = 'Raudt Alver'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Samnanger',1242,12, (select id from lokallag where navn = 'Uten lag Hordaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Stord',1221,12, (select id from lokallag where navn = 'Raudt Stord'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sund',1245,12, (select id from lokallag where navn = 'Rødt Øygarden'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sveio',1216,12, (select id from lokallag where navn = 'Rødt Ullensvang'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Tysnes',1223,12, (select id from lokallag where navn = 'Uten lag Hordaland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ullensvang',1231,12, (select id from lokallag where navn = 'Rødt Ullensvang'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ulvik',1233,12, (select id from lokallag where navn = 'Rødt Ullensvang'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vaksdal',1251,12, (select id from lokallag where navn = 'Raudt Vaksdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Voss',1235,12, (select id from lokallag where navn = 'Raudt Voss'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Årdal',1424,14, (select id from lokallag where navn = 'Raudt Årdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Askvoll',1428,14, (select id from lokallag where navn = 'Raudt Dalsfjorden'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Aurland',1421,14, (select id from lokallag where navn = 'Raudt Lærdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Balestrand',1418,14, (select id from lokallag where navn = 'Raudt Høyanger'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Bremanger',1438,14, (select id from lokallag where navn = 'Raudt Bremanger'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Eid',1443,14, (select id from lokallag where navn = 'Raudt Vågsøy'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Fjaler',1429,14, (select id from lokallag where navn = 'Raudt Dalsfjorden'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Flora',1401,14, (select id from lokallag where navn = 'Raudt Flora'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Førde',1432,14, (select id from lokallag where navn = 'Raudt Indre Sunnfjord'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Gaular',1430,14, (select id from lokallag where navn = 'Raudt Indre Sunnfjord'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Gloppen',1445,14, (select id from lokallag where navn = 'Raudt Gloppen'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Gulen',1411,14, (select id from lokallag where navn = 'Raudt Høyanger'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hornindal',1444,14, (select id from lokallag where navn = 'Uten lag Sogn og Fjordane'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Høyanger',1416,14, (select id from lokallag where navn = 'Raudt Høyanger'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hyllestad',1413,14, (select id from lokallag where navn = 'Uten lag Sogn og Fjordane'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Jølster',1431,14, (select id from lokallag where navn = 'Raudt Indre Sunnfjord'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lærdal',1422,14, (select id from lokallag where navn = 'Raudt Lærdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Leikanger',1419,14, (select id from lokallag where navn = 'Raudt Luster'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Luster',1426,14, (select id from lokallag where navn = 'Raudt Luster'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Naustdal',1433,14, (select id from lokallag where navn = 'Raudt Indre Sunnfjord'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Selje',1441,14, (select id from lokallag where navn = 'Raudt Vågsøy'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sogndal',1420,14, (select id from lokallag where navn = 'Raudt Stryn'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Solund',1412,14, (select id from lokallag where navn = 'Uten lag Sogn og Fjordane'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Stryn',1449,14, (select id from lokallag where navn = 'Raudt Stryn'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vågsøy',1439,14, (select id from lokallag where navn = 'Raudt Vågsøy'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vik',1417,14, (select id from lokallag where navn = 'Uten lag Sogn og Fjordane'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ålesund',1504,15, (select id from lokallag where navn = 'Rødt Ålesund'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Aukra',1547,15, (select id from lokallag where navn = 'Rødt Molde'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Aure',1576,15, (select id from lokallag where navn = 'Rødt Kristiansund'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Averøy',1554,15, (select id from lokallag where navn = 'Rødt Kristiansund'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Eide',1551,15, (select id from lokallag where navn = 'Rødt Molde'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Fræna',1548,15, (select id from lokallag where navn = 'Rødt Molde'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Giske',1532,15, (select id from lokallag where navn = 'Rødt Ålesund'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Gjemnes',1557,15, (select id from lokallag where navn = 'Rødt Molde'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Halsa',1571,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Haram',1534,15, (select id from lokallag where navn = 'Rødt Ålesund'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hareid',1517,15, (select id from lokallag where navn = 'Raudt Søre Sunnmøre'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Herøy i  Møre og Romsdal',1515,15, (select id from lokallag where navn = 'Raudt Søre Sunnmøre'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Kristiansund',1505,15, (select id from lokallag where navn = 'Rødt Kristiansund'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Midsund',1545,15, (select id from lokallag where navn = 'Rødt Molde'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Molde',1502,15, (select id from lokallag where navn = 'Rødt Molde'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nesset',1543,15, (select id from lokallag where navn = 'Rødt Molde'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Norddal',1524,15, (select id from lokallag where navn = 'Rødt Ålesund'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ørskog',1523,15, (select id from lokallag where navn = 'Rødt Ålesund'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ørsta',1520,15, (select id from lokallag where navn = 'Raudt Ørsta'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Rauma',1539,15, (select id from lokallag where navn = 'Rødt Molde'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sande i Møre og Romsdal',1514,15, (select id from lokallag where navn = 'Raudt Søre Sunnmøre'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sandøy',1546,15, (select id from lokallag where navn = 'Rødt Ålesund'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Skodje',1529,15, (select id from lokallag where navn = 'Rødt Ålesund'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Smøla',1573,15, (select id from lokallag where navn = 'Uten lag Møre og Romsdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Stordal',1526,15, (select id from lokallag where navn = 'Uten lag Møre og Romsdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Stranda',1525,15, (select id from lokallag where navn = 'Raudt Søre Sunnmøre'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sula',1531,15, (select id from lokallag where navn = 'Rødt Ålesund'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sunndal',1563,15, (select id from lokallag where navn = 'Rødt Sunndal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Surnadal',1566,15, (select id from lokallag where navn = 'Rødt Sunndal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sykkylven',1528,15, (select id from lokallag where navn = 'Rødt Ålesund'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Tingvoll',1560,15, (select id from lokallag where navn = 'Rødt Sunndal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ulstein',1516,15, (select id from lokallag where navn = 'Raudt Ulstein'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vanylven',1511,15, (select id from lokallag where navn = 'Raudt Søre Sunnmøre'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vestnes',1535,15, (select id from lokallag where navn = 'Rødt Molde'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Volda',1519,15, (select id from lokallag where navn = 'Raudt Søre Sunnmøre'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Aarborte – Hattfjelldal',1826,18, (select id from lokallag where navn = 'Uten lag Nordland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Alstahaug',1820,18, (select id from lokallag where navn = 'Rødt Alstahaug'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Andøy',1871,18, (select id from lokallag where navn = 'Rødt Andøy'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ballangen',1854,18, (select id from lokallag where navn = 'Rødt Narvik'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Beiarn',1839,18, (select id from lokallag where navn = 'Uten lag Nordland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Bindal',1811,18, (select id from lokallag where navn = 'Rødt Vega'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Bø i Nordland',1867,18, (select id from lokallag where navn = 'Rødt Sortland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Bodø',1804,18, (select id from lokallag where navn = 'Rødt Bodø'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Brønnøy',1813,18, (select id from lokallag where navn = 'Rødt Brønnøy'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Divtasvuodna – Tysfjord',1850,18, (select id from lokallag where navn = 'Rødt Narvik'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Dønna',1827,18, (select id from lokallag where navn = 'Rødt Dønna'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Evenes',1853,18, (select id from lokallag where navn = 'Uten lag Nordland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Fauske – Fuossko',1841,18, (select id from lokallag where navn = 'Rødt Fauske'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Flakstad',1859,18, (select id from lokallag where navn = 'Rødt Vestvågøy'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Gildeskål',1838,18, (select id from lokallag where navn = 'Rødt Bodø'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Grane',1825,18, (select id from lokallag where navn = 'Uten lag Nordland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hadsel',1866,18, (select id from lokallag where navn = 'Rødt Hadsel'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hamarøy – Hábmer',1849,18, (select id from lokallag where navn = 'Rødt Hamarøy'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hemnes',1832,18, (select id from lokallag where navn = 'Rødt Hemnes'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Herøy i Nordland',1818,18, (select id from lokallag where navn = 'Rødt Alstahaug'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Leirfjord',1822,18, (select id from lokallag where navn = 'Rødt Leirfjord'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lødingen',1851,18, (select id from lokallag where navn = 'Rødt Sortland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lurøy',1834,18, (select id from lokallag where navn = 'Uten lag Nordland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Meløy',1837,18, (select id from lokallag where navn = 'Rødt Bodø'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Moskenes',1874,18, (select id from lokallag where navn = 'Rødt Vestvågøy'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Narvik',1805,18, (select id from lokallag where navn = 'Rødt Narvik'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nesna',1828,18, (select id from lokallag where navn = 'Rødt Nesna'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Øksnes',1868,18, (select id from lokallag where navn = 'Rødt Øksnes'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Rana',1833,18, (select id from lokallag where navn = 'Rødt Rana'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Rødøy',1836,18, (select id from lokallag where navn = 'Rødt Rana'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Røst',1856,18, (select id from lokallag where navn = 'Rødt Røst'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Saltdal',1840,18, (select id from lokallag where navn = 'Rødt Saltdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sømna',1812,18, (select id from lokallag where navn = 'Rødt Sømna'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sørfold',1845,18, (select id from lokallag where navn = 'Rødt Sørfold'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sortland – Suortá',1870,18, (select id from lokallag where navn = 'Rødt Sortland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Steigen',1848,18, (select id from lokallag where navn = 'Rødt Steigen'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Tjeldsund',1852,19, (select id from lokallag where navn = 'Uten lag Troms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Træna',1835,18, (select id from lokallag where navn = 'Uten lag Nordland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Værøy',1857,18, (select id from lokallag where navn = 'Uten lag Nordland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vågan',1865,18, (select id from lokallag where navn = 'Rødt Vågan'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vefsn',1824,18, (select id from lokallag where navn = 'Rødt Vefsn'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vega',1815,18, (select id from lokallag where navn = 'Rødt Vega'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vestvågøy',1860,18, (select id from lokallag where navn = 'Rødt Vestvågøy'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vevelstad',1816,18, (select id from lokallag where navn = 'Rødt Vega'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Balsfjord',1933,19, (select id from lokallag where navn = 'Rødt Balsfjord'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Bardu',1922,19, (select id from lokallag where navn = 'Uten lag Troms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Berg',1929,19, (select id from lokallag where navn = 'Uten lag Troms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Dyrøy',1926,19, (select id from lokallag where navn = 'Uten lag Troms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Gáivuotna – Kåfjord – Kaivuono',1940,19, (select id from lokallag where navn = 'Uten lag TRoms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Gratangen',1919,19, (select id from lokallag where navn = 'Uten lag Troms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Harstad – Hárstták',1903,19, (select id from lokallag where navn = 'Rødt Harstad'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ibestad',1917,19, (select id from lokallag where navn = 'Uten lag Troms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Karlsøy',1936,19, (select id from lokallag where navn = 'Rødt Tromsø'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Kvæfjord',1911,19, (select id from lokallag where navn = 'Rødt Harstad'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Kvænangen',1943,19, (select id from lokallag where navn = 'Uten lag Troms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lenvik',1931,19, (select id from lokallag where navn = 'Uten lag Troms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Loabák – Lavangen',1920,19, (select id from lokallag where navn = 'Uten lag Troms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lyngen',1938,19, (select id from lokallag where navn = 'Uten lag Troms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Målselv',1924,19, (select id from lokallag where navn = 'Rødt Målselv'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nordreisa – Ráisa – Raisi',1942,19, (select id from lokallag where navn = 'Uten lag Troms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Salangen',1923,19, (select id from lokallag where navn = 'Rødt Salangen'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Skånland',1913,19, (select id from lokallag where navn = 'Rødt Harstad'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Skjervøy',1941,19, (select id from lokallag where navn = 'Rødt Skjervøy'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sørreisa',1925,19, (select id from lokallag where navn = 'Uten lag Troms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Storfjord – Omasvuotna – Omasvuono',1939,19, (select id from lokallag where navn = 'Rødt Balsfjord'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Torsken',1928,19, (select id from lokallag where navn = 'Uten lag Troms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Tranøy',1927,19, (select id from lokallag where navn = 'Uten lag Troms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Tromsø',1902,19, (select id from lokallag where navn = 'Rødt Tromsø'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Alta',2012,20, (select id from lokallag where navn = 'Rødt Alta'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Båtsfjord',2028,20, (select id from lokallag where navn = 'Uten lag Finnmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Berlevåg',2024,20, (select id from lokallag where navn = 'Uten lag Finnmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Deatnu – Tana',2025,20, (select id from lokallag where navn = 'Uten lag Finnmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Gamvik',2023,20, (select id from lokallag where navn = 'Uten lag Finnmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Guovdageaidnu – Kautokeino',2011,20, (select id from lokallag where navn = 'Uten lag Finnmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hammerfest',2004,20, (select id from lokallag where navn = 'Rødt Hammerfest'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hasvik',2015,20, (select id from lokallag where navn = 'Uten lag Finnmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Kárášjohka – Karasjok',2021,20, (select id from lokallag where navn = 'Uten lag Finnmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Kvalsund',2017,20, (select id from lokallag where navn = 'Uten lag Finnmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lebesby',2022,20, (select id from lokallag where navn = 'Uten lag Finnmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Loppa',2014,20, (select id from lokallag where navn = 'Uten lag Finnmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Måsøy',2018,20, (select id from lokallag where navn = 'Rødt Måsøy'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nordkapp',2019,20, (select id from lokallag where navn = 'Uten lag Finnmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Porsanger – Porsángu – Porsanki',2020,20, (select id from lokallag where navn = 'Uten lag Finnmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Sør-Varanger',2030,20, (select id from lokallag where navn = 'Rødt Sør-Varanger'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Unjárga – Nesseby',2027,20, (select id from lokallag where navn = 'Uten lag Finnmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vadsø',2003,20, (select id from lokallag where navn = 'Rødt Vadsø'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vardø',2002,20, (select id from lokallag where navn = 'Uten lag Finnmark'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Svalbard',2100,19, (select id from lokallag where navn = 'Uten lag Troms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Jan Mayen',2211,19, (select id from lokallag where navn = 'Uten lag Troms'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Åfjord',5018,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Agdenes',5016,50, (select id from lokallag where navn = 'Rødt Orkland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Bjugn',5017,50, (select id from lokallag where navn = 'Rødt Ørland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Flatanger',5049,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Fosnes',5048,50, (select id from lokallag where navn = 'Rødt Namsos'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Frosta',5036,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Frøya',5014,50, (select id from lokallag where navn = 'Rødt Frøya'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Grong',5045,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hemne',5011,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Hitra',5013,50, (select id from lokallag where navn = 'Rødt Hitra'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Holtålen',5026,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Høylandet',5046,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Inderøy',5053,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Indre Fosen',5054,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Klæbu',5030,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Leka',5052,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Levanger',5037,50, (select id from lokallag where navn = 'Rødt Levanger'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Lierne',5042,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Malvik',5031,50, (select id from lokallag where navn = 'Rødt Malvik'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Meldal',5023,50, (select id from lokallag where navn = 'Rødt Orkland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Melhus',5028,50, (select id from lokallag where navn = 'Rødt Melhus'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Meråker',5034,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Midtre Gauldal',5027,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Nærøy',5051,50, (select id from lokallag where navn = 'Rødt Nærøysund'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Namdalseid',5040,50, (select id from lokallag where navn = 'Rødt Namsos'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Namsos',5005,50, (select id from lokallag where navn = 'Rødt Namsos'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Namsskogan',5044,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Oppdal',5021,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Orkdal',5024,50, (select id from lokallag where navn = 'Rødt Orkland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Ørland',5015,50, (select id from lokallag where navn = 'Rødt Ørland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Osen',5020,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Overhalla',5047,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Raarvikhe – Røyrvik',5043,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Rennebu',5022,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Rindal',5061,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Roan',5019,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Røros',5025,50, (select id from lokallag where navn = 'Røros'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Selbu',5032,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Skaun',5029,50, (select id from lokallag where navn = 'Rødt Skaun'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Snåase – Snåsa',5041,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Snillfjord',5012,50, (select id from lokallag where navn = 'Rødt Orkland'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Steinkjer',5004,50, (select id from lokallag where navn = 'Rødt Steinkjer'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Stjørdal',5035,50, (select id from lokallag where navn = 'Rødt Stjørdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Trondheim',5001,50, (select id from lokallag where navn = 'Rødt Trondheim'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Tydal',5033,50, (select id from lokallag where navn = 'Uten lag Trøndelag'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Verdal',5038,50, (select id from lokallag where navn = 'Rødt Verdal'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Verran',5039,50, (select id from lokallag where navn = 'Rødt Steinkjer'));
    INSERT INTO kommune(navn,nummer,fylke_id,lokallag_id) VALUES ('Vikna',5050,50, (select id from lokallag where navn = 'Rødt Nærøysund'));

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `postnummer` (
   Postnummer  INTEGER  NOT NULL PRIMARY KEY
  ,Poststed    VARCHAR(20) NOT NULL
  ,KommuneKode INTEGER  NOT NULL,
  FOREIGN KEY (`KommuneKode`) REFERENCES `kommune` (`nummer`),
  INDEX (`KommuneKode`)
);

-- --------------------------------------------------------


INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (-1,'UKJENT',-1);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (10,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (15,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (18,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (21,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (24,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (25,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (26,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (28,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (30,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (31,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (32,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (33,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (34,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (37,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (40,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (45,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (46,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (47,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (48,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (50,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (51,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (55,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (60,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (80,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (101,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (102,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (103,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (104,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (105,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (106,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (107,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (109,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (110,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (111,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (112,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (113,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (114,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (115,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (116,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (117,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (118,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (119,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (120,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (121,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (122,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (123,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (124,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (125,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (128,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (129,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (130,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (131,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (133,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (134,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (135,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (137,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (138,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (139,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (150,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (151,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (152,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (153,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (154,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (155,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (157,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (158,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (159,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (160,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (161,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (162,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (164,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (165,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (166,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (167,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (168,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (169,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (170,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (171,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (172,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (173,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (174,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (175,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (176,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (177,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (178,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (179,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (180,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (181,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (182,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (183,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (184,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (185,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (186,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (187,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (188,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (190,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (191,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (192,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (193,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (194,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (195,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (196,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (198,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (201,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (202,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (203,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (204,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (207,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (208,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (211,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (212,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (213,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (214,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (215,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (216,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (218,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (230,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (240,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (244,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (247,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (250,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (251,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (252,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (253,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (254,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (255,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (256,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (257,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (258,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (259,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (260,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (262,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (263,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (264,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (265,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (266,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (267,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (268,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (270,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (271,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (272,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (273,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (274,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (275,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (276,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (277,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (278,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (279,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (280,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (281,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (282,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (283,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (284,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (286,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (287,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (301,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (302,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (303,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (304,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (305,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (306,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (307,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (308,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (309,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (311,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (313,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (314,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (315,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (316,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (317,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (318,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (319,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (323,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (330,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (340,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (349,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (350,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (351,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (352,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (353,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (354,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (355,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (356,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (357,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (358,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (359,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (360,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (361,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (362,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (363,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (364,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (365,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (366,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (367,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (368,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (369,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (370,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (371,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (372,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (373,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (374,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (375,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (376,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (377,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (378,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (379,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (380,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (381,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (382,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (383,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (401,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (402,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (403,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (404,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (405,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (406,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (408,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (409,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (410,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (411,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (412,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (413,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (415,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (421,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (422,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (423,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (424,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (440,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (441,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (442,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (445,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (450,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (451,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (452,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (454,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (455,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (456,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (457,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (458,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (459,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (460,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (461,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (462,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (463,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (464,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (465,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (467,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (468,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (469,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (470,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (472,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (473,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (474,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (475,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (476,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (477,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (478,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (479,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (480,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (481,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (482,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (483,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (484,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (485,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (486,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (487,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (488,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (489,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (490,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (491,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (492,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (493,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (494,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (495,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (496,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (501,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (502,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (503,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (504,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (505,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (506,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (508,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (509,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (510,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (511,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (512,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (513,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (515,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (516,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (517,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (518,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (520,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (540,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (550,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (551,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (552,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (553,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (554,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (555,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (556,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (557,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (558,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (559,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (560,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (561,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (562,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (563,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (564,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (565,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (566,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (567,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (568,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (569,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (570,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (571,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (572,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (573,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (574,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (575,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (576,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (577,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (578,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (579,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (580,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (581,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (582,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (583,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (584,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (585,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (586,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (587,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (588,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (589,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (590,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (591,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (592,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (593,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (594,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (595,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (596,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (597,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (598,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (601,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (602,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (603,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (604,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (605,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (606,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (607,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (608,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (609,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (611,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (612,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (613,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (614,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (616,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (617,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (618,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (619,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (620,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (621,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (622,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (623,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (624,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (626,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (650,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (651,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (652,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (653,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (654,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (655,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (656,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (657,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (658,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (659,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (660,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (661,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (662,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (663,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (664,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (665,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (666,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (667,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (668,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (669,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (670,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (671,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (672,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (673,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (674,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (675,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (676,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (677,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (678,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (679,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (680,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (681,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (682,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (683,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (684,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (685,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (686,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (687,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (688,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (689,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (690,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (691,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (692,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (693,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (694,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (701,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (702,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (705,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (710,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (712,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (750,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (751,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (752,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (753,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (754,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (755,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (756,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (757,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (758,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (760,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (763,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (764,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (765,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (766,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (767,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (768,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (770,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (771,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (772,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (773,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (774,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (775,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (776,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (777,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (778,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (779,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (781,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (782,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (783,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (784,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (785,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (786,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (787,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (788,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (789,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (790,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (791,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (801,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (805,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (806,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (807,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (840,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (850,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (851,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (852,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (853,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (854,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (855,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (856,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (857,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (858,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (860,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (861,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (862,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (863,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (864,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (870,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (871,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (872,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (873,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (874,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (875,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (876,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (877,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (880,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (881,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (882,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (883,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (884,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (890,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (891,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (901,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (902,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (903,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (904,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (905,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (907,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (908,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (913,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (915,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (950,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (951,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (952,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (953,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (954,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (955,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (956,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (957,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (958,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (959,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (960,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (962,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (963,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (964,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (968,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (969,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (970,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (971,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (972,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (973,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (975,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (976,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (977,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (978,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (979,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (980,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (981,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (982,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (983,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (984,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (985,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (986,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (987,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (988,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1001,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1003,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1005,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1006,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1007,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1008,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1009,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1011,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1051,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1052,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1053,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1054,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1055,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1056,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1061,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1062,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1063,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1064,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1065,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1067,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1068,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1069,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1071,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1081,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1083,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1084,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1086,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1087,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1088,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1089,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1101,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1109,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1112,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1150,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1151,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1152,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1153,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1154,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1155,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1156,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1157,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1158,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1160,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1161,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1162,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1163,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1164,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1165,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1166,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1167,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1168,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1169,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1170,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1172,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1176,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1177,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1178,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1179,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1181,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1182,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1184,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1185,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1187,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1188,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1189,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1201,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1202,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1203,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1204,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1205,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1207,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1214,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1215,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1250,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1251,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1252,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1253,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1254,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1255,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1256,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1257,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1258,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1259,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1262,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1263,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1266,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1270,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1271,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1272,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1273,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1274,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1275,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1278,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1279,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1281,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1283,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1284,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1285,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1286,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1290,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1291,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1294,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1295,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1300,'SANDVIKA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1301,'SANDVIKA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1302,'SANDVIKA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1303,'SANDVIKA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1304,'SANDVIKA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1305,'HASLUM',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1306,'SANDVIKA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1307,'FORNEBU',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1308,'JAR',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1309,'RUD',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1311,'HØVIKODDEN',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1312,'SLEPENDEN',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1313,'VØYENENGA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1314,'VØYENENGA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1316,'EIKSMARKA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1317,'BÆRUMS VERK',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1318,'BEKKESTUA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1319,'BEKKESTUA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1321,'STABEKK',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1322,'HØVIK',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1323,'HØVIK',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1324,'LYSAKER',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1325,'LYSAKER',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1326,'LYSAKER',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1327,'LYSAKER',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1328,'HØVIK',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1329,'LOMMEDALEN',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1330,'FORNEBU',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1331,'FORNEBU',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1332,'ØSTERÅS',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1333,'KOLSÅS',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1334,'RYKKINN',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1335,'SNARØYA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1336,'SANDVIKA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1337,'SANDVIKA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1338,'SANDVIKA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1339,'VØYENENGA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1340,'SKUI',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1341,'SLEPENDEN',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1342,'GJETTUM',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1344,'HASLUM',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1346,'GJETTUM',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1348,'RYKKINN',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1349,'RYKKINN',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1350,'LOMMEDALEN',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1351,'RUD',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1352,'KOLSÅS',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1353,'BÆRUMS VERK',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1354,'BÆRUMS VERK',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1356,'BEKKESTUA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1357,'BEKKESTUA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1358,'JAR',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1359,'EIKSMARKA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1360,'FORNEBU',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1361,'ØSTERÅS',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1362,'HOSLE',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1363,'HØVIK',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1364,'FORNEBU',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1365,'BLOMMENHOLM',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1366,'LYSAKER',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1367,'SNARØYA',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1368,'STABEKK',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1369,'STABEKK',219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1371,'ASKER',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1372,'ASKER',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1373,'ASKER',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1375,'BILLINGSTAD',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1376,'BILLINGSTAD',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1377,'BILLINGSTAD',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1378,'NESBRU',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1379,'NESBRU',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1380,'HEGGEDAL',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1381,'VETTRE',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1383,'ASKER',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1384,'ASKER',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1385,'ASKER',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1386,'ASKER',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1387,'ASKER',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1388,'BORGEN',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1389,'HEGGEDAL',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1390,'VOLLEN',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1391,'VOLLEN',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1392,'VETTRE',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1393,'VOLLEN',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1394,'NESBRU',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1395,'HVALSTAD',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1396,'BILLINGSTAD',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1397,'NESØYA',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1399,'ASKER',220);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1400,'SKI',213);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1401,'SKI',213);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1402,'SKI',213);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1403,'LANGHUS',213);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1404,'SIGGERUD',213);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1405,'LANGHUS',213);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1406,'SKI',213);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1407,'VINTERBRO',214);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1408,'KRÅKSTAD',213);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1409,'SKOTBU',213);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1410,'KOLBOTN',217);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1411,'KOLBOTN',217);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1412,'SOFIEMYR',217);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1413,'TÅRNÅSEN',217);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1414,'TROLLÅSEN',217);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1415,'OPPEGÅRD',217);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1416,'OPPEGÅRD',217);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1417,'SOFIEMYR',217);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1418,'KOLBOTN',217);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1419,'OPPEGÅRD',217);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1420,'SVARTSKOG',217);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1421,'TROLLÅSEN',217);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1422,'SIGGERUD',213);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1423,'SKI',213);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1424,'SKI',213);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1425,'SKI',213);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1429,'VINTERBRO',214);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1430,'ÅS',214);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1431,'ÅS',214);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1432,'ÅS',214);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1433,'ÅS',214);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1434,'ÅS',214);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1435,'ÅS',214);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1440,'DRØBAK',215);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1441,'DRØBAK',215);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1442,'DRØBAK',215);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1443,'DRØBAK',215);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1444,'DRØBAK',215);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1445,'DRØBAK',215);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1446,'DRØBAK',215);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1447,'DRØBAK',215);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1448,'DRØBAK',215);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1449,'DRØBAK',215);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1450,'NESODDTANGEN',216);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1451,'NESODDTANGEN',216);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1452,'NESODDTANGEN',216);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1453,'BJØRNEMYR',216);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1454,'FAGERSTRAND',216);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1455,'NORDRE FROGN',215);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1456,'NESODDTANGEN',216);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1457,'FAGERSTRAND',216);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1458,'FJELLSTRAND',216);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1459,'NESODDEN',216);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1461,'LØRENSKOG',230);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1462,'FJELLHAMAR',230);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1463,'FJELLHAMAR',230);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1464,'FJELLHAMAR',230);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1465,'STRØMMEN',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1466,'STRØMMEN',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1467,'STRØMMEN',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1468,'FINSTADJORDET',230);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1469,'RASTA',230);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1470,'LØRENSKOG',230);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1471,'LØRENSKOG',230);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1472,'FJELLHAMAR',230);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1473,'LØRENSKOG',230);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1474,'NORDBYHAGEN',230);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1475,'FINSTADJORDET',230);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1476,'RASTA',230);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1477,'FJELLHAMAR',230);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1478,'LØRENSKOG',230);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1479,'KURLAND',230);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1480,'SLATTUM',233);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1481,'HAGAN',233);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1482,'NITTEDAL',233);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1483,'HAGAN',233);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1484,'HAKADAL',233);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1485,'HAKADAL',233);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1486,'NITTEDAL',233);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1487,'HAKADAL',233);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1488,'HAKADAL',233);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1501,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1502,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1503,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1504,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1506,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1508,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1509,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1510,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1511,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1512,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1513,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1514,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1515,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1516,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1517,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1518,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1519,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1520,'MOSS',136);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1521,'MOSS',136);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1522,'MOSS',136);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1523,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1524,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1525,'MOSS',136);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1526,'MOSS',136);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1528,'MOSS',136);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1529,'MOSS',136);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1530,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1531,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1532,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1533,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1534,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1535,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1536,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1537,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1538,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1539,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1540,'VESTBY',211);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1541,'VESTBY',211);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1542,'VESTBY',211);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1543,'VESTBY',211);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1544,'VESTBY',211);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1545,'HVITSTEN',211);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1550,'HØLEN',211);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1555,'SON',211);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1556,'SON',211);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1560,'LARKOLLEN',136);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1561,'LARKOLLEN',136);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1570,'DILLING',136);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1580,'RYGGE',136);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1581,'RYGGE',136);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1590,'RYGGE FLYSTASJON',136);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1591,'SPERREBOTN',137);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1592,'VÅLER I ØSTFOLD',137);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1593,'SVINNDAL',137);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1596,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1597,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1598,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1599,'MOSS',104);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1601,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1602,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1603,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1604,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1605,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1606,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1607,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1608,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1609,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1610,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1612,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1613,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1614,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1615,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1616,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1617,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1618,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1619,'FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1620,'GRESSVIK',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1621,'GRESSVIK',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1622,'GRESSVIK',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1623,'GRESSVIK',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1624,'GRESSVIK',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1625,'MANSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1626,'MANSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1628,'ENGELSVIKEN',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1629,'GAMLE FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1630,'GAMLE FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1632,'GAMLE FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1633,'GAMLE FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1634,'GAMLE FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1636,'GAMLE FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1637,'GAMLE FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1638,'GAMLE FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1639,'GAMLE FREDRIKSTAD',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1640,'RÅDE',135);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1641,'RÅDE',135);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1642,'SALTNES',135);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1643,'RÅDE',135);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1650,'SELLEBAKK',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1651,'SELLEBAKK',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1653,'SELLEBAKK',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1654,'SELLEBAKK',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1655,'SELLEBAKK',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1657,'TORP',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1658,'TORP',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1659,'TORP',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1661,'ROLVSØY',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1662,'ROLVSØY',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1663,'ROLVSØY',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1664,'ROLVSØY',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1665,'ROLVSØY',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1666,'ROLVSØY',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1667,'ROLVSØY',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1670,'KRÅKERØY',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1671,'KRÅKERØY',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1672,'KRÅKERØY',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1673,'KRÅKERØY',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1675,'KRÅKERØY',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1676,'KRÅKERØY',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1678,'KRÅKERØY',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1679,'KRÅKERØY',106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1680,'SKJÆRHALDEN',111);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1682,'SKJÆRHALDEN',111);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1683,'VESTERØY',111);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1684,'VESTERØY',111);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1690,'HERFØL',111);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1692,'NEDGÅRDEN',111);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1701,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1702,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1703,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1704,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1705,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1706,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1707,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1708,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1709,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1710,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1711,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1712,'GRÅLUM',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1713,'GRÅLUM',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1714,'GRÅLUM',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1715,'YVEN',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1718,'GREÅKER',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1719,'GREÅKER',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1720,'GREÅKER',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1721,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1722,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1723,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1724,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1725,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1726,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1727,'SARPSBORG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1730,'ISE',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1733,'HAFSLUNDSØY',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1734,'HAFSLUNDSØY',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1735,'VARTEIG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1738,'BORGENHAUGEN',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1739,'BORGENHAUGEN',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1740,'BORGENHAUGEN',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1742,'KLAVESTADHAUGEN',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1743,'KLAVESTADHAUGEN',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1745,'SKJEBERG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1746,'SKJEBERG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1747,'SKJEBERG',105);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1751,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1752,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1753,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1754,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1757,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1760,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1761,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1763,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1764,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1765,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1766,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1767,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1768,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1769,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1771,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1772,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1776,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1777,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1778,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1779,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1781,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1782,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1783,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1784,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1785,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1786,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1787,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1788,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1789,'BERG I ØSTFOLD',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1790,'TISTEDAL',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1791,'TISTEDAL',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1792,'TISTEDAL',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1793,'TISTEDAL',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1794,'SPONVIKA',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1796,'KORNSJØ',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1798,'AREMARK',118);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1799,'AREMARK',118);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1801,'ASKIM',124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1802,'ASKIM',124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1803,'ASKIM',124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1804,'SPYDEBERG',123);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1805,'TOMTER',138);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1806,'SKIPTVET',127);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1807,'ASKIM',124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1808,'ASKIM',124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1809,'ASKIM',124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1811,'ASKIM',124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1812,'ASKIM',124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1813,'ASKIM',124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1814,'ASKIM',124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1815,'ASKIM',124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1816,'SKIPTVET',127);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1820,'SPYDEBERG',123);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1821,'SPYDEBERG',123);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1823,'KNAPSTAD',138);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1825,'TOMTER',138);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1827,'HOBØL',138);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1830,'ASKIM',124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1831,'ASKIM',124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1832,'ASKIM',124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1833,'ASKIM',124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1850,'MYSEN',125);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1851,'MYSEN',125);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1852,'MYSEN',125);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1859,'SLITU',125);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1860,'TRØGSTAD',122);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1861,'TRØGSTAD',122);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1866,'BÅSTAD',122);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1867,'BÅSTAD',122);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1870,'ØRJE',119);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1871,'ØRJE',119);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1875,'OTTEID',119);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1878,'HÆRLAND',125);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1880,'EIDSBERG',125);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1890,'RAKKESTAD',128);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1891,'RAKKESTAD',128);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1892,'DEGERNES',128);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1893,'DEGERNES',128);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1894,'RAKKESTAD',128);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1900,'FETSUND',227);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1901,'FETSUND',227);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1903,'GAN',227);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1910,'ENEBAKKNESET',227);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1911,'FLATEBY',229);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1912,'ENEBAKK',229);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1914,'YTRE ENEBAKK',229);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1916,'FLATEBY',229);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1917,'YTRE ENEBAKK',229);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1920,'SØRUMSAND',226);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1921,'SØRUMSAND',226);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1923,'SØRUM',226);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1924,'SØRUM',226);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1925,'BLAKER',226);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1926,'BLAKER',226);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1927,'RÅNÅSFOSS',226);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1928,'AULI',236);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1929,'AULI',236);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1930,'AURSKOG',221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1931,'AURSKOG',221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1940,'BJØRKELANGEN',221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1941,'BJØRKELANGEN',221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1950,'RØMSKOG',121);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1954,'SETSKOG',221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1960,'LØKEN',221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1961,'LØKEN',221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1963,'FOSSER',221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1970,'HEMNES',221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1971,'HEMNES',221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2000,'LILLESTRØM',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2001,'LILLESTRØM',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2003,'LILLESTRØM',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2004,'LILLESTRØM',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2005,'RÆLINGEN',228);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2006,'LØVENSTAD',228);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2007,'KJELLER',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2008,'FJERDINGBY',228);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2009,'NORDBY',228);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2010,'STRØMMEN',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2011,'STRØMMEN',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2012,'LILLESTRØM',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2013,'SKJETTEN',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2014,'BLYSTADLIA',228);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2015,'LEIRSUND',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2016,'FROGNER',226);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2017,'FROGNER',226);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2018,'LØVENSTAD',228);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2019,'SKEDSMOKORSET',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2020,'SKEDSMOKORSET',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2021,'SKEDSMOKORSET',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2022,'GJERDRUM',234);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2023,'SKEDSMOKORSET',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2024,'GJERDRUM',234);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2025,'FJERDINGBY',228);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2026,'SKJETTEN',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2027,'KJELLER',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2030,'NANNESTAD',238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2031,'NANNESTAD',238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2032,'MAURA',238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2033,'ÅSGREINA',238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2034,'HOLTER',238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2035,'HOLTER',238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2036,'MAURA',238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2040,'KLØFTA',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2041,'KLØFTA',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2050,'JESSHEIM',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2051,'JESSHEIM',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2052,'JESSHEIM',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2053,'JESSHEIM',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2054,'MOGREINA',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2055,'NORDKISA',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2056,'ALGARHEIM',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2057,'JESSHEIM',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2058,'SESSVOLLMOEN',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2060,'GARDERMOEN',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2061,'GARDERMOEN',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2062,'JESSHEIM',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2063,'JESSHEIM',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2066,'JESSHEIM',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2067,'JESSHEIM',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2068,'JESSHEIM',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2069,'JESSHEIM',235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2070,'RÅHOLT',237);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2071,'RÅHOLT',237);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2072,'DAL',237);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2073,'BØN',237);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2074,'EIDSVOLL VERK',237);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2076,'DAL',237);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2080,'EIDSVOLL',237);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2081,'EIDSVOLL',237);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2090,'HURDAL',239);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2091,'HURDAL',239);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2092,'MINNESUND',237);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2093,'FEIRING',237);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2100,'SKARNES',419);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2101,'SKARNES',419);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2110,'SLÅSTAD',419);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2114,'DISENÅ',419);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2116,'SANDER',419);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2120,'SAGSTUA',418);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2123,'BRUVOLL',418);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2130,'KNAPPER',418);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2133,'GARDVIK',418);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2134,'AUSTVATN',418);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2150,'ÅRNES',236);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2151,'ÅRNES',236);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2160,'VORMSUND',236);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2161,'VORMSUND',236);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2162,'BRÅRUD',236);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2164,'SKOGBYGDA',236);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2165,'HVAM',236);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2166,'OPPAKER',236);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2170,'FENSTAD',236);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2201,'KONGSVINGER',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2202,'KONGSVINGER',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2203,'KONGSVINGER',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2204,'KONGSVINGER',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2205,'KONGSVINGER',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2206,'KONGSVINGER',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2208,'KONGSVINGER',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2209,'KONGSVINGER',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2210,'GRANLI',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2211,'KONGSVINGER',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2212,'KONGSVINGER',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2213,'KONGSVINGER',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2214,'KONGSVINGER',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2216,'ROVERUD',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2217,'HOKKÅSEN',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2218,'LUNDERSÆTER',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2219,'BRANDVAL',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2220,'ÅBOGEN',420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2223,'GALTERUD',419);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2224,'AUSTMARKA',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2225,'KONGSVINGER',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2226,'KONGSVINGER',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2230,'SKOTTERUD',420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2232,'TOBØL',420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2233,'VESTMARKA',420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2235,'MATRAND',420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2240,'MAGNOR',420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2256,'GRUE FINNSKOG',423);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2260,'KIRKENÆR',423);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2261,'KIRKENÆR',423);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2264,'GRINDER',423);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2265,'NAMNÅ',423);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2266,'ARNEBERG',425);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2270,'FLISA',425);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2271,'FLISA',425);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2280,'GJESÅSEN',425);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2283,'ÅSNES FINNSKOG',425);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2301,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2302,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2303,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2304,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2305,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2306,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2307,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2308,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2309,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2312,'OTTESTAD',417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2315,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2316,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2317,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2318,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2319,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2320,'FURNES',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2321,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2322,'RIDABU',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2323,'INGEBERG',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2324,'VANG PÅ HEDMARKEN',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2325,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2326,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2330,'VALLSET',417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2332,'ÅSVANG',417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2334,'ROMEDAL',417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2335,'STANGE',417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2336,'STANGE',417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2337,'TANGEN',417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2338,'ESPA',417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2340,'LØTEN',415);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2341,'LØTEN',415);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2344,'ILSENG',417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2345,'ÅDALSBRUK',415);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2350,'NES PÅ HEDMARKEN',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2353,'STAVSJØ',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2355,'GAUPEN',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2360,'RUDSHØGDA',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2364,'NÆROSET',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2365,'ÅSMARKA',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2372,'BRØTTUM',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2380,'BRUMUNDDAL',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2381,'BRUMUNDDAL',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2382,'BRUMUNDDAL',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2383,'BRUMUNDDAL',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2384,'BRUMUNDDAL',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2385,'BRUMUNDDAL',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2386,'BRUMUNDDAL',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2387,'BRUMUNDDAL',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2388,'BRUMUNDDAL',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2390,'MOELV',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2391,'MOELV',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2401,'ELVERUM',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2402,'ELVERUM',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2403,'ELVERUM',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2405,'ELVERUM',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2406,'ELVERUM',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2407,'ELVERUM',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2408,'ELVERUM',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2409,'ELVERUM',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2410,'HERNES',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2411,'ELVERUM',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2412,'SØRSKOGBYGDA',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2413,'ELVERUM',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2414,'ELVERUM',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2415,'HERADSBYGD',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2416,'JØMNA',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2418,'ELVERUM',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2420,'TRYSIL',428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2421,'TRYSIL',428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2422,'NYBERGSUND',428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2423,'ØSTBY',428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2425,'LJØRDALEN',428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2427,'PLASSEN',428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2428,'SØRE OSEN',428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2429,'TØRBERGET',428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2430,'JORDET',428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2432,'SLETTÅS',428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2435,'BRASKEREIDFOSS',426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2436,'VÅLER I SOLØR',426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2437,'HASLEMOEN',426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2438,'GRAVBERGET',426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2439,'VÅLER I SOLØR',426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2440,'ENGERDAL',434);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2443,'DREVSJØ',434);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2446,'ELGÅ',434);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2448,'SØMÅDALEN',434);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2450,'RENA',429);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2451,'RENA',429);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2460,'OSEN',429);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2476,'ATNA',430);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2477,'SOLLIA',430);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2478,'HANESTAD',432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2480,'KOPPANG',430);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2481,'KOPPANG',430);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2484,'RENDALEN',432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2485,'RENDALEN',432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2486,'RENDALEN',432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2487,'RENDALEN',432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2488,'RENDALEN',432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2500,'TYNSET',437);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2501,'TYNSET',437);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2510,'TYLLDALEN',437);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2512,'KVIKNE',437);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2540,'TOLGA',436);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2542,'VINGELEN',436);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2544,'ØVERSJØDALEN',436);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2550,'OS I ØSTERDALEN',441);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2552,'DALSBYGDA',441);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2555,'TUFSINGDALEN',441);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2560,'ALVDAL',438);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2561,'ALVDAL',438);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2580,'FOLLDAL',439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2581,'FOLLDAL',439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2582,'GRIMSBU',439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2584,'DALHOLEN',439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2601,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2602,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2603,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2604,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2605,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2606,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2607,'VINGROM',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2608,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2609,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2610,'MESNALI',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2611,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2612,'SJUSJØEN',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2613,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2614,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2615,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2616,'LISMARKA',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2617,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2618,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2619,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2624,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2625,'FÅBERG',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2626,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2629,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2630,'RINGEBU',520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2631,'RINGEBU',520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2632,'VENABYGD',520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2633,'FÅVANG',520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2634,'FÅVANG',520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2635,'TRETTEN',521);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2636,'ØYER',521);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2637,'ØYER',521);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2639,'VINSTRA',516);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2640,'VINSTRA',516);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2642,'KVAM',516);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2643,'SKÅBU',516);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2645,'SØR-FRON',519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2646,'GÅLÅ',519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2647,'SØR-FRON',519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2648,'SØR-FRON',519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2649,'ØSTRE GAUSDAL',522);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2651,'ØSTRE GAUSDAL',522);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2652,'SVINGVOLL',522);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2653,'VESTRE GAUSDAL',522);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2656,'FOLLEBU',522);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2657,'SVATSUM',522);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2658,'ESPEDALEN',519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2659,'DOMBÅS',511);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2660,'DOMBÅS',511);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2661,'HJERKINN',511);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2662,'DOVRE',511);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2663,'DOVRESKOGEN',511);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2664,'DOVRE',511);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2665,'LESJA',512);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2666,'LORA',512);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2667,'LESJAVERK',512);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2668,'LESJASKOG',512);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2669,'BJORLI',512);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2670,'OTTA',517);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2672,'SEL',517);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2673,'HØVRINGEN',517);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2674,'MYSUSÆTER',517);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2675,'OTTA',517);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2676,'HEIDAL',517);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2677,'NEDRE HEIDAL',517);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2680,'VÅGÅ',515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2682,'LALM',515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2683,'TESSANDEN',515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2684,'VÅGÅ',515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2685,'GARMO',514);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2686,'LOM',514);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2687,'BØVERDALEN',514);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2688,'LOM',514);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2690,'SKJÅK',513);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2693,'NORDBERG',513);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2694,'SKJÅK',513);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2695,'GROTLI',513);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2711,'GRAN',534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2712,'BRANDBU',534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2713,'ROA',533);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2714,'JAREN',534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2715,'LUNNER',533);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2716,'HARESTUA',533);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2717,'GRUA',533);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2718,'BRANDBU',534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2720,'GRINDVOLL',533);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2730,'LUNNER',533);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2740,'ROA',533);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2742,'GRUA',533);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2743,'HARESTUA',533);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2750,'GRAN',534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2760,'BRANDBU',534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2770,'JAREN',534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2801,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2802,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2803,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2804,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2805,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2806,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2807,'HUNNDALEN',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2808,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2809,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2810,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2811,'HUNNDALEN',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2815,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2816,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2817,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2818,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2819,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2820,'NORDRE TOTEN',528);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2821,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2822,'BYBRUA',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2825,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2827,'HUNNDALEN',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2830,'RAUFOSS',529);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2831,'RAUFOSS',529);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2832,'BIRI',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2833,'RAUFOSS',529);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2834,'RAUFOSS',529);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2835,'RAUFOSS',529);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2836,'BIRI',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2837,'BIRISTRAND',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2838,'SNERTINGDAL',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2839,'ØVRE SNERTINGDAL',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2840,'REINSVOLL',529);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2843,'EINA',529);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2846,'BØVERBRU',529);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2847,'KOLBU',528);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2848,'SKREIA',528);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2849,'KAPP',528);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2850,'LENA',528);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2851,'LENA',528);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2853,'REINSVOLL',529);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2854,'EINA',529);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2857,'SKREIA',528);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2858,'KAPP',528);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2860,'HOV',536);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2861,'LANDÅSBYGDA',536);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2862,'FLUBERG',536);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2864,'FALL',536);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2866,'ENGER',536);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2867,'HOV',536);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2870,'DOKKA',538);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2879,'ODNES',536);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2880,'NORD-TORPA',538);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2881,'AUST-TORPA',538);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2882,'DOKKA',538);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2890,'ETNEDAL',541);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2893,'ETNEDAL',541);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2900,'FAGERNES',542);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2901,'FAGERNES',542);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2907,'LEIRA I VALDRES',542);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2910,'AURDAL',542);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2917,'SKRAUTVÅL',542);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2918,'ULNES',542);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2920,'LEIRA I VALDRES',542);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2923,'TISLEIDALEN',542);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2929,'BAGN',540);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2930,'BAGN',540);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2933,'REINLI',540);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2936,'BEGNADALEN',540);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2937,'BEGNA',540);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2939,'HEGGENES',544);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2940,'HEGGENES',544);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2943,'ROGNE',544);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2950,'SKAMMESTEIN',544);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2952,'BEITO',544);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2953,'BEITOSTØLEN',544);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2954,'BEITOSTØLEN',544);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2959,'RØN',543);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2960,'RØN',543);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2966,'SLIDRE',543);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2967,'LOMEN',543);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2973,'RYFOSS',545);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2974,'VANG I VALDRES',545);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2975,'VANG I VALDRES',545);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2977,'ØYE',545);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2985,'TYINKRYSSET',545);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3001,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3002,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3003,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3004,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3005,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3006,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3007,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3008,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3011,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3012,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3013,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3014,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3015,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3016,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3017,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3018,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3019,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3021,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3022,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3023,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3024,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3025,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3026,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3027,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3028,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3029,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3030,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3031,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3032,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3033,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3034,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3035,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3036,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3037,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3038,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3039,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3040,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3041,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3042,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3043,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3044,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3045,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3046,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3047,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3048,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3050,'MJØNDALEN',625);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3051,'MJØNDALEN',625);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3053,'STEINBERG',625);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3054,'KROKSTADELVA',625);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3055,'KROKSTADELVA',625);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3056,'SOLBERGELVA',625);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3057,'SOLBERGELVA',625);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3058,'SOLBERGMOEN',625);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3060,'SVELVIK',711);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3061,'SVELVIK',711);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3070,'SANDE I VESTFOLD',713);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3071,'SANDE I VESTFOLD',713);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3072,'SANDE I VESTFOLD',713);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3073,'SANDE I VESTFOLD',713);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3074,'SANDE I VESTFOLD',713);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3075,'BERGER',711);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3076,'SANDE I VESTFOLD',713);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3077,'SANDE I VESTFOLD',713);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3080,'HOLMESTRAND',715);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3081,'HOLMESTRAND',715);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3082,'HOLMESTRAND',715);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3083,'HOLMESTRAND',715);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3084,'HOLMESTRAND',715);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3085,'HOLMESTRAND',715);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3086,'HOLMESTRAND',715);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3087,'HOLMESTRAND',715);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3088,'HOLMESTRAND',715);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3089,'HOLMESTRAND',715);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3090,'HOF',715);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3092,'SUNDBYFOSS',715);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3095,'EIDSFOSS',715);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3101,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3103,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3104,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3105,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3106,'NØTTERØY',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3107,'SEM',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3108,'VEAR',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3109,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3110,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3111,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3112,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3113,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3114,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3115,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3116,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3117,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3118,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3119,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3120,'NØTTERØY',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3121,'NØTTERØY',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3122,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3123,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3124,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3125,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3126,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3127,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3128,'NØTTERØY',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3131,'HUSØYSUND',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3132,'HUSØYSUND',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3133,'DUKEN',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3135,'TORØD',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3137,'TORØD',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3138,'SKALLESTAD',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3139,'SKALLESTAD',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3140,'NØTTERØY',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3141,'KJØPMANNSKJÆR',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3142,'VESTSKOGEN',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3143,'KJØPMANNSKJÆR',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3144,'VEIERLAND',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3145,'TJØME',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3148,'HVASSER',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3150,'TOLVSRØD',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3151,'TOLVSRØD',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3152,'TOLVSRØD',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3153,'TOLVSRØD',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3154,'TOLVSRØD',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3157,'BARKÅKER',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3158,'ANDEBU',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3159,'MELSOMVIK',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3160,'STOKKE',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3161,'STOKKE',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3162,'ANDEBU',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3163,'NØTTERØY',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3164,'REVETAL',716);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3165,'TJØME',729);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3166,'TOLVSRØD',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3167,'ÅSGÅRDSTRAND',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3168,'MELSOMVIK',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3169,'STOKKE',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3170,'SEM',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3171,'SEM',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3172,'VEAR',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3173,'VEAR',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3174,'REVETAL',716);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3175,'RAMNES',716);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3176,'UNDRUMSDAL',716);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3177,'VÅLE',716);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3178,'VÅLE',716);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3179,'ÅSGÅRDSTRAND',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3180,'NYKIRKE',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3181,'HORTEN',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3182,'HORTEN',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3183,'HORTEN',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3184,'BORRE',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3185,'SKOPPUM',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3186,'HORTEN',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3187,'HORTEN',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3188,'HORTEN',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3189,'HORTEN',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3191,'HORTEN',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3192,'HORTEN',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3193,'HORTEN',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3194,'HORTEN',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3195,'SKOPPUM',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3196,'HORTEN',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3199,'BORRE',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3201,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3202,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3203,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3204,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3205,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3206,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3207,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3208,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3209,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3210,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3211,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3212,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3213,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3214,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3215,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3216,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3217,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3218,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3219,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3220,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3221,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3222,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3223,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3224,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3225,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3226,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3227,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3228,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3229,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3230,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3231,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3232,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3233,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3234,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3235,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3236,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3237,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3238,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3239,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3240,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3241,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3242,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3243,'KODAL',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3244,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3245,'KODAL',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3246,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3249,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3251,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3252,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3253,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3254,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3255,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3256,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3257,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3258,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3259,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3260,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3261,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3262,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3263,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3264,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3265,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3267,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3268,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3269,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3270,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3271,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3274,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3275,'SVARSTAD',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3276,'SVARSTAD',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3277,'STEINSHOLT',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3280,'TJODALYNG',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3281,'TJODALYNG',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3282,'KVELDE',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3284,'KVELDE',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3285,'LARVIK',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3290,'STAVERN',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3291,'STAVERN',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3292,'STAVERN',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3294,'STAVERN',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3295,'HELGEROA',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3296,'NEVLUNGHAMN',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3297,'HELGEROA',712);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3300,'HOKKSUND',624);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3301,'HOKKSUND',624);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3302,'HOKKSUND',624);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3303,'HOKKSUND',624);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3320,'VESTFOSSEN',624);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3321,'VESTFOSSEN',624);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3322,'FISKUM',624);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3330,'SKOTSELV',624);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3331,'SKOTSELV',624);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3340,'ÅMOT',623);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3341,'ÅMOT',623);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3342,'ÅMOT',623);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3350,'PRESTFOSS',621);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3351,'PRESTFOSS',621);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3355,'SOLUMSMOEN',621);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3358,'NEDRE EGGEDAL',621);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3359,'EGGEDAL',621);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3360,'GEITHUS',623);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3361,'GEITHUS',623);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3370,'VIKERSUND',623);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3371,'VIKERSUND',623);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3401,'LIER',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3402,'LIER',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3403,'LIER',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3404,'LIER',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3405,'LIER',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3406,'TRANBY',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3407,'TRANBY',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3408,'TRANBY',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3409,'TRANBY',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3410,'SYLLING',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3411,'SYLLING',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3412,'LIERSTRANDA',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3413,'LIER',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3414,'LIERSTRANDA',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3420,'LIERSKOGEN',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3421,'LIERSKOGEN',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3425,'REISTAD',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3426,'GULLAUG',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3427,'GULLAUG',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3428,'GULLAUG',626);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3430,'SPIKKESTAD',627);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3431,'SPIKKESTAD',627);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3440,'RØYKEN',627);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3441,'RØYKEN',627);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3442,'HYGGEN',627);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3470,'SLEMMESTAD',627);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3471,'SLEMMESTAD',627);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3472,'BØDALEN',627);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3474,'ÅROS',627);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3475,'SÆTRE',628);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3476,'SÆTRE',628);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3477,'BÅTSTØ',627);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3478,'NÆRSNES',627);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3480,'FILTVET',628);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3481,'TOFTE',628);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3482,'TOFTE',628);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3483,'KANA',628);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3484,'HOLMSBU',628);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3490,'KLOKKARSTUA',628);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3491,'KLOKKARSTUA',628);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3501,'HØNEFOSS',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3502,'HØNEFOSS',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3503,'HØNEFOSS',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3504,'HØNEFOSS',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3507,'HØNEFOSS',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3510,'HØNEFOSS',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3511,'HØNEFOSS',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3512,'HØNEFOSS',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3513,'HØNEFOSS',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3514,'HØNEFOSS',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3515,'HØNEFOSS',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3516,'HØNEFOSS',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3517,'HØNEFOSS',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3518,'HØNEFOSS',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3519,'HØNEFOSS',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3520,'JEVNAKER',532);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3521,'JEVNAKER',532);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3522,'BJONEROA',534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3523,'NES I ÅDAL',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3524,'NES I ÅDAL',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3525,'HALLINGBY',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3526,'HALLINGBY',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3528,'HEDALEN',540);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3529,'RØYSE',612);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3530,'RØYSE',612);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3531,'KROKKLEIVA',612);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3533,'TYRISTRAND',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3534,'SOKNA',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3535,'KRØDEREN',622);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3536,'NORESUND',622);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3537,'KRØDEREN',622);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3538,'SOLLIHØGDA',612);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3539,'FLÅ',615);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3540,'NESBYEN',616);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3541,'NESBYEN',616);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3544,'TUNHOVD',633);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3550,'GOL',617);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3551,'GOL',617);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3560,'HEMSEDAL',618);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3561,'HEMSEDAL',618);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3570,'ÅL',619);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3571,'ÅL',619);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3575,'HOL',620);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3576,'HOL',620);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3577,'HOVET',620);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3579,'TORPO',619);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3580,'GEILO',620);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3581,'GEILO',620);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3588,'DAGALI',620);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3593,'USTAOSET',620);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3595,'HAUGASTØL',620);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3601,'KONGSBERG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3602,'KONGSBERG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3603,'KONGSBERG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3604,'KONGSBERG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3605,'KONGSBERG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3606,'KONGSBERG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3608,'HEISTADMOEN',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3609,'KONGSBERG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3610,'KONGSBERG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3611,'KONGSBERG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3612,'KONGSBERG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3613,'KONGSBERG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3614,'KONGSBERG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3615,'KONGSBERG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3616,'KONGSBERG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3617,'KONGSBERG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3618,'SKOLLENBORG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3619,'SKOLLENBORG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3620,'FLESBERG',631);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3621,'LAMPELAND',631);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3622,'SVENE',631);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3623,'LAMPELAND',631);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3624,'LYNGDAL I NUMEDAL',631);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3626,'ROLLAG',632);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3627,'VEGGLI',632);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3628,'VEGGLI',632);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3629,'NORE',633);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3630,'RØDBERG',633);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3631,'RØDBERG',633);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3632,'UVDAL',633);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3646,'HVITTINGFOSS',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3647,'HVITTINGFOSS',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3648,'PASSEBEKK',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3650,'TINN AUSTBYGD',826);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3652,'HOVIN I TELEMARK',826);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3656,'ATRÅ',826);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3658,'MILAND',826);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3660,'RJUKAN',826);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3661,'RJUKAN',826);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3665,'SAULAND',827);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3666,'TINN AUSTBYGD',826);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3671,'NOTODDEN',807);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3672,'NOTODDEN',807);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3673,'NOTODDEN',807);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3674,'NOTODDEN',807);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3675,'NOTODDEN',807);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3676,'NOTODDEN',807);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3677,'NOTODDEN',807);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3678,'NOTODDEN',807);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3679,'NOTODDEN',807);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3680,'NOTODDEN',807);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3681,'NOTODDEN',807);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3683,'NOTODDEN',807);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3684,'NOTODDEN',807);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3690,'HJARTDAL',827);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3691,'GRANSHERAD',807);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3692,'SAULAND',827);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3697,'TUDDAL',827);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3701,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3702,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3703,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3704,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3705,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3707,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3708,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3710,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3711,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3712,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3713,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3714,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3715,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3716,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3717,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3718,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3719,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3720,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3721,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3722,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3723,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3724,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3725,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3726,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3727,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3728,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3729,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3730,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3731,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3732,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3733,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3734,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3735,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3736,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3737,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3738,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3739,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3740,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3741,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3742,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3743,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3744,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3746,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3747,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3748,'SILJAN',811);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3749,'SILJAN',811);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3750,'DRANGEDAL',817);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3753,'TØRDAL',817);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3760,'NESLANDSVATN',817);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3766,'SANNIDAL',815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3770,'KRAGERØ',815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3772,'KRAGERØ',815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3780,'SKÅTØY',815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3781,'JOMFRULAND',815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3783,'KRAGERØ SKJÆRGÅRD',815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3785,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3787,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3788,'STABBESTAD',815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3789,'KRAGERØ',815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3790,'HELLE',815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3791,'KRAGERØ',815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3792,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3793,'SANNIDAL',815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3794,'HELLE',815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3795,'DRANGEDAL',817);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3796,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3798,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3800,'BØ I TELEMARK',821);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3801,'BØ I TELEMARK',821);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3802,'BØ I TELEMARK',821);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3803,'BØ I TELEMARK',821);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3804,'BØ I TELEMARK',821);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3805,'BØ I TELEMARK',828);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3810,'GVARV',822);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3811,'HØRTE',822);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3812,'AKKERHAUGEN',822);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3820,'NORDAGUTU',822);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3825,'LUNDE',819);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3830,'ULEFOSS',819);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3831,'ULEFOSS',819);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3832,'LUNDE',819);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3833,'BØ I TELEMARK',821);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3834,'GVARV',822);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3835,'SELJORD',828);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3836,'KVITESEID',829);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3840,'SELJORD',828);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3841,'FLATDAL',828);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3844,'ÅMOTSDAL',828);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3848,'MORGEDAL',829);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3849,'VRÅLIOSEN',829);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3850,'KVITESEID',829);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3853,'VRÅDAL',829);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3854,'NISSEDAL',830);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3855,'TREUNGEN',830);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3864,'RAULAND',834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3870,'FYRESDAL',831);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3880,'DALEN',833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3882,'ÅMDALS VERK',833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3883,'TREUNGEN',830);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3884,'RAULAND',834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3885,'FYRESDAL',831);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3886,'DALEN',833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3887,'VINJE',834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3888,'EDLAND',834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3890,'VINJE',834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3891,'HØYDALSMO',833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3893,'VINJESVINGEN',834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3895,'EDLAND',834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3901,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3902,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3903,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3904,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3905,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3906,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3910,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3911,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3912,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3913,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3914,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3915,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3916,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3917,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3918,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3919,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3920,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3921,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3922,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3924,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3925,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3928,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3929,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3930,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3931,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3933,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3936,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3937,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3939,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3940,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3941,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3942,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3943,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3944,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3946,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3947,'LANGANGEN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3948,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3949,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3950,'BREVIK',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3960,'STATHELLE',814);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3961,'STATHELLE',814);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3962,'STATHELLE',814);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3965,'HERRE',814);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3966,'STATHELLE',814);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3967,'BAMBLE SOMMERRUTE',814);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3970,'LANGESUND',814);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3991,'BREVIK',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3993,'LANGESUND',814);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3994,'LANGESUND',814);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3995,'STATHELLE',814);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3996,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3997,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3998,'PORSGRUNN',805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3999,'HERRE',814);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4001,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4002,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4003,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4004,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4005,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4006,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4007,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4008,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4009,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4010,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4011,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4012,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4013,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4014,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4015,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4016,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4017,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4018,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4019,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4020,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4021,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4022,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4023,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4024,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4025,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4026,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4027,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4028,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4029,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4031,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4032,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4033,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4034,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4035,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4036,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4041,'HAFRSFJORD',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4042,'HAFRSFJORD',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4043,'HAFRSFJORD',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4044,'HAFRSFJORD',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4045,'HAFRSFJORD',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4046,'HAFRSFJORD',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4047,'HAFRSFJORD',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4048,'HAFRSFJORD',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4049,'HAFRSFJORD',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4050,'SOLA',1124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4051,'SOLA',1124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4052,'RØYNEBERG',1124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4053,'RÆGE',1124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4054,'TJELTA',1124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4055,'SOLA',1124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4056,'TANANGER',1124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4057,'TANANGER',1124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4058,'TANANGER',1124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4059,'RØYNEBERG',1124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4064,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4065,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4066,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4067,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4068,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4069,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4070,'RANDABERG',1127);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4071,'RANDABERG',1127);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4072,'RANDABERG',1127);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4073,'RANDABERG',1127);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4076,'VASSØY',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4077,'HUNDVÅG',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4078,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4079,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4081,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4082,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4083,'HUNDVÅG',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4084,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4085,'HUNDVÅG',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4086,'HUNDVÅG',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4087,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4088,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4089,'HAFRSFJORD',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4090,'HAFRSFJORD',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4091,'HAFRSFJORD',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4092,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4093,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4094,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4095,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4096,'RANDABERG',1127);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4097,'SOLA',1124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4098,'TANANGER',1124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4099,'STAVANGER',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4100,'JØRPELAND',1130);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4102,'IDSE',1130);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4103,'JØRPELAND',1130);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4104,'JØRPELAND',1130);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4105,'JØRPELAND',1130);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4110,'FORSAND',1129);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4119,'FORSAND',1129);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4120,'TAU',1130);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4121,'TAU',1130);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4123,'SØR-HIDLE',1130);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4124,'TAU',1130);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4126,'JØRPELAND',1130);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4127,'LYSEBOTN',1129);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4128,'FLØYRLI',1129);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4129,'SONGESAND',1129);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4130,'HJELMELAND',1133);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4134,'JØSENFJORDEN',1133);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4137,'ÅRDAL I RYFYLKE',1133);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4139,'FISTER',1133);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4146,'SKIFTUN',1133);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4148,'HJELMELAND',1133);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4150,'RENNESØY',1142);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4152,'VESTRE ÅMØY',1142);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4153,'BRIMSE',1142);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4154,'AUSTRE ÅMØY',1103);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4156,'MOSTERØY',1142);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4158,'BRU',1142);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4159,'RENNESØY',1142);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4160,'FINNØY',1141);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4161,'FINNØY',1141);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4163,'TALGJE',1141);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4164,'FOGN',1141);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4167,'HELGØY I RYFYLKE',1133);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4168,'BYRE',1141);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4169,'SØRBOKN',1141);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4170,'SJERNARØY',1141);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4173,'NORD-HIDLE',1141);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4174,'SJERNARØY',1141);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4180,'KVITSØY',1144);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4182,'SKARTVEIT',1141);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4187,'OMBO',1141);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4198,'FOLDØY',1134);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4200,'SAUDA',1135);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4201,'SAUDA',1135);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4208,'SAUDASJØEN',1135);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4209,'VANVIK',1134);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4230,'SAND',1134);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4233,'ERFJORD',1134);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4234,'JELSA',1134);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4235,'HEBNES',1134);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4237,'SULDALSOSEN',1134);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4239,'SAND',1134);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4240,'SULDALSOSEN',1134);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4244,'NESFLATEN',1134);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4250,'KOPERVIK',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4260,'TORVASTAD',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4262,'AVALDSNES',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4264,'KVALAVÅG',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4265,'HÅVIK',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4270,'ÅKREHAMN',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4272,'SANDVE',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4274,'STOL',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4275,'SÆVELANDSVIK',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4276,'VEDAVÅGEN',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4280,'SKUDENESHAVN',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4291,'KOPERVIK',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4294,'KOPERVIK',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4295,'VEDAVÅGEN',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4296,'ÅKREHAMN',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4297,'SKUDENESHAVN',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4298,'TORVASTAD',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4299,'AVALDSNES',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4301,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4302,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4303,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4304,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4305,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4306,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4307,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4308,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4309,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4310,'HOMMERSÅK',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4311,'HOMMERSÅK',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4312,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4313,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4314,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4315,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4316,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4317,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4318,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4319,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4320,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4321,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4322,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4323,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4324,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4325,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4326,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4327,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4328,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4329,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4330,'ÅLGÅRD',1122);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4331,'ÅLGÅRD',1122);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4332,'FIGGJO',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4333,'OLTEDAL',1122);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4335,'DIRDAL',1122);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4336,'SANDNES',1122);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4337,'SANDNES',1122);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4338,'SANDNES',1122);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4339,'ÅLGÅRD',1122);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4340,'BRYNE',1121);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4341,'BRYNE',1120);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4342,'UNDHEIM',1121);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4343,'ORRE',1120);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4344,'BRYNE',1121);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4345,'BRYNE',1121);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4346,'BRYNE',1121);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4347,'LYE',1121);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4348,'LYE',1121);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4349,'BRYNE',1121);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4350,'KLEPPE',1120);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4351,'KLEPPE',1120);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4352,'KLEPPE',1120);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4353,'KLEPP STASJON',1120);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4354,'VOLL',1120);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4355,'KVERNALAND',1121);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4356,'KVERNALAND',1121);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4357,'KLEPP STASJON',1120);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4358,'KLEPPE',1120);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4360,'VARHAUG',1119);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4362,'VIGRESTAD',1119);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4363,'BRUSAND',1119);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4364,'SIREVÅG',1119);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4365,'NÆRBØ',1119);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4367,'NÆRBØ',1119);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4368,'VARHAUG',1119);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4369,'VIGRESTAD',1119);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4370,'EGERSUND',1101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4371,'EGERSUND',1101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4372,'EGERSUND',1101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4373,'EGERSUND',1101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4374,'EGERSUND',1101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4375,'HELLVIK',1101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4376,'HELLELAND',1101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4378,'EGERSUND',1101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4379,'EGERSUND',1101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4380,'HAUGE I DALANE',1111);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4381,'HAUGE I DALANE',1111);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4387,'BJERKREIM',1114);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4389,'VIKESÅ',1114);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4391,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4392,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4393,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4394,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4395,'HOMMERSÅK',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4396,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4397,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4398,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4400,'FLEKKEFJORD',1004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4401,'FLEKKEFJORD',1004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4402,'FLEKKEFJORD',1004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4403,'FLEKKEFJORD',1004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4404,'FLEKKEFJORD',1004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4405,'FLEKKEFJORD',1004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4406,'FLEKKEFJORD',1004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4407,'FLEKKEFJORD',1004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4420,'ÅNA-SIRA',1004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4432,'HIDRASUND',1004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4434,'ANDABELØY',1004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4436,'GYLAND',1004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4438,'SIRA',1004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4440,'TONSTAD',1046);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4441,'TONSTAD',1046);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4443,'TJØRHOM',1046);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4460,'MOI',1112);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4462,'HOVSHERAD',1112);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4463,'UALAND',1112);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4465,'MOI',1112);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4473,'KVINLOG',1037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4480,'KVINESDAL',1037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4484,'ØYESTRANDA',1037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4485,'FEDA',1037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4490,'KVINESDAL',1037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4491,'KVINESDAL',1037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4492,'KVINESDAL',1037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4501,'MANDAL',1002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4502,'MANDAL',1002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4503,'MANDAL',1002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4504,'MANDAL',1002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4505,'MANDAL',1002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4506,'MANDAL',1002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4509,'MANDAL',1002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4513,'MANDAL',1002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4514,'MANDAL',1002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4515,'MANDAL',1002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4516,'MANDAL',1002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4517,'MANDAL',1002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4519,'HOLUM',1002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4520,'LINDESNES',1029);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4521,'LINDESNES',1029);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4522,'LINDESNES',1029);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4523,'LINDESNES',1029);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4524,'LINDESNES',1029);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4525,'KONSMO',1027);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4528,'KOLLUNGTVEIT',1027);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4529,'BYREMO',1027);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4532,'ØYSLEBØ',1021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4534,'MARNARDAL',1021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4536,'BJELLAND',1021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4540,'ÅSERAL',1026);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4544,'FOSSDAL',1026);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4550,'FARSUND',1003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4551,'FARSUND',1003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4552,'FARSUND',1003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4553,'FARSUND',1003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4554,'FARSUND',1003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4557,'VANSE',1003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4558,'VANSE',1003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4560,'VANSE',1003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4563,'BORHAUG',1003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4575,'LYNGDAL',1032);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4576,'LYNGDAL',1032);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4577,'LYNGDAL',1032);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4579,'LYNGDAL',1032);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4580,'LYNGDAL',1032);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4586,'KORSHAMN',1032);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4588,'KVÅS',1032);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4590,'SNARTEMO',1034);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4595,'TINGVATN',1034);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4596,'EIKEN',1034);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4604,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4605,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4606,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4608,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4609,'KARDEMOMME BY',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4610,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4611,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4612,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4613,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4614,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4615,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4616,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4617,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4618,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4619,'MOSBY',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4620,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4621,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4622,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4623,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4624,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4625,'FLEKKERØY',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4626,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4628,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4629,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4630,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4631,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4632,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4633,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4634,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4635,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4636,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4637,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4638,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4639,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4640,'SØGNE',1018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4641,'SØGNE',1018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4642,'SØGNE',1018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4643,'SØGNE',1018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4644,'SØGNE',1018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4645,'NODELAND',1017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4646,'FINSLAND',1017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4647,'BRENNÅSEN',1017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4651,'HAMRESANDEN',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4656,'HAMRESANDEN',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4657,'KJEVIK',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4658,'TVEIT',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4659,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4661,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4662,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4663,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4664,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4665,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4666,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4670,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4671,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4672,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4673,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4674,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4675,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4676,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4677,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4678,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4679,'FLEKKERØY',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4681,'SØGNE',1018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4682,'SØGNE',1018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4683,'SØGNE',1018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4684,'BRENNÅSEN',1017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4685,'NODELAND',1017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4686,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4687,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4688,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4689,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4691,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4693,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4694,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4695,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4696,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4697,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4698,'KRISTIANSAND S',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4699,'TVEIT',1001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4700,'VENNESLA',1014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4701,'VENNESLA',1014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4702,'VENNESLA',1014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4703,'VENNESLA',1014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4705,'ØVREBØ',1014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4706,'VENNESLA',1014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4707,'VENNESLA',1014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4708,'VENNESLA',1014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4715,'ØVREBØ',1014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4720,'HÆGELAND',1014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4721,'HÆGELAND',1014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4724,'IVELAND',935);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4725,'IVELAND',935);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4730,'VATNESTRØM',935);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4733,'EVJE',937);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4734,'EVJE',937);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4735,'EVJE',937);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4737,'HORNNES',937);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4741,'BYGLANDSFJORD',938);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4742,'GRENDI',938);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4744,'BYGLAND',938);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4745,'BYGLAND',938);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4747,'VALLE',940);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4748,'RYSSTAD',940);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4754,'BYKLE',941);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4755,'HOVDEN I SETESDAL',941);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4756,'HOVDEN I SETESDAL',941);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4760,'BIRKELAND',928);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4766,'HEREFOSS',928);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4768,'ENGESLAND',928);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4770,'HØVÅG',926);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4780,'BREKKESTØ',926);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4790,'LILLESAND',926);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4791,'LILLESAND',926);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4792,'LILLESAND',926);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4793,'HØVÅG',926);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4794,'LILLESAND',926);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4795,'BIRKELAND',928);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4801,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4802,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4803,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4804,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4808,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4809,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4810,'EYDEHAVN',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4812,'KONGSHAVN',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4815,'SALTRØD',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4816,'KOLBJØRNSVIK',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4817,'HIS',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4818,'FÆRVIK',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4820,'FROLAND',919);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4821,'RYKENE',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4823,'NEDENES',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4824,'BJORBEKK',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4825,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4827,'FROLANDS VERK',919);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4828,'MJÅVATN',919);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4830,'HYNNEKLEIV',919);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4832,'MYKLAND',919);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4834,'RISDAL',919);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4836,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4838,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4839,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4841,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4842,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4843,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4844,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4846,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4847,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4848,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4849,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4851,'SALTRØD',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4852,'FÆRVIK',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4853,'HIS',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4854,'NEDENES',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4855,'FROLAND',919);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4856,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4857,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4858,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4859,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4861,'ARENDAL',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4862,'EYDEHAVN',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4863,'NELAUG',929);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4864,'ÅMLI',929);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4865,'ÅMLI',929);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4868,'SELÅSVATN',929);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4869,'DØLEMO',929);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4870,'FEVIK',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4876,'GRIMSTAD',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4877,'GRIMSTAD',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4878,'GRIMSTAD',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4879,'GRIMSTAD',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4884,'GRIMSTAD',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4885,'GRIMSTAD',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4886,'GRIMSTAD',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4887,'GRIMSTAD',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4888,'HOMBORSUND',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4889,'FEVIK',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4891,'GRIMSTAD',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4892,'GRIMSTAD',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4893,'GRIMSTAD',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4894,'GRIMSTAD',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4896,'GRIMSTAD',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4898,'GRIMSTAD',904);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4900,'TVEDESTRAND',914);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4901,'TVEDESTRAND',914);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4902,'TVEDESTRAND',914);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4903,'TVEDESTRAND',914);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4904,'TVEDESTRAND',914);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4905,'TVEDESTRAND',914);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4909,'SONGE',914);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4910,'LYNGØR',914);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4912,'GJEVING',914);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4915,'VESTRE SANDØYA',914);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4916,'BORØY',914);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4920,'STAUBØ',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4934,'NES VERK',914);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4950,'RISØR',901);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4951,'RISØR',901);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4952,'RISØR',901);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4953,'RISØR',901);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4955,'RISØR',901);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4956,'RISØR',901);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4957,'RISØR',901);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4971,'SUNDEBRU',911);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4972,'GJERSTAD',911);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4973,'VEGÅRSHEI',912);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4974,'SØNDELED',901);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4980,'GJERSTAD',911);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4985,'VEGÅRSHEI',912);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4990,'SØNDELED',901);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4993,'SUNDEBRU',911);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4994,'AKLAND',901);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5003,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5004,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5005,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5006,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5007,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5008,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5009,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5010,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5011,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5012,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5013,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5014,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5015,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5016,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5017,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5018,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5019,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5020,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5021,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5022,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5031,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5032,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5033,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5034,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5035,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5036,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5037,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5038,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5039,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5041,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5042,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5043,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5045,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5052,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5053,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5054,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5055,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5056,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5057,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5058,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5059,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5063,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5067,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5068,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5072,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5073,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5075,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5081,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5082,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5089,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5093,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5094,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5096,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5097,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5098,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5099,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5101,'EIDSVÅGNESET',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5104,'EIDSVÅG I ÅSANE',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5105,'EIDSVÅG I ÅSANE',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5106,'ØVRE ERVIK',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5107,'SALHUS',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5108,'HORDVIK',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5109,'HYLKJE',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5111,'BREISTEIN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5113,'TERTNES',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5114,'TERTNES',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5115,'ULSET',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5116,'ULSET',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5117,'ULSET',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5118,'ULSET',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5119,'ULSET',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5121,'ULSET',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5122,'MORVIK',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5124,'MORVIK',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5130,'NYBORG',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5131,'NYBORG',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5132,'NYBORG',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5134,'FLAKTVEIT',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5135,'FLAKTVEIT',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5136,'MJØLKERÅEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5137,'MJØLKERÅEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5141,'FYLLINGSDALEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5142,'FYLLINGSDALEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5143,'FYLLINGSDALEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5144,'FYLLINGSDALEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5145,'FYLLINGSDALEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5146,'FYLLINGSDALEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5147,'FYLLINGSDALEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5148,'FYLLINGSDALEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5151,'STRAUMSGREND',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5152,'BØNES',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5153,'BØNES',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5154,'BØNES',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5155,'BØNES',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5160,'LAKSEVÅG',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5161,'LAKSEVÅG',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5162,'LAKSEVÅG',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5163,'LAKSEVÅG',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5164,'LAKSEVÅG',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5165,'LAKSEVÅG',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5170,'BJØRNDALSTRÆ',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5171,'LODDEFJORD',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5172,'LODDEFJORD',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5173,'LODDEFJORD',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5174,'MATHOPEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5176,'LODDEFJORD',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5177,'BJØRØYHAMN',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5178,'LODDEFJORD',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5179,'GODVIK',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5183,'OLSVIK',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5184,'OLSVIK',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5200,'OS',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5201,'OS',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5202,'OS',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5203,'OS',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5206,'OS',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5207,'SØFTELAND',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5208,'OS',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5209,'OS',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5210,'OS',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5211,'OS',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5212,'SØFTELAND',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5215,'LYSEKLOSTER',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5216,'LEPSØY',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5217,'HAGAVIK',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5218,'NORDSTRØNO',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5221,'NESTTUN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5222,'NESTTUN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5223,'NESTTUN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5224,'NESTTUN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5225,'NESTTUN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5226,'NESTTUN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5227,'NESTTUN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5228,'NESTTUN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5229,'KALANDSEIDET',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5230,'PARADIS',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5231,'PARADIS',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5232,'PARADIS',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5235,'RÅDAL',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5236,'RÅDAL',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5237,'RÅDAL',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5238,'RÅDAL',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5239,'RÅDAL',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5243,'FANA',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5244,'FANA',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5251,'SØREIDGREND',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5252,'SØREIDGREND',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5253,'SANDSLI',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5254,'SANDSLI',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5257,'KOKSTAD',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5258,'BLOMSTERDALEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5259,'HJELLESTAD',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5260,'INDRE ARNA',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5261,'INDRE ARNA',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5262,'ARNATVEIT',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5263,'TRENGEREID',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5264,'GARNES',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5265,'YTRE ARNA',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5267,'ESPELAND',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5268,'HAUKELAND',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5281,'VALESTRANDSFOSSEN',1253);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5282,'LONEVÅG',1253);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5283,'FOTLANDSVÅG',1253);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5284,'TYSSEBOTNEN',1253);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5285,'BRUVIK',1253);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5286,'HAUS',1253);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5291,'VALESTRANDSFOSSEN',1253);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5293,'LONEVÅG',1253);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5299,'HAUS',1253);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5300,'KLEPPESTØ',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5301,'KLEPPESTØ',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5302,'STRUSSHAMN',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5303,'FOLLESE',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5304,'HETLEVIK',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5305,'FLORVÅG',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5306,'ERDAL',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5307,'ASK',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5308,'KLEPPESTØ',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5309,'KLEPPESTØ',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5310,'HAUGLANDSHELLA',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5314,'KJERRGARDEN',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5315,'HERDLA',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5318,'STRUSSHAMN',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5319,'KLEPPESTØ',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5321,'KLEPPESTØ',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5322,'KLEPPESTØ',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5323,'KLEPPESTØ',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5325,'FOLLESE',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5326,'ASK',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5327,'HAUGLANDSHELLA',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5329,'FLORVÅG',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5331,'RONG',1259);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5333,'TJELDSTØ',1259);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5334,'HELLESØY',1259);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5335,'HERNAR',1259);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5336,'TJELDSTØ',1259);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5337,'RONG',1259);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5341,'STRAUME',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5342,'STRAUME',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5343,'STRAUME',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5345,'KNARREVIK',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5346,'ÅGOTNES',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5347,'ÅGOTNES',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5350,'BRATTHOLMEN',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5353,'STRAUME',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5354,'STRAUME',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5355,'KNARREVIK',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5357,'FJELL',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5358,'FJELL',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5360,'KOLLTVEIT',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5363,'ÅGOTNES',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5365,'TURØY',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5366,'MISJE',1246);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5371,'SKOGSVÅG',1245);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5374,'STEINSLAND',1245);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5378,'KLOKKARVIK',1245);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5379,'STEINSLAND',1245);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5380,'TÆLAVÅG',1245);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5381,'GLESVÆR',1245);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5382,'SKOGSVÅG',1245);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5384,'TORANGSVÅG',1244);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5385,'BAKKASUND',1244);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5387,'MØKSTER',1244);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5388,'LITLAKALSØY',1244);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5392,'STOREBØ',1244);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5393,'STOREBØ',1244);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5394,'KOLBEINSVIK',1244);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5396,'VESTRE VINNESVÅG',1244);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5397,'BEKKJARVIK',1244);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5398,'STOLMEN',1244);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5399,'BEKKJARVIK',1244);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5401,'STORD',1221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5402,'STORD',1221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5403,'STORD',1221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5404,'STORD',1221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5406,'STORD',1221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5407,'STORD',1221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5408,'SAGVÅG',1221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5409,'STORD',1221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5410,'SAGVÅG',1221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5411,'STORD',1221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5412,'STORD',1221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5413,'HUGLO',1221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5414,'STORD',1221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5415,'STORD',1221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5416,'STORD',1221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5417,'STORD',1221);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5418,'FITJAR',1222);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5419,'FITJAR',1222);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5420,'RUBBESTADNESET',1219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5423,'BRANDASUND',1219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5427,'URANGSVÅG',1219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5428,'FOLDRØYHAMN',1219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5430,'BREMNES',1219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5437,'FINNÅS',1219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5440,'MOSTERHAMN',1219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5443,'BØMLO',1219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5444,'ESPEVÆR',1219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5445,'BREMNES',1219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5447,'MOSTERHAMN',1219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5449,'BØMLO',1219);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5450,'SUNDE I SUNNHORDLAND',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5451,'VALEN',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5452,'SANDVOLL',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5453,'UTÅKER',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5454,'SÆBØVIK',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5455,'HALSNØY KLOSTER',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5457,'HØYLANDSBYGD',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5458,'ARNAVIK',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5459,'FJELBERG',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5460,'HUSNES',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5462,'HERØYSUNDET',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5463,'USKEDALEN',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5464,'DIMMELSVIK',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5465,'USKEDALEN',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5470,'ROSENDAL',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5472,'SEIMSFOSS',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5473,'SNILSTVEITØY',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5474,'LØFALLSTRAND',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5475,'ÆNES',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5476,'MAURANGER',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5480,'HUSNES',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5484,'SÆBØVIK',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5486,'ROSENDAL',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5498,'MATRE',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5499,'ÅKRA',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5501,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5502,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5503,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5504,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5505,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5506,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5507,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5508,'KARMSUND',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5509,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5511,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5512,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5514,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5515,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5516,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5517,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5518,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5519,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5521,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5522,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5523,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5525,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5527,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5528,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5529,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5531,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5532,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5533,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5534,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5535,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5536,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5537,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5538,'HAUGESUND',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5541,'KOLNES',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5542,'KARMSUND',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5544,'VORMEDAL',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5545,'VORMEDAL',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5546,'RØYKSUND',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5547,'UTSIRA',1151);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5548,'FEØY',1149);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5549,'RØVÆR',1106);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5550,'SVEIO',1216);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5551,'AUKLANDSHAMN',1216);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5554,'VALEVÅG',1216);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5555,'FØRDE I HORDALAND',1216);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5559,'SVEIO',1216);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5560,'NEDSTRAND',1146);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5561,'BOKN',1145);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5563,'FØRRESFJORDEN',1146);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5565,'TYSVÆRVÅG',1146);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5566,'HERVIK',1146);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5567,'SKJOLDASTRAUMEN',1146);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5568,'VIKEBYGD',1160);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5570,'AKSDAL',1146);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5574,'SKJOLD',1160);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5575,'AKSDAL',1146);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5576,'ØVRE VATS',1160);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5578,'NEDRE VATS',1160);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5580,'ØLEN',1160);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5582,'ØLENSVÅG',1160);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5583,'VIKEDAL',1160);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5584,'BJOA',1160);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5585,'SANDEID',1160);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5586,'VIKEDAL',1160);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5588,'ØLEN',1160);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5589,'SANDEID',1160);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5590,'ETNE',1211);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5591,'ETNE',1211);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5593,'SKÅNEVIK',1211);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5594,'SKÅNEVIK',1211);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5595,'FØRRESFJORDEN',1146);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5596,'MARKHUS',1211);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5598,'FJÆRA',1211);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5600,'NORHEIMSUND',1238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5601,'NORHEIMSUND',1238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5602,'NORHEIMSUND',1238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5604,'ØYSTESE',1238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5605,'ÅLVIK',1238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5610,'ØYSTESE',1238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5612,'STEINSTØ',1238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5614,'ÅLVIK',1238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5620,'TØRVIKBYGD',1238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5626,'KYSNESSTRAND',1227);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5627,'JONDAL',1227);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5628,'HERAND',1227);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5629,'JONDAL',1227);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5630,'STRANDEBARM',1238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5632,'OMASTRAND',1238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5635,'HATLESTRAND',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5636,'VARALDSØY',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5637,'ØLVE',1224);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5640,'EIKELANDSOSEN',1241);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5641,'FUSA',1241);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5642,'HOLMEFJORD',1241);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5643,'STRANDVIK',1241);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5645,'SÆVAREID',1241);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5646,'NORDTVEITGREND',1241);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5647,'BALDERSHEIM',1241);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5649,'EIKELANDSOSEN',1241);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5650,'TYSSE',1242);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5652,'ÅRLAND',1242);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5653,'ÅRLAND',1242);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5680,'TYSNES',1223);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5683,'REKSTEREN',1223);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5685,'UGGDAL',1223);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5687,'FLATRÅKER',1223);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5690,'LUNDEGREND',1223);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5693,'ÅRBAKKA',1223);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5694,'ONARHEIM',1223);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5695,'UGGDAL',1223);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5696,'TYSNES',1223);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5700,'VOSS',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5701,'VOSS',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5702,'VOSS',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5703,'VOSS',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5704,'VOSS',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5705,'VOSS',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5706,'VOSS',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5707,'EVANGER',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5708,'VOSS',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5709,'VOSS',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5710,'SKULESTADMO',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5711,'SKULESTADMO',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5712,'VOSSESTRAND',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5713,'VOSSESTRAND',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5714,'VOSS',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5715,'STALHEIM',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5718,'MYRDAL',1421);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5719,'FINSE',1233);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5721,'DALEKVAM',1251);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5722,'DALEKVAM',1251);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5723,'BOLSTADØYRI',1235);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5724,'STANGHELLE',1251);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5725,'VAKSDAL',1251);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5726,'VAKSDAL',1251);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5727,'STAMNES',1251);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5728,'EIDSLANDET',1251);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5729,'MODALEN',1252);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5730,'ULVIK',1233);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5731,'ULVIK',1233);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5733,'GRANVIN',1234);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5734,'VALLAVIK',1233);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5736,'GRANVIN',1234);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5741,'AURLAND',1421);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5742,'FLÅM',1421);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5743,'FLÅM',1421);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5745,'AURLAND',1421);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5746,'UNDREDAL',1421);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5747,'GUDVANGEN',1421);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5748,'STYVI',1421);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5749,'BAKKA',1421);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5750,'ODDA',1228);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5751,'ODDA',1228);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5752,'ODDA',1228);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5760,'RØLDAL',1228);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5763,'SKARE',1228);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5770,'TYSSEDAL',1228);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5773,'HOVLAND',1231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5776,'NÅ',1231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5777,'GRIMO',1231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5778,'UTNE',1231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5779,'UTNE',1231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5780,'KINSARVIK',1231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5781,'LOFTHUS',1231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5782,'KINSARVIK',1231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5783,'EIDFJORD',1232);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5784,'ØVRE EIDFJORD',1232);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5785,'VØRINGSFOSS',1232);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5786,'EIDFJORD',1232);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5787,'LOFTHUS',1231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5788,'KINSARVIK',1231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5803,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5804,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5805,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5806,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5807,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5808,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5809,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5810,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5811,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5812,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5813,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5814,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5815,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5816,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5817,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5818,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5819,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5821,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5822,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5824,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5825,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5828,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5829,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5831,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5835,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5836,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5838,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5841,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5845,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5847,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5848,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5849,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5851,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5852,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5853,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5854,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5857,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5858,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5859,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5861,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5862,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5863,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5864,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5868,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5869,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5871,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5872,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5873,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5876,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5877,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5878,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5879,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5881,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5882,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5884,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5886,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5887,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5888,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5889,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5892,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5893,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5895,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5896,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5899,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5902,'ISDALSTØ',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5903,'ISDALSTØ',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5904,'ISDALSTØ',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5906,'FREKHAUG',1256);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5907,'ALVERSUND',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5908,'ISDALSTØ',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5911,'ALVERSUND',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5912,'SEIM',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5913,'EIKANGERVÅG',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5914,'ISDALSTØ',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5915,'HJELMÅS',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5916,'ISDALSTØ',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5917,'ROSSLAND',1256);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5918,'FREKHAUG',1256);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5919,'FREKHAUG',1256);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5931,'MANGER',1260);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5936,'MANGER',1260);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5937,'BØVÅGEN',1260);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5938,'SÆBØVÅGEN',1260);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5939,'SLETTA',1260);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5941,'AUSTRHEIM',1264);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5943,'AUSTRHEIM',1264);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5947,'FEDJE',1265);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5948,'FEDJE',1265);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5951,'LINDÅS',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5952,'FONNES',1264);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5953,'FONNES',1264);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5954,'MONGSTAD',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5955,'LINDÅS',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5956,'HUNDVIN',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5957,'MYKING',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5960,'DALSØYRA',1411);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5961,'BREKKE',1411);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5962,'BJORDAL',1416);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5966,'EIVINDVIK',1411);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5967,'EIVINDVIK',1411);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5970,'BYRKNESØY',1411);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5977,'ÅNNELAND',1411);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5978,'MJØMNA',1411);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5979,'BYRKNESØY',1411);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5981,'MASFJORDNES',1266);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5983,'HAUGSVÆR',1266);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5984,'MATREDAL',1266);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5986,'HOSTELAND',1266);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5987,'HOSTELAND',1266);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5991,'OSTEREIDET',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5993,'OSTEREIDET',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5994,'VIKANES',1263);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6001,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6002,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6003,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6004,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6005,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6006,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6007,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6008,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6009,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6010,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6011,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6012,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6013,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6014,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6015,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6016,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6017,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6018,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6019,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6020,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6021,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6022,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6023,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6024,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6025,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6026,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6028,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6030,'LANGEVÅG',1531);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6035,'FISKARSTRAND',1531);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6036,'MAUSEIDVÅG',1531);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6037,'EIDSNES',1531);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6038,'FISKARSTRAND',1531);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6039,'LANGEVÅG',1531);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6040,'VIGRA',1532);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6045,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6046,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6047,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6050,'VALDERØYA',1532);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6051,'VALDERØYA',1532);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6052,'GISKE',1532);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6055,'GODØYA',1532);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6057,'ELLINGSØY',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6058,'VALDERØYA',1532);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6059,'VIGRA',1532);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6060,'HAREID',1517);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6062,'BRANDAL',1517);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6063,'HJØRUNGAVÅG',1517);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6064,'HADDAL',1516);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6065,'ULSTEINVIK',1516);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6067,'ULSTEINVIK',1516);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6068,'EIKSUND',1516);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6069,'HAREID',1517);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6070,'TJØRVÅG',1515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6076,'MOLTUSTRANDA',1515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6080,'GURSKØY',1515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6082,'GURSKEN',1514);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6083,'GJERDSVIKA',1514);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6084,'LARSNES',1514);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6085,'LARSNES',1514);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6087,'KVAMSØY',1514);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6089,'SANDSHAMN',1514);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6090,'FOSNAVÅG',1515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6091,'FOSNAVÅG',1515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6092,'FOSNAVÅG',1515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6094,'LEINØY',1515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6095,'BØLANDET',1515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6096,'RUNDE',1515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6098,'NERLANDSØY',1515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6099,'FOSNAVÅG',1515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6100,'VOLDA',1519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6101,'VOLDA',1519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6102,'VOLDA',1519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6103,'VOLDA',1519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6104,'VOLDA',1519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6105,'VOLDA',1519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6106,'VOLDA',1519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6110,'AUSTEFJORDEN',1519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6120,'FOLKESTAD',1519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6121,'FOLKESTAD',1519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6133,'LAUVSTAD',1519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6139,'FISKÅ',1511);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6140,'SYVDE',1511);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6141,'ROVDE',1511);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6142,'EIDSÅ',1511);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6143,'FISKÅ',1511);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6144,'SYLTE',1511);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6146,'ÅHEIM',1511);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6149,'ÅRAM',1511);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6150,'ØRSTA',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6151,'ØRSTA',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6152,'ØRSTA',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6153,'ØRSTA',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6154,'ØRSTA',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6155,'ØRSTA',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6156,'ØRSTA',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6160,'HOVDEBYGDA',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6161,'HOVDEBYGDA',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6165,'SÆBØ',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6166,'SÆBØ',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6170,'VARTDAL',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6174,'BARSTADVIK',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6183,'TRANDAL',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6184,'STORESTANDAL',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6190,'BJØRKE',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6196,'NORANGSFJORDEN',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6200,'STRANDA',1525);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6201,'STRANDA',1525);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6210,'VALLDAL',1524);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6211,'VALLDAL',1524);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6212,'LIABYGDA',1525);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6213,'TAFJORD',1524);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6214,'NORDDAL',1524);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6215,'EIDSDAL',1524);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6216,'GEIRANGER',1525);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6218,'HELLESYLT',1525);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6220,'STRAUMGJERDE',1528);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6222,'IKORNNES',1528);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6224,'HUNDEIDVIK',1528);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6230,'SYKKYLVEN',1528);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6238,'STRAUMGJERDE',1528);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6239,'SYKKYLVEN',1528);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6240,'ØRSKOG',1523);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6249,'ØRSKOG',1523);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6250,'STORDAL',1526);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6259,'STORDAL',1526);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6260,'SKODJE',1529);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6263,'SKODJE',1529);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6264,'TENNFJORD',1534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6265,'VATNE',1534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6270,'BRATTVÅG',1534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6272,'HILDRE',1534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6280,'SØVIK',1534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6281,'SØVIK',1534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6282,'BRATTVÅG',1534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6283,'VATNE',1534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6285,'STOREKALVØY',1534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6290,'HARAMSØY',1534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6292,'KJERSTAD',1534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6293,'LONGVA',1534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6294,'FJØRTOFT',1534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6300,'ÅNDALSNES',1539);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6301,'ÅNDALSNES',1539);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6310,'VEBLUNGSNES',1539);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6315,'INNFJORDEN',1539);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6320,'ISFJORDEN',1539);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6330,'VERMA',1539);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6339,'ISFJORDEN',1539);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6350,'EIDSBYGDA',1539);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6360,'ÅFARNES',1539);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6363,'MITTET',1539);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6364,'VISTDAL',1543);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6386,'MÅNDALEN',1539);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6387,'VÅGSTRANDA',1539);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6388,'VÅGSTRANDA',1539);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6390,'VESTNES',1535);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6391,'TRESFJORD',1535);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6392,'VIKEBUKT',1535);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6393,'TOMREFJORD',1535);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6394,'FIKSDAL',1535);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6395,'REKDAL',1535);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6396,'VIKEBUKT',1535);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6397,'TRESFJORD',1535);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6398,'TOMREFJORD',1535);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6399,'VESTNES',1535);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6401,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6402,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6403,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6404,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6405,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6407,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6408,'AUREOSEN',1548);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6409,'MOLDE',1547);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6410,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6411,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6412,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6413,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6414,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6415,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6416,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6418,'SEKKEN',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6419,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6421,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6422,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6423,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6425,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6429,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6430,'BUD',1548);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6431,'BUD',1548);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6433,'HUSTAD',1548);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6434,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6435,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6436,'MOLDE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6440,'ELNESVÅGEN',1548);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6443,'TORNES I ROMSDAL',1548);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6444,'FARSTAD',1548);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6445,'MALMEFJORDEN',1548);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6447,'ELNESVÅGEN',1548);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6450,'HJELSET',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6453,'KLEIVE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6454,'HJELSET',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6455,'KORTGARDEN',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6456,'SKÅLA',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6457,'BOLSØYA',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6460,'EIDSVÅG I ROMSDAL',1543);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6461,'EIDSVÅG I ROMSDAL',1543);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6462,'RAUDSAND',1543);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6470,'ERESFJORD',1543);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6472,'EIKESDAL',1543);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6475,'MIDSUND',1545);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6476,'MIDSUND',1545);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6480,'AUKRA',1547);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6481,'AUKRA',1547);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6483,'ONA',1546);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6484,'SANDØY',1546);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6486,'ORTEN',1546);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6487,'HARØY',1546);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6488,'MYKLEBOST',1546);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6490,'EIDE',1551);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6493,'LYNGSTAD',1551);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6494,'VEVANG',1551);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6499,'EIDE',1551);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6501,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6502,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6503,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6504,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6506,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6507,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6508,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6509,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6510,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6511,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6512,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6514,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6515,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6516,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6517,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6518,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6520,'FREI',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6521,'FREI',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6522,'FREI',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6523,'FREI',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6524,'FREI',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6525,'FREI',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6529,'FREI',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6530,'AVERØY',1554);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6531,'AVERØY',1554);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6532,'AVERØY',1554);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6533,'AVERØY',1554);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6538,'AVERØY',1554);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6539,'AVERØY',1554);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6570,'SMØLA',1573);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6571,'SMØLA',1573);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6590,'TUSTNA',1576);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6600,'SUNNDALSØRA',1563);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6601,'SUNNDALSØRA',1563);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6610,'ØKSENDAL',1563);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6611,'FURUGRENDA',1563);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6612,'GRØA',1563);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6613,'GJØRA',1563);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6620,'ÅLVUNDEID',1563);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6622,'ÅLVUNDFJORD',1563);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6628,'MEISINGSET',1560);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6629,'TORJULVÅGEN',1560);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6630,'TINGVOLL',1560);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6631,'BATNFJORDSØRA',1557);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6633,'GJEMNES',1557);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6636,'ANGVIK',1557);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6637,'FLEMMA',1557);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6638,'OSMARKA',1557);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6639,'TORVIKBUKT',1557);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6640,'KVANNE',1566);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6642,'STANGVIK',1566);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6643,'BØFJORDEN',1566);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6644,'BÆVERFJORD',1566);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6645,'TODALEN',1566);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6650,'SURNADAL',1566);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6652,'SURNA',1566);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6653,'ØVRE SURNADAL',1566);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6655,'VINDØLA',1566);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6656,'SURNADAL',1566);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6657,'RINDAL',5061);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6658,'RINDALSSKOGEN',5061);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6659,'RINDAL',5061);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6670,'ØYDEGARD',1560);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6674,'KVISVIK',1560);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6680,'HALSANAUSTAN',1571);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6683,'VÅGLAND',1571);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6686,'VALSØYBOTN',1571);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6687,'VALSØYFJORD',1571);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6688,'VÅGLAND',1571);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6689,'AURE',1576);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6690,'AURE',1576);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6693,'MJOSUNDET',1576);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6694,'FOLDFJORDEN',1576);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6697,'VIHALS',1576);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6698,'LESUND',1576);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6699,'KJØRSVIKBUGEN',1576);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6700,'MÅLØY',1439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6701,'MÅLØY',1439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6702,'MÅLØY',1439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6703,'MÅLØY',1439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6704,'DEKNEPOLLEN',1439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6707,'RAUDEBERG',1439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6708,'BRYGGJA',1439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6710,'RAUDEBERG',1439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6711,'BRYGGJA',1439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6713,'ALMENNINGEN',1439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6714,'SILDA',1439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6715,'BARMEN',1441);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6716,'HUSEVÅG',1439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6717,'FLATRAKET',1441);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6718,'DEKNEPOLLEN',1439);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6719,'SKATESTRAUMEN',1438);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6721,'SVELGEN',1438);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6723,'SVELGEN',1438);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6726,'BREMANGER',1438);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6727,'BREMANGER',1438);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6728,'KALVÅG',1438);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6729,'KALVÅG',1438);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6730,'DAVIK',1438);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6731,'DAVIK',1438);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6734,'RUGSUND',1438);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6737,'ÅLFOTEN',1438);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6740,'SELJE',1441);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6741,'SELJE',1441);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6750,'STADLANDET',1441);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6751,'STADLANDET',1441);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6761,'HORNINDAL',1444);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6763,'HORNINDAL',1444);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6770,'NORDFJORDEID',1443);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6771,'NORDFJORDEID',1443);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6772,'NORDFJORDEID',1443);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6776,'KJØLSDALEN',1443);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6777,'STÅRHEIM',1443);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6778,'LOTE',1443);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6779,'HOLMØYANE',1443);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6781,'STRYN',1449);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6782,'STRYN',1449);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6783,'STRYN',1449);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6784,'OLDEN',1449);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6788,'OLDEN',1449);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6789,'LOEN',1449);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6791,'OLDEDALEN',1449);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6792,'BRIKSDALSBRE',1449);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6793,'INNVIK',1449);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6795,'BLAKSÆTER',1449);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6796,'HOPLAND',1449);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6797,'UTVIK',1449);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6798,'HJELLEDALEN',1449);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6799,'OPPSTRYN',1449);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6800,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6801,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6802,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6803,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6804,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6805,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6806,'NAUSTDAL',1433);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6807,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6808,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6809,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6810,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6811,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6812,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6813,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6814,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6815,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6817,'NAUSTDAL',1433);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6818,'HAUKEDALEN',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6819,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6821,'SANDANE',1445);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6822,'SANDANE',1445);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6823,'SANDANE',1445);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6826,'BYRKJELO',1445);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6827,'BREIM',1445);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6828,'HESTENESØYRA',1445);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6829,'HYEN',1445);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6841,'SKEI I JØLSTER',1431);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6843,'SKEI I JØLSTER',1431);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6847,'VASSENDEN',1431);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6848,'FJÆRLAND',1420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6851,'SOGNDAL',1420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6852,'SOGNDAL',1420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6853,'SOGNDAL',1420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6854,'KAUPANGER',1420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6855,'FRØNNINGEN',1422);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6856,'SOGNDAL',1420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6858,'FARDAL',1420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6859,'SLINDE',1420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6861,'LEIKANGER',1419);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6863,'LEIKANGER',1419);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6866,'GAUPNE',1426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6868,'GAUPNE',1426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6869,'HAFSLO',1426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6870,'ORNES',1426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6871,'JOSTEDAL',1426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6872,'LUSTER',1426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6873,'MARIFJØRA',1426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6875,'HØYHEIMSVIK',1426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6876,'SKJOLDEN',1426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6877,'FORTUN',1426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6878,'VEITASTROND',1426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6879,'SOLVORN',1426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6881,'ÅRDALSTANGEN',1424);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6882,'ØVRE ÅRDAL',1424);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6884,'ØVRE ÅRDAL',1424);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6885,'ÅRDALSTANGEN',1424);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6886,'LÆRDAL',1422);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6887,'LÆRDAL',1422);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6888,'BORGUND',1422);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6891,'VIK I SOGN',1417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6893,'VIK I SOGN',1417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6894,'VANGSNES',1417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6895,'FEIOS',1417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6896,'FRESVIK',1417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6898,'BALESTRAND',1418);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6899,'BALESTRAND',1418);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6900,'FLORØ',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6901,'FLORØ',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6902,'FLORØ',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6903,'FLORØ',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6905,'FLORØ',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6906,'FLORØ',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6907,'FLORØ',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6908,'FLORØ',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6909,'FLORØ',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6912,'KINN',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6914,'SVANØYBUKT',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6915,'ROGNALDSVÅG',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6916,'BAREKSTAD',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6917,'BATALDEN',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6918,'SØR-SKORPA',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6919,'TANSØY',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6921,'HARDBAKKE',1412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6924,'HARDBAKKE',1412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6926,'KRAKHELLA',1412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6927,'YTRØYGREND',1412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6928,'KOLGROV',1412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6929,'HERSVIKBYGDA',1412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6940,'EIKEFJORD',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6941,'EIKEFJORD',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6942,'SVORTEVIK',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6944,'STAVANG',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6946,'LAVIK',1416);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6947,'LAVIK',1416);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6951,'LEIRVIK I SOGN',1413);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6953,'LEIRVIK I SOGN',1413);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6957,'HYLLESTAD',1413);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6958,'SØRBØVÅG',1413);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6961,'DALE I SUNNFJORD',1429);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6963,'DALE I SUNNFJORD',1429);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6964,'KORSSUND',1429);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6966,'GUDDAL',1429);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6967,'HELLEVIK I FJALER',1429);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6968,'FLEKKE',1429);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6969,'STRAUMSNES',1429);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6971,'SANDE I SUNNFJORD',1430);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6973,'SANDE I SUNNFJORD',1430);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6975,'SKILBREI',1430);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6977,'BYGSTAD',1430);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6978,'VIKSDALEN',1430);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6980,'ASKVOLL',1428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6981,'HOLMEDAL',1428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6982,'HOLMEDAL',1428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6983,'KVAMMEN',1428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6984,'STONGFJORDEN',1428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6985,'ATLØY',1428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6986,'VÆRLANDET',1428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6987,'BULANDET',1428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6988,'ASKVOLL',1428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6991,'HØYANGER',1416);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6993,'HØYANGER',1416);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6995,'KYRKJEBØ',1416);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6996,'VADHEIM',1416);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7003,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7004,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7005,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7006,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7010,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7011,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7012,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7013,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7014,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7015,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7016,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7017,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7018,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7019,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7020,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7021,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7022,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7023,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7024,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7025,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7026,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7027,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7028,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7029,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7030,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7031,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7032,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7033,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7034,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7035,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7036,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7037,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7038,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7039,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7040,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7041,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7042,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7043,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7044,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7045,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7046,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7047,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7048,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7049,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7050,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7051,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7052,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7053,'RANHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7054,'RANHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7055,'RANHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7056,'RANHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7057,'JONSVATNET',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7058,'JAKOBSLI',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7059,'JAKOBSLI',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7066,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7067,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7068,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7069,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7070,'BOSBERG',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7071,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7072,'HEIMDAL',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7074,'SPONGDAL',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7075,'TILLER',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7078,'SAUPSTAD',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7079,'FLATÅSEN',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7080,'HEIMDAL',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7081,'SJETNEMARKA',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7082,'KATTEM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7083,'LEINSTRAND',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7088,'HEIMDAL',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7089,'HEIMDAL',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7091,'TILLER',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7092,'TILLER',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7093,'TILLER',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7097,'SAUPSTAD',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7098,'SAUPSTAD',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7099,'FLATÅSEN',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7100,'RISSA',5054);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7101,'RISSA',5054);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7105,'STADSBYGD',5054);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7110,'FEVÅG',5054);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7112,'HASSELVIKA',5054);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7113,'HUSBYSJØEN',5054);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7114,'RÅKVÅG',5054);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7119,'STADSBYGD',5054);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7120,'LEKSVIK',5054);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7121,'LEKSVIK',5054);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7125,'VANVIKAN',5054);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7126,'VANVIKAN',5054);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7127,'OPPHAUG',5015);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7128,'UTHAUG',5015);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7129,'BREKSTAD',5015);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7130,'BREKSTAD',5015);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7140,'OPPHAUG',5015);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7142,'UTHAUG',5015);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7150,'STORFOSNA',5015);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7152,'KRÅKVÅG',5015);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7153,'GARTEN',5015);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7156,'LEKSA',5016);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7159,'BJUGN',5017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7160,'BJUGN',5017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7165,'OKSVOLL',5017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7166,'TARVA',5017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7167,'VALLERSUND',5017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7168,'LYSØYSUNDET',5017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7169,'ÅFJORD',5018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7170,'ÅFJORD',5018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7176,'LINESØYA',5018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7177,'REVSNES',5018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7178,'STOKKØY',5018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7180,'ROAN',5019);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7190,'BESSAKER',5019);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7194,'BRANDSFJORD',5019);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7200,'KYRKSÆTERØRA',5011);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7201,'KYRKSÆTERØRA',5011);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7203,'VINJEØRA',5011);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7206,'HELLANDSJØEN',5011);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7207,'YTRE SNILLFJORD',5012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7211,'KORSVEGEN',5028);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7212,'KORSVEGEN',5028);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7213,'GÅSBAKKEN',5028);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7221,'MELHUS',5028);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7223,'MELHUS',5028);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7224,'MELHUS',5028);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7227,'GIMSE',5028);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7228,'KVÅL',5028);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7231,'LUNDAMO',5028);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7232,'LUNDAMO',5028);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7234,'LER',5028);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7235,'LER',5028);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7236,'HOVIN I GAULDAL',5028);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7238,'HOVIN I GAULDAL',5028);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7239,'HITRA',5013);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7240,'HITRA',5013);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7241,'ANSNES',5013);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7242,'KNARRLAGSUND',5013);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7243,'KVENVÆR',5013);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7246,'SANDSTAD',5013);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7247,'HESTVIKA',5013);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7250,'MELANDSJØ',5013);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7252,'DOLMØY',5013);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7255,'SUNDLANDET',5012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7256,'HEMNSKJELA',5012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7257,'SNILLFJORD',5012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7259,'SNILLFJORD',5012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7260,'SISTRANDA',5014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7261,'SISTRANDA',5014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7263,'HAMARVIK',5014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7264,'HAMARVIK',5014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7266,'KVERVA',5014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7268,'TITRAN',5014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7270,'DYRVIK',5014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7273,'NORDDYRØY',5014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7280,'SULA',5014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7282,'BOGØYVÆR',5014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7284,'MAUSUND',5014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7285,'GJÆSINGEN',5014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7286,'SØRBURØY',5014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7287,'SAUØY',5014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7288,'SOKNEDAL',5027);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7289,'SOKNEDAL',5027);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7290,'STØREN',5027);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7291,'STØREN',5027);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7295,'ROGNES',5027);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7298,'BUDALEN',5027);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7300,'ORKANGER',5024);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7301,'ORKANGER',5024);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7302,'ORKANGER',5024);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7303,'ORKANGER',5024);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7310,'GJØLME',5024);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7315,'LENSVIK',5016);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7316,'LENSVIK',5016);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7318,'AGDENES',5016);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7319,'AGDENES',5016);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7320,'FANNREM',5024);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7321,'FANNREM',5024);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7327,'SVORKMO',5024);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7329,'SVORKMO',5024);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7331,'LØKKEN VERK',5023);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7332,'LØKKEN VERK',5023);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7333,'STORÅS',5023);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7334,'STORÅS',5023);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7335,'JERPSTAD',5023);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7336,'MELDAL',5023);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7338,'MELDAL',5023);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7340,'OPPDAL',5021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7341,'OPPDAL',5021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7342,'LØNSET',5021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7343,'VOGNILL',5021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7345,'DRIVA',5021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7350,'BUVIKA',5029);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7351,'BUVIKA',5029);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7353,'BØRSA',5029);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7354,'VIGGJA',5029);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7355,'EGGKLEIVA',5029);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7357,'SKAUN',5029);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7358,'BØRSA',5029);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7361,'RØROS',5025);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7370,'BREKKEBYGD',5025);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7372,'GLÅMOS',5025);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7374,'RØROS',5025);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7375,'RØROS',5025);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7380,'ÅLEN',5026);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7383,'HALTDALEN',5026);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7384,'ÅLEN',5026);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7386,'SINGSÅS',5027);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7387,'SINGSÅS',5027);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7391,'RENNEBU',5022);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7392,'RENNEBU',5022);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7393,'RENNEBU',5022);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7397,'RENNEBU',5022);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7398,'RENNEBU',5022);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7399,'RENNEBU',5022);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7400,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7401,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7402,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7403,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7404,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7405,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7406,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7407,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7408,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7409,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7410,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7411,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7412,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7413,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7414,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7415,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7416,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7417,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7418,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7419,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7420,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7421,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7422,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7424,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7425,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7426,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7427,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7428,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7429,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7430,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7431,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7432,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7433,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7434,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7435,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7436,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7437,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7438,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7439,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7440,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7441,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7442,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7443,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7444,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7445,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7446,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7447,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7448,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7449,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7450,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7451,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7452,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7453,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7454,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7455,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7456,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7457,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7458,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7459,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7461,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7462,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7465,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7466,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7467,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7468,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7469,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7470,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7471,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7472,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7473,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7474,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7475,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7476,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7477,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7478,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7479,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7480,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7481,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7482,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7483,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7484,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7485,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7486,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7487,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7488,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7489,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7490,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7491,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7492,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7493,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7494,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7495,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7496,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7497,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7500,'STJØRDAL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7501,'STJØRDAL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7502,'STJØRDAL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7503,'STJØRDAL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7504,'STJØRDAL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7505,'STJØRDAL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7506,'STJØRDAL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7507,'STJØRDAL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7508,'STJØRDAL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7509,'STJØRDAL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7510,'SKATVAL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7512,'STJØRDAL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7513,'STJØRDAL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7514,'STJØRDAL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7517,'HELL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7519,'ELVARLI',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7520,'HEGRA',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7525,'FLORNES',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7529,'HEGRA',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7530,'MERÅKER',5034);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7531,'MERÅKER',5034);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7533,'KOPPERÅ',5034);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7540,'KLÆBU',5030);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7541,'KLÆBU',5030);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7549,'TANEM',5030);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7550,'HOMMELVIK',5031);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7551,'HOMMELVIK',5031);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7560,'VIKHAMMER',5031);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7562,'HUNDHAMAREN',5031);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7563,'MALVIK',5031);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7566,'VIKHAMMER',5031);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7570,'HELL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7580,'SELBU',5032);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7581,'SELBU',5032);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7583,'SELBU',5032);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7584,'SELBUSTRAND',5032);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7590,'TYDAL',5033);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7591,'TYDAL',5033);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7596,'FLAKNAN',5032);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7600,'LEVANGER',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7601,'LEVANGER',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7602,'LEVANGER',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7603,'LEVANGER',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7604,'LEVANGER',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7605,'LEVANGER',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7606,'LEVANGER',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7607,'LEVANGER',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7608,'LEVANGER',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7609,'LEVANGER',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7610,'LEVANGER',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7619,'SKOGN',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7620,'SKOGN',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7622,'MARKABYGDA',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7623,'RONGLAN',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7624,'EKNE',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7629,'YTTERØY',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7630,'ÅSEN',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7631,'ÅSEN',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7632,'ÅSENFJORD',5037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7633,'FROSTA',5036);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7634,'FROSTA',5036);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7650,'VERDAL',5038);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7651,'VERDAL',5038);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7652,'VERDAL',5038);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7653,'VERDAL',5038);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7654,'VERDAL',5038);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7655,'VERDAL',5038);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7656,'VERDAL',5038);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7657,'VERDAL',5038);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7658,'VERDAL',5038);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7660,'VUKU',5038);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7670,'INDERØY',5053);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7671,'INDERØY',5053);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7690,'MOSVIK',5053);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7701,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7702,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7703,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7704,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7705,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7707,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7708,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7709,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7710,'SPARBU',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7711,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7712,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7713,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7714,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7715,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7716,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7717,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7718,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7724,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7725,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7726,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7729,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7730,'BEITSTAD',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7732,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7734,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7735,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7736,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7737,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7738,'STEINKJER',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7739,'BEITSTAD',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7740,'STEINSDALEN',5020);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7742,'YTTERVÅG',5020);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7744,'HEPSØY',5020);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7745,'OPPLAND',5049);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7746,'HASVÅG',5049);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7748,'SÆTERVIK',5020);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7750,'NAMDALSEID',5040);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7751,'NAMDALSEID',5040);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7760,'SNÅSA',5041);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7761,'SNÅSA',5041);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7770,'FLATANGER',5049);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7771,'FLATANGER',5049);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7777,'NORD-STATLAND',5040);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7790,'MALM',5039);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7791,'MALM',5039);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7796,'FOLLAFOSS',5039);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7797,'VERRABOTN',5039);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7800,'NAMSOS',5005);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7801,'NAMSOS',5005);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7802,'NAMSOS',5005);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7803,'NAMSOS',5005);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7804,'NAMSOS',5005);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7805,'NAMSOS',5005);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7808,'NAMSOS',5005);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7810,'NAMSOS',5005);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7817,'SALSNES',5005);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7818,'LUND',5051);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7819,'FOSSLANDSOSEN',5005);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7820,'SPILLUM',5005);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7822,'BANGSUND',5005);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7856,'JØA',5048);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7860,'SKAGE I NAMDALEN',5047);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7863,'OVERHALLA',5047);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7864,'OVERHALLA',5047);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7869,'SKAGE I NAMDALEN',5047);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7870,'GRONG',5045);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7871,'GRONG',5045);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7873,'HARRAN',5045);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7882,'NORDLI',5042);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7884,'SØRLI',5042);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7890,'NAMSSKOGAN',5044);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7892,'TRONES',5044);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7893,'SKOROVATN',5044);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7896,'BREKKVASSELV',5044);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7898,'LIMINGEN',5043);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7900,'RØRVIK',5050);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7901,'RØRVIK',5050);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7940,'OTTERSØY',5051);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7944,'INDRE NÆRØY',5051);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7950,'ABELVÆR',5051);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7960,'SALSBRUKET',5051);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7970,'KOLVEREID',5051);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7971,'KOLVEREID',5051);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7973,'GJERDINGA',5051);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7976,'KONGSMOEN',5046);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7977,'HØYLANDET',5046);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7980,'TERRÅK',1811);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7981,'HARANGSFJORD',1811);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7982,'BINDALSEIDET',1811);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7985,'FOLDEREID',5051);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7990,'NAUSTBUKTA',5051);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7993,'GUTVIK',5052);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7994,'LEKA',5052);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8001,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8002,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8003,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8004,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8005,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8006,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8007,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8008,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8009,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8010,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8011,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8012,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8013,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8014,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8015,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8016,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8019,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8020,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8021,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8022,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8023,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8026,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8027,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8028,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8029,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8030,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8031,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8032,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8037,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8038,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8041,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8047,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8048,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8049,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8050,'TVERLANDET',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8056,'SALTSTRAUMEN',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8058,'TVERLANDET',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8063,'VÆRØY',1857);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8064,'RØST',1856);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8070,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8071,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8072,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8073,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8074,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8075,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8076,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8079,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8084,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8086,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8087,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8088,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8089,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8091,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8092,'BODØ',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8093,'KJERRINGØY',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8094,'FLEINVÆR',1838);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8095,'HELLIGVÆR',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8096,'BLIKSVÆR',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8097,'GIVÆR',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8098,'LANDEGODE',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8099,'JAN MAYEN',2211);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8100,'MISVÆR',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8102,'SKJERSTAD',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8103,'BREIVIK I SALTEN',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8108,'MISVÆR',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8110,'MOLDJORD',1839);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8114,'TOLLÅ',1839);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8118,'MOLDJORD',1839);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8120,'NYGÅRDSJØEN',1838);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8128,'YTRE BEIARN',1839);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8130,'SANDHORNØY',1838);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8135,'SØRARNØY',1838);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8136,'NORDARNØY',1838);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8138,'INNDYR',1838);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8140,'INNDYR',1838);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8145,'STORVIK',1838);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8146,'REIPÅ',1837);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8149,'NEVERDAL',1837);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8150,'ØRNES',1837);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8151,'ØRNES',1837);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8157,'MELØY',1837);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8158,'BOLGA',1837);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8159,'STØTT',1837);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8160,'GLOMFJORD',1837);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8161,'GLOMFJORD',1837);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8168,'ENGAVÅGEN',1837);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8170,'ENGAVÅGEN',1837);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8178,'HALSA',1837);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8181,'MYKEN',1836);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8182,'MELFJORDBOTN',1836);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8184,'ÅGSKARDET',1837);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8185,'VÅGAHOLMEN',1836);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8186,'TJONGSFJORDEN',1836);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8187,'JEKTVIK',1836);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8188,'NORDVERNES',1836);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8189,'GJERSVIKGRENDA',1836);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8190,'SØRFJORDEN',1836);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8193,'RØDØY',1836);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8195,'GJERØY',1836);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8196,'SELSØYVIK',1836);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8197,'STORSELSØY',1836);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8198,'NORDNESØY',1836);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8200,'FAUSKE',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8201,'FAUSKE',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8202,'FAUSKE',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8203,'FAUSKE',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8205,'FAUSKE',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8206,'FAUSKE',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8207,'FAUSKE',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8208,'FAUSKE',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8209,'FAUSKE',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8210,'FAUSKE',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8211,'FAUSKE',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8214,'FAUSKE',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8215,'VALNESFJORD',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8218,'FAUSKE',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8219,'FAUSKE',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8220,'RØSVIK',1845);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8226,'STRAUMEN',1845);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8230,'SULITJELMA',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8231,'SULITJELMA',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8232,'STRAUMEN',1845);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8233,'VALNESFJORD',1841);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8250,'ROGNAN',1840);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8251,'ROGNAN',1840);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8252,'ROGNAN',1840);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8253,'ROGNAN',1840);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8255,'RØKLAND',1840);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8256,'RØKLAND',1840);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8260,'INNHAVET',1849);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8261,'INNHAVET',1849);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8264,'ENGAN',1845);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8266,'MØRSVIKBOTN',1845);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8270,'DRAG',1850);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8271,'DRAG',1850);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8273,'NEVERVIK',1850);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8274,'MUSKEN',1850);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8275,'STORJORD I TYSFJORD',1850);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8276,'ULVSVÅG',1849);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8281,'LEINESFJORD',1848);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8283,'LEINESFJORD',1848);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8285,'LEINES',1848);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8286,'NORDFOLD',1848);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8288,'BOGØY',1848);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8289,'ENGELØYA',1848);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8290,'SKUTVIK',1849);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8291,'SKUTVIK',1849);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8294,'HAMARØY',1849);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8297,'TRANØY',1849);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8298,'HAMARØY',1849);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8300,'SVOLVÆR',1865);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8301,'SVOLVÆR',1865);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8305,'SVOLVÆR',1865);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8309,'KABELVÅG',1865);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8310,'KABELVÅG',1865);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8311,'HENNINGSVÆR',1865);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8312,'HENNINGSVÆR',1865);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8313,'KLEPPSTAD',1865);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8314,'GIMSØYSAND',1865);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8315,'LAUKVIK',1865);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8316,'LAUPSTAD',1865);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8317,'STRØNSTAD',1866);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8320,'SKROVA',1865);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8322,'BRETTESNES',1865);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8323,'STORFJELL',1865);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8324,'DIGERMULEN',1865);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8325,'TENGELFJORD',1866);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8326,'MYRLAND',1866);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8328,'STOREMOLLA',1865);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8340,'STAMSUND',1860);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8352,'SENNESVIK',1860);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8357,'VALBERG',1860);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8360,'BØSTAD',1860);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8370,'LEKNES',1860);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8372,'GRAVDAL',1860);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8373,'BALLSTAD',1860);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8376,'LEKNES',1860);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8377,'GRAVDAL',1860);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8378,'STAMSUND',1860);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8380,'RAMBERG',1859);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8382,'NAPP',1859);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8384,'SUND I LOFOTEN',1859);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8387,'FREDVANG',1859);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8388,'RAMBERG',1859);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8390,'REINE',1874);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8392,'SØRVÅGEN',1874);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8393,'SØRVÅGEN',1874);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8398,'REINE',1874);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8400,'SORTLAND',1870);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8401,'SORTLAND',1870);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8402,'SORTLAND',1870);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8403,'SORTLAND',1870);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8404,'SORTLAND',1870);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8405,'SORTLAND',1870);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8406,'SORTLAND',1870);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8407,'SORTLAND',1870);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8408,'SORTLAND',1868);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8409,'GULLESFJORD',1911);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8410,'LØDINGEN',1851);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8411,'LØDINGEN',1851);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8412,'VESTBYGD',1851);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8413,'KVITNES',1866);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8414,'HENNES',1866);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8415,'SORTLAND',1870);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8416,'SORTLAND',1870);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8426,'BARKESTAD',1868);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8428,'TUNSTAD',1868);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8430,'MYRE',1868);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8432,'ALSVÅG',1868);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8438,'STØ',1868);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8439,'MYRE',1868);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8445,'MELBU',1866);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8447,'LONKAN',1866);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8450,'STOKMARKNES',1866);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8455,'STOKMARKNES',1866);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8459,'MELBU',1866);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8465,'STRAUMSJØEN',1867);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8469,'BØ I VESTERÅLEN',1867);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8470,'BØ I VESTERÅLEN',1867);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8475,'STRAUMSJØEN',1867);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8480,'ANDENES',1871);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8481,'BLEIK',1871);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8483,'ANDENES',1871);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8484,'RISØYHAMN',1871);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8485,'DVERBERG',1871);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8488,'NØSS',1871);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8489,'NORDMELA',1871);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8493,'RISØYHAMN',1871);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8501,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8502,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8503,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8504,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8505,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8506,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8507,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8508,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8509,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8510,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8512,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8513,'ANKENES',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8514,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8515,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8516,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8517,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8518,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8519,'NARVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8520,'ANKENES',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8521,'ANKENES',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8522,'BEISFJORD',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8523,'ELVEGÅRD',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8530,'BJERKVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8531,'BJERKVIK',1805);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8533,'BOGEN I OFOTEN',1853);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8534,'LILAND',1853);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8535,'TÅRSTAD',1853);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8536,'EVENES',1853);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8539,'BOGEN I OFOTEN',1853);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8540,'BALLANGEN',1854);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8543,'KJELDEBOTN',1854);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8546,'BALLANGEN',1854);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8587,'STORÅ',1850);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8590,'KJØPSVIK',1850);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8591,'KJØPSVIK',1850);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8601,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8602,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8603,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8604,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8607,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8608,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8610,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8613,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8614,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8615,'SKONSENG',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8616,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8617,'DALSGRENDA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8618,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8622,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8624,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8626,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8630,'STORFORSHEI',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8634,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8638,'STORFORSHEI',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8640,'HEMNESBERGET',1832);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8641,'HEMNESBERGET',1832);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8642,'FINNEIDFJORD',1832);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8643,'BJERKA',1832);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8646,'KORGEN',1832);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8647,'BLEIKVASSLIA',1832);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8648,'KORGEN',1832);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8651,'MOSJØEN',1824);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8652,'MOSJØEN',1824);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8654,'MOSJØEN',1824);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8655,'MOSJØEN',1824);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8656,'MOSJØEN',1824);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8657,'MOSJØEN',1824);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8658,'MOSJØEN',1824);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8659,'MOSJØEN',1824);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8660,'MOSJØEN',1824);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8661,'MOSJØEN',1824);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8663,'MOSJØEN',1824);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8664,'MOSJØEN',1824);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8665,'MOSJØEN',1824);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8666,'MOSJØEN',1824);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8672,'ELSFJORD',1824);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8680,'TROFORS',1825);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8681,'TROFORS',1825);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8682,'TROFORS',1825);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8683,'TROFORS',1825);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8684,'TROFORS',1825);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8685,'TROFORS',1825);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8690,'HATTFJELLDAL',1826);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8691,'HATTFJELLDAL',1826);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8692,'HATTFJELLDAL',1826);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8693,'HATTFJELLDAL',1826);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8694,'HATTFJELLDAL',1826);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8695,'HATTFJELLDAL',1826);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8696,'HATTFJELLDAL',1826);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8700,'NESNA',1828);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8701,'NESNA',1828);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8720,'VIKHOLMEN',1828);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8723,'HUSBY',1828);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8724,'SAURA',1828);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8725,'UTSKARPEN',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8730,'BRATLAND',1834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8732,'ALDRA',1834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8733,'STUVLAND',1834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8735,'STOKKVÅGEN',1834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8740,'NORD-SOLVÆR',1834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8742,'SELVÆR',1835);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8743,'INDRE KVARØY',1834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8750,'TONNES',1834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8752,'KONSVIKOSEN',1834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8753,'KONSVIKOSEN',1834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8754,'ØRESVIK',1836);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8761,'SLENESET',1834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8762,'SLENESET',1834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8764,'LOVUND',1834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8766,'LURØY',1834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8767,'LURØY',1834);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8770,'TRÆNA',1835);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8800,'SANDNESSJØEN',1820);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8801,'SANDNESSJØEN',1820);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8802,'SANDNESSJØEN',1820);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8803,'SANDNESSJØEN',1820);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8804,'SANDNESSJØEN',1820);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8805,'SANDNESSJØEN',1820);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8813,'KOPARDAL',1827);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8820,'DØNNA',1827);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8827,'DØNNA',1827);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8830,'VANDVE',1827);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8842,'BRASØY',1818);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8844,'SANDVÆR',1818);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8850,'HERØY',1818);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8851,'HERØY',1818);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8852,'HERØY',1818);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8854,'AUSTBØ',1820);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8860,'TJØTTA',1820);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8861,'TJØTTA',1820);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8865,'TRO',1820);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8870,'VISTHUS',1816);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8880,'BÆRØYVÅGEN',1820);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8883,'HUSVIKA',1824);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8890,'LEIRFJORD',1822);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8891,'LEIRFJORD',1822);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8892,'SUNDØY',1822);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8897,'BARDAL',1822);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8900,'BRØNNØYSUND',1813);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8901,'BRØNNØYSUND',1813);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8902,'BRØNNØYSUND',1813);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8904,'BRØNNØYSUND',1813);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8905,'BRØNNØYSUND',1813);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8906,'BRØNNØYSUND',1813);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8907,'BRØNNØYSUND',1813);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8908,'BRØNNØYSUND',1813);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8909,'BRØNNØYSUND',1813);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8910,'BRØNNØYSUND',1813);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8920,'SØMNA',1812);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8921,'SØMNA',1812);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8922,'SØMNA',1812);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8960,'VELFJORD',1813);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8961,'VELFJORD',1813);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8976,'VEVELSTAD',1816);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8980,'VEGA',1815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8981,'VEGA',1815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8982,'VEGA',1815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8983,'VEGA',1815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8984,'VEGA',1815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8986,'VEGA',1815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8985,'YLVINGEN',1815);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9006,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9007,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9008,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9009,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9010,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9011,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9012,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9013,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9014,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9015,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9016,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9017,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9018,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9019,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9020,'TROMSDALEN',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9021,'TROMSDALEN',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9022,'KROKELVDALEN',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9023,'KROKELVDALEN',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9024,'TOMASJORD',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9027,'RAMFJORDBOTN',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9029,'TROMSDALEN',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9030,'SJURSNES',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9034,'OLDERVIK',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9037,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9038,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9040,'NORDKJOSBOTN',1933);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9042,'LAKSVATN',1933);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9043,'JØVIK',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9046,'OTEREN',1939);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9049,'NORDKJOSBOTN',1933);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9050,'STORSTEINNES',1933);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9055,'MEISTERVIK',1933);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9056,'MORTENHALS',1933);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9057,'VIKRAN',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9059,'STORSTEINNES',1933);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9060,'LYNGSEIDET',1938);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9062,'FURUFLATEN',1938);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9064,'SVENSBY',1938);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9068,'NORD-LENANGEN',1938);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9069,'LYNGSEIDET',1938);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9100,'KVALØYSLETTA',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9101,'KVALØYSLETTA',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9102,'KVALØYSLETTA',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9103,'KVALØYA',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9104,'KVALØYA',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9105,'KVALØYA',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9106,'STRAUMSBUKTA',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9107,'KVALØYA',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9108,'KVALØYA',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9109,'KVALØYA',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9110,'SOMMARØY',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9118,'BRENSHOLMEN',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9119,'SOMMARØY',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9120,'VENGSØY',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9128,'TUSSØY',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9130,'HANSNES',1936);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9131,'KÅRVIK',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9132,'STAKKVIK',1936);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9134,'HANSNES',1936);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9135,'VANNVÅG',1936);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9136,'VANNAREID',1936);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9137,'VANNVÅG',1936);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9138,'KARLSØY',1936);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9140,'REBBENES',1936);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9141,'MJØLVIK',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9142,'SKIBOTN',1939);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9143,'SKIBOTN',1939);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9144,'SAMUELSBERG',1940);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9146,'OLDERDALEN',1940);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9147,'BIRTAVARRE',1940);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9148,'OLDERDALEN',1940);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9151,'STORSLETT',1942);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9152,'SØRKJOSEN',1942);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9153,'ROTSUND',1942);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9154,'STORSLETT',1942);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9156,'STORSLETT',1942);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9157,'STORSLETT',1942);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9158,'STORSLETT',1942);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9159,'HAVNNES',1942);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9161,'BURFJORD',1943);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9162,'SØRSTRAUMEN',1943);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9163,'JØKELFJORD',1943);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9169,'BURFJORD',1943);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9170,'LONGYEARBYEN',2100);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9171,'LONGYEARBYEN',2100);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9173,'NY-ÅLESUND',2100);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9174,'HOPEN',2100);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9175,'SVEAGRUVA',2100);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9176,'BJØRNØYA',2100);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9178,'BARENTSBURG',2100);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9180,'SKJERVØY',1941);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9181,'HAMNEIDET',1942);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9182,'SEGLVIK',1943);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9184,'REINFJORD',1943);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9185,'SPILDRA',1943);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9186,'ANDSNES',1943);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9187,'VALANHAMN',1941);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9189,'SKJERVØY',1941);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9190,'AKKARVIK',1941);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9192,'ARNØYHAMN',1941);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9193,'NIKKEBY',1941);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9194,'LAUKSLETTA',1941);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9195,'ÅRVIKSAND',1941);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9197,'ULØYBUKT',1941);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9251,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9252,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9253,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9254,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9255,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9256,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9257,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9258,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9259,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9260,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9261,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9262,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9263,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9265,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9266,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9267,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9268,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9269,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9270,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9271,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9272,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9273,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9274,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9275,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9276,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9277,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9278,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9279,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9280,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9281,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9282,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9283,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9284,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9285,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9286,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9287,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9288,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9290,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9291,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9292,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9293,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9294,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9296,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9298,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9299,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9300,'FINNSNES',1931);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9302,'ROSSFJORDSTRAUMEN',1931);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9303,'SILSAND',1931);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9304,'VANGSVIK',1927);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9305,'FINNSNES',1931);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9306,'FINNSNES',1931);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9307,'FINNSNES',1931);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9308,'FINNSNES',1931);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9309,'FINNSNES',1931);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9310,'SØRREISA',1925);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9311,'BRØSTADBOTN',1926);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9315,'SØRREISA',1925);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9316,'BRØSTADBOTN',1926);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9321,'MOEN',1924);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9322,'KARLSTAD',1924);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9325,'BARDUFOSS',1924);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9326,'BARDUFOSS',1924);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9329,'MOEN',1924);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9334,'ØVERBYGD',1924);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9335,'ØVERBYGD',1924);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9336,'RUNDHAUG',1924);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9350,'SJØVEGAN',1923);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9355,'SJØVEGAN',1923);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9357,'TENNEVOLL',1920);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9358,'TENNEVOLL',1920);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9360,'BARDU',1922);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9365,'BARDU',1922);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9370,'SILSAND',1931);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9372,'GIBOSTAD',1931);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9373,'BOTNHAMN',1931);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9376,'SKATVIK',1927);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9379,'GRYLLEFJORD',1928);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9380,'GRYLLEFJORD',1928);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9381,'TORSKEN',1928);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9382,'GIBOSTAD',1931);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9384,'SKALAND',1929);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9385,'SKALAND',1929);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9386,'SENJAHOPEN',1929);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9387,'SENJAHOPEN',1929);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9388,'FJORDGARD',1931);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9389,'HUSØY I SENJA',1931);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9391,'STONGLANDSEIDET',1927);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9392,'STONGLANDSEIDET',1927);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9393,'FLAKSTADVÅG',1928);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9395,'KALDFARNES',1928);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9402,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9403,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9404,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9405,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9406,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9407,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9408,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9409,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9411,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9414,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9415,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9419,'SØRVIK',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9420,'LUNDENES',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9423,'GRØTAVÆR',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9424,'KJØTTA',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9425,'SANDSØY',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9426,'BJARKØY',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9427,'MELØYVÆR',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9430,'SANDTORG',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9436,'KONGSVIK',1852);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9439,'EVENSKJER',1913);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9440,'EVENSKJER',1913);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9441,'FJELLDAL',1852);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9442,'RAMSUND',1852);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9443,'MYKLEBOSTAD',1852);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9444,'HOL I TJELDSUND',1852);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9445,'TOVIK',1913);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9446,'GROVFJORD',1913);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9447,'GROVFJORD',1913);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9448,'RAMSUND',1852);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9450,'HAMNVIK',1917);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9451,'HAMNVIK',1917);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9453,'KRÅKRØHAMN',1917);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9454,'ÅNSTAD',1917);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9455,'ENGENES',1917);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9470,'GRATANGEN',1919);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9471,'GRATANGEN',1919);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9475,'BORKENES',1911);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9476,'BORKENES',1911);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9479,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9480,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9481,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9482,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9483,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9484,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9485,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9486,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9487,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9488,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9489,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9496,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9497,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9498,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9501,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9502,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9503,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9504,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9505,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9506,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9507,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9508,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9509,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9510,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9511,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9512,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9513,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9514,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9515,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9516,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9517,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9518,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9519,'KVIBY',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9520,'KAUTOKEINO',2011);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9521,'KAUTOKEINO',2011);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9522,'KAUTOKEINO',2011);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9523,'KAUTOKEINO',2011);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9524,'KAUTOKEINO',2011);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9525,'MAZE',2011);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9527,'KAUTOKEINO',2011);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9528,'KAUTOKEINO',2011);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9529,'KAUTOKEINO',2011);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9531,'KVALFJORD',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9532,'HAKKSTABBEN',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9533,'KONGSHUS',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9536,'KORSFJORDEN',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9538,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9540,'TALVIK',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9541,'ALTA',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9545,'LANGFJORDBOTN',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9550,'ØKSFJORD',2014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9551,'ØKSFJORD',2014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9580,'BERGSFJORD',2014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9582,'NUVSVÅG',2014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9583,'LANGFJORDHAMN',2014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9584,'SØR-TVERRFJORD',2014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9585,'SANDLAND',2014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9586,'LOPPA',2014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9587,'SKAVNAKK',2014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9590,'HASVIK',2015);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9593,'BREIVIKBOTN',2015);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9595,'SØRVÆR',2015);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9600,'HAMMERFEST',2004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9601,'HAMMERFEST',2004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9602,'HAMMERFEST',2004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9603,'HAMMERFEST',2004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9609,'NORDRE SEILAND',2004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9610,'RYPEFJORD',2004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9612,'FORSØL',2004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9613,'HAMMERFEST',2004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9615,'HAMMERFEST',2004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9616,'HAMMERFEST',2004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9620,'KVALSUND',2017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9621,'KVALSUND',2017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9624,'REVSNESHAMN',2017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9650,'AKKARFJORD',2004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9651,'LANGSTRAND',2004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9657,'KÅRHAMN',2004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9664,'SANDØYBOTN',2004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9670,'TUFJORD',2018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9672,'INGØY',2018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9690,'HAVØYSUND',2018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9691,'HAVØYSUND',2018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9692,'MÅSØY',2018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9700,'LAKSELV',2020);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9709,'PORSANGMOEN',2020);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9710,'INDRE BILLEFJORD',2020);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9711,'LAKSELV',2020);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9712,'LAKSELV',2020);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9713,'RUSSENES',2020);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9714,'SNEFJORD',2018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9715,'KOKELV',2017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9716,'BØRSELV',2020);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9717,'VEIDNESKLUBBEN',2022);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9722,'SKOGANVARRE',2020);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9730,'KARASJOK',2021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9731,'KARASJOK',2021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9732,'KARASJOK',2021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9733,'KARASJOK',2021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9734,'KARASJOK',2021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9735,'KARASJOK',2021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9736,'KARASJOK',2021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9737,'KARASJOK',2021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9740,'LEBESBY',2022);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9742,'KUNES',2022);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9750,'HONNINGSVÅG',2019);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9751,'HONNINGSVÅG',2019);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9760,'NORDVÅGEN',2019);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9763,'SKARSVÅG',2019);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9764,'NORDKAPP',2019);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9765,'GJESVÆR',2019);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9768,'REPVÅG',2019);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9770,'MEHAMN',2023);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9771,'SKJÅNES',2023);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9772,'LANGFJORDNES',2023);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9773,'NERVEI',2023);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9775,'GAMVIK',2023);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9782,'DYFJORD',2022);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9790,'KJØLLEFJORD',2022);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9800,'VADSØ',2003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9801,'VADSØ',2003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9803,'VADSØ',2003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9804,'VADSØ',2003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9802,'VESTRE JAKOBSELV',2003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9810,'VESTRE JAKOBSELV',2003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9811,'VADSØ',2003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9815,'VADSØ',2003);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9820,'VARANGERBOTN',2027);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9826,'SIRMA',2025);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9840,'VARANGERBOTN',2027);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9841,'TANA',2025);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9842,'TANA',2025);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9843,'TANA',2025);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9844,'TANA',2025);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9845,'TANA',2025);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9846,'TANA',2025);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9900,'KIRKENES',2030);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9901,'KIRKENES',2030);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9910,'BJØRNEVATN',2030);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9911,'JARFJORD',2030);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9912,'HESSENG',2030);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9914,'BJØRNEVATN',2030);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9915,'KIRKENES',2030);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9916,'HESSENG',2030);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9917,'KIRKENES',2030);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9925,'SVANVIK',2030);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9930,'NEIDEN',2030);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9935,'BUGØYNES',2030);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9950,'VARDØ',2002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9951,'VARDØ',2002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9960,'KIBERG',2002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9980,'BERLEVÅG',2024);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9981,'BERLEVÅG',2024);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9982,'KONGSFJORD',2024);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9990,'BÅTSFJORD',2028);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9991,'BÅTSFJORD',2028);

INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6773,'NORDFJORDEID',1443);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6774,'NORDFJORDEID',1443);

INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (81,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (132,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (136,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (140,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (217,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (507,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (615,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (914,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1102,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1108,'OSLO',301);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4063,'TJELTA',1124);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4181,'KVITSØY',1144);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4334,'ÅLGÅRD',1122);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4361,'SIREVÅG',1119);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4384,'VIKESÅ',1114);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4385,'HELLELAND',1101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4390,'OLTEDAL',1122);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4399,'SANDNES',1102);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5562,'NEDSTRAND',1146);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5569,'BOKN',1145);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6034,'EIDSNES',1531);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6044,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6048,'ÅLESUND',1504);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6054,'GODØYA',1532);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6075,'MOLTUSTRANDA',1515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6078,'GJERDSVIKA',1514);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6079,'GURSKØY',1515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6086,'KVAMSØY',1514);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6088,'SANDSHAMN',1514);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6134,'LAUVSTAD',1519);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6138,'SYVDE',1511);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6147,'ÅHEIM',1511);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6171,'VARTDAL',1520);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6217,'GEIRANGER',1525);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6219,'HELLESYLT',1525);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6223,'IKORNNES',1528);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6255,'EIDSDAL',1524);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6291,'HARAMSØY',1534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6331,'VERMA',1539);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6361,'ÅFARNES',1539);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6365,'VISTDAL',1543);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6385,'MÅNDALEN',1539);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6389,'FIKSDAL',1535);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6446,'FARSTAD',1548);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6452,'KLEIVE',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6458,'SKÅLA',1502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6471,'ERESFJORD',1543);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6485,'HARØY',1546);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6527,'FREI',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6528,'FREI',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6546,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6547,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6548,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6549,'KRISTIANSUND N',1505);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6591,'TUSTNA',1576);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6614,'GJØRA',1563);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6623,'ÅLVUNDFJORD',1563);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6627,'TINGVOLL',1560);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6632,'BATNFJORDSØRA',1557);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6641,'TORVIKBUKT',1557);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6671,'ØYDEGARD',1560);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7979,'TERRÅK',1811);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7983,'BINDALSEIDET',1811);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8057,'SALTSTRAUMEN',1804);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8062,'VÆRØY',1857);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8065,'RØST',1856);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8134,'SØRARNØY',1838);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8179,'HALSA',1837);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8183,'VÅGAHOLMEN',1836);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8192,'JEKTVIK',1836);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8278,'STORÅ',1850);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8287,'ENGELØYA',1848);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8361,'BØSTAD',1860);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8374,'BALLSTAD',1860);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8419,'SORTLAND',1870);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8609,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8619,'MO I RANA',1833);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8644,'BJERKA',1832);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8809,'SANDNESSJØEN',1820);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (8977,'VEVELSTAD',1816);

INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1594,'VÅLER I ØSTFOLD',137);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1759,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1762,'HALDEN',101);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (1828,'HOBØL',138);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2028,'LILLESTRØM',231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2029,'RÆLINGEN',228);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2094,'MINNESUND',237);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2121,'SAGSTUA',418);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2132,'GARDVIK',418);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2163,'SKOGBYGDA',236);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2167,'HVAM',236);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2207,'KONGSVINGER',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2215,'ROVERUD',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2227,'AUSTMARKA',402);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2231,'SKOTTERUD',420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2241,'MAGNOR',420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2251,'GRUE FINNSKOG',423);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2311,'HAMAR',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2313,'OTTESTAD',417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2314,'OTTESTAD',417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2327,'FURNES',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2328,'RIDABU',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2329,'VANG PÅ HEDMARKEN',403);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2331,'VALLSET',417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2333,'ROMEDAL',417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2339,'TANGEN',417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2346,'ILSENG',417);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2351,'NES PÅ HEDMARKEN',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2361,'RUDSHØGDA',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2373,'BRØTTUM',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2389,'BRUMUNDDAL',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2404,'ELVERUM',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2417,'ELVERUM',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2419,'ELVERUM',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2424,'ØSTBY',428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2426,'LJØRDALEN',428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2434,'BRASKEREIDFOSS',426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2441,'ENGERDAL',434);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2442,'HERADSBYGD',427);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2444,'DREVSJØ',434);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2447,'SØRE OSEN',428);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2461,'OSEN',429);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2513,'KVIKNE',437);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2541,'TOLGA',436);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2551,'OS I ØSTERDALEN',441);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2620,'MESNALI',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2621,'VINGROM',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2622,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2623,'LILLEHAMMER',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2627,'FÅBERG',501);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2628,'SJUSJØEN',412);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2638,'TRETTEN',521);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2641,'KVAM',516);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2644,'SKÅBU',516);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2654,'VESTRE GAUSDAL',522);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2671,'LESJA',512);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2678,'SEL',517);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2679,'HEIDAL',517);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2681,'LALM',515);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2812,'GJØVIK',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2841,'SNERTINGDAL',502);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2844,'KOLBU',528);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2845,'BØVERBRU',529);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2863,'VESTSIDA',536);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2909,'AURDAL',542);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2965,'SLIDRE',543);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (2972,'RYFOSS',545);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3009,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3010,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3063,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3064,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3065,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3066,'DRAMMEN',602);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3091,'HOF',715);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3129,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3134,'TØNSBERG',704);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3156,'MELSOMVIK',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3197,'NYKIRKE',701);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3247,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3248,'SANDEFJORD',710);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3357,'EGGEDAL',621);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3479,'NÆRSNES',627);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3485,'FILTVET',628);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3527,'BJONEROA',534);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3532,'TYRISTRAND',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3542,'SOKNA',605);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3543,'NORESUND',622);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3545,'FLÅ',615);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3546,'KROKKLEIVA',612);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3607,'KONGSBERG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3625,'SKOLLENBORG',604);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3634,'NORE',633);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3799,'SKIEN',806);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (3852,'VRÅDAL',829);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4439,'SIRA',1004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4486,'FEDA',1037);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4507,'MANDAL',1002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4508,'MANDAL',1002);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4526,'KONSMO',1027);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4535,'MARNARDAL',1021);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4541,'ÅSERAL',1026);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4597,'EIKEN',1034);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4649,'FINSLAND',1017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4746,'VALLE',940);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4749,'RYSSTAD',940);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4822,'RYKENE',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (4921,'STAUBØ',906);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5213,'LEPSØY',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5214,'LYSEKLOSTER',1243);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5311,'KJERRGARDEN',1247);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5556,'FØRDE I HORDALAND',1216);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5631,'STRANDEBARM',1238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5633,'OMASTRAND',1238);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5644,'SÆVAREID',1241);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5648,'FUSA',1241);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5651,'TYSSE',1242);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5720,'STANGHELLE',1251);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5732,'MODALEN',1252);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5775,'NÅ',1231);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5802,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5820,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5823,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5826,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5827,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5830,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5832,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5833,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5834,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5837,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5843,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5844,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5855,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5865,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5866,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5867,'BERGEN',1201);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5935,'BØVÅGEN',1260);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5963,'DALSØYRA',1411);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5964,'BREKKE',1411);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5965,'BJORDAL',1416);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5982,'MASFJORDNES',1266);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (5985,'HAUGSVÆR',1266);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6790,'LOEN',1449);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6794,'INNVIK',1449);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6820,'FØRDE',1432);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6830,'BYRKJELO',1445);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6831,'HYEN',1445);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6844,'VASSENDEN',1431);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6845,'FJÆRLAND',1420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6849,'KAUPANGER',1420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6857,'SOGNDAL',1420);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6867,'HAFSLO',1426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6874,'LUSTER',1426);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6910,'FLORØ',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6913,'FLORØ',1401);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6959,'SØRBØVÅG',1413);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6976,'BYGSTAD',1430);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6994,'NESSANE',1416);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (6997,'VADHEIM',1416);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7111,'HASSELVIKA',5054);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7115,'HUSBYSJØEN',5054);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7116,'RÅKVÅG',5054);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7151,'STORFOSNA',5015);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7164,'LYSØYSUNDET',5017);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7174,'REVSNES',5018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7175,'STOKKØY',5018);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7181,'ROAN',5019);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7244,'KNARRLAGSUND',5013);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7245,'KVENVÆR',5013);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7267,'KVERVA',5014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7274,'NORDDYRØY',5014);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7356,'SKAUN',5029);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7388,'SINGSÅS',5027);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7463,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7464,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7498,'TRONDHEIM',5001);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7511,'SKATVAL',5035);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7661,'VUKU',5038);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7672,'INDERØY',5053);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7691,'MOSVIK',5053);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7733,'SPARBU',5004);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7741,'STEINSDALEN',5020);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7795,'FOLLAFOSS',5039);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7821,'SPILLUM',5005);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7823,'BANGSUND',5005);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7874,'HARRAN',5045);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7876,'KONGSMOEN',5046);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7877,'HØYLANDET',5046);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7878,'HØYLANDET',5046);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7881,'NORDLI',5042);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7885,'SØRLI',5042);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7891,'NAMSSKOGAN',5044);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7897,'LIMINGEN',5043);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7902,'RØRVIK',5050);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7941,'OTTERSØY',5051);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7986,'FOLDEREID',5051);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (7995,'LEKA',5052);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9145,'SAMUELSBERG',1940);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9149,'BIRTAVARRE',1940);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9155,'SØRKJOSEN',1942);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9240,'TROMSØ',1902);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9416,'HARSTAD',1903);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9456,'ENGENES',1917);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9537,'TVERRELVDALEN',2012);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9591,'HASVIK',2015);
INSERT INTO postnummer(Postnummer,Poststed,KommuneKode) VALUES (9611,'RYPEFJORD',2004);


-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `postnummerIKommunerMedFleireLag` (
  `id` int(2) PRIMARY KEY AUTO_INCREMENT,
  `postnummerFra` integer NOT NULL,
  `postnummerTil` integer NOT NULL,
  `lokallag` int(3) NOT NULL,
  `fylke` int(3) NOT NULL,
  FOREIGN KEY(`lokallag`) REFERENCES `lokallag` (`id`),
  INDEX (`lokallag`),
  FOREIGN KEY(`fylke`) REFERENCES `fylker` (`id`),
  INDEX (`fylke`)
);

INSERT INTO `postnummerIKommunerMedFleireLag` (postnummerFra, postnummerTil, lokallag, fylke) VALUES
(1200, 1299, (select id from lokallag where navn = 'Rødt Oslo Søndre Nordstrand'), 3),
(1187, 1189, (select id from lokallag where navn = 'Rødt Oslo Østensjø'), 3),
(1150 ,1185 , (select id from lokallag where navn = 'Rødt Oslo Nordstrand'), 3),
(0970 ,0976 , (select id from lokallag where navn = 'Rødt Oslo Grorud'), 3),
(0951 ,0964 , (select id from lokallag where navn = 'Rødt Oslo Grorud'), 3),
(0950 ,0950 , (select id from lokallag where navn = 'Rødt Oslo Bjerke'), 3),
(0851 ,0884 , (select id from lokallag where navn = 'Rødt Oslo Nordre Aker'), 3),
(0850 ,0850 , (select id from lokallag where navn = 'Rødt Oslo St. Hanshaugen'), 3),
(0750 ,0791 , (select id from lokallag where navn = 'Rødt Oslo Vest'), 3),
(0678 ,0694 , (select id from lokallag where navn = 'Rødt Oslo Østensjø'), 3),
(0677 ,0677 , (select id from lokallag where navn = 'Rødt Oslo Nordstrand'), 3),
(0672 ,0676 , (select id from lokallag where navn = 'Rødt Oslo Alna'), 3),
(0671 ,0671 , (select id from lokallag where navn = 'Rødt Oslo Østensjø'), 3),
(0668 ,0670 , (select id from lokallag where navn = 'Rødt Oslo Alna'), 3),
(0667 ,0667 , (select id from lokallag where navn = 'Rødt Oslo Østensjø'), 3),
(0664 ,0666 , (select id from lokallag where navn = 'Rødt Oslo Alna'), 3),
(0650 ,0663 , (select id from lokallag where navn = 'Rødt Oslo Gamle Oslo'), 3),
(0589 ,0598 , (select id from lokallag where navn = 'Rødt Oslo Bjerke'), 3),
(0587 ,0588 , (select id from lokallag where navn = 'Rødt Oslo Nordre Aker'), 3),
(0586 ,0586 , (select id from lokallag where navn = 'Rødt Oslo Bjerke'), 3),
(0585 ,0585 , (select id from lokallag where navn = 'Rødt Oslo Grünerløkka'), 3),
(0580 ,0584 , (select id from lokallag where navn = 'Rødt Oslo Bjerke'), 3),
(0579 ,0579 , (select id from lokallag where navn = 'Rødt Oslo Grünerløkka'), 3),
(0577 ,0578 , (select id from lokallag where navn = 'Rødt Oslo Gamle Oslo'), 3),
(0562 ,0576 , (select id from lokallag where navn = 'Rødt Oslo Grünerløkka'), 3),
(0561 ,0561 , (select id from lokallag where navn = 'Rødt Oslo Gamle Oslo'), 3),
(0556 ,0560 , (select id from lokallag where navn = 'Rødt Oslo Grünerløkka'), 3),
(0555 ,0555 , (select id from lokallag where navn = 'Rødt Oslo Sagene'), 3),
(0550 ,0554 , (select id from lokallag where navn = 'Rødt Oslo Grünerløkka'), 3),
(0486 ,0495 , (select id from lokallag where navn = 'Rødt Oslo Nordre Aker'), 3),
(0485 ,0845 , (select id from lokallag where navn = 'Rødt Oslo Sagene'), 3),
(0484 ,0848 , (select id from lokallag where navn = 'Rødt Oslo Nordre Aker'), 3),
(0457 ,0483 , (select id from lokallag where navn = 'Rødt Oslo Sagene'), 3),
(0450 ,0456 , (select id from lokallag where navn = 'Rødt Oslo St. Hanshaugen'), 3),
(0445 ,0445 , (select id from lokallag where navn = 'Rødt Oslo Sagene'), 3),
(0373 ,0383 , (select id from lokallag where navn = 'Rødt Oslo Vest'), 3),
(0372 ,0372 , (select id from lokallag where navn = 'Rødt Oslo Nordre Aker'), 3),
(0362 ,0371 , (select id from lokallag where navn = 'Rødt Oslo Vest'), 3),
(0358 ,0361 , (select id from lokallag where navn = 'Rødt Oslo St. Hanshaugen'), 3),
(0350 ,0357 , (select id from lokallag where navn = 'Rødt Oslo Vest'), 3),
(0349 ,0349 , (select id from lokallag where navn = 'Rødt Oslo Nordre Aker'), 3),
(0340 ,0340 , (select id from lokallag where navn = 'Rødt Oslo St. Hanshaugen'), 3),
(0252 ,0287 , (select id from lokallag where navn = 'Rødt Oslo Vest'), 3),
(0251 ,0251 , (select id from lokallag where navn = 'Rødt Oslo St. Hanshaugen'), 3),
(0250 ,0250 , (select id from lokallag where navn = 'Rødt Oslo Vest'), 3),
(0198 ,0198 , (select id from lokallag where navn = 'Rødt Oslo Nordstrand'), 3),
(0194 ,0196 , (select id from lokallag where navn = 'Rødt Oslo Gamle Oslo'), 3),
(0193 ,0193 , (select id from lokallag where navn = 'Rødt Oslo Nordstrand'), 3),
(0187 ,0192 , (select id from lokallag where navn = 'Rødt Oslo Gamle Oslo'), 3),
(0175 ,0175 , (select id from lokallag where navn = 'Rødt Oslo Grünerløkka'), 3),
(0186 ,0186 , (select id from lokallag where navn = 'Rødt Oslo Grünerløkka'), 3),
(0183 ,0185 , (select id from lokallag where navn = 'Rødt Oslo St. Hanshaugen'), 3),
(0182 ,0182 , (select id from lokallag where navn = 'Rødt Oslo Grünerløkka'), 3),
(0151 ,0166 , (select id from lokallag where navn = 'Rødt Oslo St. Hanshaugen'), 3),
(0176 ,0181 , (select id from lokallag where navn = 'Rødt Oslo St. Hanshaugen'), 3),
(0168 ,0174 , (select id from lokallag where navn = 'Rødt Oslo St. Hanshaugen'), 3),
(0167 ,0167 , (select id from lokallag where navn = 'Rødt Oslo Vest'), 3),
(0150 ,0150 , (select id from lokallag where navn = 'Rødt Oslo Gamle Oslo'), 3),
(0915 ,0915 , (select id from lokallag where navn = 'Rødt Oslo Stovner'), 3),
(0968 ,0969 , (select id from lokallag where navn = 'Rødt Oslo Stovner'), 3),
(0977 ,0988 , (select id from lokallag where navn = 'Rødt Oslo Stovner'), 3),
(1000 ,1004 , (select id from lokallag where navn = 'Rødt Oslo Alna'), 3),
(1005 ,1005 , (select id from lokallag where navn = 'Rødt Oslo Stovner'), 3),
(1006 ,1054 , (select id from lokallag where navn = 'Rødt Oslo Alna'), 3),
(1055 ,1055 , (select id from lokallag where navn = 'Rødt Oslo Stovner'), 3),
(1056 ,1083 , (select id from lokallag where navn = 'Rødt Oslo Alna'), 3),
(1084 ,1089 , (select id from lokallag where navn = 'Rødt Oslo Stovner'), 3),
(5004	,5004	, (select id from lokallag where navn = 'Rødt Bergen Sentrum'), 12),
(5011	,5022	, (select id from lokallag where navn = 'Rødt Bergen Sentrum'), 12),
(5033	,5033	, (select id from lokallag where navn = 'Rødt Bergen Nord'), 12),
(5036	,5043	, (select id from lokallag where navn = 'Rødt Bergen Nord'), 12),
(5052	,5053	, (select id from lokallag where navn = 'Rødt Bergen Vest'), 12),
(5059	,5059	, (select id from lokallag where navn = 'Rødt Bergen Vest'), 12),
(5063	,5067	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5073	,5075	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5081	,5089	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5094	,5096	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5141	,5144	, (select id from lokallag where navn = 'Rødt Bergen Vest'), 12),
(5145	,5145	, (select id from lokallag where navn = 'Rødt Bergen Sentrum'), 12),
(5146	,5161	, (select id from lokallag where navn = 'Rødt Bergen Vest'), 12),
(5163	,5173	, (select id from lokallag where navn = 'Rødt Bergen Vest'), 12),
(5176	,5184	, (select id from lokallag where navn = 'Rødt Bergen Vest'), 12),
(5221	,5235	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5238	,5253	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5260	,5269	, (select id from lokallag where navn = 'Rødt Bergen Nord'), 12),
(5009	,5009	, (select id from lokallag where navn = 'Rødt Bergen Vest'), 12),
(5055	,5055	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5072	,5072	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5093	,5093	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5097	,5097	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5236	,5236	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5222	,5224	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5081	,5081	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5232	,5232	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5073	,5073	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5097	,5097	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5160	,5165	, (select id from lokallag where navn = 'Rødt Bergen Vest'), 12),
(5032	,5032	, (select id from lokallag where navn = 'Rødt Bergen Nord'), 12),
(5034	,5035	, (select id from lokallag where navn = 'Rødt Bergen Nord'), 12),
(5010	,5010	, (select id from lokallag where navn = 'Rødt Bergen Sentrum'), 12),
(5056	,5056	, (select id from lokallag where navn = 'Rødt Bergen Vest'), 12),
(5037	,5037	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5057	,5057	, (select id from lokallag where navn = 'Rødt Bergen Vest'), 12),
(5258	,5258	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5006	,5008	, (select id from lokallag where navn = 'Rødt Bergen Møhlenpris'), 12),
(5010	,5010	, (select id from lokallag where navn = 'Rødt Bergen Møhlenpris'), 12),
(5005	,5005	, (select id from lokallag where navn = 'Rødt Bergen Sentrum'), 12),
(5237	,5237	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(5058	,5058	, (select id from lokallag where navn = 'Rødt Bergen Vest'), 12),
(5100	,5136	, (select id from lokallag where navn = 'Rødt Bergen Nord'), 12),
(5099	,5099	, (select id from lokallag where navn = 'Rødt Bergen Sør'), 12),
(7069,7069,(select id from lokallag where navn ='Trondheim Strinda'), 50),
(7046,7059,(select id from lokallag where navn ='Trondheim Strinda'), 50),
(7070,7093,(select id from lokallag where navn ='Rødt Trondheim Sentrum'), 50),
(7097,7099,(select id from lokallag where navn ='Rødt Trondheim Sentrum'), 50),
(7400,7499,(select id from lokallag where navn ='Rødt Trondheim Sentrum'), 50),
(7014,7014,(select id from lokallag where navn ='Rødt Trondheim Østbyen'), 50),
(7000,7013,(select id from lokallag where navn ='Rødt Trondheim Sentrum'), 50),
(7040,7045,(select id from lokallag where navn ='Rødt Trondheim Østbyen'), 50),
(7066,7068,(select id from lokallag where navn ='Rødt Trondheim Østbyen'), 50),
(7019,7019,(select id from lokallag where navn ='Rødt Trondheim Sentrum'), 50),
(7015,7016,(select id from lokallag where navn ='Rødt Trondheim Sentrum'), 50),
(7017,7018,(select id from lokallag where navn ='Rødt Trondheim Ila'), 50),
(7020,7020,(select id from lokallag where navn ='Rødt Trondheim Ila'), 50),
(7021,7039,(select id from lokallag where navn ='Rødt Trondheim Sentrum'), 50);


INSERT INTO `postnummerIKommunerMedFleireLag` (postnummerFra, postnummerTil, lokallag, fylke) VALUES
(5003,5003,(select id from lokallag where navn ='Rødt Bergen Sentrum'), 12),
(5031,5031,(select id from lokallag where navn ='Rødt Bergen Nord'), 12),
(5054,5054,(select id from lokallag where navn ='Rødt Bergen Sør'), 12),
(5068,5068,(select id from lokallag where navn ='Rødt Bergen Sør'), 12),
(5098,5098,(select id from lokallag where navn ='Rødt Bergen Vest'), 12),
(5137,5137,(select id from lokallag where navn ='Rødt Bergen Nord'), 12),
(5174,5174,(select id from lokallag where navn ='Rødt Bergen Vest'), 12),
(5254,5254,(select id from lokallag where navn ='Rødt Bergen Sør'), 12),
(5257,5257,(select id from lokallag where navn ='Rødt Bergen Sør'), 12),
(5259,5259,(select id from lokallag where navn ='Rødt Bergen Sør'), 12);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `brukergruppe` (
  `id` int(2) NOT NULL PRIMARY KEY,
  `navn` varchar(60) NOT NULL
);

INSERT INTO brukergruppe VALUES (0, 'mangler info/samtykke før ringing');
INSERT INTO brukergruppe VALUES (1, 'klar til å ringes');
INSERT INTO brukergruppe VALUES (2, 'ferdigringt');
INSERT INTO brukergruppe VALUES (3, 'slett');
INSERT INTO brukergruppe VALUES (4, 'ugodkjent ringer');
INSERT INTO brukergruppe VALUES (5, 'ringer som aktivt ikke er godkjent');
INSERT INTO brukergruppe VALUES (6, 'godkjent ringer for velgere');
INSERT INTO brukergruppe VALUES (7, 'trenger oppfølging');
INSERT INTO brukergruppe VALUES (8, 'ringer som kan godkjenne ringere i sitt fylke');
INSERT INTO brukergruppe VALUES (9, 'admin');
INSERT INTO brukergruppe VALUES (10, 'prioritert å ringe');
INSERT INTO brukergruppe VALUES (11, 'godkjent ringer for velgere og medlemmer');
INSERT INTO brukergruppe VALUES (12, 'har meldt seg som valgkampfrivillig');

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `person` (
  `id` int(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `hypersysID` int(6) DEFAULT NULL,
  `fornavn` varchar(60) NOT NULL,
  `etternavn` varchar(60) NOT NULL,
  `telefonnummer` varchar(15) DEFAULT NULL UNIQUE,
  `postnummer` integer DEFAULT -1 NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fylke` int(2) DEFAULT -1 NOT NULL,
  `groupID` int(2) DEFAULT 0 NOT NULL,
  `oppretta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `lokallag` int(3) DEFAULT -1 NOT NULL,
  `kilde` varchar(20) DEFAULT 'Ukjent' NOT NULL,
  `IperID` int(10) DEFAULT NULL,
  FOREIGN KEY (`groupID`) REFERENCES `brukergruppe` (`id`),
  FOREIGN KEY(`fylke`) REFERENCES `fylker` (`id`),
  FOREIGN KEY(`lokallag`) REFERENCES `lokallag` (`id`),
  FOREIGN KEY(`postnummer`) REFERENCES `postnummer` (`postnummer`),
  INDEX (`groupID`),
  INDEX (`fylke`),
  INDEX (`telefonnummer`),
  INDEX (`lokallag`),
  INDEX (`postnummer`),
  INDEX (`hypersysID`)
);

-- --------------------------------------------------------

update person set lokallag = (select id from lokallag where navn ='Rødt Bergen Sør') where postnummer in (5259, 5257, 5254, 5068, 5054);
update person set lokallag = (select id from lokallag where navn ='Rødt Bergen Nord') where postnummer in (5031, 5137);
update person set lokallag = (select id from lokallag where navn ='Rødt Bergen Vest') where postnummer in (5098, 5174);
update person set lokallag = (select id from lokallag where navn ='Rødt Bergen Sentrum') where postnummer in (5003, 5003);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `ringer` (
  `id` int(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `oppretta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `personId` int(6) NOT NULL UNIQUE,
  FOREIGN KEY (`personId`) REFERENCES `person` (`id`),
  INDEX(`personId`)
);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `resultat` (
  `id` int(1) NOT NULL PRIMARY KEY,
  `navn` varchar(200) NOT NULL,
  `displaytext`varchar(200) NOT NULL,
  `skalSkjules` bit DEFAULT FALSE,
  `svarte` BIT DEFAULT TRUE
);

INSERT INTO resultat (id, navn, displaytext, svarte) VALUES (0, 'Ikke svar', 'Ikke svar', 0);
INSERT INTO resultat (id, navn, displaytext) VALUES (1, 'Vil ikke ringes før valget, men gjerne etterpå', 'Vil ikke ringes før valget, men gjerne etterpå');
INSERT INTO resultat (id, navn, displaytext) VALUES (2, 'Trenger ikke å bli oppringt igjen (slettes fra alle lister)', 'Trenger ikke å bli oppringt igjen');
INSERT INTO resultat (id, navn, displaytext) VALUES (3, 'Trenger oppfølging av toppkandidat (husk å skrive stikkord om tema i kommentarfeltet)', 'Trenger oppfølging');
INSERT INTO resultat (id, navn, displaytext) VALUES (4, 'Passet ikke, må bli oppringt på spesifikt tidspunkt', 'Ba om å bli oppringt på spesifikt tidspunkt.');
INSERT INTO resultat (id, navn, displaytext) VALUES (5, 'Vil bli valgkampfrivillig og aktiv i et lokallag', 'Vil bli valgkampfrivillig og aktiv i et lokallag');
INSERT INTO resultat (id, navn, displaytext) VALUES (6, 'Vil bli valgkampfrivillig (henvis til rødt.no/frivillig, og si at de også får en e-post med info)', 'Vil bli valgkampfrivillig (henvis til rødt.no/frivillig, og si at de også får en e-post med info om hvordan man kan melde seg.)');
INSERT INTO resultat (id, navn, displaytext) VALUES (7, 'Nei', 'Nei');
INSERT INTO resultat (id, navn, displaytext) VALUES (8, 'Vil bli aktiv i et lokallag(Vi følger opp aktivt med nærmeste lokallag. Om de sier at det ikke finnes lokallag der de bor, fortell hvordan man kan melde seg som kontaktperson og starte lokallag).', 'Vil bli aktiv i et lokallag(Vi følger opp aktivt med nærmeste lokallag. Om de sier at det ikke finnes lokallag der de bor, fortell hvordan man kan melde seg som kontaktperson og starte lokallag).');
INSERT INTO resultat (id, navn, displaytext, skalSkjules, svarte) VALUES (9, 'Samtale startet', 'Samtale startet', 1, 0);
INSERT INTO resultat (id, navn, displaytext, svarte) VALUES (10, 'Flere enn to ikke-svar', 'Flere enn to ikke-svar', 0);
INSERT INTO resultat (id, navn, displaytext) VALUES (11, 'Svarte', 'Svarte');
INSERT INTO resultat (id, navn, displaytext) VALUES (12, 'Ring tilbake', 'Ring tilbake');
INSERT INTO resultat (id, navn, displaytext) VALUES (13, 'Ugyldig svar', 'Ugyldig svar');

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `godkjenning` (
  `id` int(1) AUTO_INCREMENT NOT NULL PRIMARY KEY,
  `godkjenner` int(6) NOT NULL,
  `godkjentPerson` int(6) NOT NULL,
  `nyGroupId` int(2) NOT NULL,
  `tidspunkt` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX(`godkjenner`),
  FOREIGN KEY (`godkjenner`) REFERENCES `ringer` (`id`),
  INDEX(`godkjentPerson`),
  FOREIGN KEY (`godkjentPerson`) REFERENCES `person` (`id`),
  INDEX(`nyGroupId`),
  FOREIGN KEY (`nyGroupId`) REFERENCES `brukergruppe` (`id`)
);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `samtale` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `ringt` int(6) NOT NULL,
  `ringer` int(6) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `resultat` int(1) NOT NULL DEFAULT '0',
  `kommentar` longtext NULL,
  `modus` varchar(20) NOT NULL,
  INDEX (`resultat`),
  FOREIGN KEY (`resultat`) REFERENCES `resultat` (`id`),
  INDEX(`ringt`),
  FOREIGN KEY (`ringt`) REFERENCES `person` (`id`),
  INDEX(`ringer`),
  FOREIGN KEY (`ringer`) REFERENCES `ringer` (`id`)
);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `oppfoelgingValg21` (
  `id` int(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `samtaleId` int(6) NOT NULL,
  `vilBliMerAktiv` tinyint(1) DEFAULT NULL,
  `vilPolitikkLink` tinyint(1) DEFAULT NULL,
  `vilIkkeBliRingt` tinyint(1) DEFAULT NULL,
  `vilHaMedlemsLink` tinyint(1) DEFAULT NULL,
  `vilBliRingtAugust` tinyint(1) DEFAULT NULL,
  `vilHaFellesskapLink` tinyint(1) DEFAULT NULL,
  FOREIGN KEY (`samtaleId`) REFERENCES `samtale` (`id`),
  INDEX (`samtaleId`)
);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `login_attempts` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `hypersysID` int(6) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`hypersysID`) REFERENCES `person` (`hypersysID`),
  INDEX(`hypersysID`)
);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `oppslag` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `ringt` int(6) NOT NULL,
  `ringerHypersysId` int(6) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`ringt`) REFERENCES `person` (`id`),
  INDEX(`ringt`),
  FOREIGN KEY (`ringerHypersysId`) REFERENCES `person` (`hypersysID`),
  INDEX(`ringerHypersysId`)
);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `verving` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `telefonnummer` varchar(15) NOT NULL,
  `fornavn` varchar(60) NOT NULL,
  `etternavn` varchar(60) NOT NULL,
  `verversNavn` varchar(120) DEFAULT NULL,
  `postnummer` integer DEFAULT -1 NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (`postnummer`) REFERENCES `postnummer` (`Postnummer`),
  INDEX(`postnummer`)
);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `ringerIV1` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `telefonnummer` varchar(15) NOT NULL UNIQUE,
  `brukergruppe` int(2) NOT NULL
);

-- --------------------------------------------------------

create or replace view v_mineSamtaler as
select samtale.datetime as tidspunkt, ringt.telefonnummer as oppringtNummer, concat(ringt.fornavn, ' ', ringt.etternavn) as ringtNavn, r.displaytext as resultat,
samtale.kommentar, oppfoelging.id as oppfoelgingId,
ringerPerson.telefonnummer as ringersTelefonnummer, ringerPerson.hypersysID, concat(ringerPerson.fornavn, ' ', ringerPerson.etternavn) as ringerNavn, ringerPerson.lokallag,
samtale.modus as modus
from `samtale` samtale
inner join person ringt on samtale.ringt = ringt.id
inner join ringer ringer on ringer.id = samtale.ringer
inner join person ringerPerson on ringer.personId = ringerPerson.id
left outer join oppfoelgingValg21 oppfoelging on oppfoelging.samtaleId = samtale.id
inner join resultat r on r.id = samtale.resultat;

-- --------------------------------------------------------

create or replace view v_personerSomKanRinges as
SELECT p.lokallag, p.id as id, p.hypersysID as hypersysID, p.fylke, p.groupID as brukergruppe,
(SELECT `datetime` from samtale where ringt = p.id ORDER BY datetime DESC LIMIT 1) as sisteSamtale
  FROM person p
  LEFT OUTER JOIN lokallag l on p.lokallag = l.id
   WHERE p.groupID in (select id from brukergruppe where navn = 'klar til å ringes' or navn = 'prioritert å ringe')
  AND (UNIX_TIMESTAMP(now()) -
    coalesce((select UNIX_TIMESTAMP(max(datetime)) from samtale where samtale.ringt = p.id), 0)
    > 86400)
    -- 86400 sekund = 1 døgn
  AND NOT exists (select 1 from oppslag o where o.ringt=p.id and (UNIX_TIMESTAMP(now())-UNIX_TIMESTAMP(o.datetime)) < 3600 );

-- --------------------------------------------------------

create or replace view v_samtalerResultat AS
SELECT distinct
concat(ringerPerson.fornavn,' ',ringerPerson.etternavn) as ringerNavn,
samtale.datetime as `datetime`,
samtale.kommentar,
r.displaytext as resultat,
concat(ringt.fornavn,' ',ringt.etternavn) as ringtNavn,
ringt.telefonnummer as oppringtNummer,
oppfoelging.id as oppfoelgingId
FROM `samtale` samtale
INNER JOIN `person` ringt on ringt.id = samtale.ringt
INNER JOIN `resultat` r on r.id = samtale.resultat
INNER JOIN `ringer` ringer on ringer.id = samtale.ringer
INNER join `person` ringerPerson on ringerPerson.id = ringer.personId
left outer join oppfoelgingValg21 oppfoelging on oppfoelging.samtaleId = samtale.id
WHERE samtale.resultat != 9
ORDER BY samtale.datetime ASC;

-- --------------------------------------------------------

create or replace view v_slettaMosaic as
SELECT distinct
person.iperID
FROM person person
INNER JOIN samtale samtale on samtale.ringt = person.id
INNER JOIN oppfoelgingValg21 oppfoelging on samtale.id = oppfoelging.samtale_id
WHERE person.kilde = 'Mosaic'
and oppfoelging.vilIkkeBliRingt=1
and person.groupID in (select id from brukergruppe where navn = 'slett' or navn = 'ferdigringt')

-- --------------------------------------------------------
INSERT INTO `person` (`fornavn`, `etternavn`, `telefonnummer`, `postnummer`, `email`, `fylke`, `groupID`, `lokallag`, `hypersysID`, `kilde`) VALUES
('Systembruker', 'Frontend', '+4711223344', -1, null, -1, 4, -1, -2, 'Systembruker');

INSERT INTO `ringer` (`personId`) VALUES
((select id from `person` where fornavn='Systembruker' and etternavn='Frontend'));


INSERT INTO `person` (`fornavn`, `etternavn`, `telefonnummer`, `postnummer`, `email`, `fylke`, `groupID`, `oppretta`, `lokallag`, `kilde`) VALUES
('Telefonnummer som ikke', 'Er inne i systemet', '-1',	-1,	NULL,	-1,	1,	'2020-08-22 23:29:09', -1, 'Systembruker');


INSERT INTO `person` (`fornavn`, `etternavn`, `telefonnummer`, `postnummer`, `email`, `fylke`, `groupID`, `oppretta`, `lokallag`, `kilde`) VALUES
('Donald', ' Duck',	'+4712345678',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 209, 'Verva'),
('Hetti', ' Duck',	'+4712345677',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 209, 'Verva'),
('Letti', ' Duck',	'+4712345679',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Netti', ' Duck',	'+4712345676',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Klodrik', ' Duck',	'+4712345675', 1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Anton', ' Duck',	'+4712345674',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Bestemor', ' Duck',	'+4712345673',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Skrue', 'McDuck',	'+4712345672',	3050,	NULL,	6,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Gulbrand', 'Gråstein',	'+4712345671',	3050,	NULL,	6,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Spøkelseskladden', '',	'+4712345670',	3050,	NULL,	6,	1,	'2020-08-22 23:29:09', 1, 'Verva');

INSERT INTO `person` (`fornavn`, `etternavn`, `telefonnummer`, `postnummer`, `email`, `fylke`, `groupID`, `oppretta`, `lokallag`, `kilde`) VALUES
('Aster', 'ix',	'+4722345678',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Obel', 'ix',	'+4722345677',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Idef', 'ix',	'+4722345679',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Majest', 'ix',	'+4722345676',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Miracul', 'ix',	'+4722345675',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Hermet', 'ix',	'+4722345665',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Trubadur', 'ix',	'+4722346676',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Barometr', 'ix',	'+4722346677',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Gode', 'mine',	'+4722346678',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Senil', 'ix',	'+4722346679',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Armam', 'ix',	'+4722345680',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Lillef', 'ix',	'+4722345681',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Remoul', 'adine',	'+4722345682',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva'),
('Tragicom', 'ix',	'+4722345683',	1,	NULL,	-1,	1,	'2020-08-22 23:29:09', 1, 'Verva');


-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `frivillig` (
  `id` int(6) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `oppretta` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `personId` int(6) NOT NULL UNIQUE,
  `registrertTidspunkt` datetime NOT NULL,
  FOREIGN KEY (`personId`) REFERENCES `person` (`id`),
  INDEX(`personId`),
  `alleredeAktivILokallag` bit DEFAULT FALSE,
  `spraak` varchar(512) DEFAULT NULL,
  `medlemIRoedt` varchar(30) NOT NULL,
  `spesiellKompetanse` varchar(4096) DEFAULT NULL,
  `andreTingDuVilBidraMed` varchar(4096) DEFAULT NULL,
  `fortellLittOmDegSelv` varchar(4096) DEFAULT NULL
);
-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `aktivitet` (
  `aktivitet` varchar(50) NOT NULL PRIMARY KEY
);

INSERT INTO `aktivitet` (`aktivitet`) VALUES
('Stand'),
('SoMe'),
('Doerbanking'),
('Ringing'),
('SMS'),
('Postkasseutdeling'),
('Morgenaksjon'),
('Bil');

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `aktivitetForFrivillig` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `frivillig_id` int(6) NOT NULL,
  `aktivitet` varchar(50) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX(`frivillig_id`),
  FOREIGN KEY (`frivillig_id`) REFERENCES `frivillig` (`id`),
  INDEX(`aktivitet`),
  FOREIGN KEY (`aktivitet`) REFERENCES `aktivitet` (`aktivitet`)
);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `frivilligOpptattAv` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `frivillig_id` int(6) NOT NULL,
  `opptattAv` varchar(200) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX(`frivillig_id`),
  FOREIGN KEY (`frivillig_id`) REFERENCES `frivillig` (`id`)
);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `frivilligKorona` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `frivillig_id` int(6) NOT NULL,
  `haandtering` varchar(30) NOT NULL,
  `personlig` bit NOT NULL,
  `tydelig` varchar(30) NOT NULL,
  `forslag` varchar(500) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX(`frivillig_id`),
  FOREIGN KEY (`frivillig_id`) REFERENCES `frivillig` (`id`)
);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `kontakt` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `frivillig_id` int(6) NOT NULL,
  `tilbakemelding` varchar(1024) DEFAULT NULL,
  `registrert_av` int(6) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  INDEX(`frivillig_id`),
  FOREIGN KEY (`frivillig_id`) REFERENCES `frivillig` (`id`),
  INDEX(`registrert_av`),
  FOREIGN KEY (`registrert_av`) REFERENCES `person` (`id`)
);
-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `melding` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `tekst` longtext NOT NULL,
);

-- --------------------------------------------------------

CREATE TABLE IF NOT EXISTS `sendtMelding` (
  `id` int(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
  `melding_id` int(6) NOT NULL,
  INDEX(`melding_id`),
  FOREIGN KEY (`melding_id`) REFERENCES `melding` (`id`),
  `personmottaker` int(6) NOT NULL,
  INDEX(`person`),
  FOREIGN KEY (`personmottaker`) REFERENCES `person` (`id`),
);

-- --------------------------------------------------------

INSERT INTO `frivillig` (personId, alleredeAktivILokallag, medlemIRoedt, spesiellKompetanse, andreTingDuVilBidraMed, fortellLittOmDegSelv) VALUES
((SELECT id from person where fornavn='Aster' and etternavn='Ix'), true, 'ja', 'rask og effektiv', 'bidrar med alt mogleg', 'frå Gallia'),
((SELECT id from person where fornavn='Obel' and etternavn='Ix'), true, 'Vilbli', 'stor og sterk', 'rydde veg', 'også frå Gallia');

INSERT INTO `aktivitetForFrivillig` (frivillig_id, aktivitet) VALUES
((SELECT id from frivillig where spesiellKompetanse='rask og effektiv'), 'Ringing'),
((SELECT id from frivillig where spesiellKompetanse='rask og effektiv'), 'SoMe'),
((SELECT id from frivillig where spesiellKompetanse='stor og sterk'), 'Doerbanking');

-- --------------------------------------------------------


/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;