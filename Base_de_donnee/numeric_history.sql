-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : mar. 12 oct. 2021 à 14:09
-- Version du serveur : 10.4.20-MariaDB
-- Version de PHP : 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `numeric_history`
--

-- --------------------------------------------------------

--
-- Structure de la table `personnages`
--

CREATE TABLE `personnages` (
  `id` int(11) NOT NULL,
  `nom_complet` varchar(57) NOT NULL,
  `nom_image` varchar(114) NOT NULL,
  `historique` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `personnages`
--

INSERT INTO `personnages` (`id`, `nom_complet`, `nom_image`, `historique`) VALUES
(1, ' (Antiquité) Euclide', 'Files/images/euclid.jpg', 'Grand mathématicien de l’Antiquité grecque dont la vie nous est très peu connue, Euclide est l’auteur du premier véritable livre de mathématiques de l’histoire, Les éléments. Il y décrit l’un des plus vieux algorithmes encore utilisés aujourd’hui : l’algorithme d’Euclide. Celui-ci est désormais enseigné au collège, et est utilisé pour l’étude des nombres entiers, l’arithmétique.'),
(2, ' (780 - 850) Al-Khwârizmî', 'Files/images/Al-Khwarizmi.jpg', 'Muhammad Mûsâ al-Khwârizmî était membre de la maison de la sagesse de Bagdad. De grands savants y œuvraient à traduire les ouvrages des civilisations antiques, afin que l’empire abbasside ait les moyens d’accomplir son essor. Parmi les nombreux ouvrages savants qu’il avait réalisé, un allait le rendre célèbre : une synthèse sur les calculs complexes incluant des inconnues, des variables… Ce livre a introduit en occident le système de numérotation décimale  – celui dont l’alphabet va de 0 à 9 – et toutes les règles élémentaires de calcul qui s’y rapportent : ce qu’on appelle aujourd’hui l’algèbre. Son nom est d’ailleurs à l’origine du terme « algorithme ».\r\n\r\nSa renommée lui a valu de son vivant d’être convoqué par le calife Al’Mamun. Ce dernier voulait entendre de lui une prédiction sur le temps qui lui restait à vivre. Le savant, fier de cette confiance, prit un ton grave en fermant les yeux et improvisa une réponse : « Je vois, ô Calife, un très long règne. Déjà vingt années passées, encore cinquante à venir. »\r\n\r\nLe Calife Al’Mamun fut ravi. Mais dix jours plus tard, il mourut. Al-Khwârizmî fut ainsi reconnu comme le père des mathématiques, jamais comme prophète.'),
(3, ' (1815 – 1864) George Boole', 'Files/images/george_vool.jpg', 'L’Angleterre du 19e siècle, et surtout les universités victoriennes ont fourni un certain nombre de mathématiciens précurseurs qui ont préparé le monde numérique d’aujourd’hui.\r\n\r\nParmi eux, George Boole, qui a inventé l’algèbre binaire en tentant de rattacher le raisonnement logique aux mathématiques, et non plus à la philosophie. Il voulait ainsi traduire des concepts en formules, leur appliquer certaines lois et ensuite retraduire le résultat en termes logiques. Ainsi, son algèbre n’accepte que deux valeurs numériques : 0 et 1. 1 désigne une proposition vraie, et 0 une proposition fausse. Cette algèbre repose sur trois lois : ET, OU, NON.\r\n\r\nCes travaux furent d’une grande importance théorique au 19e siècle. Ils furent aussi d’une grande importance pratique un siècle plus tard avec le développement de l’informatique. Dans de nombreux langages de programmation, le terme booléen désigne un type de données ne pouvant prendre que deux valeurs. Et chaque micro-ordinateur fonctionne aujourd’hui à l’aide d’éléments électroniques réalisant les fonctions ET, OU ou NON, mais aussi NOR ou NAND…'),
(4, ' (1815 – 1852) Ada Lovelace', 'Files/images/Ada_Lovelace.jpg', 'Le père d’Ada Lovelace, le poète anglais Lord Byron, n’étant fait pour être ni un mari fidèle ni un père, ce fut sa mère qui assura son éducation, en la destinant à être mathématicienne ou scientifique, ce qui est inhabituel pour une femme à cette époque. Sa mère voulut peut-être aussi l’éloigner de toute tentation poétique pour lui éviter les errements de son père…\r\nEn 1832, alors qu’elle n’a que 17 ans, elle rencontre Charles Babbage, qui tente de construire une machine à calcul : la machine analytique. Ada Lovelace voit assez rapidement le potentiel d’une telle machine capable de réaliser n’importe quel calcul, ce qu’on connaît aujourd’hui comme un ordinateur, et en décrit l’impact avec un siècle d’avance ! Elle rédige une note dans laquelle elle décrit comment réaliser un calcul mathématique complexe avec la machine, décrivant les étapes à réaliser, sous la forme de position des rouages de la machine et comment lui permettre d’arriver à un résultat donné. C’est elle qui a en premier formalisé le principe de programmation, ce qui fait d’elle la première codeuse au monde !\r\nEn perdant Ada Lovelace, qui n’a pas survécu à un cancer, la machine analytique a probablement perdu sa plus belle chance de voir le jour et, ainsi, de devenir le premier calculateur mécanique avec un siècle d’avance.'),
(5, ' (1752 - 1834) Joseph-Marie Jacquard', 'Files/images/joseph-marie-jacquard.jpg', 'Inventeur français né à Lyon sous l’Ancien Régime pendant le règne de Louis XV, Joseph-Marie Jacquard est fils d’un maître-fabricant en soie. Grâce à son savoir en mécanique et à son éducation dans le milieu des canuts tisseurs de soie, il conçoit en 1801 un nouveau type de métier à tisser qui porte depuis son nom : le métier Jacquard.\r\n\r\nCette invention permet d’assister les ouvriers pour tisser des motifs compliqués sur le tissu, à l’aide d’un système complexe d’aiguilles, de crochets guidés par des cartes perforées à l’avance. Comme le motif obtenu dépend de la carte perforée utilisée, on peut en quelque sorte « programmer » un même métier Jacquard de différentes manières et obtenir à chaque fois des dessins différents sur le tissu. Ainsi cette machine est une des toutes premières capables de « lire » une suite d’instructions écrites dans un « langage machine » et de l’exécuter. Tout comme nos ordinateurs modernes, même si eux peuvent également modifier les données qu’ils ont en mémoire et appliquer d’autres types d’instructions permettant des utilisations plus variées.'),
(6, ' (1903 - 1957) John Von Neumann', 'Files/images/jon_von_neuman.png', 'D’origine hongroise, ce génie précoce est l’un des nombreux savants d’Europe centrale à avoir émigré aux Etats Unis pendant l’occupation nazie. Il s’est intéressé à de nombreuses disciplines, mais en informatique, on a donné son nom à l’organisation de base des ordinateurs. Cette organisation distingue quatre composantes : une unité arithmétique et logique qui effectue les opérations de base, une unité de contrôle chargée du séquencement des opérations, la mémoire qui contient les données et le programme qui commande au traitement de ces données, et enfin les dispositifs d’entrées et sorties qui permettent à l’ordinateur de communiquer avec le monde extérieur. La paternité de ses travaux est cependant contestée.\r\nCe n’est pas le seul à avoir travaillé sur la machine informatique. On le considère aujourd’hui comme l’un des pères de l’ordinateur, avec Turing et bien d’autres…\r\n\r\nJohn Von Neumann a fait partie des savants qui ont participé au développement de la bombe atomique et de la bombe à hydrogène. C’est d’ailleurs l’exposition aux fortes radiations lors de ses nombreux tests qui a raccourci sa vie.'),
(7, ' (1906 - 1992) Grace Hopper', 'Files/images/Grace_hopper.jpg', 'Employée par la marine américaine pendant la Seconde Guerre Mondiale, elle ne prendra sa retraite définitive qu’à l’âge de 80 ans ! Grace Hopper a toujours défendu l’idée qu’un langage de programmation aurait plus de potentiel s’il était plus proche du langage humain que du langage des machines.\r\n\r\nC’est ainsi que Grace Hopper a conçu le premier compilateur. Un programme informatique est écrit dans un langage très abstrait, mélangeant anglais et mathématique compréhensible par un humain. Le compilateur va simplement traduire ce langage complexe en langage compréhensible par la machine. C’est l’intermédiaire, le médiateur.\r\n\r\nGrace Hopper est aussi connue pour son franc parler. Sa devise (qui n’est pas d’elle !) « Il vaut mieux devoir s’expliquer après que demander la permission avant ». Elle faisait également preuve de talents pédagogiques, en soulignant par exemple que 30 cm de fils électriques représentaient 1 nano-seconde, ce qui est le temps qu’il faut à une impulsion électrique pour parcourir les 30 cm.'),
(8, ' (1912 – 1954) Alan Turing', 'Files/images/alan_turing.jpg', 'Alan Turing est un personnage que l’on reconnaît comme un des pères de l’informatique moderne. Il a proposé en 1936, avant l’apparition des premiers ordinateurs, une formalisation de la notion de calcul et de ses limites intrinsèques, toujours pertinente 80 ans après ! Cette formalisation s’est faite au travers d’une machine abstraite, capable de réaliser n’importe quel calcul. Une machine à instructions programmable, dont tous les ordinateurs d’aujourd’hui ont hérité. Mais il fut aussi un homme de son siècle, gravement troublé par la Seconde Guerre Mondiale. Les communications des sous-marins allemands étaient codées par une machine : la machine Enigma, réputée incraquable. Or Alan Turing parvint à en percer la clef, et inventa une autre machine qui permit de décoder jusqu’à 120 messages par heure. On considère aujourd’hui que cet exploit, longtemps resté secret défense, place Alan Turing comme un acteur essentiel de la débâcle des nazis.\r\n\r\nEnfin, Alan Turing a été le témoin et l’acteur du développement des tous premiers ordinateurs, environ 10 ans après leur formalisation. Il déclara être souvent surpris des capacités réelles de ces machines pourtant encore très rudimentaires. Cette expérience lui a permis de formaliser une autre intuition : des mécanismes pourraient un jour se montrer aussi intelligents que l’Homme, en reproduisant les mêmes résultats que l’activité mentale de l’homme. Cette idée fait de lui le père de l’intelligence artificielle. Il a imaginé un test qui désormais porte son nom et qui pourrait permettre de déterminer si une machine réussit à se faire passer pour un humain. Aujourd’hui, les ordinateurs, mêmes les plus ordinaires, nous dépassent sur beaucoup de compétences, mais aucun n’a pu passer le test ! Cependant le risque qu’un ordinateur tente de se faire passer pour un humain est réel, et les CAPTCHA qui protègent certains sites web sont justement là pour tenter de s’en prémunir.\r\n\r\nEn attendant, Alan Turing et ses machines se trouvent aujourd’hui dans notre quotidien, dans nos maisons et dans nos poches !'),
(9, ' (1936 - ) Margaret Hamilton', 'Files/images/margaret.jpg', 'Margaret Hamilton s’est très tôt intéressée à l’informatique et aux mathématiques. Après ses études elle devient programmeuse au sein de plusieurs laboratoires, ce qui la conduit finalement à travailler avec la NASA pour le projet Apollo visant à envoyer des hommes sur la Lune. C’est Margaret Hamilton qui était en charge de la conception de tous les logiciels embarqués dans la fusée, elle en écrira d’ailleurs la majorité du code (sur la photo ci-dessous on la voit poser à coté de l’ensemble du code écrit pour la mission).\r\n\r\nMargaret Hamilton a révolutionné l’ingénierie logicielle et la conception de programmes complexes. En effet il est extrêmement difficile de construire des logiciels constitués de plusieurs parties imbriquées, ce qui est le cas des fusées lunaires (le radar, les communications, la gestion des informations fournies par les capteurs, etc. fonctionnent tous en même temps). De plus tous les logiciels comportent forcément quelques bugs non détectés qui peuvent potentiellement poser des problèmes graves s’ils se déclenchent. Margaret Hamilton a pour cela inventé de nouvelles méthodes permettant de limiter la gravité des défaillances informatiques, en laissant la possibilité soit pour les humains de reprendre le contrôle, soit pour l’ordinateur de détecter et d’abandonner uniquement les procédures défectueuses. Ces innovations ont d’ailleurs permis de sauver la mission lorsque le radar du module lunaire a saturé la mémoire de l’ordinateur de bord.\r\n\r\nAinsi sans les nouvelles techniques de conception logicielle introduites par Margaret Hamilton, Neil Armstrong n’aurait sans doute pas pu poser le pied sur la lune le 20 juillet 1969. Et les programmes complexes comporteraient trop de failles pour être utilisables en pratiques.'),
(10, ' (1932 - ) Frances Allen', 'Files/images/allen.jpg', 'L’informaticienne américaine Frances Allen est en 2008 la première femme à obtenir le Prix Turing, l’équivalent pour les informaticiens du Prix Nobel, notamment pour ses travaux sur la compilation. L’opération de compilation d’une suite de 0 et de 1 représentant les instructions écrites par un programmeur en une autre suite de 0 et de 1 représentant des instructions correspondantes en langage machine est une opération complexe. C’est d’autant plus vrai lorsque le programme est long.\r\n\r\nFrances Allen a travaillé dès le début des années 70 sur l’optimisation de la compilation. Son but était de faire en sorte que le résultat d’une compilation donne des instructions en langage machine que l’ordinateur puisse exécuter le plus rapidement possible. Cela permet de soulager les humains qui peuvent ainsi écrire des programmes plus facilement compréhensibles en sachant que le compilateur se chargera de certaines opérations complexes permettant de gagner du temps lorsque le programme est lancé.\r\n\r\nCes diverses optimisations automatiques sont aujourd’hui indispensables au bon fonctionnement de la multitude de programmes qui sont exécutés chaque jour autour de nous.'),
(11, ' (1916 - 2001) Claude Shannon', 'Files/images/claude.jpg', 'Claude Shannon est considéré comme le père de la théorie de l’information. Il propose de mesurer l’information portée par un message (en fait un document quelconque) par la surprise qu’il cause chez celui qui le consulte. Vous connaissez peut-être la commune de Saint-Sauveur-de-Givre-en-Mai. Elle ne peut devoir son surnom qu’à la surprise qu’a causé une période de gel en mai dans les Deux-Sèvres. Saint-Sauveur-de-Givre-en-Janvier n’aurait pas mérité d’être retenu ! Évidemment, Shannon se place dans un cadre où tout cela peut avoir un sens formel, et c’est le domaine des télécommunications et de l’informatique.\r\n\r\nIl propose une unité d’information qui est exactement la quantité d’information qu’apporte un message qui ne peut prendre que deux valeurs possibles, et avec la même probabilité. On dit souvent 0 ou 1, mais c’est sans importance. Pensez plutôt à la voile blanche, hissée en cas de succès, ou noire en cas d’échec dans les légendes d’Egée et Thésée ou de Tristan et Yseult. On peut aussi penser à voler ou ne pas voler, et tous les enfants sont un jour surpris d’apprendre que certains oiseaux ne volent pas. Dans ce cadre là, dire d’un oiseau qu’il vole n’apporte pas grand chose, mais dire qu’il ne peut pas voler est très informatif.\r\n\r\n– Leçon 1 : la mouette vole ! bof…\r\n– Leçon 2 : l’hirondelle vole ! bof…\r\n– …\r\n– Leçon 72 : le manchot ne vole pas ! ah bon, je ne savais pas, comme c’est intéressant !\r\n\r\nIl appelle cette unité le bit, qui est la contraction de Binary Digit. C’est la quantité minimale d’information numérique transmise en informatique. Nous utilisons aussi une unité qui s’appelle le bit, mais ce n’est pas tout à fait le même. Nous l’utilisons sous des formes dérivées, comme l’octet (qui vaut 8 bits), le méga-octet (ou Mo, qui en vaut 8 millions), le giga-octet (ou Go, qui en vaut 8 milliards), ou le téra-octet (ou To, qui en vaut 8 mille milliards). Mais ce bit là nous sert à mesurer des quantités de mémoire. Il y a pourtant un lien entre le bit qui mesure la quantité de mémoire et le bit qui mesure la quantité d’information ; il faut toujours au moins autant de mémoire qu’il y a d’information à stocker. Le fait qu’il soit souvent utile de compresser un fichier montre seulement qu’on utilise souvent beaucoup plus de mémoire que l’information transmise le nécessiterait. On peut aussi compresser au-delà de la limite de la quantité d’information ; on appelle cela la compression avec perte. Devant vous, vous avez par exemple une photo de Claude Shannon. En étant compressée, elle sera moins belle, mais elle restera une photo de Claude Shannon. Quand vous publiez une photo de chaton sur un réseau social, quand vous l’envoyez dans un MMS, elle est le plus souvent compressée avec perte, mais le destinataire est quand même content de la recevoir.\r\n\r\nGrâce à la théorie mathématique de l’information de Claude Shannon, nous avons aussi pu comprendre qu’il pouvait y avoir une perte d’information involontaire lors de la transmission d’un message, et on a pu comprendre dans quelle mesure on peut s’y opposer/s’en accommoder.\r\nEt cela a ouvert la porte aux codes correcteurs, pour protéger les données lorsque les conditions de transmissions sont mauvaises (très loin, ou avec beaucoup de parasites).\r\n\r\nLes théories et compétences de Shannon l’ont aussi amené à collaborer avec l’armée pendant la Seconde guerre mondiale, pour coder des messages. Certains assurent qu’il a croisé Alan Turing, expert pour craquer des codes. Qu’ont-ils bien pu se raconter, eux dont les fonctions étaient si proches, mais que l’obligation de secret devait tenir éloignés ?'),
(12, ' (1938 - ) Donald Knuth', 'Files/images/donald.jpg', 'Né en 1938 aux Etats-Unis, Donald Knuth fait partie des pionniers de l’informatique. Il a notamment beaucoup travaillé sur l’étude des algorithmes et de leur comportement. Dans son livre le plus célèbre, the Art of Computer Programming, il montre comment prouver qu’un algorithme ne contient pas d’erreur de conception.\r\n\r\nDonald Knuth est aussi l’auteur du programme TeX, qui permet de faciliter la mise en page de textes scientifiques et est aujourd’hui utilisé dans la plupart des laboratoires.'),
(13, ' (1941 - ) Federico Faggin', 'Files/images/frederico.jpg', 'Physicien italien ayant émigré aux Etats-Unis à la fin des années 60, il a mis au point le premier microprocesseur commercialisé par l’entreprise américaine Intel en 1971, le Intel 4004.\r\n\r\nLe microprocesseur est un composant électronique qui permet aux ordinateurs actuels d’exécuter un programme et de traiter des données. Avant son invention, les ordinateurs devaient être beaucoup plus gros (de la taille d’une pièce de maison) pour pouvoir fonctionner. C’est cette invention qui a ouvert la voie à la diffusion large de l’informatique telle qu’on la connait aujourd’hui, en particulier dans les maisons et les entreprises.'),
(14, ' (1969 - ) et (1953 - ) Linus Torvalds et Richard Stallma', 'Files/images/rms-linus.jpg', 'Richard Stallman et Linus Torvalds sont parmi les pionniers d’un changement de mode de pensée dans le monde de l’informatique. Ils proposent en effet une conception non marchande de son usage, en développant et démocratisant le logiciel gratuit.\r\n\r\nPour Richard Stallmann comme pour Linus Torvalds, si un développeur n’exploite pas commercialement son logiciel et le met à disposition du grand public, il attire autour de lui une communauté de développeurs qui vont perfectionner son logiciel, et le compléter pour son propre bien et celui de la communauté. Cette conviction voulant que les technologies et programmes doivent être un patrimoine partagé par tous, en libre circulation, était présente déjà dans l’ère des premiers ordinateurs. Elle affronte encore aujourd’hui la conception marchande de l’informatique et du développement.\r\n\r\nRichard Stallmann a créé la première communauté de programmeurs réalisant des logiciels libres, en les rassemblant autour d’un projet qui vise à réaliser un système d’exploitation complet et entièrement libre : le projet GNU. En tant que programmeur, c’est sur un éditeur de textes qu’il s’est illustré : avec l’éditeur eMacs. Il vit aujourd’hui de ses conférences autour du logiciel libre.\r\n\r\nLinus Torwalds est le créateur du système d’exploitation Linux, la communauté du manchot. La popularité de son invention a d’ailleurs été presque accidentelle. Étant étudiant, il trouvait que l’émulateur de son ordinateur était trop lent. Alors il a commencé à en écrire un à lui, et à la suite d’une fausse manipulation, c’est tout le système d’exploitation d’origine qu’il a supprimé de son ordinateur. Bien obligé de le remplacer, il développa le sien en entier, puis le mit en partage gratuitement dans la communauté. Ainsi Linux a rapidement gagné en popularité et en stabilité, pour devenir un système d’exploitation concurrent de celui de Windows.'),
(15, ' (1955 - ) Tim Berners Lee', 'Files/images/timothy-berners.png', 'Si vous surfez sur le web avec votre ordinateur, c’est grâce à Tim Berners Lee ! Tout commence au Conseil Européen pour la Recherche Nucléaire : le CERN. Le chercheur propose de travailler sur l’amélioration du partage de toutes les informations sur un seul réseau, le but étant de faciliter la communication instantanée autour des travaux des physiciens et leur permettre d’être en permanence en contact entre eux, depuis leurs pays respectifs ou au sein du CERN à Genève.\r\n\r\nAvec ses recherches, Tim Berners Lee tente de réaliser ce vieux rêve de créer un réseau dynamique, constitué par un ensemble de documents informatiques liés entre eux. C’est ce que Ted Nelson aura appelé en 1965 l’Hypertexte, un texte avec des liens permettant facilement d’aller d’une partie à une autre, d’un mot à sa définition, d’un paragraphe à une note, d’une section à une autre. Le Web de Tim Berners Lee c’est tout ça en très simplifié, mais à l’échelle planétaire.\r\n\r\nC’est en mai 1990 qu’il baptise son réseau, World Wide Web, la Toile qui couvre le monde. Une équipe va ensuite se former autour de lui pour améliorer cette proposition et développer les trois principales technologies du Web : les adresses web, le protocole de transfert hypertexte (le http), et le langage de balisage hypertexte (le HTML). Les premiers navigateurs étaient trop puissants pour que tous les ordinateurs les supportent, mais peu à peu les interfaces ont été améliorées. Et le Web scientifique s’est peu à peu ouvert pour devenir l’outil grand-public que nous connaissons aujourd’hui.'),
(16, ' ( 1955 - 2011 ) et ( 1950 - ) Steve Jobs, Stephen Woznia', 'Files/images/blog_32.png', 'Steve Jobs et Stephen Wozniak étaient justement de ces amateurs qui cherchaient un modèle économique pour les ordinateurs personnels. En 1976, ils fondent la société Apple Computer pour distribuer l’Apple I qu’avait conçu Wozniak et qu’il assemblait dans le garage de Jobs (ah les garages !). L’Apple I fut suivi de l’Apple II, mais l’étape suivante la plus importante fut la création du Macintosh qui reprenait des idées développées par Xerox (les photocopieurs) et que que Jobs avait pu voir lors d’une visite. Les chercheurs de Xerox avaient du talent pour inventer un tas de choses, mais leurs patrons avaient du mal à vendre quelque chose qui ne ressemblait pas à un photocopieur ! Au contraire, Jobs ne s’arrêtait pas à ses détails, et il comprit vite qu’un Macintosh plus une imprimante faisaient un excellent poste de travail, d’où la création de l’imprimante laser LaserWriter. C’était le début d’une histoire assez mouvementée, où Jobs est proprement viré de chez Apple en 1985, y revient 12 ans après, pour lancer les produits mythiques que l’on connait, l’iPod, l’iPhone, l’iPad qui ont en commun de ne pas être que des ordinateurs, de former un écosystème, et de renouveler les modèles économiques des objets électroniques et de leurs contenus.'),
(17, ' (1955 - ) Bill Gates', 'Files/images/biografi-bill-gates.jpg', 'Rappelez-vous l’histoire de l’Intel 4004 qui était devenu le favori des hobbyistes (pièce du circuit intégré). Un de ses descendants était le processeur Intel 8088. Au même moment, vers 1980, IBM spécialiste des gros ordinateurs d’entreprise avait un PDG visionnaire qui voulait entrer sur le marché de l’ordinateur personnel, le personal computer ou PC. Comprenant que la culture de son entreprise ne l’aiderait pas il créa une unité quasiment autonome chargée de développer le PC d’IBM, l’IBM PC. D’habitude, IBM concevait ses ordinateurs de A à Z, du processeur aux logiciels, mais là, pour aller plus vite, et peut-être aussi pour éviter de retomber dans une action anti-trust dont il sortait à peine, IBM fit le choix de sous-traiter le processeur et le logiciel, et de ne spécifier que la façon de les faire fonctionner ensemble. Le processeur échut à Intel, et le logiciel à Microsoft, une toute petite start-up dirigée par un inconnu, BillGates. On peut dire que IBM leur avait offert un futur doré sur un plateau d’argent.');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `personnages`
--
ALTER TABLE `personnages`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `personnages`
--
ALTER TABLE `personnages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;