-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2021. Ápr 20. 22:21
-- Kiszolgáló verziója: 10.4.13-MariaDB
-- PHP verzió: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `eu`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `eutagok`
--

CREATE TABLE `eutagok` (
  `id` int(3) NOT NULL,
  `mikor` int(4) NOT NULL,
  `orszag` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `fovaros` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `nyelv` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `penz` varchar(20) COLLATE utf8_hungarian_ci NOT NULL,
  `rpenz` varchar(3) COLLATE utf8_hungarian_ci NOT NULL,
  `egyeb` text COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `eutagok`
--

INSERT INTO `eutagok` (`id`, `mikor`, `orszag`, `fovaros`, `nyelv`, `penz`, `rpenz`, `egyeb`) VALUES
(1, 1958, 'Belgium', 'Brüsszel', 'holland, francia, német', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(2, 1958, 'Franciaország', 'Párizs', 'francia', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(3, 1958, 'Hollandia', 'Amszterdam', 'holland', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(4, 1958, 'Luxemburg', 'Luxemburg', 'francia, német', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(5, 1958, 'Németország', 'Berlin', 'német', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(6, 1958, 'Olaszország', 'Róma', 'olasz', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(7, 1973, 'Dánia', 'Koppenhága', 'dán', 'dán korona', 'DKK', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek. Dánia az uniós szerződésekben foglalt kívülmaradási záradék értelmében nem köteles bevezetni az eurót.'),
(8, 1973, 'Írország', 'Dublin', 'ír, angol', 'euró', 'EUR', 'Az önkéntes kívülmaradás lehetőségével élve nem képezi részét a schengeni térségnek.'),
(9, 1981, 'Görögország', 'Athén', 'görög', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(10, 1986, 'Portugália', 'Lisszabon', 'portugál', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(11, 1986, 'Spanyolország', 'Madrid', 'spanyol', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(12, 1995, 'Ausztria', 'Bécs', 'német', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(13, 1995, 'Finnország', 'Helsinki', 'finn, svéd', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(14, 1995, 'Svédország', 'Stockholm', 'svéd', 'svéd korona', 'SEK', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek. Svédország elkötelezte magát amellett, hogy a szükséges feltételek teljesítése után bevezeti az eurót.'),
(15, 2004, 'Ciprus', 'Nicosia', 'görög', 'euró', 'EUR', 'Még nem tartozik az útlevélmentes utazást biztosító schengeni térséghez, de a csatlakozás előkészületei már folyamatban vannak.'),
(16, 2004, 'Csehország', 'Prága', 'cseh', 'cseh korona', 'CZK', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek. Csehország jelenleg készül az euró bevezetésére'),
(17, 2004, 'Észtország', 'Tallin', 'észt', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(18, 2004, 'Lengyelország', 'Varsó', 'lengyel', 'lengyel zloty', 'PLN', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(19, 2004, 'Lettország', 'Riga', 'lett', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(20, 2004, 'Litvánia', 'Vilnius', 'litván', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(21, 2004, 'Magyarország', 'Budapest', 'magyar', 'forint', 'HUF', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek. Magyarország jelenleg készül az euró bevezetésére.'),
(22, 2004, 'Málta', 'Valletta', 'máltai, angol', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(23, 2004, 'Szlovákia', 'Pozsony', 'szlovák', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(24, 2004, 'Szlovénia', 'Ljubljana', 'szlovén', 'euró', 'EUR', 'Tagja az útlevélmentes utazást biztosító schengeni térségnek.'),
(25, 2007, 'Bulgária', 'Szófia', 'bolgár', 'leva', 'BGN', 'Nem tartozik az útlevélmentes utazást biztosító schengeni térséghez, de a csatlakozás előkészületei már folyamatban vannak. Bulgária elkötelezte magát amellett, hogy a szükséges feltételek teljesítése után bevezeti az eurót.'),
(26, 2007, 'Románia', 'Bukarest', 'román', 'román lej', 'RON', 'Még nem tartozik az útlevélmentes utazást biztosító schengeni térséghez, de a csatlakozás előkészületei már folyamatban vannak. Románia elkötelezte magát amellett, hogy a szükséges feltételek teljesítése után bevezeti az eurót.'),
(27, 2013, 'Horvátország', 'Zágráb', 'horvát', 'horvát kuna', 'HRK', 'Nem tagja az útlevélmentes utazást biztosító schengeni térségnek. Horvátország elkötelezte magát amellet, hogy a szükséges feltételek teljesítése után bevezeti az eurót.');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `eutagok`
--
ALTER TABLE `eutagok`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
