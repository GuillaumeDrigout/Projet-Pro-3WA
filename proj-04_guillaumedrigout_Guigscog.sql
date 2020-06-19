-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le :  ven. 14 fév. 2020 à 11:38
-- Version du serveur :  5.7.29-0ubuntu0.18.04.1
-- Version de PHP :  7.3.6-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `proj-04_guillaumedrigout_Guigscog`
--

-- --------------------------------------------------------

--
-- Structure de la table `Artist`
--

CREATE TABLE `Artist` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Photo` varchar(30) DEFAULT NULL,
  `Genres` varchar(255) DEFAULT NULL,
  `Bio` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Artist`
--

INSERT INTO `Artist` (`Id`, `Name`, `Photo`, `Genres`, `Bio`) VALUES
(1, 'Herbie Hancock', 'herbiehancock.jpeg', 'Jazz/Jazz-Funk/Fusion...', 'Herbert « Herbie » Jeffrey Hancock, né le 12 avril 1940 à Chicago (États-Unis), est un pianiste, claviériste et compositeur de jazz. Il est l\'un des musiciens de jazz les plus importants et influents à l\'heure actuelle. Il a mêlé au jazz des éléments de soul, de rock, de funk, de disco ainsi que, parfois, quelques rythmes issus du rap.\r\n\r\nHerbie Hancock a joué avec de nombreux grands jazzmen dans les années 1960 et a rejoint le Miles Davis quintet, avec lequel il a redéfini le rôle de la section rythmique. Il a également été un des premiers à utiliser les synthétiseurs et le scratch. Malgré ses expérimentations, la musique d\'Herbie Hancock est restée mélodique et accessible, rencontrant parfois des succès commerciaux, avec en particulier les pièces Cantaloupe Island, Watermelon Man, Chameleon et Rockit.\r\n\r\nIl est aussi acteur, on l\'a vu dans des films tels que Autour de minuit, Hitters et Miles Ahead et plus récemment dans Valérian et la Cité des mille planètes de Luc Besson.'),
(14, 'Kruder & Dorfmeister', 'KruderAndDorfmeister.jpg', NULL, 'Kruder & Dorfmeister’s story is not just a story of refusal and renunciation. As the two started making music together in the early 1990s, there was hardly anything that the two didn’t do “wrong”, and therefore, exactly right. \r\n\r\nAt the time, Vienna was a metropolis of the aspiring techno movement and was active, during the initial heyday of the revolutionary style. But the two gentlemen, K&D, rather followed the tradition of the continental cosmic  “dancefloor” of the 1980s, which searched for a universal language of dance music, influenced by hip hop, rare groove, dub, new wave and last but not least, of music that stood out  between all those categories. \r\n\r\nAs the first post-acid jazz productions of labels like Ninja Tune or Mo Wax heralded a new era, Kruder & Dorfmeister were already a step ahead of those protagonists. The sound of K&D’s groundbreaking debut “G-Stoned”, already apparently influenced by the elegiac arrangements of productions from the 1960s and 1970s of Afro-jazz and Pink Floyd, made many top producers begin scratching the backs of their heads, asking themselves who could have generated such an organically-flowing, complex yet subtle sound with only two Akai samplers, a Roland Space Delay and a dusty mixer. \r\n\r\nOffers came pouring in like heavy rainfall in a mid summers day, but the two stubborn gentlemen didn’t play along: after the success of their “DJ-Kicks” and “Sessions” CDs, which sold millions worldwide, they turned down most of them. \r\n\r\nK&D always enjoyed not following advice and abandoned all of the enticing major offers, all of the promises of full-speed marketing machinery. Instead, they provided musician friends with distribution on their G-Stone label, hung out in the studio and put together follow-up projects, like Dorfmeister & Huber’s Tosca or Kruder’s Peace Orchestra.\r\n\r\nWhoever heard the two DJing at the time, noticed that the cliché of smokey time-loop jazz had long been left behind and gave way to their own spirit of research. Besides excursions to drum & bass and sub-genres, such as broken beat, straight 4/4 rhythms crept into their sets and roughened up the eternal Balearic sunset.\r\n\r\nTo this day the two still maintain an open concept, influenced by a wide-ranging taste in music and their ability to hear music, to feel and to be able to realize their musical conceptions. Kruder & Dorfmeister’s career can, therefore, be more closely compared to that of major role model, Brian Eno, whose work, from Roxy Music or “My Life in the Bush of Ghosts”, to his productions with David Bowie and his “Music for Airports”, was similarly influenced by an all-embodying, perpetually visionary and never shortsighted understanding of music. \r\n\r\nSince the beginning, the goal was to produce a very personalized sound, in which satisfying guidelines of genre was secondary. Peter Kruder ultimately proved that with his productions of DJ Hell’s celebrated “Teufelswerk” and “Zukunftsmusik” albums or Marsmobil’s chart topping “Fairytales Of The Supersurvivor” or the wonderful releases under his own name for Compost, Macro and Gigolo Records. Even Dorfmeister’s Tosca ceaselessly minimalist, almost dadaist tonal studies clearly point in that direction as his collaborations on the acclaimed “The Exchange” album.\r\n\r\nSo the two are happiest when people take their music and their DJ sets for what they are: odes to hearing, feeling, sensing music and tonal language, which does not function like the many spoken languages of the world, but rather as body language: universal, global, unifying. '),
(15, 'The Doors', 'The Doors.jpeg', NULL, 'The Doors [ðə ˈdɔɹz]1 est un groupe de rock américain, originaire de Los Angeles, en Californie. Il est formé en juillet 1965 et dissous en 1973, deux ans après la mort du chanteur Jim Morrison en 1971.\r\n\r\nMalgré une existence plutôt brève, The Doors est l\'un des groupes les plus marquants et les plus fascinants de l\'histoire du rock, et sa musique a influencé de nombreux artistes. Très populaires pendant leurs années d\'activité grâce à des titres comme Break on Through (To the Other Side) ou Light My Fire, les quatre musiciens connurent cependant une plus grande popularité après leur dissolution notamment en raison du culte voué à leur chanteur, Jim Morrison, poète et créateur charismatique, dont la vie tumultueuse et la mort précoce ont contribué à créer la légende. The Doors a réussi à vendre plus de 32,5 millions d\'albums aux États-Unis et plus de 100 millions à travers le monde.\r\n\r\nAffilié à la scène du rock psychédélique, le groupe s\'est distingué par une musique protéiforme et assez particulière, empruntant à la fois au blues (Cars Hiss by My Window), à la pop (Touch Me), au funk (Peace Frog), au jazz (Shaman\'s Blues) mais aussi au flamenco (Spanish Caravan), et à l’opéra (Alabama Song (chanson)), et profondément influencée par l\'art et la poésie en particulier. Toutes ces caractéristiques ont fait des Doors un groupe « culte » qui a inspiré de nombreux artistes.'),
(16, 'Jimi Hendrix', 'JimiHendrix.jpeg', NULL, 'Largement reconnu comme l’un des musiciens les plus créatifs et influents du 20ème siècle, Jimi Hendrix fut un pionnier des possibilités explosives de la guitare électrique. Son style innovant, combinaison de fuzz, de feedback et de distorsion contrôlée, fut à l’origine d’une forme musicale nouvelle. Il est à noter que sa fulgurante ascension musicale se soit déroulée en quatre courtes années alors qu’il ne savait ni lire ni écrire la musique. Son langage musical reste une influence constante pour une myriade de musiciens modernes, de George Clinton à Miles Davis ou Steve Vai et Jonny Lang.\r\n\r\nJimi Hendrix, né Johnny Allen Hendrix le 27 novembre 1942 au King County Hospital de Seattle, sera plus tard rebaptisé James Marshall par son père, James “Al” Hendrix. Le jeune Jimmy (comme on l’appelait alors) se prend d’intérêt pour la musique, influencé par la plupart des artistes majeurs de son temps comme B.B. King, Muddy Waters, Howlin’ Wolf, Buddy Holly, et Robert Johnson. Totalement autodidacte, Jimmy compense son incapacité à lire la musique par l’intensité de son écoute.\r\n\r\nAl avait remarqué l’intérêt de Jimmy pour la guitare et se souvient : “Je faisais faire à Jimmy le ménage de la chambre quand je n’étais pas là, et quand je rentrais, je trouvais des poils de balai au pied du lit. Je lui demandais ‘Et bien, tu n’as pas balayé le sol ?’ et il répondait ‘oh si, je l’ai fait’. Mais je compris plus tard qu’il s’asseyait sur le lit et grattait le balai comme une guitare.” Al dégota alors un vieil ukulélé à une corde qu’il donna à Jimmy, un immense progrès après le balai.\r\nDurant l’été 1958, Al achète pour cinq dollars à un de ses amis une guitare acoustique d’occasion pour Jimmy. Peu de temps après, Jimmy intègre son premier groupe, The Velvetones. Au bout de trois mois, il quitte le groupe pour se consacrer à ses propres activités. L’été suivant, Al offre à Jimmy sa première guitare électrique, une Supro Ozark 1560S ; Jimmy l’utilisera quand il rejoindra The Rocking Kings.\r\n\r\nEn 1961, Jimmy quitte la maison pour s’enrôler dans l’armée américaine et, en novembre 1962, obtient de porter le blason du “Screaming Eagle” des divisions parachutistes. Pendant son séjour à Fort Campbell (Kentucky), Jimmy forme The King Casuals avec le bassiste Billy Cox. Libéré suite à une blessure lors d’un saut en parachute, Jimmy commence à travailler comme guitariste de séance sous le nom de Jimmy James. Vers la fin 1965, Jimmy a déjà joué avec plusieurs têtes d’affiches : Ike and Tina Turner, Sam Cooke, the Isley Brothers et Little Richard. Jimmy se sépare de ce dernier pour former son propre groupe, Jimmy James and the Blue Flames, délaissant le rôle d’accompagnateur pour celui plus en vue de lead-guitariste.\r\n\r\nFin 1965 et début 1966, Jimmy tourne dans les petits clubs de Greenwich Village, attirant l’attention de Chas Chandler, bassiste des Animals, lors d’un concert au Café Wha? La prestation de Jimmy impressionne Chandler qui revient en septembre 1966 et signe un accord avec Hendrix en vue de l’envoyer à Londres et de former un nouveau groupe.\r\n\r\nPassant du role de bassiste à celui de manager, le premier acte de Chandler est de renommer Hendrix “Jimi”. Très rapidement, le tout nouveau Jimi Hendrix Experience, composé du batteur Mitch Mitchell et du bassiste Noel Redding, alimente la rumeur londonienne en cet automne 1966.\r\n\r\n“Hey Joe”, le premier simple de l’Experience, reste dix semaines dans les charts anglais, culminant en 6ème position au début 1967. Ce simple est rapidement suivi d’un album, “Are You Experienced”, une mosaïque musicale psychédélique, riche des hymnes d’une génération. “Are You Experienced” est resté un des albums rock les plus populaires, grâce aux titres “Purple Haze,” “The Wind Cries Mary,” “Foxy Lady,” “Fire,” ou “Are You Experienced?”\r\n\r\nBien que Hendrix remporte un succès foudroyant en Angleterre, ce ne sera qu’à son retour aux Etats-Unis, en juin 1967, qu’il enflammera le public du Monterey International Pop Festival avec sa version incandescente de “Wild Thing.” Du jour au lendemain, The Jimi Hendrix Experience devient l’une des formations les plus populaires et ses tournées sont parmi les plus lucratives au monde.\r\n\r\n“Axis: Bold As Love” succède à “Are You Experienced”. En 1968, Hendrix acquiert une maîtrise accrue de sa direction musicale. Il se familiarise longuement avec les tables de mixage de studio, dont chaque bouton, chaque manette l’aide à clarifier sa vision.\r\nDe retour aux Etats-Unis, Jimi Hendrix crée son propre studio d’enregistrement, Electric Lady Studios, à New York. Le nom de ce projet est à l’origine de sa production la plus ardue, le double album “Electric Ladyland”. Mais les exigences des tournées et du travail en studio au cours de l’année 1968 pèsent sur le groupe qui se sépare en 1969.\r\n\r\nL’été 1969 est celui d’un nouvel essor émotionnel et musical de Jimi Hendrix. En août 1969, à l’occasion de sa performance au Woodstock Music & Art Fair, Jimi réunit une formation éclectique nommée Gypsy Sun & Rainbows, avec Mitch Mitchell, Billy Cox, Juma Sultan et Jerry Velez. Un des sommets de sa prestation de Woodstock, une version sacrilège de “Star Spangled Banner,” (l’hymne américain), mettra en transe le public détrempé du festival.\r\n\r\n1969 sera aussi l’année d’une nouvelle collaboration décisive avec le bassiste Billy Cox et le batteur d’Electric Flag, Buddy Miles. Sous le nom de Band Of Gypsys, le trio se lance dans une série de quatre concerts de Nouvel-An les 31 décembre 1969 et 1er janvier 1970. Les moments forts de ces concerts sortiront au milieu des années 70 sur l’incontournable album “Band Of Gypsys” puis en 1999 sur le double album “Live At The Fillmore East”.\r\n\r\nAu cours de l’année 1970, Jimi réintègre le batteur Mitch Mitchell et en compagnie de Billy Cox à la basse, le trio reforme The Jimi Hendrix Experience. Le groupe enregistre en studio plusieurs titres pour un nouveau double album, provisoirement intitulé “First Rays Of The New Rising Sun”. Malheureusement, Hendrix ne pourra voir l’aboutissement de ce projet d’abord à cause de son planning de tournée surchargé, ensuite en raison de son tragique décès le 18 septembre 1970. Par chance, les enregistrements retenus par Hendrix pour l’album sortiront avec le soutien de sa famille et de l’ingénieur du son Eddie Kramer en 1997 sur l’album “First Rays Of The New Rising Sun”.\r\n\r\nEntre les maquettes et les enregistrements finalisés, Jimi Hendrix a créé un extraordinaire ensemble de chansons au cours de sa brève carrière. La musique de Jimi Hendrix intègre les influences du blues, du rock, du rhythm & blues et du jazz en un éventail de styles qui en fait l’une des figures les plus marquantes de l’histoire de la rock music.'),
(17, 'Brian Auger', 'BrianAuger.jpg', NULL, 'BRIAN AUGER est un organiste britannique de jazz-rock, de progressive rock et de neo disco né le 18/07/1939 à Londres en Angleterre.\r\n\r\nIl joue tout d\'abord du jazz pour le grand JOHN McLAUGHLIN et participe à quelques sessions de studios, comme sur le \"FOR YOUR LOVE\" des YARDBIRDS ou l\'album \"DON\'T SEND ME NO FLOWERS\" de SONNY BOY WILLIAMSON. En 1965, il fonde le premier supergroupe de l\'histoire, THE STEAMPACKET avec RICK BROWN (basse), MICKEY WALLER (batterie), LONG JOHN BALDRY (chant), ROD STEWART (chant), VIC BRIGGS (guitare) et JULIE DRISCOLL (chant), la secrétaire se son manager GIORGIO GOMELSKY.\r\n\r\nEn 1968, son nouveau groupe se nomme TRINITY avec JULIE DRISCOLL comme chanteuse, RICK BROWN (basse), MICKEY WALLER (batterie) et VIC BRIGGS (guitare).\r\n\r\nEn juillet 1970, BRIAN fonde l\'OBLIVION EXPRESS avec JIM MULLEN (guitare, futur VINEGAR JOE et KOKOMO), B. DEANS (basse), ROBBIE McINTOSH (batterie, futur AVERAGE WHITE BAND) et ALEX LIGERTWOOD (chant) que l\'on retrouvera en France dans l\'éphémère TROC, puis avec SANTANA à partir de 1979.\r\n\r\nEn 1982, son album \"HERE AND NOW\" propose du prog-rock et même du neo disco avec \"NIGHT TRAIN TO NOWHERE\".'),
(18, 'Air', 'Air.jpg', NULL, 'Air est un groupe de musique français originaire de Versailles formé en 1995 composé de Jean-Benoît Dunckel et de Nicolas Godin.\r\n\r\nIl est assimilé au mouvement musical French touch (musique électronique française). Son succès est international, particulièrement en Grande-Bretagne et aux États-Unis. En 1998, son premier album Moon Safari est un des disques de l\'année, grâce notamment au hit-single Sexy Boy. Deux ans plus tard, la bande originale The Virgin Suicides composé pour le film du même nom de Sofia Coppola, permet au groupe d\'asseoir sa notoriété.\r\n\r\nÀ la frontière de l\'électronique, de la pop et du rock psychédélique, le groupe crée son propre style musical en offrant des mélodies cosmiques dans lesquelles de nombreux riffs de guitare accompagnent des sons électroniques et des voix vocodées. Malgré leur timidité apparente, Jean-Benoît Dunckel et Nicolas Godin ne boudent pas la scène et organisent régulièrement des tournées internationales connues pour leurs versions alternatives et leurs réinterprétations en direct de certains de leurs titres.\r\n\r\nAir a notamment collaboré avec Beck, Charlotte Gainsbourg, Jarvis Cocker (de Pulp), Neil Hannon (de The Divine Comedy) et Nigel Godrich.'),
(19, 'DJ Shadow', 'DJShadow.jpg', NULL, 'Joshua Paul Davis, dit DJ Shadow, est un musicien, producteur, et disc jockey américain, né le 29 juin 1972 à Hayward, en Californie. Il est aussi reconnu comme une figure emblématique du mouvement hip-hop expérimental. Il est le premier à avoir produit un album entièrement composé de samples. Pour son activité de DJ, il possède une grande collection de 60 000 albums1.\r\n\r\nEn parallèle de ses travaux en solo, DJ Shadow participe à de nombreux autres projets collectifs, avec notamment Cut Chemist (Brainfreeze, Product Placement et The Hard Sell), DJ Krush (Duality, Meiso), Massive Attack (Karmacoma), DJ Q-Bert (Camel Bobsled Race) ou encore UNKLE.'),
(20, 'Jackie Mittoo', 'JackieMittoo.png', NULL, 'Jackie Mittoo, pianiste, organiste, auteur-compositeur jamaïcain né à Browns Town, Saint Ann, Jamaïque le 3 mars 1948 et mort le 16 décembre 1990 à Toronto Canada.\r\n\r\nIl commence à apprendre le piano à l\'âge de 4 ans sous la tutelle de sa grand-mère.\r\n\r\nDans les années 1960, il est membre de The Skatalites, The Rivals, The Sheiks, The Soul Brothers ainsi que des Soul Vendors. En 1963, le producteur Coxsone Dodd lui propose d\'animer des sessions dans son nouveau studio Studio One. Il a aussi joué pour Lloyd \"Matador\" Daley (1968-1969).\r\n\r\nIl émigre à Toronto, au Canada à la fin des années 1960, où il enregistre 3 albums, Wishbone (Summus), Reggae Magic (CTL) et Let\'s Put It All Together (CTL), crée le label Stine-Jac, et ouvre un magasin de disques. Il connait un franc succès avec Wishbone en 1971, et se produit dans de nombreuses salles de Toronto au cours des années 1970. Jackie Mittoo participe à de nombreux groupes de reggae dans les environs de Toronto, notamment Earth Wind and Water, Esso Jaxxon (R. Zee Jackson), Carl Harvey, Lord Tanamo, Boyo Hammond, Carl Otway, The Skatalites, et Jackie James.\r\n\r\nIl continue également à enregistrer des albums pour des producteurs jamaïcains pendant cette période, particulièrement pour Bunny Lee.\r\n\r\nEn 1989, il enregistre Wild Jockey pour Lloyd Barnes, sous le label Wackies.\r\n\r\nMittoo entre à l\'hôpital le 12 décembre 1990, et meurt d\'un cancer le 16 décembre, seulement 4 jours après. Ses funérailles se sont déroulées à la National Arena de Kingston, en Jamaïque, le 3 janvier 1991, en présence de nombreux grands noms du reggae jamaïcain tels que Hortense Ellis, Tinga Stewart, Desmond \"Desi Roots\" Young, Ruddy Thomas, Tommy Cowan, Clement \"Coxsone\" Dodd. Un concert en sa mémoire a été donné simultanément par Vin Gordon, Leroy \'Horsemouth\' Wallace, Glen \'Bagga\' Fagan, Pablo Black, Robert Lynn, Michael \'Ibo\' Cooper, Ken Boothe, Delroy Wilson, Carlene Davis, Tinga Stewart et bien d\'autres.'),
(22, 'Fatboy Slim', 'FatboySlim.jpg', NULL, 'Fatboy Slim, de son vrai nom Quentin Leo Cook, né le 31 juillet 1963 à Redhill (Surrey), est un disc jockey et producteur de big beat britannique. Également connu sous les alias Norman Cook et Brighton Port Authority, il est basé à Brighton.\r\n\r\nDurant son enfance, Norman Cook est en plein dans l\'époque pop britannique des groupes influencés par les Beatles. À l\'adolescence il découvre les rythmes dansants de la house music, qui vont lui révéler son goût pour la musique.\r\n\r\nÀ 19 ans, il entame une double expérience musicale : il se fait remarquer comme DJ à Brighton tout en intégrant The Housemartins comme bassiste. En désaccord avec le style musical du groupe, il décide finalement de poursuivre sa carrière musicale en solo.\r\n\r\nLe début des années 1990, est une période très remplie pour Norman :\r\n\r\nil remixe de nombreux standards comme The SOS Band sur le EP Dub Be Good to Me (label Go! Beat Records) ;\r\nil rejoint le collectif d\'artistes Beats International, avec lequel il participe à quelques gros succès au Royaume-Uni ;\r\nIl fonde le groupe Freak Power en s\'associant au chanteur Ashley Slater.\r\nEn 1994, le duo sort son premier opus : Drive Thru Booty qui comprend notamment le single Turn on Tune in Cop Out (utilisée dans une pub pour Levi\'s). Everything for Everybody, le deuxième album de Freakpower (1996) est un échec. Pour tourner la page, Norman devient Fatboy Slim.\r\n\r\nRencontre décisive pour Fatboy, The Chemical Brothers l\'encouragent à se lancer dans une carrière \"big beat\", ce qu\'il va faire dès son premier album Better Living Through Chemistry (1997). Il pose ainsi les bases de son style : un mélange de hip-hop, de r\'n\'b et de dance. Pour cet album, il cofonde avec Damien Harris, un ancien de Island Record, plus connu sous le nom de Midfield General) son propre label : Skint Records. L\'album plaît par ses samples funky-groove, aussi bien auprès du public (quelques succès dans les charts britanniques) que de la profession (contacts avec Madonna et U2).\r\n\r\nQuelques mois plus tard, le single The Rockafeller Skank est un carton international, très convoité par le cinéma, la télévision ainsi que la publicité. Le succès de You\'ve Come a Long Way, Baby, fin 1998, lui vaut une grande reconnaissance et de nombreuses récompenses. Fatboy Slim remixe alors les plus grands noms, ce qui contribue à sa renommée mondiale.\r\n\r\nEn 2000, Fatboy s\'assagit avec Halfway Between the Gutter and the Stars, issu d\'une collaboration ou de samples de nombre d\'artistes dont Macy Gray, The Who ou Steve Miller Band. A noter que le clip vidéo du titre Weapon of Choice issu de l\'album est dansé par Christopher Walken.\r\n\r\nÀ la fois novateur et respectueux, Fatboy Slim est devenu une figure incontournable de la musique électronique.\r\n\r\nEn 2008, Fatboy Slim crée un nouveau projet en association avec de nombreux artistes : The Brighton Port Authority (The BPA) et sortira un album intitulé I Think We\'re Gonna Need A Bigger Boat.\r\n\r\nUn autre album conceptuel, Here Lies Love, en association avec David Byrne est déjà enregistré et sortira en 2009 sous le label Nonesuch. 22 chanteurs(euses) ont été invité(e)s sur cet album. L\'album traitera de la vie de Imelda Marcos, ancienne première dame des Philippines.'),
(23, 'Supertramp', 'Supertramp.jpg', NULL, 'Supertramp est un groupe rock progressif britannique formé à Londres en 1969 par Roger Hodgson et Rick Davies. Il réalisa ses plus grosses ventes dans les années 1970, à partir de son troisième album, Crime of the century.\r\n\r\nRoger Hodgson a composé et chanté la majorité des tubes tels que Give a Little Bit, Dreamer, The Logical Song, It\'s Raining Again et Breakfast in America. Rick Davies a également composé et chanté des tubes tels que Bloody Well Right, Goodbye Stranger, My Kind of Lady et Cannonball.\r\n\r\nCependant, à l\'instar de Lennon/McCartney pour les Beatles, Roger Hodgson et Rick Davies sont crédités en collaboration pour toutes les chansons du groupe jusqu\'au départ de Hodgson en 1983, chacun interprétant les chansons dont il est l\'auteur.\r\n\r\nLe groupe aurait vendu plus de 60 millions de disques dans le monde, notamment grâce à l\'album Breakfast in America sorti en 1979 et vendu à plus de 20 millions d\'exemplaires.'),
(24, 'Pink Floyd', 'PinkFloyd.jpg', NULL, 'Pink Floyd [pɪŋk flɔɪd]1 est un groupe rock britannique originaire de Londres, en Angleterre. Le groupe a débuté avec un premier album de musique psychédélique pour ensuite bifurquer vers le rock progressif. Formé en 1965, il est considéré comme un pionnier et un représentant majeur de ces styles musicaux. Il est reconnu pour sa musique planante et expérimentale, ses textes philosophiques et satiriques, ses albums-concept et ses performances en concert originales et élaborées. De ses débuts à aujourd\'hui, le groupe a vendu près de 300 millions d\'albums à travers le monde. Aux seuls États-Unis, les ventes des albums de Pink Floyd sont dénombrées par la RIAA à hauteur de 75 millions d\'exemplaires.\r\n\r\nInitialement mené par le guitariste Syd Barrett, le groupe connaît un succès modeste au milieu des années 1960, puis devient l\'un des groupes underground londoniens les plus populaires de la scène psychédélique. Cependant, le comportement de plus en plus instable de Barrett (principalement dû à son importante consommation de LSD), conduit les autres membres à le remplacer par David Gilmour, un ami d\'enfance de Barrett. Le bassiste Roger Waters deviendra progressivement le meneur du groupe, signant toutes les paroles à partir de 1972. Pink Floyd acquiert l\'année suivante une célébrité mondiale avec The Dark Side of the Moon (1973), le troisième album le plus vendu de tous les temps, derrière Back in Black d\'AC/DC et Thriller de Michael Jackson.\r\n\r\nLe groupe enchaîne les succès au cours des années 1970 avec Wish You Were Here (1975), Animals (1977) et The Wall (1979), ce dernier donnant lieu à une adaptation cinématographique. Mais des tensions dans le groupe apparaissent au fil du temps. Pendant la tournée de The Wall, le claviériste Richard Wright est exclu partiellement du groupe (Wright démissionnera après la tournée) par Roger Waters, qui en prend entièrement le contrôle. Après un album, The Final Cut (1983), dont il est l\'unique auteur, Waters quitte le groupe en 1985. En 1987, David Gilmour et Nick Mason, les membres restants, décident d\'enregistrer un nouvel album sans Waters et en réintégrant Richard Wright sur l\'album A Momentary Lapse of Reason (1987) puis sur The Division Bell (1994) tout en recommençant à se produire en concert, puis le groupe met ses activités en sommeil en 1996.\r\n\r\nLes différents membres se réunissent ensuite à quelques occasions dans les années 2000. Pink Floyd dans sa formation la plus connue (avec Gilmour, Mason, Waters et Wright) donne sa dernière prestation publique le 2 juillet 2005 lors du Live 8 à Londres. L\'événement suscite de nombreuses rumeurs de reformation du groupe, démenties par David Gilmour et devenues caduques avec la mort de Richard Wright en 2008. Néanmoins, un ultime album portant le titre The Endless River, constitué d\'enregistrements non utilisés lors des sessions de The Division Bell (1994), est publié en novembre 2014.'),
(26, 'Bill Evans', 'BillEvans.jpg', NULL, 'William John Evans (16 août 1929 - 15 septembre 1980) était un pianiste et compositeur de jazz américain qui jouait principalement en trio. Son utilisation de l\'harmonie impressionniste, de son interprétation inventive du répertoire de jazz traditionnel, des accords de blocs et des lignes mélodiques \"chantantes\" rythmiquement indépendantes continuent d\'influencer les pianistes de jazz aujourd\'hui.\r\n\r\nNé à Plainfield, New Jersey, en 1929, il a suivi une formation classique à la Southeastern Louisiana University et à la Mannes School of Music, où il s\'est spécialisé en composition et a obtenu le \"Artist Diploma\". En 1955, il s\'installe à New York, où il travaille avec le chef d\'orchestre et théoricien George Russell. En 1958, Evans rejoint le sextuor de Miles Davis qui, en 1959, alors immergé dans le jazz modal, enregistre Kind of Blue, l\'album de jazz le plus vendu de tous les temps. Pendant ce temps, Evans jouait également avec Chet Baker pour l\'album Chet.\r\n\r\nFin 1959, Evans quitte le groupe Miles Davis et commence sa carrière en tant que leader avec le bassiste Scott LaFaro et le batteur Paul Motian, un groupe désormais considéré comme un trio de jazz moderne. En 1961, dix jours après avoir terminé un contrat au club de jazz New York Village Vanguard, LaFaro décède dans un accident de voiture. Après des mois de réclusion, Evans refait surface avec un nouveau trio, avec le bassiste Chuck Israels.\r\n\r\nEn 1963, Evans enregistre Conversations with Myself, un album solo utilisant la technique non conventionnelle de superposition sur lui-même. En 1966, il rencontre le bassiste Eddie Gómez, avec qui il travaille pendant onze ans.\r\n\r\nBeaucoup de compositions d\'Evans, comme \"Waltz for Debby\", sont devenues des standards, jouées et enregistrées par de nombreux artistes. Evans a été honoré de 31 nominations aux Grammy Awards et de sept prix, et a été intronisé au Down Beat Jazz Hall of Fame.'),
(27, 'Michael Jackson', 'MichaelJackson.jpg', NULL, 'Michael Jackson, de son nom complet Michael Joseph Jackson, né le 29 août 1958 à Gary (Indiana) et mort le 25 juin 2009 à Los Angeles (Californie), est un auteur-compositeur-interprète, danseur-chorégraphe et acteur américain. Le Livre Guinness des records le désigne comme étant l’artiste le plus couronné de tous les temps. Reconnu comme l’artiste le plus titré de tous les temps par le Rock and Roll Hall of Fame, il est une figure principale de l\'histoire de l\'industrie du spectacle et l\'une des icônes culturelles majeures du xxe siècle.\r\n\r\nSeptième d\'une famille de neuf enfants, il chante avec ses frères dès l\'âge de six ans et commence une carrière professionnelle à onze ans au sein des Jackson Five, groupe formé avec ses frères aînés. Tout en restant membre du groupe (jusqu\'en 1984), il entame en 1971 une carrière solo. Cinq de ses albums solo parus de son vivant figurent parmi les albums les plus vendus au monde : Off the Wall (1979), Thriller (1982), Bad (1987), Dangerous (1991) et HIStory (1995).\r\n\r\nDans les années 1980, il devient une figure majeure de la musique pop. Ses clips musicaux sont ambitieux et novateurs, réalisés comme des courts métrages, notamment pour les titres Beat It, Billie Jean, Thriller, Bad ou Smooth Criminal. Au cours de ses concerts, vidéos et apparitions publiques, il popularise de nombreux pas de danse, dont le moonwalk, qui devient sa signature. Ayant fusionné les genres de musique soul, funk, pop et rock, son style vocal et musical continue d\'influencer de nombreux artistes de hip-hop, pop et r\'n\'b contemporain.\r\n\r\nSurnommé « le roi de la pop » (« The King of Pop »), Michael Jackson a battu plusieurs records dans l\'industrie du disque. Avec plus de 350 millions de disques vendus dans le monde, il se classe parmi les trois plus gros vendeurs de disques de tous les temps, derrière les Beatles et Elvis Presley.\r\n\r\nEn 2000, lors des World Music Awards, il reçoit le « Millenium Award » dans la catégorie Best Selling Recording Artist of All Time (artiste ayant vendu le plus d\'albums de tous les temps). Avec des ventes estimées à 66 millions d\'exemplaires, Thriller demeure l\'album le plus vendu de l\'histoire de la musique enregistrée et a été certifié 33 fois disque de platine aux États-Unis.\r\n\r\nIl participe en outre à plusieurs œuvres caritatives, notamment avec le projet USA for Africa et sa Heal The World Foundation créée à la suite de la tournée Dangerous World Tour. Toutefois, son image publique est ternie par certains aspects de sa vie privée, notamment par ses multiples recours à la chirurgie esthétique, son mode de vie jugé excentrique, et plus encore par deux plaintes pour abus sexuel sur mineur, en 1993 et 2003, n’aboutissant toutefois à aucune condamnation en justice. Ses deux mariages et ses trois enfants font également l\'objet de polémiques.\r\n\r\nAlors qu\'il prépare la série de concerts This Is It qui devaient se tenir à Londres, Michael Jackson meurt à l\'âge de 50 ans d\'une overdose de médicaments. Sa mort soudaine déclenche une immense vague d\'émotion populaire dans le monde entier, comparable à celles qu\'avaient suscité la mort d\'Elvis Presley et de John Lennon, et génère une couverture médiatique d\'une intensité exceptionnelle.'),
(28, 'Eumir Deodato', 'EumirDeodato.jpg', NULL, 'Eumir Deodato de Almeida (portugais brésilien: [ẽʊ̃ˈmiχ djoˈdatu]; né le 22 juin 1942) est un pianiste, compositeur, arrangeur et producteur de disques brésilien, principalement dans le jazz mais qui est connu pour sa fusion éclectique de genres tels que la pop , rock, disco, rythmique et blues, classique, latin et bossa nova.\r\n\r\nDeodato a été nominé pour trois Grammy Awards, remportant le Grammy Award 1974 pour la meilleure performance instrumentale pop pour \"Also Sprach Zarathustra (2001)\". Ses plus de 500 œuvres en tant que producteur et arrangeur incluent les succès de Kool & the Gang \"Celebration\", \"Ladies \'Night\" et \"Too Hot\".'),
(29, 'Steely Dan', 'SteelyDan.jpg', NULL, 'Steely Dan est un groupe de musique américain composé de deux membres auteurs-compositeurs : Donald Fagen (chant, claviers) et Walter Becker (guitare, basse).\r\n\r\nD’abord formé comme un groupe rock conventionnel, Steely Dan a évolué vers un duo mélangeant des genres aussi variés que le rock, le jazz la pop, la musique latine, le blues, le reggae, le rythm and blues, puisant à volonté parmi la crème des musiciens de studio des États-Unis à travers une production et un son particulièrement sophistiqués. Après avoir connu le succès dans les années 1970, notamment avec le disque Aja en 1977, les deux membres fondateurs se séparent dans la foulée de la sortie de l\'album Gaucho en 1980. Donald Fagen connait en solo la réussite critique et commerciale avec The Nightfly deux ans plus tard.\r\n\r\nFagen et Becker refondent leur groupe pour donner des concerts à partir du milieu des années 1990 et publient, vingt ans après, l\'album Two Against Nature qui obtient le prix Grammy de l\'album de l\'année 2000. Le groupe est introduit au Rock and Roll Hall of Fame en 2001, et continue de façon ininterrompue les tournées internationales depuis lors, tandis que leur dernière œuvre originale, Everything Must Go est sortie en 2003. Steely Dan a vendu plus de 40 millions d\'albums au cours de son histoire.\r\n\r\nWalter Becker meurt le 3 septembre 2017 à l\'âge de 67 ans. Donald Fagen annonce alors son intention de « garder vivante » la musique qu\'il a créée avec son partenaire, « aussi longtemps que je le pourrai avec le groupe Steely Dan ».'),
(30, 'Gang Starr', 'Gangstarr.jpg', NULL, 'Gang Starr est un groupe de hip-hop américain, originaire de Boston, dans le Massachusetts. Pionnier du rap East Coast des années 1990, le duo se crée une identité propre en réactualisant le style musical new-yorkais au fil de ses albums.\r\n\r\nLe groupe est formé en 1988, à Brooklyn, New York1, par Keith Elam (connu sous le pseudonyme Keithy E. The Guru) et Mike Dee (alias DJ 1,2 B-Down) avec différents producteurs, comme Donald D, J.V. Johnson ou DJ Mark the 45 King. Après avoir enregistré quelques démos, il signe avec le label Wild Pitch Records et sort en 1987 et 1988 trois maxis, incluant Bust a Move et The Lesson. En 1989, le groupe se sépare et Guru est le seul membre à vouloir continuer l\'aventure. Il prend rapidement contact avec DJ Premier (alors connu sous le nom de Waxmaster C), qui lui envoie une beat tape. Appréciant son travail, il l\'invite à joindre Gang Starr et dans la même année, ils sortent leur premier single, Words I Manifest, et l\'album No More Mr. Nice Guy. Spike Lee les contacte afin de réaliser un morceau pour la bande originale du film Mo\' Better Blues, Jazz Thing.\r\n\r\nEn 1990, le groupe quitte Wild Pitch et signe avec le label Chrysalis Records. Step in the Arena sort en 1991. Daily Operation, le troisième album, sort dès 1992. L\'année 1994 marque la sortie de Hard to Earn, alors que chacun des membres prend part à des projets parallèles : Premier commence à produire pour des artistes de renom comme Nas ou Biggie, et Guru lance la série des Jazzmatazz. Leur cinquième album, Moment of Truth, sort en 1998 et marque une coupure avec un hip-hop dit old school. Plébiscité par la critique, il est certifié disque d\'or aux États-Unis, le 7 mai 1998, par la RIAA. Le style de production de ce disque détermine également la signature sonore de DJ Premier pour les années à venir. Cette même année, les albums Step in the Arena et Daily Operation apparaissent dans la liste des « 100 meilleurs albums de rap » du magazine The Source.\r\n\r\nLeur sixième album, Full Clip: A Decade of Gang Starr, publié en juillet 1999, représente leur décennie dans le monde du hip-hop, sous la forme d\'un best-of agrémenté de titres inédits et de raretés. Le premier morceau extrait de cette compilation, l\'inédit Full Clip, devenu instantanément un classique, contient une dédicace pour Big L, MC de Harlem sauvagement assassiné dans son quartier durant l\'enregistrement du morceau. L\'album est certifié disque d\'or le 19 août 1999, par la RIAA. Publié le 11 février 2003, leur septième album, The Ownerz, est un échec commercial malgré de nombreuses collaborations, dont Jadakiss, Big Shug, Freddie Foxxx, M.O.P. ou Fat Joe. Il atteint malgré tout la cinquième place des R&B Albums et la 18e place du Billboard 200.\r\n\r\nDepuis ce dernier album, DJ Premier et Guru ne collaborent plus. Le groupe est dissout, bien qu\'ils soient restés en bons termes. Premier produit des sons pour des artistes de son label, Year Round Records, tels que Blaq Poet, le vétéran de Queensbridge, ou encore les NYG\'z et Nick Javas. Il anime également une émission, Live From HeadQCourtez, sur Sirius Satellite Radio en compagnie de Big Shug ou Panchi des NYGz.\r\n\r\nGuru se concentre sur sa carrière solo à partir de 2003. Il publie deux albums, l\'un en 2005, Version 7.0: The Street Scriptures et le second en 2009, Guru 8.0: Lost and Found. Ces albums ne se vendent pas beaucoup, aucun d\'eux n\'ayant atteint le disque d\'or. Après avoir combattu plusieurs mois un cancer, il décède le 19 avril 2010 à l\'âge de 48 ans (une confusion semble avoir été initié par certaines sources, mais la publication d\'une copie de son passeport prouve qu\'il est bien né le 17 juillet 1961 et non 1966).'),
(31, 'Bill Frisell', 'BillFrisell.jpg', NULL, 'Bill Frisell est un guitariste de jazz américain né le 18 mars 1951 à Baltimore (Maryland)\r\n\r\nIl est considéré, avec John Scofield et Pat Metheny, comme l\'un des plus célèbres et des plus admirés guitaristes de jazz de ces dernières années. Une particularité est l\'extrême diversité des styles qu\'il aborde (folk, bop, expérimental…).\r\n\r\nFrisell est né à Baltimore. Il a passé la majeure partie de sa jeunesse aux alentours de Denver, Colorado et a étudié la musique à l\'université du Nord Colorado. Son professeur était Dale Bruning, qui continue aujourd\'hui à enseigner, et avec qui Frisell a même enregistré un album en duo. Frisell est ensuite allé étudier au Berklee College of Music à Boston où il reçoit l\'enseignement de Jim Hall ce qui a énormément influencé son jeu et sa sonorité.\r\n\r\nLa carrière de Frisell a véritablement démarré lorsque Pat Metheny, indisponible pour un enregistrement, le recommanda à Manfred Eicher du label ECM. Frisell enregistre alors plusieurs albums pour le label et participa notamment aux albums Paths, Prints et Wayfarer, de Jan Garbarek. Ce dernier est particulièrement séduit par l\'imagination et les véritables paysages sonores que déploie Frisell. Son premier album sous son nom fut In Line, album solo, avec toutefois la participation du bassiste Arild Andersen sur quelques pistes.\r\n\r\nSon premier groupe, constitué de Kermit Driscoll à la basse, Joey Baron à la batterie, et Hank Roberts au violoncelle, reçut un accueil très chaleureux. Assez rapidement le groupe fut réduit à un trio (Frisell/Baron/Driscoll) qui connut un véritable succès. Ce trio forme aussi l\'ossature de groupes plus étoffés.\r\n\r\nDans les années 80, il habite New York et participe activement à la foisonnante scène musicale de la ville. Il collabore en particulier avec John Zorn, et fait partie de son groupe Naked City, groupe avant-gardiste où il se frotte à une approche bruitiste, composée de collages à successions rapides, tout en conservant son son si particulier et la touche d\'ironie qui signe son jeu. Il se fit connaître aussi de par sa collaboration avec Paul Motian, qui déboucha sur la formation du trio Motian/Frisell/Lovano qui connut un grand succès.\r\n\r\nLes années 90 virent la création de deux de ses albums les plus importants :\r\n\r\nHave a Little Faith un recueil de musiques américaines, de Charles Ives et Aaron Copland à Bob Dylan et Madonna\r\nThis Land un recueil bariolé de compositions originales mais très influencées par le folklore américain.\r\nIl s\'implique ensuite dans l\'illustration sonore des films de Buster Keaton, avec son trio. Au milieu des années 90, il s\'installe à Bainbridge Island près de Seattle et continue d\'explorer la piste initiée avec Have a Little Faith en incorporant explicitement des éléments de musique bluegrass et musique country.\r\n\r\nBill Frisell a reçu en 2005 un Grammy Award du meilleur album contemporain pour \"Unspeakable\".'),
(32, 'Linton Kwesi Johnson', 'LintonKwesiJohnson.jpg', NULL, 'Linton Kwesi Johnson (alias LKJ) est un dub poet (poète dub) britannique et musicien de reggae né le 24 août 1952 à Chapelton en Jamaïque. « Kwesi », prénom ashanti réservé aux garçons nés un dimanche, est le surnom qu\'il prit au début de sa carrière poétique.\r\n\r\nEn 1963, il part rejoindre sa famille à Londres. Bien qu\'étant étudiant, il adhère au mouvement anglais des Black Panthers. Il organise par exemple un atelier poésie et participe au groupe de reggae Rasta Love.\r\n\r\nIl commence en 1973 des études de sociologie au Goldsmiths College de Londres. Pendant ces années, il publie son premier texte dans un journal du groupe Race Today Collective, qui publie en 1974 son premier recueil de poésie Voices of the Living and the Dead.\r\n\r\nSuit ensuite en 1975 son deuxième recueil Dread Beat An\' Blood aux éditions Bogle L\'Ouverture. Sa dub poetry est alors sa première reconnaissance, il reçoit en 1977 la bourse d\'études Cecil-Day-Lewis. Le label Island publie en 1978 son premier disque, Dread Beat An\' Blood, sous le nom d\'artiste Poet and the Roots. En 1979 et 1980 suivent les albums suivants : Forces of Victory, un premier succès commercial, qui marque son époque, et Bass Culture, qui, avec son recueil Inglan Is a Bitch publié en même temps, consolide sa renommée de voix lyrique la plus importante du reggae britannique.\r\n\r\nEn même temps, le travail musical, à son avis, apporte beaucoup à son travail social et politique et malgré son grand succès et l\'offre d\'un important contrat de disques, il se consacre à d\'autres activités. Il travaille notamment sur une série de documentaires pour la télévision britannique. Cependant en 1984 il publie Making History, qui est pour certains son meilleur album. Il sort ensuite les deux albums suivants : Tings An\' Times en 1991 et More Time en 1998. En 1991, il publie un album de textes titré également Tings an\' Times. Il ne fait plus de grandes tournées depuis 1985.\r\n\r\nLKJ fonde en 1981 son propre label, LKJ Records, et produit ainsi l\'important poète dub jamaïcain Michal Smith. Ses propres disques sortent également généralement sous son propre label.\r\n\r\nIl fut accompagné lors d\'un de ses concerts en France par la formation de reggae français Bass Culture.\r\n\r\nSa poésie évolue de la récitation de ses propres poèmes en créole jamaïcain au reggae dub, en général écrite en collaboration avec le producteur et artiste britannique Dennis Bovell.\r\n\r\nBien qu\'il emploie l\'anglais dans ses discours aux étudiants et aux politiciens, la poésie de LKJ est écrite en créole jamaïcain.\r\n\r\nLa plupart de sa poésie est politique, abordant les thèmes de l\'oppression policière, des conditions de vie et de l\'expérience d\'être noir en Grande-Bretagne.\r\n\r\nIl s\'est notamment investi dans les manifestations faisant suite à l\'emprisonnement de George Lindo, un homme inculpé pour vol dont la culpabilité n\'avait pas été prouvée. La photographie de Linton Kwesi Johnson récitant un poème au mégaphone devant les manifestants venus réclamer la libération de ce dernier fit la couverture de Dread Beat An\' Blood, son premier album.'),
(33, 'Led Zeppelin', 'LedZeppelin.jpg', NULL, 'Led Zeppelin [lɛd ˈˈzɛpələn] est un groupe de rock britannique, originaire de Londres, en Angleterre. Il est fondé en 1968 par Jimmy Page (guitare), avec Robert Plant (chant), John Paul Jones (basse, claviers) et John Bonham (batterie), et dissous à la suite de la mort de ce dernier, en 1980. À travers un son dominé par la virtuosité et les riffs de son guitariste, la voix puissante de son chanteur pouvant aller jusqu\'à des octaves très élevées, par l\'excellence de son bassiste/claviériste/arrangeur ainsi que par la technique, le groove et l\'inimitable et si souvent samplée « force de frappe » de son batteur, Led Zeppelin est toujours considéré, près de quarante ans après sa séparation, comme l\'un des plus grands groupes de rock tant pour sa réussite artistique, son succès commercial que pour son influence et son prestige.\r\n\r\nL’œuvre du groupe s’inspire de nombreuses sources et genres musicaux, avant tout le blues, le rock et le folk mais également le rockabilly, le reggae, la soul et le funk, le jazz, les musiques classique, celtique, indienne, arabe, pop, rock psychédélique, country, etc.8, autant de styles aussi bien repris sur leurs huit albums studio publiés de 1969 à 1979, qu\'en concert.\r\n\r\nLe groupe a également bâti sa réputation sur ses prestations scéniques devenues légendaires, donnant une large part à l\'improvisation (solos de guitare ou de batterie extensifs) au cours de longs medleys qui constituent autant d\'interprétations réarrangées de leurs propres compositions ; le triple album live How the West Was Won enregistré durant la tournée de 1972 aux États-Unis est une référence de ce type de prestations.\r\n\r\nLed Zeppelin compte plus de 300 millions d\'albums vendus à travers le monde. Tous ses albums sont classés dans le « Top 10 » du hit-parade américain et six y ont atteint la première place (sept au Royaume-Uni). Le magazine Rolling Stone décrit le groupe comme « le plus « lourd » de tous les temps et le plus grand des années soixante-dix ». Il est également considéré comme l\'un des premiers groupes de hard rock, et comme l\'un des pionniers du heavy metal15,16. Introduit au Rock and Roll Hall of Fame en 1995, l\'institution estime que le groupe a été « aussi influent dans la décennie 1970 que les Beatles l\'avaient été dans la précédente »17.\r\n\r\nAprès la mort de John Bonham à 32 ans, entraînant la dissolution du groupe, Page et Plant collaborent à nouveau au sein des Honeydrippers dans les années 1980, puis en tant que duo sous le nom de Page and Plant dans les années 1990. Ils se produisent également brièvement sur scène avec John Paul Jones lors d\'événements exceptionnels, comme le Live Aid en 1985 — avec Phil Collins à la batterie — ou l\'intronisation du groupe au Rock and Roll Hall of Fame en 1995. La plus récente de ces prestations, à ce jour la dernière sous le nom de Led Zeppelin, et le seul concert en 27 ans, s\'est déroulé le 10 décembre 2007 à l\'O2 Arena de Londres, avec Jason Bonham, le fils de John, à la batterie. Ce concert unique a occasionné 20 millions de demandes de tickets pour 20 000 spectateurs tirés au sort, provenant de plus de cinquante pays, ce qui constitue un record absolu en la matière.');

-- --------------------------------------------------------

--
-- Structure de la table `Genre`
--

CREATE TABLE `Genre` (
  `Id` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Genre`
--

INSERT INTO `Genre` (`Id`, `Name`) VALUES
(1, 'Jazz Fusion'),
(2, 'Trip-Hop'),
(3, 'Hip-Hop'),
(4, 'Funk'),
(5, 'Pop'),
(8, 'Reggae'),
(9, 'Rock'),
(10, 'Hard-Rock'),
(11, 'Jazz'),
(12, 'Soul'),
(13, 'House'),
(14, 'Blues'),
(15, 'Dub'),
(16, 'Alternative Hip-Hop'),
(17, 'Electro'),
(18, 'Rap');

-- --------------------------------------------------------

--
-- Structure de la table `Record`
--

CREATE TABLE `Record` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` varchar(10000) NOT NULL,
  `Photo` varchar(30) DEFAULT NULL,
  `Year` int(11) NOT NULL,
  `NumberOfTracks` int(11) NOT NULL,
  `SpotifyLink` varchar(255) NOT NULL,
  `Artist_Id` int(11) NOT NULL,
  `Genre_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Record`
--

INSERT INTO `Record` (`Id`, `Name`, `Description`, `Photo`, `Year`, `NumberOfTracks`, `SpotifyLink`, `Artist_Id`, `Genre_Id`) VALUES
(3, 'Thrust', 'Le suivi de l\'album révolutionnaire de Headhunters était pratiquement aussi bon que son prédécesseur au succès fou: un tour de force terreux, funky, mais souvent harmoniquement et rythmiquement sophistiqué. Il n\'y a qu\'un seul changement dans la formation des Headhunters - le remplacement du batteur Harvey Mason contre Mike Clark - et le changement entraîne des grooves encore plus complexes. Hancock continue de pénétrer dans le monde de la haute technologie en évolution rapide pour de nouveaux sons, notamment l\'éclat métallique du tout nouveau synthétiseur de cordes ARP qui devenait déjà un élément de base sur les disques pop et jazz-rock. Encore une fois, il n\'y a que quatre pistes longues, dont trois (\"Palm Grease\", \"Actual Proof\", \"Spank-A-Lee\") se concentrent sur le funk, avec beaucoup de clavinet wah-wah de Hancock, des textures et des effets de synthétiseur, et des ruminations de piano électrique qui s\'aventurent encore au-delà des limites extérieures du post-bop. Le changement de rythme est l\'une des plus belles pièces électriques de Hancock, \"Butterfly\", n\'ayant rien à jalouser à tout morceau qu\'il a écrit avant ou depuis, avec des textures de synthé chatoyantes et Bennie Maupin planant sur la soprano (Hancock le réenregistrera 20 ans plus tard dans \"Dis Is Da Drum\", mais cette version est celle à écouter). Cet album de quintette jazz-funk ultra-étanche sonne toujours vivifiant un quart de siècle plus tard.', 'Thrust.jpg', 1974, 4, 'https://open.spotify.com/embed/album/00Uf5PRAinCJ0oiCX1Cv2k', 1, 1),
(4, 'Premiers Symptômes', 'Premiers Symptômes, sorti le 24 août 1997, est le premier EP du groupe de musique électronique français Air. Il s\'agit d\'une compilation de morceaux réalisés avant Moon Safari. L\'édition originale de 1997 ne contient que les cinq premiers morceaux. À la suite du succès de l\'album Moon Safari en 1998, le groupe a publié le 6 septembre 1999 une nouvelle édition de Premiers Symptômes contenant deux morceaux supplémentaires en fin d\'album: Californie et Brakes On, Alex Gopher \"Gordini Mix\".', 'PremiersSymptomes.png', 1997, 7, 'https://open.spotify.com/embed/album/3g9O7pvuaaFRvdzsoSJXVc', 18, 2),
(7, 'Endtroducing', 'Endtroducing..... est le premier album studio de DJ Shadow, publié le 16 septembre 1996 par le label Mo\' Wax. Il a été composé presque uniquement à l\'aide de samples issus d\'autres sources audio, principalement de vinyles. Shadow utilise un équipement minimaliste, notamment un échantillonneur MPC 60.\r\n\r\nAu Royaume-Uni, où DJ Shadow est déjà considéré comme un artiste prometteur, l\'album est un succès critique. Il atteint la 17e de l\'Album Chart et est certifié disque d\'or par la British Phonographic Industry. Quatre singles sont extraits de l\'album dont deux, Midnight in a Perfect World et Stem, sont classés à l\'UK Singles Chart.\r\n\r\nEn 2005, une version Deluxe avec un disque supplémentaire (composé de remixes, de faces B et d\'extraits de ses concerts) intitulé Excessive Ephemera, et un emballage revu à neuf a vu le jour. Le disque bonus existe également en pressage vinyle limité à 2 500 exemplaires10.\r\n\r\nLe travail artistique de l\'ensemble des éditions a été confié à Ben Drury et Will Bankhead, et l\'artiste britannique Brian Cross (B+) a réalisé les photographies.', 'Endtroducing.jpg', 1996, 13, 'https://open.spotify.com/embed/album/4wvqGLk1HThPA0b5lzRK2l', 19, 16),
(9, 'G-Stoned', '\r\nEP 4 pistes d\'Eclectic Downtempo Future Jazz, Trip Hop & Soulful & Jazzy Grooves.\r\n\r\nLe duo acclamé de downtempo d\'Autriche, malgré une discographie relativement courte, a produit et enregistré certaines des sorties les plus essentielles du genre. Le premier EP de leur G-Stoned illustre bien cela. Rendant un joli petit hommage à Simon And Garfunkel dans sa couverture d\'album, il englobe certaines des meilleures qualités de ce duo en un peu plus de 24 minutes.\r\n\r\nCe qui ressort immédiatement dans cette version, c\'est son débit impeccable, chaque morceau mène à l\'autre magnifiquement. Le loungey \"Definition\" est un superbe choix pour un ouvre-porte. Rempli de pianos doux et subtils, de xylophones luxuriants et de confitures de flûtes, il crée une ambiance décontractée qui est parfaitement contrecarrée par \"Deep Sh\'t\". Les chants et rythmes tribaux de ce morceau suivant, rythmés par sa ligne de basse mémorable et ses claviers étranges, sont tous parfaitement équilibrés les uns par les autres. Cela se combine pour un superbe groove, sur une coupe plus atmosphérique et introspective.', 'G-Stoned.jpg', 1993, 4, 'https://open.spotify.com/embed/album/4AKnOEd9fx1pj36xAq5eUN', 14, 2),
(10, 'You\'ve Come a Long Way, Baby', 'You\'ve Come a Long Way, Baby est le 2e album solo de Fatboy Slim, sorti en octobre 1998 (auto-production). C\'est l\'album qui le fait connaître au grand public, avec des chansons souvent utilisées dans les publicités. (Seule la chanson Right Here, Right Now a été utilisée pour la publicité d\'Adidas en 1999).\r\n\r\nLe titre de l\'album est aussi le slogan de la marque de cigarettes Virginia Slims.', 'YouveComeALongWayBaby.jpg', 1998, 11, 'https://open.spotify.com/embed/album/2ELLu16F9TTREQuU4OuAnN', 22, 17),
(11, 'L.A. Woman', 'L.A. Woman est le sixième et dernier album studio des Doors sorti du vivant de Jim Morrison. L\'album, beaucoup plus orienté blues rock que les autres productions du groupe, est enregistré entre novembre 1970 et janvier 1971, et ne sort qu\'en avril 1971, peu avant la mort de Morrison.\r\n\r\nAprès le départ de leur producteur Paul A. Rothchild en novembre 1970, le groupe et Bruce Botnick commencent la production de l\'album à l\'atelier des Doors à Los Angeles. La plupart des morceaux sont enregistrés live en studio, avec toutefois quelques overdubs pour des parties de clavier de Ray Manzarek. Les musiciens Jerry Scheff (basse) et Marc Benno (guitare rythmique) participent à l\'enregistrement.\r\n\r\nC\'est le seul album studio des Doors avec Morrison qui ne sera pas suivi d\'une tournée ; celui-ci a déménagé à Paris au mois de mars, peu avant la sortie de l\'album. Il y meurt le 3 juillet 1971.', 'L.A.Woman.jpg', 1971, 10, 'https://open.spotify.com/embed/album/7IKUTIc9UWuVngyGPtqNHS', 15, 9),
(14, 'Keyboard King At Studio One', 'Cette compilation présente le travail de Jackie Mittoo au Studio One. Elle contient de la musique enregistrée en tant qu\'artiste solo (contrairement aux nombreux chanteurs qu\'il accompagnait). La plupart d\'entre eux sont tirés de ses enregistrements au milieu des années soixante où il enregistrait presque quotidiennement dans les studios de Brentford Road de Studio One développant le son reggae funky qui était sa marque de fabrique.', 'KeyboardKingAtStudioOne.jpg', 2000, 15, 'https://open.spotify.com/embed/album/0U9sCITvNZJxFTXG3MK2Cv', 20, 8),
(15, 'Are You Experienced', 'Are You Experienced est le premier album du groupe The Jimi Hendrix Experience, sorti en 1967.\r\n\r\nCourant 1966, le guitariste américain Jimi Hendrix entre en contact avec l\'ex-Animals Chas Chandler. Chandler et Michael Jeffery deviennent ses managers et l\'invitent à venir enregistrer à Londres. Deux musiciens britanniques, le bassiste Noel Redding et le batteur Mitch Mitchell, sont recrutés pour l\'accompagner au sein d\'un groupe baptisé The Jimi Hendrix Experience. Le trio signe chez Track Records au mois d\'octobre et commence à travailler sur ses premières chansons. Les séances d\'enregistrement de l\'album prennent place dans trois studios londoniens et durent jusqu\'au début du mois d\'avril suivant.\r\n\r\nAre You Experienced paraît au Royaume-Uni le 12 mai 1967 chez Track Records, puis le 23 août aux États-Unis chez Reprise Records. La version américaine de l\'album présente un contenu légèrement différent, certaines chansons ayant été remplacées par les faces A des trois premiers 45 tours du groupe, parus entre décembre 1966 et mai 1967 : Hey Joe, Purple Haze et The Wind Cries Mary. C\'est un succès immédiat des deux côtés de l\'Atlantique. Le disque se classe no 2 des ventes au Royaume-Uni derrière Sgt. Pepper\'s Lonely Hearts Club Band des Beatles et no 5 aux États-Unis, où il est certifié disque d\'or (500 000 exemplaires vendus) en mars 1968.\r\n\r\nAre You Experienced est considéré comme l\'un des albums emblématiques du rock psychédélique, ainsi que l\'un des meilleurs premiers albums de l\'histoire du rock. En 2005, la Bibliothèque du Congrès l\'ajoute à son Registre national des enregistrements en reconnaissance de son importance culturelle.', 'AreYouExperienced.jpg', 1967, 11, 'https://open.spotify.com/embed/album/7rSZXXHHvIhF4yUFdaOCy9', 16, 9),
(16, 'Closer To It!', 'L\'enregistrement en studio le plus fort de Brian Auger\'s Oblivion Express, Closer to It! est le classique d\'Auger. Mettant en vedette sa composition la plus connue, \"Happiness is Just Around the Bend\", cet album s\'envole grâce à la puissance des multiples attaques de clavier d\'Auger. Auger lui-même prend la première place vocale ici, et bien qu\'il s\'appuie sur le multi-tracking pour remplir son son, sa voix correspond mieux à la musique que l\'ancien (et plus tard pour revenir) Alex Ligertwood. La deuxième face présente des reprises du classique du jazz \"Compared to What\" et de \"Inner City Blues\" de Marvin Gaye, qui ajoutent tous deux de la profondeur aux compositions originales. Les congas de Lennox Laington donnent à la musique une atmosphère de type Santana, et tout l\'album s\'infiltre du début à la fin.', 'CloserToIt.jpg', 1973, 6, 'https://open.spotify.com/embed/album/4a2eUds1x272Jt3Wu36Ucj', 17, 1),
(17, 'Breakfast In America', 'Breakfast in America est le sixième album studio du groupe de rock anglais Supertramp, sorti chez A&M Records le 29 mars 1979. Il a été enregistré en 1978 au Village Recorder de Los Angeles. Il a engendré quatre singles américains à succès: \"The Logical Song\" (n ° 6), \"Goodbye Stranger\" (n ° 15), \"Take the Long Way Home\" (n ° 10) et \"Breakfast in America\" ​​(n ° 62). Au Royaume-Uni, \"The Logical Song\" et la chanson-titre étaient tous les deux les 10 meilleurs hits, les deux seuls que le groupe avait dans leur pays d\'origine.\r\n\r\nEn 1980, Breakfast in America a remporté deux Grammy Awards, dont celui du meilleur enregistrement non classique et des nominations aux Grammy Awards pour l\'album de l\'année et la meilleure performance pop par un duo ou un groupe avec des voix. Il détient une certification RIAA de quadruple platine et est devenu l\'album le plus vendu de Supertramp, avec plus de 4 millions d\'exemplaires vendus aux États-Unis seulement. Il a été n ° 1 du palmarès des albums de Billboard Pop pendant six semaines, jusqu\'au 30 juin 1979. L\'album a également frappé n ° 1 en Norvège, en Autriche, en Espagne, au Canada, en Australie et en France.', 'BreakfastInAmerica.jpg', 1979, 10, 'https://open.spotify.com/embed/album/1zcm3UvHNHpseYOUfd0pna', 23, 9),
(18, 'Wish You Were Here', 'Wish You Were Here est le neuvième album studio du groupe britannique Pink Floyd. Enregistré en studio durant la première moitié de 1975, l’album paraît le 15 septembre de la même année. Malgré des critiques mitigées, il rencontre un succès commercial immédiat, si bien qu\'EMI est incapable d\'en fournir suffisamment pour satisfaire la demande. Il est depuis souvent compté parmi les meilleurs albums de Pink Floyd, apparaissant dans de nombreux classements musicaux, dont celui des 500 plus grands albums de tous les temps, dans lequel il apparaît à la 211e place. David Gilmour et Rick Wright, membres du groupe, ont déclaré par la suite qu\'il était leur album favori de Pink Floyd.', 'WishYouWereHere.jpg', 1975, 5, 'https://open.spotify.com/embed/album/6uvBKDGlJAYLH5Vy6RQVsc', 24, 9),
(19, 'Head Hunters', 'Head Hunters est le 13e album de Herbie Hancock sorti en 1973 et produit par Dave Rubinson et Herbie Hancock et distribué par Columbia Records. Cet album intervient à un moment important de la carrière du pianiste qui, après ses enregistrements à Blue Note, son passage avec Miles Davis et des albums plus expérimentaux, s\'engage dans un jazz fusion plus « léger » : le jazz-funk avec une nouvelle formation : The Headhunters.\r\n\r\nCet album est un réel succès et s\'est vendu à plus d\'un million d\'exemplaires.', 'HeadHunters.jpg', 1974, 4, 'https://open.spotify.com/embed/album/5fmIolILp5NAtNYiRPjhzA', 1, 1),
(20, 'Mr. Hands', 'Mr. Hands est le trentième album de Herbie Hancock. Jaco Pastorius apparait en Feat. sur la piste \"4 A.M.\", plus une piste de synthétiseur, \"Textures\", entièrement interprétée par Hancock. \"Shiftless Shuffle\" (initialement enregistré pour l\'album Directstep uniquement au Japon) présente les cinq membres du quintette The Headhunters qui sont apparus pour la première fois sur l\'album Head Hunters de 1973, y compris le batteur original du quintet Harvey Mason. Cet album était le premier sur lequel Hancock utilisait un ordinateur, cette fois un Apple II. Il poursuivra sa relation avec Apple Computer pendant de nombreuses années.\r\n\r\nUn album méconnu à sa sortie, ce serait la dernière sortie de jazz électrique \"hétéro\" de Hancock depuis un certain temps. Les albums suivants se sont davantage concentrés sur ses influences R&B.', 'Mr.Hands.jpg', 1980, 6, 'https://open.spotify.com/embed/album/0ZzOJ3XuyVDBIWxrA17YE5', 1, 1),
(21, 'Dark Side Of The Moon', 'The Dark Side of the Moon est le huitième album studio du groupe de rock progressif britannique Pink Floyd. Paru le 1er mars 1973 aux États-Unis et le 23 mars 1973 au Royaume-Uni, il est souvent considéré comme leur album le plus abouti. Il aborde des thèmes universels, comme le travail, l\'argent, la vieillesse, la guerre, la folie et la mort.\r\n\r\nThe Dark Side of the Moon a la particularité d\'avoir été joué pour la première fois le 20 janvier 1972, soit plus de treize mois avant sa sortie, et d\'avoir été joué et retravaillé durant tout ce temps, sur scène. Le matériel alors utilisé était d\'ailleurs bien plus sophistiqué que celui utilisé pour l\'enregistrement de l\'album. Le groupe se servit, pour l\'enregistrement, de techniques encore rares à l\'époque, et utilisa des synthétiseurs analogiques, comme le VCS 3, sur plusieurs des pistes. Alan Parsons était l\'ingénieur du son responsable de l\'enregistrement, et notamment des principaux aspects sonores présents comme la performance de Clare Torry sur The Great Gig in the Sky.\r\n\r\nLa pochette, réalisée par Storm Thorgerson, est la réponse à la demande du groupe d\'un concept graphique « simple et audacieux ». Le célèbre prisme représente l\'éclairage scénique du groupe, et le livret original de l\'album contenait les paroles des chansons de l\'album.\r\n\r\nResté dans le Billboard 200 américain pendant une période record de 942 semaines — l\'équivalent de près de dix-huit ans — dont 591 consécutives, le disque représente le troisième album le plus vendu de tous les temps (derrière Back in Black d\'AC/DC et Thriller de Michael Jackson), avec des ventes estimées entre 45 et 50 millions d\'exemplaires.\r\n\r\nLes titres Money et Us and Them/Time sont sortis en single, et Money est devenu le premier single à propulser Pink Floyd en tête des ventes.', 'DarkSideOfTheMoon.jpg', 1973, 10, 'https://open.spotify.com/embed/album/2WT1pbYjLJciAR26yMebkH', 24, 9),
(25, 'Moon Safari', 'Moon Safari, sorti en 1998, est le premier album du duo de musique électronique français Air.\r\n\r\nAvec un son rétro seventies mélancolique teinté de sonorités électroniques, l\'album suscite un engouement dans les médias. Le duo fait la une des Inrockuptibles et reçoit le soutien de toute la presse spécialisée. Il effectue aussi sa toute première prestation live à la télévision française pour l\'émission Nulle part ailleurs de Canal+. Le disque s\'est depuis vendu à 2 millions d\'exemplaires dans le monde. Pour les 10 ans de l\'album en 2008, le groupe a sorti l\'album en coffret Long-Box en format livre (CD album original, CD bonus et un DVD) en édition limitée à 1 000 exemplaires au monde.\r\n\r\nDepuis sa parution, Moon Safari est régulièrement cité par les critiques comme un disque majeur. L\'édition française du magazine Rolling Stone l\'a classé 65e meilleur album de rock français en 2010. Dans le premier volet de ses livres Rock\'n\'roll: la discothèque idéale, Philippe Manœuvre l\'a inclus parmi les 101 albums retenus.', 'MoonSafari.jpg', 1998, 10, 'https://open.spotify.com/embed/album/5dmYtZVJ1bG9RyrZBRrkOA', 18, 2),
(29, 'Strange Days', 'Strange Days est le deuxième album studio du groupe de rock américain The Doors, sorti le 25 septembre 1967 chez Elektra Records.\r\n\r\nL\'album a été un succès commercial, atteignant le numéro 3 sur le Billboard 200 américain et finissant par obtenir la certification platine RIAA. \r\n\r\nL\'album contient le top 30 des singles à succès \"People Are Strange\" et \"Love Me Two Times\".', 'StrangeDays.jpg', 1967, 10, 'https://open.spotify.com/embed/album/6v5IVMmY1IvWtbfnQoiFSf', 15, 9),
(32, 'The Bill Evans Album', 'The Bill Evans Album est un album du pianiste de jazz Bill Evans, sorti en 1971.\r\nAux Grammy Awards de 1972, The Bill Evans Album a remporté le Grammy Award du meilleur jazz instrumental solo et la meilleure performance jazz par un groupe.\r\nLa Bill Evans Memorial Library déclare qu\'il s\'agit du premier enregistrement dans lequel Evans a utilisé un piano Fender Rhodes.\r\nL\'album Bill Evans a été réédité avec trois titres alternatifs bonus par Sony en 2005.', 'TheBillEvansAlbum.jpg', 1971, 10, 'https://open.spotify.com/embed/album/5KMFvQIC2Of0UtJe9w5e0n', 26, 11),
(33, 'Off The Wall', 'Off the Wall est le cinquième album solo de Michael Jackson, paru le 10 août 1979. Produit par Quincy Jones, c\'est le premier album solo de Michael Jackson sur le label Epic Records, le label qu\'il avait enregistré jusqu\'à sa mort en 2009. Ses thèmes lyriques incluent l\'évasion, la Illumination, la libérté, la solitude, l\'hédonisme et la romance.\r\n\r\nCet album a été enregistré à Los Angeles, les premières sessions s\'étant déroulées au studio 3 Cherokee (qui a fermé ses portes en 2007 après 35 ans d\'existence), le lundi 4 décembre 1978, jusqu\'au dernier jour de mixage, le dimanche 3 juin 1979, aux studios Westlake au 7265 Santa Monica Boulevard, à West Hollywood. Il a été masterisé par Bernie Grundman le mardi 17 juillet 1979, aux studios A&M recording, toujours à Los Angeles.\r\n\r\nAprès quatre albums solo chez Motown, Michael Jackson se détache de l’univers familial pour prendre son envol et entre en contact avec Quincy Jones, qu\'il avait connu lors du tournage de la comédie musicale The Wiz en 1978. Quincy Jones dira plus tard au sujet du début de leur collaboration pour Off the Wall : « J\'ai dit à Michael : Ne t\'inquiète pas, j\'adore quand on me sous-estime : c\'est là que je suis le meilleur. Et finalement cela s\'est révélé être vrai ».\r\n\r\nSorti trois semaines avant le 21e anniversaire de Michael, Off the Wall est le 1er album solo de Michael Jackson en tant qu’adulte, son 1er chez le label Epic Records, et sa 1re collaboration avec le légendaire producteur Quincy Jones.\r\n\r\nOff the Wall mélange harmonieusement funk, disco, pop et soul, créant ainsi un album inoubliable, dévoilant au passage l’étendue de la voix du chanteur. Quincy Jones décide de faire appel notamment à Rod Temperton, Paul McCartney ou encore Stevie Wonder, et choisit l\'un des meilleurs bassistes du monde Louis Johnson, du groupe funk The Brothers Johnson, qui travaillera avec Michael sur son prochain album Thriller.\r\n\r\nPremier album produit par Quincy Jones pour Michael Jackson, Off the Wall a non seulement contribué à la célébrité et au talent de Michael Jackson en tant qu\'artiste solo, mais a aussi battu des records. À cette époque, ce disque a été le premier, pour un chanteur, à obtenir 4 titres classés dans le Top 10 du Billboard Hot 100, record qu\'il a lui-même battu ensuite.', 'OffTheWall.jpg', 1979, 10, 'https://open.spotify.com/embed/album/2ZytN2cY4Zjrr9ukb2rqTP', 27, 4),
(34, 'Night Cruiser', '\"Night Cruiser\", sorti en 1980, était le troisième album de Deodato pendant son mandat chez Warner Bros. et a également marqué sa première sortie depuis qu\'il a été chargé de produire ce qui était, à l\'époque, un acte soul/funk raté avec Kool & The Gang . Son approche était de supprimer leur son et il a dès lors commencé le même processus sur son propre travail. Composé de morceaux largement instrumentaux construits autour de grooves simples, c\'est un album au son lisse qui chevauche parfaitement la frontière entre le disco et le jazz-funk. La chanson-titre ouvre l\'album de manière dynamique. C\'est une piste de danse classique 4/4 avec une utilisation brillamment économique de whoohs surmontés de cuivres qui ne sonneraient pas à leur place sur le Kool & The Gang susmentionné. Un autre point fort est Uncle Funk, qui est en fait un remake de l\'acteur de funk brésilien Mr Funk Samba de Banda Black Rio. Il s\'agit de six pistes de jazz-funk instrumental produites avec une certaine improvisation et qualité impressionnantes. Il n’est pas surprenant d’apprendre que de nombreux morceaux ici ont pris vie dans des samples du monde de la musique hip-hop dans les années suivantes.', 'NightCruiser.jpg', 1980, 6, 'https://open.spotify.com/embed/album/4bS9iCSbL0dZNgbDaEpRKE', 28, 1),
(35, 'Katy Lied', 'L\'album était le premier après la rupture du groupe original Steely Dan à cinq musiciens; la plupart des membres originaux étaient partis pendant une faille sur les tournées et les horaires d\'enregistrement. Donald Fagen et Walter Becker, qui utilisaient de plus en plus de musiciens de session en studio sur des albums précédents, ont continué avec de nombreux musiciens de studio de la région de Los Angeles. Cet album marque la première apparition du chanteur Michael McDonald sur un album de Steely Dan. Jeff Porcaro, alors âgé de seulement 20 ans, a joué de la batterie sur toutes les chansons sauf \"Any World (That I\'m Welcome To)\", qui met en vedette le batteur de session Hal Blaine. Il a également marqué la première apparition de Larry Carlton, qui jouait de la guitare sur \"Daddy Don\'t Live in That New York City No More\".\r\n\r\nLes chefs de groupe Becker et Fagen étaient mécontents de la qualité sonore de l\'album en raison d\'un dysfonctionnement de l\'équipement avec le tout nouveau système de réduction du bruit dbx. Le groupe a affirmé que les dégâts avaient été principalement réparés après avoir consulté les ingénieurs de dbx, mais Fagen et Becker refusaient toujours d\'écouter l\'album terminé.\r\n\r\nL\'album a été réédité par MCA Records après l\'acquisition d\'ABC Records par MCA en 1979.', 'KatyLied.jpg', 1975, 10, 'https://open.spotify.com/embed/album/12N6IsuqIJzbTXdIrJnc9b', 29, 9),
(36, 'Thriller', 'Thriller est le sixième album studio de l\'artiste américain Michael Jackson. Coproduit par Quincy Jones, il sort le 30 novembre 1982 chez Epic Records, à la suite du succès commercial et critique de l\'album Off the Wall (1979). Thriller explore des genres similaires à ceux d\'Off the Wall, tels le funk, le post-disco, la musique soul, le soft rock, le R&B et la pop. Les paroles des chansons sont variées mais elles traitent entre autres de thèmes parfois sombres, comme la paranoïa et le surnaturel.\r\n\r\nAvec un budget de production de 750 000 dollars, les sessions d\'enregistrement se déroulent entre avril et novembre 1982 aux studios Westlake Recording à Los Angeles. Assisté de Quincy Jones, Jackson signe quatre des neuf chansons de Thriller. À la suite de la sortie du premier single de l\'album, The Girl Is Mine (en duo avec Paul McCartney), certains chroniqueurs prédisent un succès limité. Mais après la sortie du deuxième single, Billie Jean, l\'album se hisse en tête des classements des meilleures ventes dans de nombreux pays. En une seule année, Thriller devient l\'album le plus vendu au monde, et le demeure avec des ventes estimées à 66 millions d\'exemplaires. Sept des neuf chansons de l\'album sortent en single et figurent toutes au Billboard Hot 100 (elles sont toutes entrées dans le Top 10). L\'album obtient un nouveau record en remportant huit Grammy Awards en 1984, dans trois genres différents : pop, R&B et rock.\r\n\r\nAvec Thriller, Michael Jackson acquiert un nouveau statut en devenant l\'une des plus grandes stars de la fin du xxe siècle. Il lui permet notamment de briser les barrières raciales par l\'intermédiaire de ses apparitions sur la chaîne musicale MTV et de sa rencontre avec le Président Ronald Reagan à la Maison-Blanche. L\'album est également le premier à utiliser avec succès les clips comme moyen de promotion, ceux de Thriller, Billie Jean et Beat It passent en boucle sur MTV. Thriller est conservé par la Bibliothèque du Congrès par le biais du Registre national des enregistrements (National Recording Registry), ce qui est considéré comme une reconnaissance nationale de sa valeur culturelle.', 'Thriller.jpg', 1982, 9, 'https://open.spotify.com/embed/album/2ANVost0y2y52ema1E9xAZ', 27, 4),
(41, 'The Ownerz', 'The Ownerz est le sixième et dernier album studio de Gang Starr, sorti le 11 février 2003.\r\n\r\nComparé aux autres sorties de 2003, cet album apparaît comme un album avec un style très Old School. Les sujets traités sont souvent portés sur la nostalgie de la Old School (Skills, Deadly Habitz) mais aussi la violence (Who Got Gunz) et l\'hommage aux morts (Eulogy). Quant aux collaborations, elles vont de Fat Joe à M.O.P. en passant par Snoop Dogg ou Jadakiss.\r\n\r\nThe Ownerz s\'est classé 5e au Top R&B/Hip-Hop Albums et 18e au Billboard 200.', 'TheOwnerz.jpg', 2003, 19, 'https://open.spotify.com/embed/album/6U2LlflINhafc0e9vhs0lp', 30, 3),
(42, 'Guitar In The Space Age!', 'Guitar In The Space Age! est un album de Bill Frisell mettant en vedette des interprétations de chansons et d\'instruments des années 1960, publié sur le label OKeh en 2014. Jeff Simon de Buffalo News a cité Frisell comme déclarant \"après avoir joué pendant plus de 50 ans, il semble juste, pour une fois de jouer à nouveau une partie de la musique qui a façonné ma conscience pendant mes années de formation, même pour en jouer pour la première fois… et peut-être bien. Guitar In The Space Age! n\'est pas vraiment un exercice de nostalgie mais un engagement de continuer à apprendre, de consolider les fondations et de présenter l\'un des meilleurs groupes que j\'ai jamais eu. \"\r\n\r\nDans sa critique pour Allmusic, Thom Jurek note que \"Guitar in the Space Age! Est un enregistrement joyeux. Loin d\'un exercice de simple nostalgie, il révèle de nouvelles raisons pour lesquelles ces airs sont éternels. Frisell et ses collaborateurs ont compris exactement où ils voulaient aller et je pense qu\'ils ont passé un très bon moment à le faire\". John Fordham, du Guardian, a observé: \"Il s\'agit d\'un album de fan de guitare électrique à l\'ancienne, joué par l\'un des fans de guitare les plus créatifs du monde\" Le rédacteur en chef adjoint de PopMatters, John Garratt, était moins enthousiaste et a déclaré: \"Guitar In The Space Age! Est un lieu tenu par des professionnels. Je ne dis pas que vous devez être un baby-boomer pour en profiter, mais vous devez probablement en être un pour le classer parmi les cinq meilleurs enregistrements de Frisell \"\r\n\r\nInterviewé par Chip Stern en 2014 pour billfrisell.com, Frisell a déclaré à son collègue Greg Leisz: \"Jouer avec Greg ne m\'a jamais semblé être du plomb / du rythme. Cela a toujours été ce genre de conversation sans effort ... où nous ne le faisons pas avoir rien à retenir. On n\'a jamais l\'impression que nous nous gênons. Vous voyez, j\'aime prétendre que je suis un chanteur. C\'est tellement la façon dont je pense sur l\'instrument, en essayant d\'imiter une voix. Et Greg a joué avec tant de chanteurs (il serait peut-être plus facile de lister ceux avec lesquels il n\'a pas joué), donc il est juste un maître accompagnateur, super solidaire, mais de la manière la plus spontanée, pour le moment, imprévisible. c\'est pourquoi cela fonctionne. Nous avons ce lien profond, mais nous n\'avons jamais vraiment eu à en parler ou à planifier quoi que ce soit ou à arranger quoi que ce soit. Je ne veux pas l\'entraver. \"', 'GuitarInTheSpaceAge.jpg', 2014, 14, 'https://open.spotify.com/embed/album/1ueFFIHSmbmmi6gkNbo8BJ', 31, 1),
(43, 'Forces Of Victory', 'Forces of Victory est un album du poète dub Linton Kwesi Johnson, sorti en 1979 sur le label Island Records. Il a été produit par Linton Kwesi Johnson et Dennis Bovell (crédité de Blackbeard).\r\n\r\nEn 2003, David Bowie l\'a inclus dans une liste de 25 de ses albums préférés, \"Confessions of a Vinyl Junkie\".', 'ForcesOfVictory.jpg', 1979, 8, 'https://open.spotify.com/embed/album/0dqww6wFDXm9DZdume1b2S', 32, 15),
(44, 'Led Zeppelin II', 'Led Zeppelin II est le deuxième album du groupe de rock anglais Led Zeppelin, sorti le 22 octobre 1969 aux États-Unis et le 31 octobre 1969 au Royaume-Uni chez Atlantic Records. Les sessions d\'enregistrement de l\'album ont eu lieu à plusieurs endroits au Royaume-Uni et en Amérique du Nord de janvier à août 1969. La production de l\'album a été attribuée au guitariste et compositeur en chef du groupe, Jimmy Page, et c\'était également le premier album de Led Zeppelin sur lequel Eddie Kramer a été ingénieur.\r\n\r\nL\'album présente le style musical évolutif du groupe composé de matériel dérivé du blues et leur son basé sur le riff de guitare. Il a été décrit comme l\'album le plus lourd du groupe. Six des neuf chansons ont été écrites par le groupe, tandis que les trois autres étaient des réinterprétations de chansons de blues de Chicago par Willie Dixon et Howlin \'Wolf. Un single, \"Whole Lotta Love\", est sorti en dehors du Royaume-Uni (le groupe ne sortira aucun single britannique au cours de sa carrière) et a atteint un sommet parmi les dix meilleurs titres dans plus d\'une douzaine de marchés à travers le monde.\r\n\r\nLed Zeppelin II a été un succès commercial et a été le premier album du groupe à atteindre le numéro un des palmarès au Royaume-Uni et aux États-Unis. Le concepteur de la couverture de l\'album, David Juniper, a été nominé pour un Grammy Award du meilleur package d\'enregistrement en 1970. Le 15 novembre 1999, l\'album a été certifié 12 × Platinum par la Recording Industry Association of America (RIAA) pour des ventes dépassant 12 millions d\'exemplaires. Depuis sa sortie, divers écrivains et critiques de musique ont régulièrement cité Led Zeppelin II comme l\'un des plus grands albums et des plus influents de tous les temps.', 'LedZeppelinII.jpg', 1969, 9, 'https://open.spotify.com/embed/album/58MQ0PLijVHePUonQlK76Y', 33, 10);

-- --------------------------------------------------------

--
-- Structure de la table `Track`
--

CREATE TABLE `Track` (
  `Id` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `SpotifySongLink` varchar(255) NOT NULL,
  `Record_Id` int(11) NOT NULL,
  `Length` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Track`
--

INSERT INTO `Track` (`Id`, `Name`, `SpotifySongLink`, `Record_Id`, `Length`) VALUES
(1, '1. Palm Grease', 'https://open.spotify.com/embed/track/7inW3Cs2l4laNgLKp5R17K', 3, '00:10:38'),
(4, '2. Actual Proof', 'https://open.spotify.com/embed/track/1Aix42Q7mxGLMDglHhIOg3', 3, '00:09:40'),
(5, '3. Butterfly', 'https://open.spotify.com/embed/track/2YQBDxMbQbOsdXixdL4ZyE', 3, '00:11:17'),
(6, '4. Spank-A-Lee', 'https://open.spotify.com/embed/track/5V1uxpCzvNu94nyQX8gVUm', 3, '00:07:12'),
(7, '1. Chameleon', 'https://open.spotify.com/embed/track/4Ce66JznW8QbeyTdSzdGwR', 19, '00:15:41'),
(8, '2. Watermelon Man', 'https://open.spotify.com/embed/track/2zQl59dZMzwhrmeSBEgiXY', 19, '00:06:29'),
(9, '3. Sly', 'https://open.spotify.com/embed/track/4WyVRn3L2uXnSUkY762gqN', 19, '00:10:15'),
(11, '4. Vein Melter', 'https://open.spotify.com/embed/track/6c0ziyel6ZMTQ37vKRooGZ', 19, '00:09:09'),
(12, '1. Definition', 'https://open.spotify.com/embed/track/6txkilHRk7qJb8USuByVHR', 9, '00:05:09'),
(13, '2. Deep Shit, Pt. 1&2', 'https://open.spotify.com/embed/track/4p2AbJiH4eso5TE3wVqbV4', 9, '00:06:21'),
(14, '3. High Noon', 'https://open.spotify.com/embed/track/0oP2XkRvW12u8gCxpBfVVU', 9, '00:06:26'),
(15, '4. Original Bedroom Rockers', 'https://open.spotify.com/embed/track/348kpkfbJUZn7GBpOEvPh4', 9, '00:06:07'),
(16, '1. The Changeling', 'https://open.spotify.com/embed/track/3uqxwLp7Hs9sJhm4uVF8li', 11, '00:04:19'),
(17, '2. Love Her Madly', 'https://open.spotify.com/embed/track/3MFFDRC4wTN9JNGtzXsZlN', 11, '00:03:18'),
(18, '3. Been Down So Long', 'https://open.spotify.com/embed/track/1E7qCptwRPfvZrIDyDDgjh', 11, '00:04:40'),
(19, '4. Cars Hiss By My Window', 'https://open.spotify.com/embed/track/2Sjez1CwJv8Pz018CxKjWa', 11, '00:04:10'),
(20, '5. L.A. Woman', 'https://open.spotify.com/embed/track/6DmfWj5kOa1fX8AwN9byOn', 11, '00:07:51'),
(21, '6. L\'America', 'https://open.spotify.com/embed/track/4RE79d7ACKfTPC7qE65xpi', 11, '00:04:35'),
(22, '7. Hyacinth House', 'https://open.spotify.com/embed/track/4nKmlUaUiUN4rpMGYnUPAu', 11, '00:03:10'),
(23, '8. Crawling King Snake', 'https://open.spotify.com/embed/track/14qbY7LbhcXwECCGqH2z7U', 11, '00:04:59'),
(24, '9. The WASP (Texas Radio and the Big Beat)', 'https://open.spotify.com/embed/track/6ieXnWm8uineF8k9Ugn5DG', 11, '00:04:14'),
(25, '10. Riders On The Storm', 'https://open.spotify.com/embed/track/14XWXWv5FoCbFzLksawpEe', 11, '00:07:15'),
(26, '1. Purple Haze', 'https://open.spotify.com/embed/track/0wJoRiX5K5BxlqZTolB2LD', 15, '00:02:51'),
(27, '2. Manic Depression', 'https://open.spotify.com/embed/track/3f5JtAsGRIXN8pSAeTi6vA', 15, '00:03:42'),
(28, '3. Hey Joe', 'https://open.spotify.com/embed/track/0NWPxcsf5vdjdiFUI8NgkP', 15, '00:03:30'),
(29, '4. Love Or Confusion', 'https://open.spotify.com/embed/track/46omDVahYovje7GLtFKFz9', 15, '00:03:13'),
(30, '5. May This Be Love', 'https://open.spotify.com/embed/track/1Y6Dv0tWYUP3Za2Es9FUL2', 15, '00:03:10'),
(31, '6. I Don\'t Live Today', 'https://open.spotify.com/embed/track/4oGRZ3J9o56fPaL96y2NEH', 15, '00:03:55'),
(32, '7. The Wind Cries Mary', 'https://open.spotify.com/embed/track/5H6Jp0syB5yEPk7SWYdlmk', 15, '00:03:21'),
(33, '8. Fire', 'https://open.spotify.com/embed/track/5LI7PoHEolR8plrf3I16sq', 15, '00:02:44'),
(34, '9. Third Stone From The Sun', 'https://open.spotify.com/embed/track/34jAhU99TNRvYwwOEoINl3', 15, '00:06:44'),
(35, '10. Foxey Lady', 'https://open.spotify.com/embed/track/23MrkN7g6Q5U7GLIxNHN1B', 15, '00:03:18'),
(36, '11. Are You Experienced?', 'https://open.spotify.com/embed/track/02POyqtbrdmYQ3RxsTrYMD', 15, '00:04:16'),
(37, '12. Stone Free', 'https://open.spotify.com/embed/track/2TKtQAy9VKwq3Kh234uE85', 15, '00:03:36'),
(38, '13. 51st Anniversary', 'https://open.spotify.com/embed/track/5lWeY2p6lpCK2bDZyy2nPd', 15, '00:03:16'),
(39, '14. Highway Chile', 'https://open.spotify.com/embed/track/6r6ARqXEyXaoQjVZ1Mb1pV', 15, '00:03:33'),
(40, '15. Can You See Me', 'https://open.spotify.com/embed/track/41j3QgPNvLSoWBucJuInCZ', 15, '00:02:33'),
(41, '16. Remember', 'https://open.spotify.com/embed/track/5jC8uR4L35LBJufeDmOmtk', 15, '00:02:49'),
(42, '17. Red House', 'https://open.spotify.com/embed/track/3XxBSvDZKH5YvZZjTpn6eR', 15, '00:03:50'),
(43, '1. Whenever You\'re Ready', 'https://open.spotify.com/embed/track/5HAtgpTTnTTRiHx3AYz37W', 16, '00:06:21'),
(44, '2. Happiness Is Just Around the Bend', 'https://open.spotify.com/embed/track/2aGqzS23pvvCbxkwMXqCOd', 16, '00:06:32'),
(45, '3. Light on the Path', 'https://open.spotify.com/track/76z2YwIwQOHX578xIp7LQh', 16, '00:04:56'),
(46, '4. Compared to What', 'https://open.spotify.com/track/6s69unudKvNuTBi4ahpFpX', 16, '00:07:55'),
(47, '5. Inner City Blues', 'https://open.spotify.com/track/7wRi9I5dpoFX1p21JmnbiK', 16, '00:04:30'),
(48, '6. Voices Of Other Times', 'https://open.spotify.com/track/4IAPlYIqpXB7XvaK49a5hU', 16, '00:06:00'),
(49, '1. Modular Mix', 'https://open.spotify.com/embed/track/4NsBEdmbgu9u8cH21ycyBv', 4, '00:06:00'),
(50, '2. Casanova 70', 'https://open.spotify.com/embed/track/204iJy1scYTbl7cTwOG54O', 4, '00:05:54'),
(51, '3. Les Professionnels', 'https://open.spotify.com/embed/track/204iJy1scYTbl7cTwOG54O', 4, '00:04:34'),
(52, '4. J\'ai Dormi Sous L\'eau', 'https://open.spotify.com/embed/track/7CIlUgLNKzwjU59hPpqQ45', 4, '00:05:43'),
(53, '5. Le Soleil Est Près De Moi', 'https://open.spotify.com/embed/track/3Aa4ijCL9iilxsCLk48JnG', 4, '00:04:53'),
(54, '1. Best Foot Forward', 'https://open.spotify.com/embed/track/57bS5MTsLew2MOjRyiyrnV', 7, '00:00:47'),
(55, '2. Building Steam With A Grain Of Salt', 'https://open.spotify.com/embed/track/4cucslsiEgezV2o900Ykg3', 7, '00:06:39'),
(56, '3. The Number Song', 'https://open.spotify.com/embed/track/5sogWK5j3QRvDhPtIpuLDQ', 7, '00:04:34'),
(57, '4. Changeling', 'https://open.spotify.com/embed/track/4TEdXKd9AKAclNPLLodIgM', 7, '00:07:16'),
(58, '5. Transmission 1', 'https://open.spotify.com/embed/track/78oBdUBhJ0eCv8B1ONWw7c', 7, '00:00:35'),
(59, '6. What Does Your Soul Look Like - Pt. 4', 'https://open.spotify.com/embed/track/7FujnTZphK15mC6eLYEaAV', 7, '00:05:02'),
(60, '7. Untitled', 'https://open.spotify.com/embed/track/3eVtnPi9k2lAh8oFnUEyDF', 7, '00:00:25'),
(61, '8. Stem / Long Stem - Medley', 'https://open.spotify.com/embed/track/3RkIKkpnTpA4kQxXHoHJGj', 7, '00:07:47'),
(62, '9. Transmission 2', 'https://open.spotify.com/embed/track/1U3n6XpjZXK2EagLts0Mqa', 7, '00:01:29'),
(63, '10. Mutual Slump', 'https://open.spotify.com/embed/track/5n8Na7z10ZfpfygddJlz3W', 7, '00:04:00'),
(64, '11. Organ Donor', 'https://open.spotify.com/embed/track/6TdnvxC5E146AXv1doDshO', 7, '00:01:57'),
(65, '12. Why Hip-Hop Sucks In \'96', 'https://open.spotify.com/embed/track/7s7pfQzzJtvt9v6myfpjOv', 7, '00:00:44'),
(66, '13. Midnight In A Perfect World', 'https://open.spotify.com/embed/track/1z6zJqayfsAiiYtQ3minb7', 7, '00:04:58'),
(67, '14. Napalm Brain / Scatter Brain - Medley', 'https://open.spotify.com/embed/track/3l63ghLZ5cUakXfK3HrjQ2', 7, '00:09:21'),
(68, '15. What Does Your Soul Look Like - Pt. 1 / Blue Sky Revisit', 'https://open.spotify.com/embed/track/4lYBuSINhkqFz2cHT4tJ3u', 7, '00:06:17'),
(69, '16. Transmission 3', 'https://open.spotify.com/embed/track/1l6SXtuxr9Sn3BdSCrlzjr', 7, '00:01:11'),
(70, '1. Get Up And Get It', 'https://open.spotify.com/embed/track/6g4P66xey7Chi3JUU3lDDA', 14, '00:02:45'),
(71, '2. Black Organ', 'https://open.spotify.com/embed/track/0UNH5RmWxgF6I1sJ5pOT7K', 14, '00:03:12'),
(72, '3. Killer Diller', 'https://open.spotify.com/embed/track/5TLO8VVDNUCpbpCkzpCDFT', 14, '00:02:47'),
(73, '4. Totally Together', 'https://open.spotify.com/embed/track/26zL1PuPz7tl1Ld5Z8DH81', 14, '00:02:36'),
(74, '5. Hot Tamale', 'https://open.spotify.com/embed/track/3EYOAsDrhdb2p9XluIAwhD', 14, '00:02:24'),
(75, '6. Reggae Rock', 'https://open.spotify.com/embed/track/2pIoxWqCF9eZT0IHcpFlHF', 14, '00:01:58'),
(76, '7. Oboe', 'https://open.spotify.com/embed/track/59CtoryIsPw9y1PJc2erGo', 14, '00:09:39'),
(77, '8. Juice Box', 'https://open.spotify.com/embed/track/0pYxFfRaSZMKsVisQvTKVb', 14, '00:04:38'),
(78, '9. Summer Breeze', 'https://open.spotify.com/embed/track/5KvMIj5A9HlfkAWaVbQFSF', 14, '00:03:45'),
(79, '10. Drum Song', 'https://open.spotify.com/embed/track/4KGMzog2xlY0RVdgTmkCWD', 14, '00:04:24'),
(80, '11. P. Cafe', 'https://open.spotify.com/embed/track/1RnVHSzCqqOSlcGQfBBprk', 14, '00:02:49'),
(81, '12. Henry The Great', 'https://open.spotify.com/embed/track/0PSjBH0FCvIdpCx9Uij4j8', 14, '00:03:32'),
(82, '13. Stereo Freeze', 'https://open.spotify.com/embed/track/1cbPObwFWqMEFkAsgMhEU8', 14, '00:03:06'),
(83, '14. Wall Street', 'https://open.spotify.com/embed/track/2m0Ove79UQYNVm93ObqlIN', 14, '00:07:15'),
(84, '15. Darker Shade Of Black', 'https://open.spotify.com/embed/track/1T3IC7t0tCnZ6lZ2TFkqYb', 14, '00:03:14'),
(85, '1. Right Here Right Now', 'https://open.spotify.com/embed/track/2y46a3OM1iEwIdHaArRf32', 10, '00:06:28'),
(86, '2. Rockafeller Skank', 'https://open.spotify.com/embed/track/6uJrLZzBxS4JewGnihjNzM', 10, '00:06:54'),
(87, '3. Fucking In Heaven', 'https://open.spotify.com/embed/track/4txZ4s7r7RYeehFVbYvpUN', 10, '00:03:55'),
(88, '4. Gangster Trippin', 'https://open.spotify.com/embed/track/3CSSmxsS9qYQ0zd5W0bfpD', 10, '00:05:20'),
(89, '5. Build It Up, Tear It Down', 'https://open.spotify.com/embed/track/7c3gg0yaitZpzx3EbuD2ch', 10, '00:05:05'),
(90, '6. Kalifornia', 'https://open.spotify.com/embed/track/6uMz1WRf7Qn17FgKKi4vw5', 10, '00:05:53'),
(91, '7. Soul Surfing', 'https://open.spotify.com/embed/track/7D1xYYKVCworQ9Q6JPuO7p', 10, '00:04:57'),
(92, '8. You\'re Not From Brighton', 'https://open.spotify.com/embed/track/0G1o8TJO59rvdnty6oJc8q', 10, '00:05:21'),
(93, '9. Praise You', 'https://open.spotify.com/embed/track/10yY7i70r9wtllofw0GIpx', 10, '00:05:24'),
(94, '10. Love Island', 'https://open.spotify.com/embed/track/0ZdYDCmq8pMqjjPjCJ4XSR', 10, '00:05:18'),
(95, '11. Acid 8000', 'https://open.spotify.com/embed/track/5JbDaJDIwQgC9ic6UdcekK', 10, '00:07:28'),
(96, '1. Gone Hollywood', 'https://open.spotify.com/embed/track/43BVfHr7mkNDtNIGVp1vff', 17, '00:05:21'),
(97, '2. The Logical Song', 'https://open.spotify.com/embed/track/6mHOcVtsHLMuesJkswc0GZ', 17, '00:04:11'),
(98, '3. Goodbye Stranger', 'https://open.spotify.com/embed/track/67oyFnjJnn78fZP9KjeZx0', 17, '00:05:51'),
(99, '4. Breakfast In America', 'https://open.spotify.com/embed/track/4a5pNRjwmzYQuEY1E7O6pj', 17, '00:02:39'),
(100, '5. Oh Darling', 'https://open.spotify.com/embed/track/089NMLhXz421ohFN55A3yo', 17, '00:04:02'),
(101, '6. Take The Long Way Home', 'https://open.spotify.com/embed/track/0v0XYK0pLgsPiq5u4FKHaw', 17, '00:05:09'),
(102, '7. Lord Is It Mine', 'https://open.spotify.com/embed/track/3AUpYeScJOpYf8psTIz62l', 17, '00:04:10'),
(103, '8. Just Another Nervous Wreck', 'https://open.spotify.com/embed/track/6o8nZVzweaEOLDLOgaogX5', 17, '00:04:26'),
(104, '9. Casual Conversations', 'https://open.spotify.com/embed/track/5gLJZBGkpvRXWbEbTcLIz8', 17, '00:02:59'),
(105, '10. Child Of Vision', 'https://open.spotify.com/embed/track/7hHTyS1QG0TcX5iQ0sa1Tk', 17, '00:07:31'),
(106, '1. Shine On Your Crazy Diamond, Pts. 1-5', 'https://open.spotify.com/embed/track/32dnKMni3I3gwUbWp4mi45', 18, '00:13:31'),
(107, '2. Welcome To The Machine', 'https://open.spotify.com/embed/track/0i8ztWwkzwBJxviDMqYdMA', 18, '00:07:32'),
(108, '3. Have A Cigar', 'https://open.spotify.com/embed/track/5nfMtk9Zty1AITVo4YDhbb', 18, '00:05:08'),
(109, '4. Wish You Were Here', 'https://open.spotify.com/embed/track/7aE5WXu5sFeNRh3Z05wwu4', 18, '00:05:35'),
(110, '5. Shine On Your Crazy Diamond, Pts. 6-9', 'https://open.spotify.com/embed/track/2YMN5C5XDSsqCHSoJIbOzj', 18, '00:12:27'),
(111, '1. Spiraling Prism', 'https://open.spotify.com/embed/track/1FeJFOwVnDVgXA5VCORBtY', 20, '00:06:22'),
(112, '2. Calypso', 'https://open.spotify.com/embed/track/11BIdXyjjd7lttKlBRZkxT', 20, '00:06:42'),
(113, '3. Just Around The Corner', 'https://open.spotify.com/embed/track/157EYJlm1CLRdjmEw3dCqG', 20, '00:07:34'),
(114, '4. 4 A.M.', 'https://open.spotify.com/embed/track/6HFhLv0wa8129Y7AXgnQC7', 20, '00:05:21'),
(115, '5. Shiftless Shuffle', 'https://open.spotify.com/embed/track/4R575INvLlW4xqIgLKC2mS', 20, '00:07:08'),
(116, '6. Textures', 'https://open.spotify.com/embed/track/6wyjGiFFJMNxFyY4h0ttYY', 20, '00:06:38'),
(117, '1. Speak To Me', 'https://open.spotify.com/embed/track/4rQYDXfKFikLX4ad674jhg', 21, '00:01:05'),
(118, '2. Breathe (In The Air)', 'https://open.spotify.com/embed/track/3zJRvtQkHQRTNEXSY8jQPR', 21, '00:02:50'),
(119, '3. On The Run', 'https://open.spotify.com/embed/track/51rylCDfKusBQcpo2iem6u', 21, '00:03:45'),
(120, '4. Time', 'https://open.spotify.com/embed/track/4xHWH1jwV5j4mBYRhxPbwZ', 21, '00:06:54'),
(121, '5. The Great Gig In The Sky', 'https://open.spotify.com/embed/track/25tZHMv3ctlzqDaHAeuU9c', 21, '00:04:44'),
(122, '6. Money', 'https://open.spotify.com/embed/track/7Gx2q0ueNwvDp2BOZYGCMO', 21, '00:06:23'),
(123, '7. Us And Them', 'https://open.spotify.com/embed/track/626wlz3bovvpH06PYht5R0', 21, '00:07:49'),
(124, '8. Any Colour You Like', 'https://open.spotify.com/embed/track/1wGoqD0vrf7njGvxm8CEf5', 21, '00:03:26'),
(125, '9. Brain Damage', 'https://open.spotify.com/embed/track/7EUEl5wJb8VI777UAUvRnH', 21, '00:03:47'),
(126, '10. Eclipse', 'https://open.spotify.com/embed/track/3Z2RsIdWm4BNbT0LsFBuoN', 21, '00:02:10'),
(135, '1. La Femme d\'Argent', 'https://open.spotify.com/embed/track/3ZzhV6JIDKWvWR7wiKWD0C', 25, '00:07:07'),
(136, '2. Sexy Boy', 'https://open.spotify.com/embed/track/6INLpBxo9F5QMer04VXEnd', 25, '00:04:58'),
(137, '3. All I Need (feat. Beth Hirsch)', 'https://open.spotify.com/embed/track/6T10XPeC9X5xEaD6tMcK6M', 25, '00:04:28'),
(138, '4. Kelly Watch The Stars', 'https://open.spotify.com/embed/track/5tR13oIwi5J3elcTZPTTIU', 25, '00:03:46'),
(139, '5. Talisman', 'https://open.spotify.com/embed/track/4XxbBFfKlXY2E5PN3dHAfz', 25, '00:04:17'),
(140, '6. Remember', 'https://open.spotify.com/embed/track/49yNskzLtR1VNTWhSF90mu', 25, '00:02:34'),
(141, '7. You Make It Easy', 'https://open.spotify.com/embed/track/6kYwzIqAj4Wp6ApoPpoqny', 25, '00:04:02'),
(142, '8. Ce Matin-Là - from \"L\'Uomo In Più\"', 'https://open.spotify.com/embed/track/7yieArGOFIdoGJv1V8hDr2', 25, '00:03:39'),
(143, '9. New Star In The Sky', 'https://open.spotify.com/embed/track/7E2NpVcD3i6AIm3uyd343i', 25, '00:05:41'),
(144, '10. Le Voyage De Pénélope', 'https://open.spotify.com/embed/track/2AFttonwFsCFpC6Cos9pcZ', 25, '00:03:11'),
(201, '1. Strange Days', 'https://open.spotify.com/embed/track/4WFVX3E568hdAixIj3U222', 29, '00:03:07'),
(202, '2. You\'re Lost Little Girl', 'https://open.spotify.com/embed/track/5onlaW8X1ps8VS4DhxpFom', 29, '00:03:01'),
(203, '3. Love Me Two Times', 'https://open.spotify.com/embed/track/67HxeUADW4H3ERfaPW59ma', 29, '00:03:15'),
(204, '4. Unhappy Girl', 'https://open.spotify.com/embed/track/7MW3s6XnZua7CNQAfmdGe8', 29, '00:01:57'),
(205, '5. Horse Latitudes', 'https://open.spotify.com/embed/track/6vcqR6rCL2k4EDhqH8gzeO', 29, '00:01:35'),
(206, '6. Moonlight Drive', 'https://open.spotify.com/embed/track/0ja1dJM5gBTjk5U9wsMP9r', 29, '00:03:01'),
(207, '7. People Are Strange', 'https://open.spotify.com/embed/track/1Jmqubf9kGkWeYQXQKImL5', 29, '00:02:10'),
(208, '8. My Eyes Have Seen You', 'https://open.spotify.com/embed/track/6HSQ5z5afdLjhphHWfPiEG', 29, '00:02:27'),
(209, '9. I Can\'t See Your Face In My Mind', 'https://open.spotify.com/embed/track/6wov6IWJkisFG6rUZIESsB', 29, '00:03:23'),
(210, '10. When The Music\'s Over', 'https://open.spotify.com/embed/track/42dsUTJpzMWUJfEkzsbKWl', 29, '00:10:59'),
(223, '1. Funkallero', 'https://open.spotify.com/embed/track/2iysTEoawFzGPtvlgDLm1O', 32, '00:07:46'),
(224, '2. The Two Lonely People', 'https://open.spotify.com/embed/track/2Syy6iCju7lcPLesnbEwnV', 32, '00:06:10'),
(225, '3. Sugar Plum', 'https://open.spotify.com/embed/track/1dA0yWdHqwAi8xYxu5MkEb', 32, '00:07:03'),
(226, '4. Waltz For Debby', 'https://open.spotify.com/embed/track/1tSzm6vk58gS0NZwYS18W0', 32, '00:07:41'),
(227, '5. T.T.T. (Twelve Tone Tune)', 'https://open.spotify.com/embed/track/2pajTGeAblfSWV3GJo5NTW', 32, '00:06:38'),
(228, '6. Re: Person I knew', 'https://open.spotify.com/embed/track/2HSRq1pbNWrIcvYSBJwrzp', 32, '00:05:53'),
(229, '7. Comrade Conrad', 'https://open.spotify.com/embed/track/13pzbe4DDI38YroStNmWJA', 32, '00:07:34'),
(230, '8. Waltz For Debby (Alternate)', 'https://open.spotify.com/embed/track/5V7wDOYez3IjvFg4u3d666', 32, '00:07:48'),
(231, '9. Re: Person I knew (Alternate)', 'https://open.spotify.com/embed/track/5QB7gTagsKZMpzknZMC6m6', 32, '00:07:17'),
(232, '10. Funkallero (Alternate)', 'https://open.spotify.com/embed/track/3X0pBG02BeVnBzNYVlPme6', 32, '00:06:10'),
(233, '1. Don\'t Stop \'Til you Get Enough', 'https://open.spotify.com/embed/track/46eu3SBuFCXWsPT39Yg3tJ', 33, '00:06:05'),
(234, '2. Rock With You', 'https://open.spotify.com/embed/track/7oOOI85fVQvVnK5ynNMdW7', 33, '00:03:41'),
(235, '3. Workin\' Day And Night', 'https://open.spotify.com/embed/track/6BdiFsPMPkSEEO4fFXFVWX', 33, '00:05:14'),
(236, '4. Get On the Floor', 'https://open.spotify.com/embed/track/78XG7U0UueeC86XpzF9O7f', 33, '00:04:38'),
(237, '5. Off The Wall', 'https://open.spotify.com/embed/track/3zYpRGnnoegSpt3SguSo3W', 33, '00:04:06'),
(238, '6. Girlfriend', 'https://open.spotify.com/embed/track/1nCV2d1RAch7t2kRmwet5N', 33, '00:03:05'),
(239, '7. She\'s Out Of My Life', 'https://open.spotify.com/embed/track/6NGsHLZYGVAkXTFr75WWnn', 33, '00:03:38'),
(240, '8. I Can\'t Help It', 'https://open.spotify.com/embed/track/1HibhNhwk2tljwC4BGGLXV', 33, '00:04:29'),
(241, '9. It\'s The Falling In Love', 'https://open.spotify.com/embed/track/0CeE7kE8zAnfKIVpdmOaJl', 33, '00:03:48'),
(242, '10. Burn This Disco Out', 'https://open.spotify.com/embed/track/6aCs8gCrp4yrwvw7ylhau2', 33, '00:03:41'),
(243, '1. Night Cruiser', 'https://open.spotify.com/embed/track/4fSiK9esmvmDCpulQRdYDV', 34, '00:06:18'),
(244, '2. East side Strut', 'https://open.spotify.com/embed/track/5qvwV8GDJTBBxkASuWpCZP', 34, '00:05:35'),
(245, '3. Skatin\'', 'https://open.spotify.com/embed/track/1BtBvLfVKCUqxi13inMJep', 34, '00:05:16'),
(246, '4. Uncle Funk', 'https://open.spotify.com/embed/track/3cdJqlYIrRoGPDFpdhMAQk', 34, '00:06:29'),
(247, '5. Love Magic', 'https://open.spotify.com/embed/track/5GloblJ9UlHP7xxNdanpkn', 34, '00:04:39'),
(248, '6. Groovitation', 'https://open.spotify.com/embed/track/23wMFOQDs6wA1Dux84tR8G', 34, '00:06:11'),
(279, '1. Black Friday', 'https://open.spotify.com/embed/track/1kn4dN91ha8qZS3pPYqjug', 35, '00:03:41'),
(280, '2. Bad Sneakers', 'https://open.spotify.com/embed/track/4tnHUv4TXFIu5hjXjRC8JQ', 35, '00:03:20'),
(281, '3. Rose Darling', 'https://open.spotify.com/embed/track/1lTtGfA7i6Ky3ABHj4Z5xK', 35, '00:03:04'),
(282, '4. Daddy Don\'t Live In That New York City No More', 'https://open.spotify.com/embed/track/37oRZIexeWiMQ9sMDvaA48', 35, '00:03:14'),
(283, '5. Doctor Wu', 'https://open.spotify.com/embed/track/5aRj6TIRELABhgVasaff5g', 35, '00:03:55'),
(284, '6. Everybody\'s Gone To The Movies', 'https://open.spotify.com/embed/track/6I6fny8vN9w9tdBxSgfcs1', 35, '00:03:44'),
(285, '7. Your Gold Teeth II', 'https://open.spotify.com/embed/track/1GJgoTGiGtQ06yYFHskUh6', 35, '00:04:12'),
(286, '8. Chain Lightning', 'https://open.spotify.com/embed/track/1UtGIkXG8Y9s3JtSg3CIQp', 35, '00:03:00'),
(287, '9. Any World (That I\'m Welcome To)', 'https://open.spotify.com/embed/track/5tVTS01ZAk7pGk5Mx3b52v', 35, '00:03:54'),
(288, '10. Throw Back The Little Ones', 'https://open.spotify.com/embed/track/0QpSKziI8dgCfyjXRjBes9', 35, '00:03:13'),
(289, '1. Wanna Be Startin\' Somethin\'', 'https://open.spotify.com/embed/track/1hu2s7qkm5bo03eODpRQO3', 36, '00:06:03'),
(290, '2. Baby Be Mine', 'https://open.spotify.com/embed/track/6XYbMGvtl6tlPoGWaiH7EY', 36, '00:04:21'),
(291, '3. This Girl Is Mine (with Paul McCartney)', 'https://open.spotify.com/embed/track/4IT6vDuKprKl6jyVndlY8V', 36, '00:03:42'),
(292, '4. Thriller', 'https://open.spotify.com/embed/track/2LlQb7Uoj1kKyGhlkBf9aC', 36, '00:05:58'),
(293, '5. Beat It - Single Version', 'https://open.spotify.com/embed/track/3BovdzfaX4jb5KFQwoPfAw', 36, '00:04:18'),
(294, '6. Billie Jean', 'https://open.spotify.com/embed/track/7J1uxwnxfQLu4APicE5Rnj', 36, '00:04:54'),
(295, '7. Human Nature', 'https://open.spotify.com/embed/track/4cgjA7B4fJBHyB9Ya2bu0t', 36, '00:04:06'),
(296, '8. P.Y.T. (Pretty Young Thing)', 'https://open.spotify.com/embed/track/1CgmY8fVN7kstVDZmsdM5k', 36, '00:03:59'),
(297, '9. The Lady In My Life', 'https://open.spotify.com/embed/track/07L1pzoVerhRSSaDGZHrKy', 36, '00:05:00'),
(298, '1. Intro (HG, Goo, Panch)', 'https://open.spotify.com/embed/track/3Wg6bZExaa5bInaL8TpEQf', 41, '00:00:47'),
(299, '2. Put Up Or Shut Up (feat. Krumbsnatcha)', 'https://open.spotify.com/embed/track/51XUPNxANvPgANezVXAR1J', 41, '00:03:16'),
(300, '3. Werdz From The Ghetto Child', 'https://open.spotify.com/embed/track/6wyTrrGdLHaW0ED36BXND2', 41, '00:01:11'),
(301, '4. Sabotage', 'https://open.spotify.com/embed/track/7eGqgtuiydPbfrBJK7Wdrz', 41, '00:02:25'),
(302, '5. Rite Where U Stand (feat. Jadakiss)', 'https://open.spotify.com/embed/track/1KnUt0rICeoLFYPSL40fsU', 41, '00:03:40'),
(303, '6. Skills', 'https://open.spotify.com/embed/track/18RzOVoUefUG47NviEiX8A', 41, '00:03:21'),
(304, '7. Deadly Habitz', 'https://open.spotify.com/embed/track/18RzOVoUefUG47NviEiX8A', 41, '00:04:15'),
(305, '8. Nice Girl, Wrong Place', 'https://open.spotify.com/embed/track/6oY0bgMN2UevGTU9Euxjdf', 41, '00:03:33'),
(306, '9. Peace Of Mine', 'https://open.spotify.com/embed/track/4JawskiBCSuX7FuxMQafTw', 41, '00:03:03'),
(307, '10. Who Got Gunz (feat M.O.P.)', 'https://open.spotify.com/embed/track/2RuPhjHnsIrHhkRDEc7yF4', 41, '00:03:37'),
(308, '11. Capture (Militia Pt.3) (feat. Big Shug, Freddie Foxxx)', 'https://open.spotify.com/embed/track/1OqOSNTALhziYnzUrmGs8t', 41, '00:03:23'),
(309, '12. Playtawin', 'https://open.spotify.com/embed/track/2BT6aWoKW2e8EebLB66e4k', 41, '00:03:12'),
(310, '13. Riot Akt', 'https://open.spotify.com/embed/track/7zl8n7nARFIB4qGRYOdy0q', 41, '00:04:04'),
(311, '14. (Hiney)', 'https://open.spotify.com/embed/track/4TNB2Fw7xN1eh7B5iVquAu', 41, '00:01:33'),
(312, '15. Same Team, No Games (feat. NYGz, H. Stax)', 'https://open.spotify.com/embed/track/7FN0uGvH5d9Qj3dCUXwLCg', 41, '00:03:46'),
(313, '16. In This Life... (feat. Uncle Reo, Snoop Dogg)', 'https://open.spotify.com/embed/track/0fNGxHJDcBbHebGaEsrag5', 41, '00:03:07'),
(314, '17. The Ownerz', 'https://open.spotify.com/embed/track/3ZXzzBuqqKNw6tdYHh6jts', 41, '00:02:58'),
(315, '18. Zonin\'', 'https://open.spotify.com/embed/track/3j90M2EXsgA9deko3Z1fP1', 41, '00:02:55'),
(316, '19. Eulogy', 'https://open.spotify.com/embed/track/4xGlfUHot9y5Uf2IC3DdYZ', 41, '00:02:55'),
(317, '1. Pipeline', 'https://open.spotify.com/embed/track/5PBP5VRLIf2XfLedZr1suU', 42, '00:07:06'),
(318, '2. Turn, Turn, Turn', 'https://open.spotify.com/embed/track/32D5dKH2Jgz6wmPSCGXB2f', 42, '00:02:41'),
(319, '3. Messin\' With The Kid', 'https://open.spotify.com/embed/track/2Y8uiyLgsCO6f2x4w1mGyA', 42, '00:02:59'),
(320, '4. Surfer Girl', 'https://open.spotify.com/embed/track/2Ksw2QttWAoNr9Tkz7IXKA', 42, '00:04:14'),
(321, '5. Rumble', 'https://open.spotify.com/embed/track/5waUJCkM1jT8hU0htPf7zt', 42, '00:04:56'),
(322, '6. The Shortest Day', 'https://open.spotify.com/embed/track/276hkRf4xa0mz7fQWPTjNX', 42, '00:04:57'),
(323, '7. Rebel Rouser', 'https://open.spotify.com/embed/track/4qck6WQyiKws7hnlTqrRaf', 42, '00:03:39'),
(324, '8. Baja', 'https://open.spotify.com/embed/track/26XXNzdJXM9Mf8a1ZHYl1g', 42, '00:03:38'),
(325, '9. Canonball Rag', 'https://open.spotify.com/embed/track/3JrPyhMXgXbmyxBBlKLxPc', 42, '00:02:57'),
(326, '10. Tired Of Waiting For You', 'https://open.spotify.com/embed/track/0eUq84OpDjylq4n3x58te9', 42, '00:06:02'),
(327, '11. Reflections From The Moon', 'https://open.spotify.com/embed/track/6yWULqhEkwCMxKkJRmVh9M', 42, '00:03:22'),
(328, '12. Bryant\'s Boogie', 'https://open.spotify.com/embed/track/1i8mUmZ9dlsAj3Y3ITuoIe', 42, '00:03:09'),
(329, '13. Lift Off', 'https://open.spotify.com/embed/track/2VnGzvhAGoOjymaDVFpIEn', 42, '00:02:18'),
(330, '14. Telstar', 'https://open.spotify.com/embed/track/3zT7OYSAtfQ34j1xfY21hj', 42, '00:03:15'),
(331, '1. Want Fi Goh Rave', 'https://open.spotify.com/embed/track/55SKJLwRYpPhAdGXwZ1gv1', 43, '00:04:22'),
(332, '2. It Noh Funny', 'https://open.spotify.com/embed/track/5WGaZMK2mm1TVqPKWoeDvU', 43, '00:03:44'),
(333, '3. Sonny\'s Lettah (Anti-Sus Poem)', 'https://open.spotify.com/embed/track/2xSXvQtWWBIHi1FDcWeMkj', 43, '00:03:54'),
(334, '4. Independent Intavenshan', 'https://open.spotify.com/embed/track/5JLbUhXapssKm1nTucL8Mi', 43, '00:04:22'),
(335, '5. Fite Dem Back', 'https://open.spotify.com/embed/track/4r0nhOP1YLE6DpDxt5UGWh', 43, '00:04:27'),
(336, '6. Reality Poem', 'https://open.spotify.com/embed/track/12ZDKS4dlYFbnB9hqnojty', 43, '00:04:46'),
(337, '7. Forces of Viktry', 'https://open.spotify.com/embed/track/7bKr3AP1k5yytNgP0km4m0', 43, '00:04:55'),
(338, '8. Time Come', 'https://open.spotify.com/embed/track/0d5YD2AyrZJzkfGoco4rMl', 43, '00:03:27'),
(339, '1. Whole Lotta Love', 'https://open.spotify.com/embed/track/3OuMIIFP5TxM8tLXMWYPGV', 44, '00:05:35'),
(340, '2. What Is and What Should Never Be', 'https://open.spotify.com/embed/track/3g3LzkOMh3lx2FmCgb40bj', 44, '00:04:46'),
(341, '3. The Lemon Song', 'https://open.spotify.com/embed/track/6Qjc36CLNJHkWwSNIPbghM', 44, '00:06:19'),
(342, '4. Thank You', 'https://open.spotify.com/embed/track/4pW4DF1119GLHiuWE7Jcb4', 44, '00:04:49'),
(343, '5. Heartbreaker', 'https://open.spotify.com/embed/track/3buvRn4CDX86EO9LHTITGn', 44, '00:04:14'),
(344, '6. Living Loving Maid (She\'s Just a Woman)', 'https://open.spotify.com/embed/track/49C6EGQhCUSgyADHYvJ7ez', 44, '00:02:39'),
(345, '7. Ramble On', 'https://open.spotify.com/embed/track/1oCOp1kVAgNlXX9Tx9mvzq', 44, '00:04:34'),
(346, '8. Moby Dick', 'https://open.spotify.com/embed/track/0IxtJOcnoS2DPmBfV2HDfW', 44, '00:04:21'),
(347, '9. Bring It On Home', 'https://open.spotify.com/embed/track/1rxD34LAtkafrMUHqHIV76', 44, '00:04:20');

-- --------------------------------------------------------

--
-- Structure de la table `User`
--

CREATE TABLE `User` (
  `Id` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(64) NOT NULL,
  `BirthDate` date DEFAULT NULL,
  `Address` varchar(250) NOT NULL,
  `City` varchar(50) NOT NULL,
  `ZipCode` char(5) NOT NULL,
  `Country` varchar(20) NOT NULL,
  `CreationTimestamp` datetime NOT NULL,
  `LastLoginTimestamp` datetime DEFAULT NULL,
  `Admin` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `User`
--

INSERT INTO `User` (`Id`, `FirstName`, `LastName`, `Email`, `Password`, `BirthDate`, `Address`, `City`, `ZipCode`, `Country`, `CreationTimestamp`, `LastLoginTimestamp`, `Admin`) VALUES
(1, 'Guillaume', 'Drigout', 'g.drigout@gmail.com', '$2y$11$be4592c44efdf848f4a91uyOPCg6AVX7yA6udhoQ20PXsduL2/ZDS', '1987-12-31', '20 Bis rue Gabriel Péri', 'Toulouse', '31000', 'France', '2020-01-04 09:53:12', '2020-02-14 11:31:47', 1),
(24, 'Antoine', 'Durand', 'a.durand@gmail.com', '$2y$11$c8fd5bd4bde62d9ffb6b9ObDyR8kNoD/zL2lDS19KlKdQ3iRiSjUS', '1996-05-16', '10 rue Cassini ', 'Nice', '06300', 'France', '2020-01-18 16:15:13', '2020-02-12 18:48:08', 1),
(25, 'jonathan', 'rossetti', 'j.rossetti@outlook.com', '$2y$11$f7f1975d10dc8ac9ee7abum/UsI52QuqToGy1FSKJwwYs30cvYOia', '1988-08-12', 'chemin plan fromentin 28', 'les diablerets', '1865', 'suisse', '2020-01-19 23:39:52', '2020-01-19 23:40:05', NULL),
(27, 'Guillaume', 'Drigout', 'g_drigout@hotmail.com', '$2y$11$8505953209a932a6d4241O/3jAduRIRoroU3gQpPEs1eFVFI.ygU2', '1987-12-31', '20 Bis rue Gabriel Péri', 'Toulouse', '31000', 'France', '2020-01-22 17:24:32', '2020-01-22 17:25:43', 1),
(28, 'med', 'med', 'med@med.com', '$2y$11$dbadb1abd740c174ece63ulOd2xn3PlPccbk0VhhT/SVZjr9K1xTK', '1988-01-01', 'france', 'marseille', '13001', 'marseille', '2020-01-27 12:28:37', '2020-01-27 12:28:46', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `WantList`
--

CREATE TABLE `WantList` (
  `Id` int(11) NOT NULL,
  `User_Id` int(11) NOT NULL,
  `Record_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `WantList`
--

INSERT INTO `WantList` (`Id`, `User_Id`, `Record_Id`) VALUES
(37, 28, 3),
(41, 1, 3),
(46, 1, 35),
(47, 1, 21),
(51, 24, 25),
(52, 24, 7),
(54, 1, 10),
(56, 1, 4),
(57, 1, 42),
(59, 24, 16),
(60, 24, 33),
(61, 24, 43),
(62, 24, 4),
(63, 1, 43),
(64, 1, 19),
(65, 1, 44),
(66, 1, 20);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Artist`
--
ALTER TABLE `Artist`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Genre`
--
ALTER TABLE `Genre`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `Record`
--
ALTER TABLE `Record`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `lien entre album et artiste` (`Artist_Id`),
  ADD KEY `lien entre album et genre` (`Genre_Id`);

--
-- Index pour la table `Track`
--
ALTER TABLE `Track`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `lien entre morceau et album` (`Record_Id`);

--
-- Index pour la table `User`
--
ALTER TABLE `User`
  ADD PRIMARY KEY (`Id`);

--
-- Index pour la table `WantList`
--
ALTER TABLE `WantList`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `lien entre wantlist et user` (`User_Id`),
  ADD KEY `lien entre want et album` (`Record_Id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Artist`
--
ALTER TABLE `Artist`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `Genre`
--
ALTER TABLE `Genre`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `Record`
--
ALTER TABLE `Record`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT pour la table `Track`
--
ALTER TABLE `Track`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT pour la table `User`
--
ALTER TABLE `User`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `WantList`
--
ALTER TABLE `WantList`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Record`
--
ALTER TABLE `Record`
  ADD CONSTRAINT `lien entre album et artiste` FOREIGN KEY (`Artist_Id`) REFERENCES `Artist` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lien entre album et genre` FOREIGN KEY (`Genre_Id`) REFERENCES `Genre` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `Track`
--
ALTER TABLE `Track`
  ADD CONSTRAINT `lien entre morceau et album` FOREIGN KEY (`Record_Id`) REFERENCES `Record` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `WantList`
--
ALTER TABLE `WantList`
  ADD CONSTRAINT `lien entre want et album` FOREIGN KEY (`Record_Id`) REFERENCES `Record` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lien entre wantlist et user` FOREIGN KEY (`User_Id`) REFERENCES `User` (`Id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
