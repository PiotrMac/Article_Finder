-- phpMyAdmin SQL Dump
-- version 4.4.3
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas generowania: 18 Sty 2016, 12:17
-- Wersja serwera: 5.6.24
-- Wersja PHP: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `ArticleFinderDB`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `article`
--

CREATE TABLE IF NOT EXISTS `article` (
  `id_artykulu` int(10) unsigned NOT NULL,
  `data_dodania` datetime DEFAULT NULL,
  `tytul` varchar(255) COLLATE utf8_bin NOT NULL,
  `tekst` longtext COLLATE utf8_bin,
  `id_kategorii` int(10) unsigned NOT NULL,
  `email_autora` varchar(255) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `article`
--

INSERT INTO `article` (`id_artykulu`, `data_dodania`, `tytul`, `tekst`, `id_kategorii`, `email_autora`) VALUES
(38, '2016-01-05 10:47:10', 'Jak sondy Voyager spowolniły Jowisza', '<p>Czy coś tak niewielkich rozmiar&oacute;w jak sonda kosmiczna może zmienić położenie planetarnego giganta i&nbsp;to nawet go nie dotykając?</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>W&nbsp;1977 r. NASA wystrzeliła dwie bliźniacze sondy kosmiczne &ndash; Voyager 1 i 2 &ndash; kt&oacute;re miały zbadać układy Jowisza i&nbsp;Saturna. W&nbsp;celu zwiększenia prędkości i tym samym skr&oacute;cenia lotu do najdalszych zakątk&oacute;w Układu Słonecznego obie sondy skorzystały z&nbsp;tzw. asysty grawitacyjnej. Sonda Voyager&nbsp;1 rozpędziła się w&nbsp;polu grawitacyjnym najpierw Jowisza a&nbsp;potem Saturna tak bardzo, że do dziś pozostaje najszybszym obiektem zbudowanym przez człowieka. Jej prędkość ucieczki z&nbsp;Układu Słonecznego przekracza 17&nbsp;km/s. (Co prawda wystrzelona w 1976 roku sonda Helios-2 osiągnęła jeszcze większą prędkość, bo 70 km/s, ale po pierwsze, poruszała się w kierunku DO Słońca, a po drugie, dawno uległa zniszczeniu w jego ekstremalnie gorącym otoczeniu.)</p>\r\n\r\n<p>Asysta grawitacyjna to manewr sondy kosmicznej w&nbsp;polu grawitacyjnym planety, zwykle mający na celu zwiększenie prędkości sondy względem Słońca kosztem prędkości planety (rysunek 1). Asysta grawitacyjna może zostać r&oacute;wnież wykorzystana do zmiany kierunku lotu lub do spowolnienia sondy.&nbsp;</p>\r\n\r\n<p>Na rysunku&nbsp;1 sonda kosmiczna porusza się względem otoczenia z&nbsp;prędkością&nbsp;v. Ponieważ planeta r&oacute;wnież porusza się z&nbsp;pewną prędkością, więc prędkość zbliżania się sondy do planety wynosi v + U, gdzie U &nbsp;to prędkość planety. W&nbsp;polu grawitacyjnym planety ma miejsce zmiana toru ruchu sondy, a&nbsp;<strong>nowa prędkość względem otoczenia wynosi v + 2U czyli jest większa o&nbsp;dwukrotną wartość prędkości planety.</strong>&nbsp;Jest to maksymalny zysk prędkości, jaki możemy uzyskać w wyniku manewru, w&nbsp;praktyce przyspieszenie sondy jest mniejsze ze względu na mniejszą zmianę kierunku toru ruchu.&nbsp;<strong>Należy także zauważyć, że prędkość sondy względem planety nie uległa zmianie&nbsp;</strong>i&nbsp;w&nbsp;dalszym ciągu wynosi v + U!</p>\r\n\r\n<p>W&nbsp;przyrodzie obowiązuje zasada zachowania pędu, więc zmiana prędkości sondy kosmicznej musi być zrekompensowana zmianą prędkości planety. Ponieważ masa planety w&nbsp;por&oacute;wnaniu z&nbsp;masą sondy jest ogromna, oczywiste jest, że zmiana prędkości planety nie będzie duża. Ile ona wyniosła w&nbsp;przypadku misji Voyager? Okazuje się, że zmiana prędkości Jowisza była na tyle mała, że w&nbsp;jej wyniku&nbsp;<strong>za 5 miliard&oacute;w lat</strong>&nbsp;pozycja planety będzie się r&oacute;żniła zaledwie&nbsp;<strong>o&nbsp;1&nbsp;milimetr (!)&nbsp;</strong>od pozycji jaką Jowisz osiągnąłby, gdyby nigdy nie wystrzelono sond Voyager.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tekst: Piotr Michałek</p>\r\n\r\n<p>Obserwatorium Astrogeodynamiczne w Borowcu</p>\r\n\r\n<p><img alt="" src="/img/f1.png" style="height:273px; width:1057px" /></p>\r\n\r\n<p><strong>Źr&oacute;dła:</strong></p>\r\n\r\n<p>Carl Sagan &bdquo;Błękitna kropka&rdquo;, Wydawnictwo Pr&oacute;szyński i Sp&oacute;łka, Warszawa, 1996</p>\r\n\r\n<p>Mechanika nieba &ndash; wykład na kierunku Astronomia UAM</p>', 2, 'User1@User1.pl'),
(39, '2016-01-05 14:39:54', 'Zwierzęta - zombie', '<p>Może niekt&oacute;rzy z&nbsp;was pamiętają scenę z&nbsp;filmu Ridleya Scotta &bdquo;Obcy &ndash; &oacute;smy pasażer Nostromo&rdquo;, w&nbsp;kt&oacute;rej jeden z&nbsp;członk&oacute;w załogi zostaje zaatakowany przez tajemniczego stwora. &Oacute;w tworzy z&nbsp;człowiekiem pewnego rodzaju symbiozę, kt&oacute;ra koń<img src="../../js/tinymce/plugins/emoticons/img/smiley-laughing.gif" alt="laughing" />miercią żywiciela i&nbsp;pasożyta, ale daje w&nbsp;efekcie nową formę życia. To nie rzeczywistość, to fikcja &ndash; chciałoby się powiedzieć, ale obserwacje świata przyrody m&oacute;wią nam zupełnie co innego.</p>\r\n<p>&nbsp;</p>\r\n<p><img dir="ltr" src="../../img/b1.png" alt="" /></p>\r\n<p>&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p><strong><em>Ophiocordyceps unilateralis</em></strong></p>\r\n<p>To nazwa pasożytniczego grzyba, kt&oacute;ry atakuje mr&oacute;wki (najczęściej z gatunku&nbsp;<em>Camponotus leonardi</em>, kt&oacute;ry okazał się najbardziej podatny na infekcję). Celem ataku jest przedłużenie swojego gatunku. Jak do tego dochodzi?&nbsp;</p>\r\n<p>Zarodniki grzyba atakują mr&oacute;wkę i nie tylko żywią się jej ciałem, ale przejmują kontrolę nad m&oacute;zgiem, aby wywoływać odpowiednie zachowania gwarantujące przetrwanie pasożytowi. Zarażona mr&oacute;wka porzuca mrowisko, wspina się na drzewo i mocno wbija żuwaczkę w gł&oacute;wną żyłkę na spodzie liścia, a następnie obumiera. Co ciekawe, grzyb tak steruje mr&oacute;wką, aby ta dotarła do miejsca, kt&oacute;re będzie miało idealne warunki do jego dalszego rozwoju (wysoką wilgotność i temperaturę w granicach 20&ndash;30&deg;C, zwykle położone około 25 cm nad ziemią). Niezwykle interesujące jest też to, że grzyb w czasie swego rozwoju w ciele ofiary żywi się jej mięśniami, nie atakuje jednak zupełnie mięśni odpowiedzialnych za ruch szczęk. Nie niszczy także pancerza, a nawet go wzmacnia w celu ochrony własnego organizmu przed bakteriami.</p>\r\n<p>Grzyb przerasta ciało swojej ofiary i po paru dniach z głowy mr&oacute;wki zaczyna wyrastać długa strzępka zakończona kulą z zarodnikami. Kiedy ta pęka, zarodniki niesione przez wiatr atakują kolejne mr&oacute;wki, kt&oacute;re znalazły się w pobliżu (nawet na obszarze do 1 m&sup2;).&nbsp;</p>\r\n<p>Okazało się jednak, że dla mr&oacute;wek z gatunku&nbsp;<em>Camponotus leonardi&nbsp;</em>jest<em>&nbsp;</em>nadzieja &ndash; w&nbsp;2012&nbsp;roku grupa badaczy z&nbsp;Uniwersytetu Kopenhaskiego, Uniwersytetu Federalnego w&nbsp;Vi&ccedil;osa w Brazylii oraz amerykańskiego Państwowego Uniwersytetu w Pensylwanii pod przewodnictwem prof. Davida Hughesa opublikowała wyniki badań, z&nbsp;kt&oacute;rych wynika, że&hellip; mr&oacute;wkom pomaga grzyb pasożytniczy drugiego stopnia, dla kt&oacute;rego grzyb&nbsp;<em>Ophiocordyceps unilateralis</em>, sterujący zachowaniem mr&oacute;wek jest żywicielem. Mamy tutaj do czynienia z&nbsp;nadpasożytnictwem, czyli pasożytnictwem pasożyta.</p>\r\n<p>Bycie żywicielem w&nbsp;wypadku grzyba&nbsp;<em>Ophiocordyceps unilateralis</em>&nbsp;powoduje spore straty, mianowicie upośledzenie jego funkcji rozrodczych (żywotność organ&oacute;w rozrodczych po zaatakowaniu organizmu przez pasożyta naukowcy oszacowali na 6,5%) i&nbsp;zapobiega rozprzestrzenianiu się zarodnik&oacute;w, kt&oacute;re mogą zainfekować zdrowe mr&oacute;wki.&nbsp;</p>\r\n<p>Nadpasożytnictwo może zatem ograniczać pasożytnictwo na żywicielu podstawowym, w&nbsp;tym wypadku na mr&oacute;wkach.</p>\r\n<p>&nbsp;</p>\r\n<p><strong><em>Apocephalus borealis</em></strong></p>\r\n<p>To p&oacute;łnocnoamerykańskie pasożytnicze owady z rodziny zadrowatych (rodziny niewielkich owad&oacute;w przypominających muszki owoc&oacute;wki), kt&oacute;re atakują m.in. pszczoły i trzmiele.</p>\r\n<p>Samice&nbsp;<em>Apocephalus borealis&nbsp;</em>składają jaja w odwłokach pszcz&oacute;ł. Po wykluciu się larw wewnątrz organizmu owada przejmują one kontrolę nad m&oacute;zgiem zaatakowanego zwierzęcia, kt&oacute;ry zaczyna się dziwnie zachowywać &ndash; traci r&oacute;wnowagę, chodzi w k&oacute;łko, lata podczas deszczu lub silnego wiatru, opuszcza ul w nocy. Larwa rozwija się przez tydzień &ndash; w tym czasie żywi się mięśniami i układem nerwowym żywiciela. Następnie wydostaje się na zewnątrz przez odcinek pomiędzy głową a klatką piersiową i przepoczwarza się. Cały cykl rozwoju trwa 28 dni.&nbsp;</p>\r\n<p>Ze względu na znaczenie pszcz&oacute;ł dla człowieka i zmniejszanie się populacji tych owad&oacute;w także w wyniku infekcji&nbsp;<em>Apocephalus borealis,&nbsp;</em>w Stanach Zjednoczonych (gdzie po raz pierwszy zanotowano tego typu przypadki) powstał specjalny projekt obywatelski &bdquo;ZomBee&nbsp;Watch&rdquo;, na kt&oacute;rego stronie można znaleźć informacje dotyczące działania&nbsp;<em>Apocephalus borealis.</em>&nbsp;Jego sponsorami są Uniwersytet w San Francisco i&nbsp;Muzeum Historii Naturalnej w Los Angeles.</p>\r\n<p>Wśr&oacute;d cel&oacute;w &bdquo;ZomBee&nbsp;Watch&rdquo; jego autorzy wymieniają: lokalizację miejsc w Ameryce P&oacute;łnocnej, gdzie pszczoły są atakowane przez&nbsp;<em>Apocephalus borealis,&nbsp;</em>określenie jak często pszczoły opuszczają swoje ule w nocy, nawet jeśli nie są zaatakowane przez pasożyta oraz zachęcenie lokalnych naukowc&oacute;w do propagowania wiedzy na temat tego zjawiska i&nbsp;obserwowania zmian w środowisku.</p>\r\n<p>&nbsp;</p>\r\n<p>Tekst: Dagmara Bożek-Andryszczak</p>\r\n<p>&nbsp;</p>\r\n<p>Bibliografia:&nbsp;</p>\r\n<p>http://archeowiesci.pl/2010/08/20/grzyb-pasozyt-i-mrowka-zombi/, dostęp: 09.2014.</p>\r\n<p>http://science.psu.edu/news-and-events/2012-news/Hughes4-2012, dostęp: 09.2014.</p>\r\n<p>Projekt &bdquo;ZomBee Watch&rdquo; https://www.zombeewatch.org/, dostęp: 09.2014.</p>', 4, 'User1@User1.pl'),
(40, '2016-01-05 11:09:22', 'Ekstremofile – organizmy żyjące w skrajnie ekstremalnych środowiskach', '<p>Człowiek uważa się za istotę g&oacute;rującą nad innymi stworzeniami &ndash; potrafi wznosić olbrzymie budowle, leczyć choroby, kontrolować siły przyrody lub badać odległe zakątki kosmosu. Są jednak organizmy, kt&oacute;re opanowały sztukę, w&nbsp;kt&oacute;rej człowiek nigdy im nie dor&oacute;wna &ndash; sztukę przetrwania.</p>\r\n<p>&nbsp;</p>\r\n<p><img style="height: 274px; width: 362px;" src="../../img/b2.png" alt="" /></p>\r\n<p><strong>Ekstremofile</strong> &ndash; to grupa organizm&oacute;w, kt&oacute;re charakteryzują się tym, że potrafią żyć (a nawet muszą) w warunkach znacznie odbiegających od tych, w kt&oacute;rych żyje człowiek. Niekt&oacute;re świetnie sobie radzą w wysokiej lub niskiej temperaturze, w wysokim lub niskim pH, inne w bardzo dużym zasoleniu, jeszcze inne w środowisku beztlenowym.</p>\r\n<p>Do niedawna wydawało się, że ludzki żołądek z racji bardzo niskiego pH jest zab&oacute;jczy dla większości bakterii. Rzeczywiście, niewiele bakterii jest w stanie przeżyć w&nbsp;pH&lt;3. Okazało się jednak, że bakteria&nbsp;<em>Helicobacter pylori</em>&nbsp;doskonale radzi sobie z życiem w tak niesprzyjających warunkach. Wytwarza ona substancje, kt&oacute;re zobojętniają kwas zawarty w sokach żołądkowych, co umożliwia jej przeżycie, ale powoduje wiele chor&oacute;b żołądka, m.in. chorobę wrzodową.&nbsp;</p>\r\n<p>Jedną z metod niszczenia mikroorganizm&oacute;w w wodzie jest jej gotowanie. Tymczasem, istnieje organizm,&nbsp;<em>Pyrolobus fumarii</em>, kt&oacute;ry w temperaturze 100&deg;C nie dość, że nie ginie ale&nbsp;dopiero zaczyna się rozmnażać! Jego &bdquo;ulubiona&rdquo; temperatura to 106&deg;C. Został on odkryty na w kominie hydrotermalnym w Oceanie Atlantyckim, gdzie opr&oacute;cz skrajnej temperatury panuje ciśnienie 250 razy większe niż to, w kt&oacute;rym żyje człowiek!&nbsp;</p>\r\n<p>Kolejnym przykładem mikroorganizmu o oryginalnych upodobaniach mieszkaniowych jest&nbsp;<em>Deinococcus radioduran</em>&nbsp;(na zdjęciu) o odporności rodem z komiksu. Bakteria ta upodobała sobie życie w &hellip; wodzie chłodzącej reaktory jądrowe!&nbsp;<em>Deinococcus</em>&nbsp;spokojnie wytrzymuje dawkę 5000 Grej&oacute;w (ilość energii promieniowania/kg masy ciała). Bakteria ta czuje się źle dopiero przy dawce ok. 15 000 Gy!!! Dla por&oacute;wnania średnia dawka promieniowania śmiertelna dla człowieka to około 10 Grej&oacute;w. Dodatkowo jest odporna na wysokie temperatury, stężone kwasy oraz ekstremalnie niskie temperatury.&nbsp;</p>\r\n<p>&nbsp;</p>\r\n<p>Tekst: Szymon Kłossowski</p>', 4, 'User1@User1.pl'),
(41, '2016-01-05 11:11:41', 'Dlaczego w niektórych kalkulatorach naukowych nie ma znaku równości (=)?', '<p>W niekt&oacute;rych kalkulatorach Hewlett-Packard zastosowano system logiczny RPN, upraszczający znacznie obliczenia algebraiczne. Do powstania tego systemu przyczynił się m.in. polski matematyk &ndash; prof. Jan Łukasiewicz. System został wynaleziony ponad 90 lat temu, ma jednak zastosowanie do dziś. Ale po kolei&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>System RPN to z angielskiego&nbsp;<em>Reverse Polish Notation</em>, czyli Odwrotna Notacja Polska.</p>\r\n\r\n<p>Jak powstał RPN?</p>\r\n\r\n<p>W 1920 roku prof. Jan Łukasiewicz opracował system logiczny zwany Notacją Polską, w kt&oacute;rym wyrażenia algebraiczne można zapisywać bez nawias&oacute;w i bez znak&oacute;w r&oacute;wności. Operatory (wykonywane działania) są podawane przed operandami (liczbami). Na przykład 2+3=5 można zapisać +2,3. Notacja Polska stała się podstawą kolejnego wynalazku Odwrotnej Notacji Polskiej, opracowanej przez australijskiego naukowca Charlesa Hamblina, polegającej na &bdquo;odwr&oacute;ceniu&rdquo; Notacji Polskiej, czyli stawianiu operator&oacute;w za liczbami. 2+3=5 można zapisać w tym systemie jako 2,3+.</p>\r\n\r\n<p>Charles Hamblin zaproponował, aby system nazwać Notacją Azciweisakuł (&bdquo;Łukasiewicza&rdquo; pisane od tyłu). System ten na świecie jest jednak znany pod nazwą RPN (ang.<strong>&nbsp;</strong><em>Reverse Polish Notation).&nbsp;</em>Zalety systemu polegają m.in. na tym, że nie ma w nim nawias&oacute;w, dlatego jest szybszy od stosowanego np. w tradycyjnych kalkulatorach systemu z nawiasami. W systemie RPN użytkownik podaje liczby, a potem, co z nimi zrobić.&nbsp;</p>\r\n\r\n<p>Obecnie RPN ma zastosowanie w niekt&oacute;rych językach programowania (FORTH, Postscript) i w kalkulatorach naukowych firmy Hewlett Packard, m.in. w pierwszym naukowym kieszonkowym kalkulatorze tej firmy HP-35 z 1972 r. (uznanym w 2000 roku przez&nbsp;<em>Forbes</em>&nbsp;ASAP za jeden z dwudziestu produkt&oacute;w wszech czas&oacute;w, kt&oacute;re zmieniły świat.&nbsp;</p>\r\n\r\n<p>Przykład:</p>\r\n\r\n<p>Aby podać wynik wyrażenia algebraicznego (4+5):(1+2)=3, kalkulatorem tradycyjnym wykonujemy 12 uderzeń w klawisze, w systemie RPN, np. kalkulatorem HP tylko 9 uderzeń i widzimy już wynik. Oto zapis podanego wyrażenia w systemie RPN:</p>\r\n\r\n<p>4 enter 5 + 1 enter 2 + :</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tekst: Leopold Stempowski</p>\r\n\r\n<p>Bibliografia:&nbsp;</p>\r\n\r\n<p>http://h20331.www2.hp.com/hpsub/us/en/rpn-calculator.html</p>\r\n\r\n<p>http://pl.wikipedia.org/wiki/Odwrotna_notacja_polska</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt="" src="/img/m1.png" /></p>', 3, 'User1@User1.pl'),
(42, '2016-01-05 11:14:28', 'Podróże międzygwiezdne. Co łączy kojota z bajki „Struś Pędziwiatr” ze statkiem Enterprise ze „Star Treka”?', '<p>Flotylle międzygwiezdnych statk&oacute;w kosmicznych od dziesięcioleci przemierzają kosmos, a&nbsp;Ziemianie raz po raz bohatersko odpierają ataki agresywnych kosmit&oacute;w. Wszystko to ma miejsce na kartach powieści i&nbsp;w filmach scince fiction. Czy istnieje szansa, by w&nbsp;przyszłości ludzie swobodnie podr&oacute;żowali chociażby po naszej Galaktyce? Co na temat podr&oacute;ży międzygwiezdnych m&oacute;wi wsp&oacute;łczesna fizyka? Jakie ograniczenia i&nbsp;jakie możliwości dają teoria względności i&nbsp;fizyka kwantowa?</p>\r\n\r\n<p><img alt="" src="/img/i11.png" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Co łączy kojota z&nbsp;bajki &bdquo;Struś Pędziwiatr&rdquo; ze statkiem Enterprise?&nbsp;</strong></p>\r\n\r\n<p>Może się wydawać, że na tak postawione pytanie jest tylko jedna odpowiedź: kompletnie nic. Kojot to postać z kresk&oacute;wki dla dzieci, a Enterprise to przemierzający kosmos statek z filmu &bdquo;Star Trek&rdquo;. Trudno o&nbsp;dw&oacute;ch bardziej r&oacute;żnych bohater&oacute;w, mają oni jednak pewną cechę wsp&oacute;lną: przyspieszają do ogromnych prędkości wbrew podstawowym prawom fizyki. Kojot w pogoni za pędzącym z&nbsp;ogromną prędkością Strusiem Pędziwiatrem wymyśla najr&oacute;żniejsze sposoby, by m&oacute;c poruszać się r&oacute;wnie szybko. A&nbsp;to przyczepi się do rakiety, a&nbsp;to wystrzeli z procy lub katapulty, jego pomysłowość wydaje się być nieograniczona. Oglądając &bdquo;Star Treka&rdquo;, widzimy natomiast, jak statek odpala swoje potężne silniki i&nbsp;w&nbsp;mgnieniu oka znika w&nbsp;bezmiarze kosmosu. O&nbsp;ile łamanie zasad przeczących zdrowemu rozsądkowi w&nbsp;bajkach dla dzieci nie powinno nikogo razić, to takie podejście w gatunku sci&nbsp;fi, kt&oacute;ry ma w&nbsp;nazwie słowo &bdquo;nauka&rdquo;, wymaga co najmniej kilku sł&oacute;w wyjaśnienia.</p>\r\n\r\n<p><strong>Co to jest przeciążenie?</strong></p>\r\n\r\n<p>C&oacute;ż takiego niepokojącego jest w gwałtownym przyspieszaniu? Każdy z&nbsp;nas zna uczucie wgniatania w&nbsp;fotel podczas jazdy samochodem, gdy kierowca mocno wciska pedał gazu. Podobny efekt, ale dużo silniejszy, odczuwają np. piloci myśliwc&oacute;w w czasie wykonywania gwałtownych manewr&oacute;w. Zjawisko to nosi nazwę przeciążenia. Im wyższe przyspieszenie, tym większe przeciążenie. Z&nbsp;punktu widzenia fizyki nie ma znaczenia, czy pojazd przyspiesza, czy zwalnia &ndash; przeciążenia w&nbsp;obu wypadkach są identyczne, r&oacute;żnią się jedynie kierunkiem działającej siły.</p>\r\n\r\n<p>Dlaczego przeciążenia są groźne, możemy sobie uzmysłowić, analizując przypadek spadochroniarza, kt&oacute;ry zapomniał zabrać ze sobą spadochron. Dop&oacute;ki spadochroniarz spada w&nbsp;kierunku ziemi, nic mu nie grozi, bowiem porusza się z&nbsp;przyspieszeniem ziemskim (pomniejszonym przez op&oacute;r powietrza), kt&oacute;re nie jest groźne dla zdrowia. W&nbsp;momencie kontaktu z&nbsp;ziemią jego prędkość zostaje zmniejszona do zera na odcinku kilkudziesięciu centymetr&oacute;w &ndash; innymi słowy spadochroniarz poddany jest ogromnemu przeciążeniu i&nbsp;w&nbsp;efekcie odnosi poważne obrażenia lub ginie.</p>\r\n\r\n<p>Podobnie nieprzyjemne będzie dla pasażera szybko przyspieszającego statku kosmicznego uczucie wgniatania w&nbsp;fotel. Przy odpowiednio dużym przyspieszeniu, siła nacisku fotela działająca na plecy kosmonauty doprowadzi do zmiażdżenia jego ciała. Gwałtowne przyspieszenie statku Enterprise musiałby skończyć się śmiercią całej załogi!</p>\r\n\r\n<p><strong>Łagodnie znaczy zdrowo</strong></p>\r\n\r\n<p>By uniknąć tak przykrych skutk&oacute;w kosmicznej podr&oacute;ży, nasz pojazd musi przyspieszać bardzo łagodnie. Długotrwałe przyspieszenie nie powinno przekraczać wartości 30&nbsp;m/s&sup2;, co mniej więcej odpowiada maksymalnemu przyspieszeniu startującego wahadłowca. Problem w&nbsp;tym, że osiągnięcie dużej prędkości, jaką bez trudu może osiągnąć Enterprise, np. połowę prędkości światła, zajęłoby prawie 58&nbsp;dni. Jest to jednak jeden z&nbsp;mniejszych problem&oacute;w dotykających potencjalnych międzygwiezdnych podr&oacute;żnik&oacute;w. Odległości w&nbsp;kosmosie są tak ogromne, że nawet dwumiesięczne przyspieszenie stanowiłoby tylko niewielki ułamek czasu niezbędny na dotarcie do najbliższej nawet gwiazdy.</p>\r\n\r\n<p><strong>Nieprzekraczalna bariera</strong></p>\r\n\r\n<p>Jeden z&nbsp;postulat&oacute;w teorii względności głosi, że wraz ze wzrostem prędkości rośnie masa poruszającego się obiektu. Innymi słowy im szybciej się poruszamy, tym więcej ważymy. W&nbsp;życiu codziennym nie dostrzegamy tego efektu, ponieważ zmiany prędkości naszych ciał są niewielkie i&nbsp;przyrost masy jest zaniedbywalnie mały. Aby miał on praktycznie znaczenie, prędkość obiektu musi być znaczącym ułamkiem prędkości światła. Oczywiście obecnie osiąganie prędkości podświetlnych jest nierealne.</p>\r\n\r\n<p>Wz&oacute;r opisujący relatywistyczny przyrost masy szybko poruszającego się obiektu przedstawia zamieszczona poniżej rycina.</p>\r\n\r\n<p><img alt="" src="/img/i1.png" /></p>\r\n\r\n<p>W tym wzorze&nbsp;<em>m</em><em>₀</em><em>&nbsp;</em>to masa obiektu w&nbsp;spoczynku,&nbsp;<em>v</em>&nbsp;jest prędkością obiektu, a&nbsp;<em>c</em>&nbsp;prędkością światła. Łatwo sprawdzić, że masa obiektu zaczyna znacząco rosnąć dopiero po osiągnięciu prędkości bliskiej prędkości światła. I&nbsp;tak przy prędkości 0,1&nbsp;c wzrost masy wynosi zaledwie 0,5%. Gdy rozpędzimy się do połowy prędkości światła, nasza masa wzrośnie o&nbsp;około 15%. Gdy prędkość wzrośnie do 90% prędkości światła, będziemy ważyć już ponad dwukrotnie więcej niż w stanie spoczynku. Im bardziej będziemy się zbliżać do prędkości światła, tym szybciej będzie rosła nasza masa. A czy możliwe jest osiągnięcie prędkości światła lub przekroczenie tej granicy? Ze wzoru wynika, że nasza masa w&nbsp;momencie osiągnięcia prędkości światła osiągnie nieskończoną wartość. Przyspieszenie ciała o&nbsp;nieskończonej masie wymagałoby nieskończonej energii, a&nbsp;tyle jej nie ma nawet w&nbsp;całym Wszechświecie. Stąd prosty wniosek: osiągnięcie prędkości światła (nie m&oacute;wiąc już o&nbsp;jego przekroczeniu) jest niemożliwe.</p>\r\n\r\n<p>Z&nbsp;tym ograniczeniem wiąże się poważny problem: odległości w&nbsp;kosmosie. Odległości w&nbsp;kosmosie są ogromne, a&nbsp;skoro nie możemy poruszać się szybciej od światła, potrzebujemy mn&oacute;stwo czasu na pokonanie dużego dystansu. Podr&oacute;ż do najbliższej gwiazdy zajęłaby co najmniej 4,22&nbsp;lat, powr&oacute;t tyle samo, więc cała podr&oacute;ż będzie trwała nie kr&oacute;cej niż ok 8,5&nbsp;roku. Wyprawa na drugą stronę Galaktyki to już czas rzędu 100&nbsp;000&nbsp;lat, podr&oacute;ż do Galaktyki Andromedy &ndash; ponad 2&nbsp;mln lat.</p>\r\n\r\n<p>Teoria względności pozostawia jednak jedną otwartą furtkę do pokonywania odległości z&nbsp;prędkościami większymi niż prędkość światła. Jaką? O tym niebawem&hellip;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Tekst: Piotr Michałek</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Autor i źr&oacute;dło ilustracji:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ryc. Pictr73, https://www.flickr.com/</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 6, 'User1@User1.pl'),
(43, '2016-01-05 11:17:42', 'Wi-Fi Direct, czyli konkurencja dla Bluetootha', '<p>Stowarzyszenie Wi-Fi Alliance rozpoczęło proces certyfikacji funkcji WiFi Direct, kt&oacute;ra zapewni szybki, bezprzewodowy przesył danych w szerszym zakresie niż technologia Bluetooth.</p>\r\n\r\n<p>Czy to początek końca technologii Bluetooth? Stowarzyszenie Wi-Fi Alliance uruchamia bowiem proces certyfikacji konkurencyjnej usługi, kt&oacute;ra zapewni szybki przesył danych z jednego urządzenia do drugiego. Urządzenia zgodne z Wi-Fi Direct mogą pracować jako zwyczajne adaptery WiFi, oferując przy tym możliwość przesyłania multimedialnych (i nie tylko)&nbsp;<a href="http://incontext.pl/st.js?t=c&amp;c=3012&amp;w=danych&amp;s=5267" target="_blank">danych</a>&nbsp;strumieniowo pomiędzy zaszyfrowanymi (WPA2), połączonymi bezprzewodowo urządzeniami.</p>\r\n\r\n<p>W czym nowa funkcja jest lepsza od Bluetootha? Ponoć oferuje znacznie szerszy zasięg i nie wymaga, aby obydwa połączone urządzenia były zgodne z Wi-Fi Direct. Wystarczy jedna z zatwierdzonych kart sieciowych, aby m&oacute;c przesłać dane z netbooka do drukarki nieobsługującej tej funkcjo, ale wyposażonej w &quot;zwykłą&quot; łączność WiFi. Co więcej, jedno urządzenie z Wi-Fi Direct można&nbsp;<a href="http://incontext.pl/st.js?t=c&amp;c=3000&amp;w=po%C5%82%C4%85czy%C4%87&amp;s=5267" target="_blank">połączyć</a>&nbsp;r&oacute;wnocześnie z wieloma innymi urządzeniami.</p>\r\n\r\n<p>Oto karty&nbsp;<a href="http://incontext.pl/st.js?t=c&amp;c=3009&amp;w=sieciowe&amp;s=5267" target="_blank">sieciowe</a>, kt&oacute;re spełniają nowy standard i zostały zatwierdzone przez Wi-Fi Alliance: Atheros XSPAN Dual-band 802.11n PCIe Mini Card (AR928x), Broadcom BCM43224 Dual-Band 802.11n 2&times;2 MIMO PCIe Half Mini Card, Intel Centrino Advanced-N 6200, Ralink MIMObility 802.11n 2&times;2 PCIe Half Mini Card, oraz Realtek RTL8192CE-VA4 HM92C00 PCIe mini card.</p>\r\n\r\n<p><img alt="" src="/img/in1.png" /><br />\r\n<br />\r\nZobacz więcej:&nbsp;&nbsp;<a href="http://www.chip.pl/news/internet-i-sieci/lacznosc-bezprzewodowa/2010/10/wi-fi-direct-czyli-konkurencja-dla-bluetootha#ixzz3wMcGxTdq">http://www.chip.pl/news/internet-i-sieci/lacznosc-bezprzewodowa/2010/10/wi-fi-direct-czyli-konkurencja-dla-bluetootha#ixzz3wMcGxTdq</a></p>', 1, 'User1@User1.pl');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `artykul_multimedia`
--

CREATE TABLE IF NOT EXISTS `artykul_multimedia` (
  `id_multimedia` int(10) unsigned NOT NULL,
  `id_artykulu` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `artykul_uzytkownika`
--

CREATE TABLE IF NOT EXISTS `artykul_uzytkownika` (
  `id_uzytkownika` int(10) unsigned NOT NULL,
  `id_artykulu` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `kategoria`
--

CREATE TABLE IF NOT EXISTS `kategoria` (
  `id_kategorii` int(10) unsigned NOT NULL,
  `nazwa_kategorii` varchar(255) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Zrzut danych tabeli `kategoria`
--

INSERT INTO `kategoria` (`id_kategorii`, `nazwa_kategorii`) VALUES
(1, 'Fizyka'),
(2, 'Matematyka'),
(3, 'Informatyka'),
(4, 'Inna');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `komunikaty`
--

CREATE TABLE IF NOT EXISTS `komunikaty` (
  `id_komunikatu` int(10) unsigned NOT NULL,
  `nazwa_komunikatu` varchar(255) NOT NULL,
  `tresc_komunikatu` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `logi`
--

CREATE TABLE IF NOT EXISTS `logi` (
  `id_log` int(10) unsigned NOT NULL,
  `zawartosc` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `MamuzBlogPost`
--

CREATE TABLE IF NOT EXISTS `MamuzBlogPost` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8_unicode_ci NOT NULL,
  `published` tinyint(1) NOT NULL,
  `createdAt` datetime NOT NULL,
  `modifiedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `MamuzBlogPostsTags`
--

CREATE TABLE IF NOT EXISTS `MamuzBlogPostsTags` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `MamuzBlogTag`
--

CREATE TABLE IF NOT EXISTS `MamuzBlogTag` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id_pozycji` int(10) unsigned NOT NULL,
  `nazwa` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `multimedia`
--

CREATE TABLE IF NOT EXISTS `multimedia` (
  `id_multimedia` int(10) unsigned NOT NULL,
  `odnosnik_do_pliku` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `rola`
--

CREATE TABLE IF NOT EXISTS `rola` (
  `id_roli` int(10) unsigned NOT NULL,
  `typ_uzytkownika` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(10) unsigned NOT NULL,
  `username` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `display_name` varchar(50) DEFAULT NULL,
  `password` varchar(128) NOT NULL,
  `state` smallint(5) unsigned DEFAULT NULL,
  `role_id` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL DEFAULT 'user'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`user_id`, `username`, `email`, `display_name`, `password`, `state`, `role_id`) VALUES
(1, 'User1', 'User1@User1.pl', 'User1@User1.pl', '$2y$14$OTdPLPU6XuY4lPZj/1yD3uJayoz2kgaLR0im6CeHaGlabuh/Usxha', 1, 'admin'),
(2, 'user2', 'user2@user2.pl', 'user2@user2.pl', '$2y$14$hkcBTntXyA/F4Z12CCJEvun8Bs7sBb7JYM353ldOclD.ZYHZ1IbSO', 1, 'user'),
(3, 'User1@user2.pl', 'User1@user2.pl', 'User1@user2.pl', '$2y$14$c9uW6EyqSHR/w.YV39cWS.9oo8AwoezmVxOve4888.3EU5/1bFB/.', 1, 'user'),
(4, 'jhkdghfg@dsff.pl', 'jhkdghfg@dsff.pl', 'jhkdghfg@dsff.pl', '$2y$14$kFaTEECblmha5h65T.JtUeIQKqo21eTj6UZcR7M2Jyf5YcW4A47fq', 1, 'user'),
(5, 'jhkdghfg@d1sff.pl', 'jhkdghfg@d1sff.pl', 'jhkdghfg@d1sff.pl', '$2y$14$Vh0gCoMQ/dKhHAE5eZbcK.dUCeMawNJ2Qu3cJkwh1OXT8Ev5g1hqe', NULL, 'user'),
(6, 'j1hkdghfg@d1sff.pl', 'j1hkdghfg@d1sff.pl', 'j1hkdghfg@d1sff.pl', '$2y$14$UoqOIkkJtE1m.Q.Pwk24KevPXeTN6dSmIAB5Odq4OiTHzRyZmgO4.', 2, 'user');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_role`
--

CREATE TABLE IF NOT EXISTS `user_role` (
  `id` int(11) NOT NULL,
  `role_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `parent_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user_role_linker`
--

CREATE TABLE IF NOT EXISTS `user_role_linker` (
  `user_id` int(11) unsigned NOT NULL,
  `role_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id_artykulu`),
  ADD KEY `id_kategorii` (`id_kategorii`);

--
-- Indexes for table `kategoria`
--
ALTER TABLE `kategoria`
  ADD PRIMARY KEY (`id_kategorii`);

--
-- Indexes for table `komunikaty`
--
ALTER TABLE `komunikaty`
  ADD PRIMARY KEY (`id_komunikatu`);

--
-- Indexes for table `logi`
--
ALTER TABLE `logi`
  ADD PRIMARY KEY (`id_log`);

--
-- Indexes for table `MamuzBlogPost`
--
ALTER TABLE `MamuzBlogPost`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `MamuzBlogPostsTags`
--
ALTER TABLE `MamuzBlogPostsTags`
  ADD PRIMARY KEY (`post_id`,`tag_id`),
  ADD KEY `IDX_817A5E294B89032C` (`post_id`),
  ADD KEY `IDX_817A5E29BAD26311` (`tag_id`);

--
-- Indexes for table `MamuzBlogTag`
--
ALTER TABLE `MamuzBlogTag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_pozycji`);

--
-- Indexes for table `multimedia`
--
ALTER TABLE `multimedia`
  ADD PRIMARY KEY (`id_multimedia`);

--
-- Indexes for table `rola`
--
ALTER TABLE `rola`
  ADD PRIMARY KEY (`id_roli`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_role` (`role_id`),
  ADD KEY `idx_parent_id` (`parent_id`);

--
-- Indexes for table `user_role_linker`
--
ALTER TABLE `user_role_linker`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `idx_role_id` (`role_id`),
  ADD KEY `idx_user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `article`
--
ALTER TABLE `article`
  MODIFY `id_artykulu` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT dla tabeli `kategoria`
--
ALTER TABLE `kategoria`
  MODIFY `id_kategorii` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT dla tabeli `komunikaty`
--
ALTER TABLE `komunikaty`
  MODIFY `id_komunikatu` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `logi`
--
ALTER TABLE `logi`
  MODIFY `id_log` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `MamuzBlogPost`
--
ALTER TABLE `MamuzBlogPost`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `MamuzBlogTag`
--
ALTER TABLE `MamuzBlogTag`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `menu`
--
ALTER TABLE `menu`
  MODIFY `id_pozycji` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `multimedia`
--
ALTER TABLE `multimedia`
  MODIFY `id_multimedia` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `rola`
--
ALTER TABLE `rola`
  MODIFY `id_roli` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT dla tabeli `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `MamuzBlogPostsTags`
--
ALTER TABLE `MamuzBlogPostsTags`
  ADD CONSTRAINT `FK_817A5E294B89032C` FOREIGN KEY (`post_id`) REFERENCES `MamuzBlogPost` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_817A5E29BAD26311` FOREIGN KEY (`tag_id`) REFERENCES `MamuzBlogTag` (`id`) ON DELETE CASCADE;

--
-- Ograniczenia dla tabeli `user_role`
--
ALTER TABLE `user_role`
  ADD CONSTRAINT `fk_parent_id` FOREIGN KEY (`parent_id`) REFERENCES `user_role` (`id`) ON DELETE SET NULL;

--
-- Ograniczenia dla tabeli `user_role_linker`
--
ALTER TABLE `user_role_linker`
  ADD CONSTRAINT `fk_role_id` FOREIGN KEY (`role_id`) REFERENCES `user_role` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
