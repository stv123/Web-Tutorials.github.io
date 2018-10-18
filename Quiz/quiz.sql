-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 16, 2018 at 11:36 AM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `catagery`
--

CREATE TABLE `catagery` (
  `id` int(4) NOT NULL,
  `Cat_name` varchar(40) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `catagery`
--

INSERT INTO `catagery` (`id`, `Cat_name`) VALUES
(1, 'HTML'),
(2, 'CSS'),
(3, 'PHP'),
(4, 'JQUERY '),
(5, 'BOOTSTRAP'),
(6, 'JAVASCRIPT');

-- --------------------------------------------------------

--
-- Table structure for table `catagory`
--

CREATE TABLE `catagory` (
  `id` int(4) NOT NULL,
  `cat_name` varchar(50) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `catagory`
--

INSERT INTO `catagory` (`id`, `cat_name`) VALUES
(1, 'HTML'),
(2, 'CSS'),
(3, 'PHP'),
(4, 'JAVASCRIPT'),
(5, 'JQUERY'),
(6, 'BOOTSTRAP');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` int(11) NOT NULL,
  `question` varchar(300) COLLATE utf8_croatian_ci NOT NULL,
  `ans1` varchar(80) COLLATE utf8_croatian_ci NOT NULL,
  `ans2` varchar(80) COLLATE utf8_croatian_ci NOT NULL,
  `ans3` varchar(80) COLLATE utf8_croatian_ci NOT NULL,
  `ans4` varchar(80) COLLATE utf8_croatian_ci NOT NULL,
  `ans` int(4) NOT NULL,
  `cat_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question`, `ans1`, `ans2`, `ans3`, `ans4`, `ans`, `cat_id`) VALUES
(15, 'What does HTML stand for?', 'Hyperlinks and Text Markup Language', 'Hyper Text Markup Language', 'Home Tool Markup Language', 'None of above', 1, 1),
(16, 'Who is making the Web standards?', 'The World Wide Web Consortium', 'Google ', ' Microsoft', '  Mozilla', 0, 1),
(17, 'Choose the correct HTML element for the largest heading:', '&lt;h6&gt; ', ' &lt;h1&gt;  ', '&lt;heading&gt; ', ' &lt;head&gt;', 0, 1),
(18, 'What is the correct HTML element for inserting a line break?', '&lt;break&gt; ', ' &lt;lb&gt;  ', '&lt;br&gt;', '&lt;b&gt;', 0, 1),
(19, 'What is the correct HTML for adding a background color?', '&lt;body bg=&quot;yellow&quot;&gt; ', ' &lt;body style=&quot;background-color:yellow;&quot;&gt; ', ' &lt;background&gt;yellow&lt;/background&gt;', ' &lt;background&gt;green&lt;/background&gt;', 0, 1),
(20, 'Choose the correct HTML element to define important text', '&lt;important&gt; ', ' &lt;strong&gt;  ', '&lt;b&gt; ', ' &lt;i&gt;', 0, 1),
(21, 'Choose the correct HTML element to define emphasized text', '&lt;i&gt; ', ' &lt;em&gt; ', ' &lt;italic&gt;', '&lt;b&gt;', 0, 1),
(22, 'What is the correct HTML for creating a hyperlink?', '&lt;a&gt;http://www.facebook.com&lt;/a&gt;  ', ' &lt;a name=http://www.facebook.com&gt;facebook&lt;/a&gt;  ', '&lt;a url=http://www.facebook.com&gt;facebook&lt;/a&gt;', ' &lt;a href=http://www.facebook.com&gt;facebook&lt;/a&gt;', 0, 1),
(23, 'Which character is used to indicate an end tag?', '/  ', '*  ', '^  ', '&lt;', 0, 1),
(24, 'How can you open a link in a new tab/browser window?', '&lt;a href=&quot;url&quot; target=&quot;new&quot;&gt;', '  &lt;a href=&quot;url&quot; target=&quot;_blank&quot;&gt;', '  &lt;a href=&quot;url&quot; new&gt;', 'None of above', 0, 1),
(25, 'What does CSS stand for?', 'Computer Style Sheets', ' Cascading Style Sheets ', ' Colorful Style Sheets ', ' Creative Style Sheets', 1, 2),
(26, 'What is the correct HTML for referring to an external style sheet?', '&lt;style src=&quot;mystyle.css&quot;&gt;  ', '&lt;stylesheet&gt;mystyle.css&lt;/stylesheet&gt; ', ' &lt;link rel=&quot;stylesheet&quot; type=&quot;text/css&quot; href=&quot;mystyl', 'None of above', 0, 2),
(27, 'Where in an HTML document is the correct place to refer to an external style sheet?', 'In the &lt;body&gt; section ', ' In the &lt;head&gt; section ', ' At the end of the document', 'None of above', 0, 2),
(28, ' Which HTML tag is used to define an internal style sheet?', '&lt;script&gt; ', ' &lt;css&gt;  ', '&lt;style&gt;', 'None of above', 0, 2),
(29, 'Which HTML attribute is used to define inline styles?', 'styles', '  style  ', 'class  ', 'font', 3, 2),
(30, 'Which is the correct CSS syntax?', 'body {color: black;} ', ' body:color=black;', '  {body;color:black;} ', ' {body:color=black;}', 0, 2),
(31, 'Which property is used to change the background color?', 'background-color ', ' color ', ' bgcolor', ' bfcolor', 2, 2),
(32, 'How do you add a background color for all &lt;h1&gt; elements?', 'h1 {background-color:#FFFFFF;} ', ' h1.all {background-color:#FFFFFF;} ', ' all.h1 {background-color:#FFFFFF;}', 'None of above', 0, 2),
(33, 'Which CSS property is used to change the text color of an element?', 'text-color ', ' color ', ' fgcolor', 'bgcolor', 0, 0),
(34, 'Which CSS property is used to change the text color of an element?', 'text-color ', 'color', 'bgcolor', 'bfcolor', 0, 2),
(35, 'Which CSS property controls the text size?', 'font-size  ', 'font-style', '  text-style ', ' text-size', 0, 2),
(36, 'What does PHP stand for?', 'Personal Hypertext Processor ', ' PHP: Hypertext Preprocessor ', ' Private Home Page', 'None of above', 1, 3),
(37, 'PHP server scripts are surrounded by delimiters, which?', '&lt;?php&gt;...&lt;/?&gt; ', ' &lt;&amp;&gt;...&lt;/&amp;&gt;', '  &lt;?php...?&gt;  ', '&lt;script&gt;...&lt;/script&gt;', 0, 3),
(38, 'All variables in PHP start with which symbol?', '$', '  &amp;  ', '!', '%', 0, 3),
(39, 'What is the correct way to end a PHP statement?', 'New line', '  ;  ', '&lt;/php&gt;  ', '.', 1, 3),
(40, 'The PHP syntax is most similar to:', 'JavaScript  ', 'Perl and C', '  VBScript', 'JSP', 1, 3),
(41, 'How do you get information from a form that is submitted using the &quot;get&quot; method?', 'Request.QueryString; ', ' Request.Form;', '  $_GET[];', 'None of above', 2, 3),
(42, 'When using the POST method, variables are displayed in the URL:', 'False  ', 'True', 'Yes', 'No', 1, 3),
(43, 'What is the correct way to include the file &quot;time.inc&quot; ?', '&lt;!-- include file=&quot;time.inc&quot; --&gt; ', ' &lt;?php include:&quot;time.inc&quot;; ?&gt; ', ' &lt;?php include &quot;time.inc&quot;; ?&gt;', '  &lt;?php include file=&quot;time.inc&quot;; ?&gt;', 0, 3),
(44, 'What is the correct way to create a function in PHP?', 'function myFunction()  ', 'new_function myFunction()  ', 'create myFunction()', 'None of above', 2, 3),
(45, 'What is the correct way to open the file &quot;time.txt&quot; as readable?', 'fopen(&quot;time.txt&quot;,&quot;r+&quot;); ', ' open(&quot;time.txt&quot;);  ', 'fopen(&quot;time.txt&quot;,&quot;r&quot;);  ', 'open(&quot;time.txt&quot;,&quot;read&quot;);', 0, 3),
(46, 'Inside which HTML element do we put the JavaScript?', '&lt;script&gt; ', ' &lt;scripting&gt;', '  &lt;javascript&gt;  ', '&lt;js&gt;', 0, 4),
(47, 'Where is the correct place to insert a JavaScript?', 'The &lt;head&gt; section', '  The &lt;body&gt; section ', ' Both the &lt;head&gt; section and the &lt;body&gt; section are correct', 'None of above', 0, 4),
(48, ' What is the correct syntax for referring to an external script called &quot;xxx.js&quot;?', '&lt;script name=&quot;xxx.js&quot;&gt;  ', '&lt;script href=&quot;xxx.js&quot;&gt;  ', '&lt;script src=&quot;xxx.js&quot;&gt;', 'None of above', 0, 4),
(49, 'The external JavaScript file must contain the &lt;script&gt; tag.', 'True', 'False', 'NA', 'No', 0, 4),
(50, 'How do you write &quot;Hello World&quot; in an alert box?', 'alert(&quot;Hello World&quot;);  ', 'alertBox(&quot;Hello World&quot;);  ', 'msgBox(&quot;Hello World&quot;);  ', 'msg(&quot;Hello World&quot;);', 0, 4),
(51, 'How do you create a function in JavaScript?', 'function myFunction()  ', 'function = myFunction()', ' function: myFunction() ', ' function; myFunction() ', 2, 4),
(52, 'How do you call a function named &quot;myFunction&quot;?', 'call myFunction()  ', 'call function myFunction()  ', 'myFunction()', 'None of above', 2, 4),
(53, 'How to write an IF statement in JavaScript?', 'if i = 5  ', 'if i = 5 then  ', 'if (i == 5)  ', 'if i == 5 then', 3, 4),
(54, 'How to write an IF statement for executing some code if &quot;i&quot; is NOT equal to 5?', 'if i &lt;&gt; 5  ', 'if (i != 5)', '  if i =! 5 then  ', 'if (i &lt;&gt; 5)', 0, 4),
(55, 'How does a WHILE loop start?', 'while i = 1 to 10', '  while (i &lt;= 10; i++) ', ' while (i &lt;= 10)', 'None of above', 0, 4),
(56, 'How does a FOR loop start?', 'for (i = 0; i &lt;= 5) ', ' for (i = 0; i &lt;= 5; i++)  ', 'for i = 1 to 5 ', ' for (i &lt;= 5; i++)', 0, 4),
(57, 'Which of the following is correct?', 'jQuery is a JavaScript Library ', ' jQuery is a JSON Library', 'jQuery is a JavaScript files', 'jQuery is a JavaScript tags', 0, 5),
(58, 'Which sign does jQuery use as a shortcut for jQuery?', 'the $ sign ', ' the ? Sign  ', 'the % sign', 'the # sign', 0, 5),
(59, ' Look at the following selector: $(&quot;div&quot;). What does it select?', 'All div elements  ', 'The first div element', 'NA', 'None of above', 0, 5),
(60, 'Is jQuery a library for client scripting or server scripting?', 'Client scripting ', ' Server scripting', 'NA', 'None of above', 0, 5),
(61, 'Is it possible to use jQuery together with AJAX?', 'No', 'Yes', 'May be', 'May not be', 1, 5),
(62, 'The jQuery html() method works for both HTML and XML documents', 'True', 'False', '-----', '-----', 0, 5),
(63, 'The jQuery html() method works for both HTML and XML documents', 'True', 'False', '-----', '-----', 0, 5),
(64, 'What is the correct jQuery code to set the background color of all p elements to red?', '$(&quot;p&quot;).style(&quot;background-color&quot;,&quot;red&quot;);', '  $(&quot;p&quot;).layout(&quot;background-color&quot;,&quot;red&quot;);  ', '$(&quot;p&quot;).manipulate(&quot;background-color&quot;,&quot;red&quot;);  ', '$(&quot;p&quot;).css(&quot;background-color&quot;,&quot;red&quot;);', 0, 5),
(65, 'Which jQuery method is used to hide selected elements?', 'hidden()  ', 'hide()  ', 'display(none)  ', 'visible(false)', 3, 5),
(66, 'Which jQuery method is used to set one or more style properties for selected elements?', 'css()  ', 'html()  ', 'style()', 'design()', 2, 5),
(67, 'Which class provides a responsive fixed width container?', '.container ', ' .container-fluid ', ' .container-fixed', ' .container-dynamic', 0, 6),
(68, 'Which class provides a full width container, spanning the entire width of the viewport?', '.container-fluid ', ' .container-fixed  ', '.container', 'container', 2, 6),
(69, 'The Bootstrap grid system is based on how many columns?', '9', '3', '6', '12', 3, 6),
(70, 'Which class shapes an image to a circle?', '.img-circle ', '.img-thumbnail ', ' .img-round ', ' .img-rounded', 0, 6),
(71, 'Which class is used to create a big box for calling extra attention?', '.bigbox', ' .jumbotron  ', '.container', '.counter', 0, 6),
(72, 'Which button class is used to create a large button?', '.btn-large ', ' .btn-l  ', '.btn-xl  ', '.btn-lg', 3, 6),
(73, 'Which class is used to create a button group?', '.button-group', '  .group-button', '  .group-btn  ', '.btn-group', 3, 6),
(74, 'How can you insert a search icon?', '&lt;span class=&quot;glyph glyph-search&quot;&gt;&lt;/span&gt; ', ' &lt;span class=&quot;glyphicon search&quot;&gt;&lt;/span&gt; ', ' &lt;span class=&quot;glyphicon-search&quot;&gt;&lt;/span&gt; ', ' &lt;span class=&quot;glyphicon glyphicon-search&quot;&gt;&lt;/span&gt;', 0, 6),
(75, 'Which class is used to create a badge?', '.badge  ', '.label  ', '.flag ', ' .tag', 0, 6),
(76, 'Which class is used to create a basic pagination?', '.navigation ', ' .page ', ' .pagination ', ' .pages', 2, 6);

-- --------------------------------------------------------

--
-- Table structure for table `signin`
--

CREATE TABLE `signin` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) COLLATE utf8_croatian_ci NOT NULL,
  `Email` varchar(30) COLLATE utf8_croatian_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8_croatian_ci NOT NULL,
  `img` varchar(255) COLLATE utf8_croatian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Dumping data for table `signin`
--

INSERT INTO `signin` (`Id`, `Name`, `Email`, `pass`, `img`) VALUES
(2, 'radha', 'radha345@gmail.com', 'gasjhjkdhf', 'C:xampp	mpphp262B.tmp'),
(3, 'raman', 'raman567@gmail.com', '988797586784', 'C:xampp	mpphpFC92.tmp'),
(4, 'nasir', 'ghj788@gmail.com', 'hdfjkhsj', 'IMG_20170819_184823.jpg'),
(5, 'ramu', 'ryt789@gmail.com', 'hjshjsk', 'WhatsApp Image 2017-11-02 at 21.39.26.jpeg'),
(6, 'amit', 'amiy786@gmail.com', 'hjhrjgkd', 'IMG_20170819_194905.jpg'),
(7, 'hindu', 'the786@gmail.com', 'uhguhgijri', 'WhatsApp Image 2017-11-02 at 21.39.30.jpeg'),
(8, 'fjdhjfs', 'hkjfhsk@gmail.com', 'jfhjd', 'IMG_20170819_184808.jpg'),
(9, 'ravi', 'ravi@gmail.com', '1234', 'IMG_20170819_175806.jpg'),
(10, 'hari', 'hari@gmail.com', '345', 'IMG_20170819_184808.jpg'),
(11, 'Deepak', 'abc@gmail.com', 'e5uyjgkj', 'IMG_20170819_180950.jpg'),
(12, 'amit kumar', 'amit234@gmail.com', '987', 'IMG_20170819_193722.jpg'),
(13, 'Chesta ', 'ches@gmail.com', '789', 'IMG_20170819_193329.jpg'),
(14, 'saksham', 'sak@gmail.com', '123', 'IMG_20170819_180950.jpg'),
(15, 'Deepak', 'dee@gmail.com', '678', 'IMG_20170819_180950.jpg'),
(16, 'gaurav', '', '', ''),
(17, 'gaurav', 'gau@gmail.com', '123', 'IMG_20170819_180950.jpg'),
(18, 'nazeer', 'naz@gmail.com', '123', 'IMG_20170819_184823.jpg'),
(19, 'narendra', 'nar@gmail.com', '789', 'IMG_20170819_184808.jpg'),
(20, 'Deepak', 'stv@gmail.com', '123', 'ajeetam.jpg'),
(21, 'fjdhjfs', 'abc@gmail.com', '123', '3b9ee30b69454c949ec537532a3f62fd.jpg'),
(22, 'Deepak', 'gtr@gmail.com', '123', ''),
(23, 'Deepak', 'gcc@g.v', '1234', ''),
(24, '555', '', '', ''),
(25, 'rahul', 'rahul@gmail.com', '987', '23550229_1540181279410501_2827949698273389762_o.jpg'),
(26, 'honey singh', 'honey@gmail.com', '456', 'IMG_20170211_145239 - Copy (2).jpg'),
(27, 'hari', 'hari@gmail.com', '12345', 'IMG_20170819_180950.jpg'),
(28, 'Deepak', 'abc@gmail.com', '123', '23550229_1540181279410501_2827949698273389762_o.jpg'),
(29, 'Deepak', 'stv@gmail.com', '123', 'GST in India.rtf'),
(30, 'sajag', 'sag123@gmail.com', '1234', 'Cashless India.rtf'),
(31, 'naqzer', 'naz@gmail.com', '1234', 'Deepak_Kumar_Hired_Certificate.pdf'),
(32, '', '', '', 'knn1.py');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `id` int(11) NOT NULL,
  `nam` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_croatian_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catagery`
--
ALTER TABLE `catagery`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `catagory`
--
ALTER TABLE `catagory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `signin`
--
ALTER TABLE `signin`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `signup`
--
ALTER TABLE `signup`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `catagery`
--
ALTER TABLE `catagery`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `catagory`
--
ALTER TABLE `catagory`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `signin`
--
ALTER TABLE `signin`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `signup`
--
ALTER TABLE `signup`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
