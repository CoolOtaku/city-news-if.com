-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Час створення: Чрв 10 2022 р., 12:49
-- Версія сервера: 8.0.24
-- Версія PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База даних: `city_news_if_db`
--

-- --------------------------------------------------------

--
-- Структура таблиці `admins`
--

CREATE TABLE `admins` (
  `id` bigint UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `admins`
--

INSERT INTO `admins` (`id`, `email`) VALUES
(1, 'ericspz531@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблиці `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2014_10_12_100000_create_password_resets_table', 1),
(6, '2022_05_14_133257_create_news_table', 1),
(10, '2022_05_31_164932_create_admins_table', 2);

-- --------------------------------------------------------

--
-- Структура таблиці `news`
--

CREATE TABLE `news` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `img` json NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `all_text` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп даних таблиці `news`
--

INSERT INTO `news` (`id`, `title`, `date`, `img`, `description`, `all_text`) VALUES
(1, 'З ПОНЕДІЛКА 10 ШКІЛ ІВАНО-ФРАНКІВСЬКА ЗМОЖУТЬ ПРАЦЮВАТИ ОФЛАЙН!', '12:09 14 Вер 2021', '[\"https://www.mvk.if.ua/uploads/posts/2021-09/thumbs/1631610641_0e9f875-36bfa52-vaccine690.jpg\"]', 'Кабмін ухвалив зміни до постанови № 1236, що встановлюють нові карантинні обмеження для запобігання поширенню COVID-19. У разі запровадження жовтої зони, навчальні заклади зможуть працювати за умови наявності не менше у 80% їх співробітників жовтих або зелених сертифікатів.  У червоній зоні заклади освіти зможуть працювати, якщо 100% працівників мають зелений COVID-сертифікат, тобто всі будуть повністю щеплені.', 'Наразі ситуація з вакцинацією в освітніх закладах - така:<br><ul><li>Приватна школа-садок Перша ластівка – 87%</li><li>&nbsp;Радчанський ліцей – 85%</li><li>&nbsp;Ліцей №3 – 84%</li><li>&nbsp;Драгомирчанська гімназія – 84%</li><li>&nbsp;Ліцей №11 – 83%</li><li>&nbsp;Ліцей ім. Івана Пулюя – 81%</li><li>&nbsp;Братковецький ліцей – 81%</li><li>&nbsp;Угорницький ліцей – 80%</li><li><span style=\\\"letter-spacing: 0px; word-spacing: 0.1em;\\\">&nbsp;Підпечерівський ліцей – 80%</span></li><li>&nbsp;Узинська гімназія – 80%</li><li>Ліцей №16 – 79%</li><li>&nbsp;Ліцей №5 – 76%</li><li>&nbsp;Початкова школа №8 – 76%</li><li>&nbsp;Каміннецька гімназія – 75%</li><li>&nbsp;Ліцей №4 – 74%</li><li>&nbsp;Хриплинська гімназія – 71%</li><li>&nbsp;Березівська гімназія – 71%</li><li>&nbsp;Чукалівська початкова школа – 70%</li><li>Ліцей №20 – 69%</li><li>&nbsp;Ліцей №6 ім. І.Ревчука – 69%</li><li>&nbsp;Ліцей №23 ім. Р.Гурика – 69%</li><li>&nbsp;Ліцей №24 – 67%</li><li>&nbsp;Ліцей ім. Р.Шухевича – 66%</li><li>&nbsp;Вовчинецька гімназія – 66%</li><li>&nbsp;Навчально-реабілітаційний центр – 66%</li><li>&nbsp;Микитинецький ліцей – 65%</li><li>&nbsp;Ліцей №7 – 65%</li><li>&nbsp;Ліцей ім. М.Сабата – 64%</li><li>&nbsp;Тисменичанський ліцей – 63%</li><li>&nbsp;Ліцей №13 – 62%</li><li>&nbsp;Ліцей №18 – 60%</li><li>&nbsp;Черніївський ліцей – 60%</li><li>&nbsp;Підлузька гімназія – 60%</li><li>Ліцей №21 – 59%</li><li>&nbsp;Ліцей №25 – 59%</li><li>&nbsp;Ліцей №12 – 58%</li><li>&nbsp;Приватний заклад Навчально-виховний комплекс Українська Монтессорі-школа Смайлика – 55%</li><li>&nbsp;Ліцей №2 – 54%</li><li>&nbsp;Початкова школа ім. С.Русової – 54%</li><li>&nbsp;Ліцей №1 – 53%</li><li>&nbsp;Крихівецький ліцей – 53%</li><li>&nbsp;Ліцей №10 – 52%</li><li>&nbsp;Ліцей №22 – 52%</li><li>&nbsp;Ліцей №15 – 50%</li><li>&nbsp;Католицька початкова школа – 50%</li><li>Ліцей №19 – 48%</li><li>&nbsp;Ліцей №17 – 46%</li><li>&nbsp;Початкова школа “Пасічнянська” – 43%</li><li>&nbsp;Ліцей ім. В.Чорновола – 42%</li><li>&nbsp;Початкова школа №9 – 41%</li><li>&nbsp;Колодіївська гімназія – 38%</li><li>&nbsp;Католицький ліцей – 36%</li><li>&nbsp;Початкова школа №26 – 36%</li><li>ЗДО «Червона шапочка» с. Радча - 90%</li><li>&nbsp;ДНЗ №9 «Дзвіночок» - 85%</li><li>&nbsp;ЗДО №25 «Янголятко» - 80%</li><li>&nbsp;КЗДО «Колосок» с. Підпечери - 76%</li><li>&nbsp;ДНЗ №2 «Малятко» - 75%</li><li>&nbsp;Дитячий садок «Веселка» Національної поліції України – 71%</li><li>&nbsp;ДНЗ №5 «Теремок» - 71%</li><li>&nbsp;ДНЗ №19 «Троянда» – 65%</li><li>&nbsp;ДНЗ №30 «Ластівка» 64%</li><li>&nbsp;ДНЗ №15 «Гуцулочка» - 61%</li><li>&nbsp;КЗДО «Мрія» с. Черніїв - 59%</li><li>&nbsp;ДНЗ №16 «Сонечко» - 57%</li><li>&nbsp;ДНЗ №7 «Золотий ключик» - 57%</li><li>&nbsp;ДНЗ №3 «Бджілка» - 54%</li><li>&nbsp;ДНЗ №18 «Зернятко» - 54%</li><li>&nbsp;ДНЗ №36 «Віночок» – 54%</li><li>&nbsp;ДНЗ №20 «Росинка» – 54%</li><li>&nbsp;ДНЗ №14 «Кристалик» - 52%</li><li>&nbsp;ДНЗ №29 «Кобзарик» – 52%</li><li>ДНЗ №27 «Карпатська казка» – 49%</li><li>ДНЗ №6«Колобок» - 47%</li><li>ДНЗ №23 «Дударик» – 46%</li><li>&nbsp;ДНЗ №4 «Калинова сопілка» – 45%</li><li>ДНЗ №28 «Квітка Карпат» – 43%</li><li>&nbsp;ДНЗ №33 «Кристалик» – 43%</li><li>&nbsp;ДНЗ №35 «Вишиванка» – 35%</li><li>&nbsp;ДНЗ №10 «Катруся» – 39%</li><li>&nbsp;КДЗО №26 «Барвінок» – 35%</li><li>&nbsp;ДНЗ №12 «Струмочок» – 34%</li><li>&nbsp;ПЗДО «Первісток» – 34%</li><li>&nbsp;ДНЗ №33 «Солов’ятко» – 33%</li><li>&nbsp;ДНЗ №11 «Пізнайко» – 32%</li><li>&nbsp;ДНЗ №34 «Незабудка» – 30%</li><li>&nbsp;ЗДО «Їжачок» с. Тисменичани – 28%</li><li>&nbsp;ДНЗ №31 «Мрія» – 26%</li><li>&nbsp;ЗДО «Ластів’ятко» с. Вовчинець – 26%</li><li>ДНЗ №24 «Котигорошко» – 24%</li><li>&nbsp;ДНЗ №17 «Ромашка» – 23%</li><li>ДНЗ №22 «Світанок» – 23%</li><li>&nbsp;ДНЗ №1 «Калинонька» – 20%</li><li>&nbsp; ПЗДО «Зе інгліш скул» – 14%</li><li>&nbsp;ПЗДО «Телесик» УГКЦ – 0%</li><li>&nbsp;ПЗДО «Смартік» – 0%</li><li>Івано-Франківська Мала академія наук учнівської молоді – 69%</li><li>&nbsp;КЗПО «Центр освітніх інновацій» - 65%</li><li>&nbsp;Міський центр науково-технічної творчості учнівської молоді – 65%</li><li>&nbsp;Міська дитяча екологічна станція – 64%</li><li>&nbsp;Івано-Франківська дитячо-юнацька спортивна школа №3 – 60%</li><li>&nbsp;Дитячо-юнацький пластовий центр – 56%</li><li>&nbsp;Міський центр дозвілля дітей та юнацтва за місцем проживання – 53%</li><li>&nbsp;Міський центр дитячої та юнацької творчості – 46%</li><li>&nbsp;Івано-Франківська спеціалізована СДЮСШОР №1 – 45%</li><li>&nbsp;Дитячо-юнацька спортивна школа №2 – 41%</li><li>&nbsp;Центр туризму і краєзнавства учнівської молоді – 40%</li><li>&nbsp;МЦПВУМ імені Степана Бандери – 25%</li><li>&nbsp;ПЗОВ «Лімниця» – 24%</li><li>Івано-Франківська Мала академія наук учнівської молоді – 69%</li><li>&nbsp;КЗПО «Центр освітніх інновацій» - 65%</li><li>&nbsp;Міський центр науково-технічної творчості учнівської молоді – 65%</li><li>&nbsp;Міська дитяча екологічна станція – 64%</li><li>&nbsp;Івано-Франківська дитячо-юнацька спортивна школа №3 – 60%</li><li>&nbsp;Дитячо-юнацький пластовий центр – 56%</li><li>&nbsp;Міський центр дозвілля дітей та юнацтва за місцем проживання – 53%</li><li>&nbsp;Міський центр дитячої та юнацької творчості – 46%</li><li>&nbsp;Івано-Франківська спеціалізована СДЮСШОР №1 – 45%</li><li>&nbsp;Дитячо-юнацька спортивна школа №2 – 41%</li><li>&nbsp;Центр туризму і краєзнавства учнівської молоді – 40%</li><li>&nbsp;МЦПВУМ імені Степана Бандери – 25%</li><li>&nbsp;ПЗОВ «Лімниця» – 24%</li></ul>'),
(2, 'МІСТ БУДЕ! ВИЇЗНА НАРАДА НА СТРАТЕГІЧНОМУ ОБ\'ЄКТІ', '12:01 15 Вер 2021', '[\"https://www.mvk.if.ua/uploads/posts/2021-09/thumbs/1631696538_shablon-horyz-3.jpg\", \"https://www.mvk.if.ua/uploads/posts/2021-09/thumbs/1631700851_242124173_282594730369703_6122158130253268544_n.jpg\", \"https://www.mvk.if.ua/uploads/posts/2021-09/thumbs/1631700882_242105554_6229515830422544_230371100620036906_n.jpg\"]', 'На спільній виїзній нараді за участю міського голови Руслана Марцінківа, голови ОДА Світлани Онищук та народних депутатів України оглянули стратегічний об’єкт для Івано-Франківська – міст Галицький. Зараз там тривають підготовчі роботи з виконання 2 етапу – будівництво розв’язки на вул. Надрічній.', 'Нагадаємо, що будівництво моста та транспортної розв’язки складається із 3 етапів. Наразі – триває реалізація другого. Кошторисна вартість робіт цього етапу складає 346, 349 млн грн. ПКД пройшла експертизу та всі погодження і включає у себе не лише будівництво з’їзду та виїзду на міст, але й організацію дорожнього руху від ділянки від старого мосту на вулиці Галицькій до залізничного переїзду. Наразі фірма, що виграла тендер і з якою підписаний договір БК «Адамант», приступила до підготовчих робіт.<br>Передувало цьому спорудження самої конструкції моста через Бистрицю Солотвинську в районі вулиць Хіміків-Надрічна. Кошторисна вартість об’єкту складає 273, 995 млн гривень.<br>Начальник управління капітального будівництва Роман Галіпчак розповідає, що через особливість ґрунтів, довелося частково змінити конструкцію. Зокрема, за його словами, відмовилися від забивних палей та залізобетонної плити. Їх замінили на бурозабивні палі та суцільну металеву конструкцію.<br>«Будова моста як суцільної металевої конструкції має ряд переваг. Міст став легшим, а термін експлуатації складає мінімум 80 років. Також таку конструкцію простіше обслуговувати. Загалом довжина конструкції – 322 м, ширина 16,1 м, площа – 5 227 кв. м, а загальна маса металевої конструкції – 1760 тон. Ширина проїжджої частини – 9,5 м. З них – 2 смуги для руху по 3,75 та по 1 метру з кожного боку смуги безпеки», - пояснив Роман Галіпчак.<br>Остання стадія – це будівництво вулиці Хіміків на ділянці від ЗОШ №24 до річки Бистриця Солотвинська. Поки проект на стадії експертизи. Опісля завершення процедурних питань УКБ оголосить тендер.Міський голова Руслан Марцінків наголошує, що потреба у цьому мості – негайна. Адже у цьому році вийшов термін експлуатації єдиного на цей час діючого моста. Тому акумуляція міського та державного бюджетів дозволить у найближчі терміни завершити роботи.<br>«Будівництво такого об’єкту – це виклик для міста. Зрозуміло, що міський бюджет не може покрити всі витрати, тому неабияк потрібно відчувати реальну допомогу з держбюджету. Дуже дякую за розуміння важливості цього стратегічного об’єкту Президенту України Володимиру Зеленському, який дотримав свого слова, Міністру Інфраструктури Олександру Кубракову, народним депутатам Едуарду Прощуку, Роману Мулику, Василю Вірастюку, Олені Вінтоняк, Оксані Савчук, заступнику керівника Офісу Президента Кирилу Тимошенко, голові Івано-Франківської облдержадміністрації Світлані Онищук. Додаткові 100 мільйонів з держбюджету, які очікуємо вже цього року, дозволять не зупиняти робіт. Ще 300 мільйонів очікуємо наступного року від держави. А також передбачаємо у міському бюджеті 100 мільйонів. Спільними зусиллями та вчасним фінансуванням зможемо завершити весь обсяг необхідних робіт вже у наступному році. Тож, впевнений, що мрія франківців невдовзі здійсниться», - підкреслив Руслан Марцінків.<br>Також міський голова Руслан Марцінків наголосив, що наразі тривають роботи з ремонту «старої» Надрічної, яка також задіяна у транспортній розв’язці. А також готуються документи для оголошення тендеру на ремонт діючого моста на Пасічну.'),
(3, 'Інформація про об’єкт приватизації', '13:24 12 Сер 2021', '[\"https://www.mvk.if.ua/uploads/posts/2021-08/1628763843_tqwarjhf56nflcrlgyexgxsgmjzmfazw4pcfv34i.jpg\"]', 'ІНФОРМАЦІЙНЕ ПОВІДОМЛЕННЯ ПРО ПРОВЕДЕННЯ ЕЛЕКТРОННОГО АУКЦІОНУ З УМОВАМИ З ПРОДАЖУ ОБ’ЄКТА МАЛОЇ ПРИВАТИЗАЦІЇ – НЕЖИТЛОВИХ ПРИМІЩЕНЬ ПЛОЩЕЮ 118,7 КВ.М В БУДИНКУ НА ВУЛ. ТРОЛЕЙБУСНІЙ, 14 У М. ІВАНО-ФРАНКІВСЬКУ', '1. Інформація про об’єкт приватизації:<br>Найменування об’єкта приватизації: нежитлові приміщення площею 118,7 кв.м.<br>Місцезнаходження: 76018, м. Івано-Франківськ, вул. Тролейбусна, 14.<br>Інформація про об’єкт: Нежитлові приміщення площею 118,7 кв.м, які розташовані в підвалі житлового будинку за адресою: м. Івано-Франківськ, вул. Тролейбусна, 14. Приміщення розташовані в периферійній частині міста, в одному з найбільших спальних районів міста.<br>Реєстраційний номер об’єкта нерухомого майна: 899260626101.<br>Інформація про земельну ділянку: Земельна ділянка не сформована.<br>Інформація про договори оренди, укладені щодо об’єкта: Об’єкт перебуває в оренді ТОВ «Пасічна-ІФ» строком до 31.05.2023 року з місячним розміром орендної плати 420 грн.<br>Інформація про балансоутримувача: Об’єкт Приватизації на балансі комунальних підприємств, організацій, установ не перебуває.'),
(4, 'Держпродспоживслужба закликає дотримуватись карантинних обмежень під час масових заходів', '10:15 19 Сер 2021', '[\"https://www.mvk.if.ua/uploads/posts/2021-08/thumbs/1629357386_253-lyustracya-kovd.jpg\"]', 'Минуло два місяці, як Прикарпаття живе в умовах послаблених карантинних обмежень, пов’язаних із недопущенням поширення коронавірусної інфекції, які передбачені для «зеленого» рівня епідемічної небезпеки.', 'Однак, варто пам’ятати, що пом’якшення карантину – це не повне його скасування.  Вірус продовжує шкодити здоров’ю і дорослих, і дітей, загрожуючи  новими штамами.<br>Щоденна статистика захворюваності свідчить, що поточна ситуація в державі залишається все ще контрольованою, але рівень госпіталізацій прискорюється і вже перевищує виписки на 25%. Навантаження на систему охорони здоров\'я зростає.<br>Станом на 18.08.2021 р. в Івано-Франківській області за минулу добу зареєстровано 23 нових випадки коронавірусної хвороби COVID-19, одужало – 6 осіб,  летальних випадків – 2;  проведено 2 617 щеплень.<br>Тож сьогодні надзвичайно важливо не допустити спалаху захворювання. Досягнути цього можна лише шляхом консолідації зусиль органів виконавчої влади та місцевого самоврядування, медичної системи, представників бізнесу та усіх громадян краю.<br>Необхідно врахувати, що в кінці літа – на початку осені  кількість факторів ризику зростає.<br>Це пов’язане із значною кількістю очікуваних на Прикарпатті масових заходів: різного роду фестивалі, прощі до святих місць, свята збору урожаю,  Першого дзвоника, урочистості до Дня незалежності України тощо. Крім того, багато наших громадян повертаються з літніх подорожей, в тому числі з країн, якими активно шириться штам коронавірусу «Дельта».<br>Тож, Головне управління Держпродспоживслужби в Івано-Франківській області закликає керівників територіальних громад, сільських старост,  організаторів масових заходів, представників духовенства, підприємців та жителів області до суворого дотримання передбачених карантинних обмежень, визначених Постановою КМУ від 09.12.2020 р. № 1236 «Про встановлення карантину та запровадження обмежувальних протиепідемічних заходів з метою запобігання поширенню на території України гострої респіраторної хвороби COVID-19, спричиненої коронавірусом SARS-CoV-2» (зі змінами):<br>- користуйтесь засобами  індивідуального захисту у громадських місцях;<br>- дотримуйтесь соціальної дистанції, за можливості – уникайте масових скупчень;<br>- мийте з милом та дезінфікуйте руки;<br>- вакцинуйтесь!!!<br>Перелічені поради допоможуть захиститись від COVID-19.<br>Бережіть себе та рідних!'),
(5, 'Санітарно-гігієнічні та протиепідемічні вимоги для учасників масових заходів в умовах карантину', '11:35 19 Сер 2021', '[\"https://www.kmu.gov.ua/storage/app/thumbnails/00e/26d/751/6113b056e9942038053818_820x360.jpg\"]', 'Необхідно нагадати, що місце проведення масового заходу (день міста, села, свято врожаю, ярмарок, релігійні, храмові свята, день знань 1 вересня  тощо) – це є громадське місце, на яке в повній мірі розповсюджуються карантинні обмеження, зазначені в Постанова Кабінету Міністрів України від 9 грудня 2020 р. № 1236 «Про встановлення карантину та запровадження обмежувальних  протиепідемічних заходів на території України гострої респіраторної хвороби COVID-19, спричиненої коронавірусом SARS-CoV-2 (зі змінами).', 'Головне управління Держпродспоживслужби в Івано-Франківській області доводить основні вимоги до організаторів та учасників  масових заходів в умовах карантину:  <br>Уряд продовжив карантин в Україні до 1 жовтня 2021 року. З 17 червня в Україні діють нові карантинні норми, а на всій території України встановлений «зелений» рівень епідемічної небезпеки. В таких умовах під час масових заходів або перебування в  приміщені,  всі учасники мають дотримуватись маскового режиму. Відповідно робота закладів громадського харчування, розважальних закладів (нічних клубів), кінотеатрів та залів інших сфер культури, проведення інших масових заходів дозволяється за умов носінням масок та забезпечення засобами індивідуального захисту працівників.<br>На території України на період дії карантину запроваджуються обмежувальні протиепідемічні заходи, а саме забороняється:<br>- перебування в громадських будинках і спорудах, громадському транспорті без вдягнутих засобів індивідуального захисту, зокрема респіраторів або захисних масок, що закривають ніс та рот, у тому числі виготовлених самостійно;<br>- проведення масових (культурних, спортивних, розважальних, соціальних, релігійних, рекламних, наукових, освітніх, професійних тематичних та інших) заходів (у тому числі в розважальних закладах (нічних клубах) і закладах громадського харчування) без одягнутих усіма учасниками та організаторами заходу засобів індивідуального захисту, зокрема захисних масок або респіраторів, які закривають ніс та рот, у тому числі виготовлених самостійно;<br>- до торгівлі  під час проведення масового заходу допускаються суб’єкти підприємницької діяльності, які мають експлуатаційний дозвіл або рішення про державну реєстрацію;<br>- торговельне місце повинно бути обладнане:торговим устаткуванням, призначеним для викладки товарів (столи, підтоварники для зберігання продукції тощо) та спеціалізованим обладнанням (в тому числі холодильним) у разі продажу товарів, що вимагають певних умов зберігання;'),
(6, 'СТАРТУЮТЬ ГРОМАДСЬКІ ОБГОВОРЕННЯ КАНДИДАТУР СТАРОСТ У СТАРОСТИНСЬКИХ ОКРУГАХ ІВАНО-ФРАНКІВСЬКОЇ МІСЬКОЇ ТЕРИТОРІАЛЬНОЇ ГРОМАДИ', '17:07 19 Жов 2021', '[\"https://www.mvk.if.ua/uploads/posts/2021-10/thumbs/1634652426_5fd0b32b57c52-o_1dm0lj8bc1fepduo14nj79v8gm3kjpg.jpg\"]', 'У 16-ти старостинських округах Івано-Франківської міської територіальної громади 25 жовтня розпочинаються громадські обговорення кандидатур старост, запропонованих міським головою Русланом Марцінківим.', 'Обговорення відбуватимуться у два етапи. Перший етап – громадське опитування щодо підтримки запропонованої кандидатури жителів старостинських округів шляхом заповнення підписних листів. Щоб підтримати кандидатів, зареєстровані мешканці сіл нашої громади повинні будуть вписати свої дані у підписні листи – ПІБ, дату народження, серію та номер паспорта, засвідчивши дані своїм підписом.<br>Незважаючи на спільний початок проведення громадських опитувань в кожному старостинському окрузі їх тривалість буде різною. Це залежить від кількості виборців, що проживають на конкретній території. Оргкомітет з проведення громадського обговорення затвердив наступні терміни проведення:<br>- з 25.10.2021 року до 31.10.2021 року – для кандидатур старост в Березівському, Каміннецькому, Колодіївському, Узинсько-Добровлянському старостинських округах;<br>- з 25.10.2021 року до 03.11.2021 року – для кандидатур старост в Братковецькому, Драгомирчанському, Підлузькому, Підпечерівському, Радчанському, Тисменичанському, Чукалівському та Хриплинському старостинських округах;<br>- з 25.10.2021 року до 08.11.2021 року – для кандидатур старост в Микитинецькому та Угорницькому старостинських округах;<br>- з 25.10.2021 року до 14.11.2021 року – для кандидатур старост у Вовчинецькому та Крихівецькому старостинських округах.<br>В будні дні опитування проводитиметься в територіальних підрозділах ЦНАПу, а у вихідні та неробочі – в місцях компактного проживання чи проведення громадських заходів.'),
(7, 'Виконання бюджету Івано-Франківської громади за 9 місяців 2021 року: основні показники', '14:50 25 Жов 2021', '[\"https://www.mvk.if.ua/uploads/posts/2021-10/thumbs/1635162654_dsc_0700.jpg\", \"https://www.mvk.if.ua/uploads/posts/2021-10/thumbs/1635162608_dsc_0719.jpg\", \"https://www.mvk.if.ua/uploads/posts/2021-10/thumbs/1635162625_dsc_0705.jpg\", \"https://www.mvk.if.ua/uploads/posts/2021-10/thumbs/1635162648_dsc_0716.jpg\"]', 'Проєкт рішення «Про виконання бюджету Івано-Франківської міської територіальної громади за 9 місяців 2021 року» було винесено на розгляд сесії Івано-Франківської міської ради 18 жовтня.', 'За 9 місяців 2021 року до бюджету надійшло доходів на суму 2 257,1 млн. грн. 74,6 % з цієї суми (1 683,7 млн. грн.) становлять платежі, що формують<br>загальний фонд; 20,4 % (460,5 млн. грн.) – трансферти; 5,0 % (112,9 млн. грн.) - платежі, що формують спеціальний фонд.<br>Втрати бюджету внаслідок COVID-19 становлять 29,0 млн. грн.<br>За окремими видами надходжень до загального фонду бюджету Івано-Франківської міської територіальної громади надійшло:<br>Надходження податку на доходи фізичних осіб за 9 місяців цього року становлять 1082,9 млн. грн. Минулоріч ця цифра становила 875,1 млн. грн. ПДФО, що сплачується податковими агентами із доходів у вигляді зарплати, становить 983,2 млн. грн. (790,5 млн. грн. – за 9 місяців минулого року) ПДФО з грошового забезпечення, грошових винагород та інших виплат, одержаних військовослужбовцями та особами рядового і начальницького складу цього року становить 61,1 млн. грн. (минулоріч – 56,2 млн. грн.) ПДФО, що сплачується податковими агентами, із доходів платника податку інших, ніж зарплата, - 16,1 млн. грн. (минулоріч – 13,0 млн. грн.)<br>ПДФО, що сплачується фізичними особами за результатами річного декларування – 22,5 млн. грн. (15,3 млн. грн. минулоріч)<br>Серед найбільших платників ПДФО за 9 місяців: ДП ВО «Карпати» (фактична сплата за 9 місяців – 42 201,0 тис. грн.), ТОВ «Прикарпатенерготрейд» (фактична сплата за 9 місяців – 40 146,7 тис. грн.), ПАТ«Прикарпаттяобленерго» (фактична сплата за 9 місяців – 26 870,2 тис. грн.), Івано-Франківський національний медичний університет (фактична сплата за 9 місяців – 25 315,7), Прикарпатський національний університет ім. В. Стефаника (фактична сплата за 9 місяців – 21 960,7 тис. грн.). Надходження акцизного податку за 9 місяців цього року становлять 109,1 млн грн. За 9 місяців цього ж періоду минулого року ця цифра становила 89,4 млн. грн.'),
(8, 'ПОЗИЦІЯ ЩОДО ОБОВ\'ЯЗКОВОСТІ ВАКЦИНАЦІЇ ГРОМАДЯН ВІД COVID-19', '17:02 24 Лис 2021', '[\"https://www.mvk.if.ua/uploads/posts/2021-11/thumbs/1637766083_screenshot_9.png\", \"https://www.mvk.if.ua/uploads/posts/2021-11/thumbs/1637766089_screenshot_8.png\", \"https://www.mvk.if.ua/uploads/posts/2021-11/thumbs/1637766032_screenshot_6.png\", \"https://www.mvk.if.ua/uploads/posts/2021-11/thumbs/1637766049_screenshot_5.png\", \"https://www.mvk.if.ua/uploads/posts/2021-11/thumbs/1637766089_screenshot_4.png\", \"https://www.mvk.if.ua/uploads/posts/2021-11/thumbs/1637766027_screenshot_3.png\", \"https://www.mvk.if.ua/uploads/posts/2021-11/thumbs/1637766089_screenshot_2.png\", \"https://www.mvk.if.ua/uploads/posts/2021-11/thumbs/1637766078_screenshot_1.png\"]', 'Ніхто не може здійснювати політичного, соціального чи іншого тиску, а також дискримінації, у разі відмови від вакцинації, - наголошується у резолюції Парламентської Асамблеї Ради Європи (ПАРЄ).', 'Відповідно до вимог статей 4 та 12 Міжнародного пакту про економічні, соціальні і культурні права, держава може встановлювати тільки такі обмеження прав, які визначаються законом, визнає право кожної людини на найвищий досяжний рівень фізичного і психічного здоров\'я та вживає заходи для повного здійснення цього права, включаючи ті, які є необхідними для запобігання і лікування епідемічних та інших хвороб і боротьби з ними.<br>Урядом та Міністерством охорони здоров’я України внесено зміни до низки нормативно-правових актів з питань, пов’язаних з обов’язковою вакцинацією проти COVID-19.<br>Зокрема, постановою Кабінету Міністрів України від 20.10.2021 № 1096 «Про внесення змін до постанови Кабінету Міністрів України від 09.12.2020 № 1236» (далі – Постанова № 1236) встановлено, що підлягають відстороненню від роботи працівники та державні службовці, обов’язковість профілактичних щеплень проти COVID-19 яких визначено переліком, затвердженим наказом Міністерства охорони здоров’я України «Про затвердження Переліку професій, виробництв та організацій, працівники яких підлягають обов’язковим профілактичним щепленням» від 04.10.2021 № 2153 (далі – Наказ № 2153), які відмовляються або ухиляються від проведення таких профілактичних щеплень.<br>Наказом Міністерства охорони здоров’я України від 27.10.2021 № 2362 «Про внесення змін до Дорожньої карти з впровадження вакцини від гострої респіраторної хвороби, спричиненої коронавірусом SARS-CoV-2, і проведення масової вакцинації у відповідь на пандемію COVID-19 в Україні у 2021-2022 роках» з Дорожньої карти вилучено положення щодо добровільності вакцинації проти COVID-19 для усіх груп населення та професійних груп.<br>У зв’язку з ухваленням вказаних нормативно-правових актів, на адресу Уповноваженого вже надійшло понад тисячу двісті звернень громадян, у яких порушуються питання щодо обов’язкової вакцинації проти хвороби COVID-19.<br>Реалізація положень Постанови № 1236 зі змінами та Наказу № 2153 в межах чинного законодавства на практиці можуть призвести до порушення права на добровільність вакцинації проти COVID-19 та права на працю вказаних працівників.<br>З метою забезпечення реалізації прав громадян на працю та добровільність профілактичного щеплення, Уповноважений звернулася до Прем’єр-міністра України з пропозицією розглянути питання щодо можливості дистанційної роботи відповідно до статті 60-2 КЗпП України для працівників та державних службовців, для яких вакцинація проти COVID-19 визначена обов’язковою, а також щодо визначення обмежень прав, гарантованих Конституцією України на працю, освіту, вільне пересування, свободу та особисту недоторканість та на охорону здоров’я, наділення органів влади відповідними повноваженнями, виключно законами України.<br>Крім того, з метою надання правової оцінки процедури відсторонення від роботи (виконання робіт) працівників і державних службовців, направлено запити до Міністерства економіки України, Державної служби України з питань праці.<br>Уповноважений закликає громадян України убезпечити себе та своїх рідних від тяжких ускладнень від COVID-19 та відповідально поставитись до проведення вакцинації проти гострої респіраторної хвороби, спричиненої коронавірусом SARS-CoV-2.'),
(11, 'В Коломиї відбудуться громадські слухання щодо перейменування вулиць', '1 Червня 2022, 20:00', '[\"https://blitz.if.ua/local/news/227242/285609679_383342720489895_4479481935111485693_n.jpg\"]', '1 серпня 2022 року о 14 год. у малій залі МПК «Народний дім» (вул. Театральна, 27) відбудуться громадські слухання щодо перейменування об’єктів топоніміки на території Коломийської міської територіальної громади.', '<p>З пропонованим списком топонімів, що підпадають під перейменування, можна ознайомитись на офіційному сайті Коломийської міської ради <span style=\"color: #0000ff;\"><a href=\"https://docs.google.com/document/d/1SpAx8qIK9Nw4YP7iZfvwxWDfl3at9iL_QgkF9t8MRMg/edit?fbclid=IwAR01nylejIkaCFYu553FTkm68EWnqKstScqvRVCyKKbEl7yEBi6rLQz3rzo\" target=\"_blank\"><span style=\"color: #0000ff;\">за посиланням</span></a></span>.</p>\r\n<p>Пропозиції (зауваження) стосовно перейменування об’єктів топоніміки на території Коломийської міської територіальної громади можна подавати до 25 липня 2022 року:</p>\r\n<p>- на офіційному сайті міської ради заповнивши форму за посиланням: <a href=\"https://forms.gle/5QM5G6YZ1r4KiXdR8\">https://forms.gle/5QM5G6YZ1r4KiXdR8</a>;</p>\r\n<p>- у письмовій чи усній формі до управління містобудування міської ради за адресою просп. Михайла Грушевського, 1, каб. 34, м. Коломия, телефон (03433) 2-48-61;</p>\r\n<p>- в електронній формі за e-mail адресою: <a href=\"mailto:uprarchitektyru@gmail.com\">uprarchitektyru@gmail.com </a></p>\r\n<p>Відповідальний за організацію розгляду пропозицій громадськості Олійник Андрій Ігорович − в.о. начальника управління містобудування Коломийської міської ради.</p>\r\n<p>Подання пропозицій: 1.06.2022р. – 25.07.2022р. в управління містобудування міської ради (м. Коломия, просп. Михайла Грушевського, 1, каб. 34, тел. 2-48-61, <a href=\"mailto:uprarchitektyru@gmail.com)\">uprarchitektyru@gmail.com)</a></p>\r\n<p>Завершення розгляду пропозицій: 29.07.2022р.</p>');

-- --------------------------------------------------------

--
-- Структура таблиці `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблиці `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Індекси збережених таблиць
--

--
-- Індекси таблиці `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- Індекси таблиці `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Індекси таблиці `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT для збережених таблиць
--

--
-- AUTO_INCREMENT для таблиці `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT для таблиці `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблиці `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT для таблиці `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
