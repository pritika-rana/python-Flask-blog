-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2020 at 09:13 PM
-- Server version: 10.1.26-MariaDB
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `codingthunder`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `sno` int(50) NOT NULL,
  `name` text NOT NULL,
  `phone_num` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` datetime DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`sno`, `name`, `phone_num`, `msg`, `date`, `email`) VALUES
(1, 'First Post', '123456789', 'First post', '2020-05-10 20:40:56', 'firstpost@gmail.com'),
(2, 'pritika', '9876543210', 'hi', '2020-05-12 18:50:08', 'pritika@gmail.com'),
(3, 'BHUMI', '1234567890', 'Hello', '2020-05-12 18:51:45', 'neema.rana20@gmail.com'),
(4, 'Rana', '53553231367', 'send this mail\r\n', '2020-05-13 12:25:34', 'gzzcd@gmail.com'),
(5, 'Rana', '53553231367', 'send this mail\r\n', '2020-05-13 12:25:49', 'gzzcd@gmail.com'),
(6, 'Rana', '53553231367', 'send this mail\r\n', '2020-05-13 12:34:11', 'gzzcd@gmail.com'),
(7, 'Rana', '53553231367', 'send this mail\r\n', '2020-05-13 12:34:40', 'gzzcd@gmail.com'),
(8, 'neema', '12341111', 'hello guys how r u', '2020-05-17 22:04:47', 'rekhalovesbluesky@gmail.com'),
(9, 'rashmi', '9999999', 'how r u', '2020-05-18 13:23:00', 'rana.devend@gmail.com'),
(10, 'pritika', '888888888', 'i m super excited', '2020-05-18 13:26:19', 'pritikarana@gmail.com'),
(11, 'utkarsh', '0987654321', 'hiii pritika', '2020-05-18 13:40:33', 'utkarsh@gmail.com'),
(12, 'BHAVISHIKA RANA', '9958624771', 'BHAVISHIKA IS HERE', '2020-05-19 18:39:51', 'neema.rana20@gmail.com'),
(13, 'BHAVISHIKA RANA', '9958624771', 'BHAVISHIKA IS HERE', '2020-05-19 19:42:25', 'neema.rana20@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `tagline` text NOT NULL,
  `content` text NOT NULL,
  `img_file` varchar(12) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `slug` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `tagline`, `content`, `img_file`, `date`, `slug`) VALUES
(1, 'Stock Market', 'Know about Stock Market', 'Stock market is a big game of gambling.\r\nA stock market, equity market or share market is the aggregation of buyers and sellers of stocks (also called shares), which represent ownership claims on businesses; these may include securities listed on a public stock exchange, as well as stock that is only traded privately, such as shares of private companies which are sold to investors through equity crowdfunding platforms. Investment in the stock market is most often done via stockbrokerages and electronic trading platforms. Investment is usually made with an investment strategy in mind.\r\n\r\nStocks can be categorized by the country where the company is domiciled. For example, Nestlé and Novartis are domiciled in Switzerland and traded on the SIX Swiss Exchange, so they may be considered as part of the Swiss stock market, although the stocks may also be traded on exchanges in other countries, for example, as American depository receipts (ADRs) on U.S. stock markets.\r\n\r\nA stock exchange is an exchange (or bourse)[note 1] where stockbrokers and traders can buy and sell shares of stock, bonds, and other securities. Many large companies have their stocks listed on a stock exchange. This makes the stock more liquid and thus more attractive to many investors. The exchange may also act as a guarantor of settlement. Other stocks may be traded \"over the counter\" (OTC), that is, through a dealer. Some large companies will have their stock listed on more than one exchange in different countries, so as to attract international investors.[7]\r\n\r\nStock exchanges may also cover other types of securities, such as fixed interest securities (bonds) or (less frequently) derivatives which are more likely to be traded OTC.\r\n\r\nTrade in stock markets means the transfer (in exchange for money) of a stock or security from a seller to a buyer. This requires these two parties to agree on a price. Equities (stocks or shares) confer an ownership interest in a particular company.', 'about-bg.jpg', '2020-05-19 19:44:48', 'first-post'),
(2, 'Harry Potter', 'Know about Harry Potter', 'Harry Potter is a series of fantasy novels written by British author J. K. Rowling. The novels chronicle the lives of a young wizard, Harry Potter, and his friends Hermione Granger and Ron Weasley, all of whom are students at Hogwarts School of Witchcraft and Wizardry. The main story arc concerns Harry\'s struggle against Lord Voldemort, a dark wizard who intends to become immortal, overthrow the wizard governing body known as the Ministry of Magic and subjugate all wizards and Muggles (non-magical people).\r\n\r\nSince the release of the first novel, Harry Potter and the Philosopher\'s Stone, on 26 June 1997, the books have found immense popularity, critical acclaim and commercial success worldwide. They have attracted a wide adult audience as well as younger readers and are often considered cornerstones of modern young adult literature.[2] As of February 2018, the books have sold more than 500 million copies worldwide, making them the best-selling book series in history, and have been translated into eighty languages.[3] The last four books consecutively set records as the fastest-selling books in history, with the final installment selling roughly eleven million copies in the United States within twenty-four hours of its release.\r\n\r\nThe series was originally published in English by two major publishers, Bloomsbury in the United Kingdom and Scholastic Press in the United States. A play, Harry Potter and the Cursed Child, based on a story co-written by Rowling, premiered in London on 30 July 2016 at the Palace Theatre, and its script was published by Little, Brown. The original seven books were adapted into an eight-part namesake film series by Warner Bros. Pictures, which is the third highest-grossing film series of all time as of February 2020. In 2016, the total value of the Harry Potter franchise was estimated at $25 billion,[4] making Harry Potter one of the highest-grossing media franchises of all time.\r\n\r\nA series of many genres, including fantasy, drama, coming of age, and the British school story (which includes elements of mystery, thriller, adventure, horror, and romance), the world of Harry Potter explores numerous themes and includes many cultural meanings and references.[5] According to Rowling, the main theme is death.[6] Other major themes in the series include prejudice, corruption, and madness.', 'home-bg.jpg', '2020-05-18 16:58:35', 'second-post'),
(3, 'Python', 'Learn python ', 'Python is an interpreted, high-level, general-purpose programming language. Created by Guido van Rossum and first released in 1991, Python\'s design philosophy emphasizes code readability with its notable use of significant whitespace. Its language constructs and object-oriented approach aim to help programmers write clear, logical code for small and large-scale projects.[28]\r\n\r\nPython is dynamically typed and garbage-collected. It supports multiple programming paradigms, including structured (particularly, procedural), object-oriented, and functional programming. Python is often described as a \"batteries included\" language due to its comprehensive standard library.[29]\r\n\r\nPython was conceived in the late 1980s as a successor to the ABC language. Python 2.0, released in 2000, introduced features like list comprehensions and a garbage collection system capable of collecting reference cycles. Python 3.0, released in 2008, was a major revision of the language that is not completely backward-compatible, and much Python 2 code does not run unmodified on Python 3.\r\n\r\nThe Python 2 language was officially discontinued in 2020 (first planned for 2015), and \"Python 2.7.18 is the last Python 2.7 release and therefore the last Python 2 release.\"[30] No more security patches or other improvements will be released for it.[31][32] With Python 2\'s end-of-life, only Python 3.5.x[33] and later are supported.\r\n\r\nPython interpreters are available for many operating systems. A global community of programmers develops and maintains CPython, an open source[34] reference implementation. A non-profit organization, the Python Software Foundation, manages and directs resources for Python and CPython development.\r\n\r\nPython was conceived in the late 1980s[35] by Guido van Rossum at Centrum Wiskunde & Informatica (CWI) in the Netherlands as a successor to the ABC language (itself inspired by SETL),[36] capable of exception handling and interfacing with the Amoeba operating system.[8] Its implementation began in December 1989.[37] Van Rossum shouldered sole responsibility for the project, as the lead developer, until 12 July 2018, when he announced his \"permanent vacation\" from his responsibilities as Python\'s Benevolent Dictator For Life, a title the Python community bestowed upon him to reflect his long-term commitment as the project\'s chief decision-maker.[38] He now shares his leadership as a member of a five-person steering council.[39][40][41] In January 2019, active Python core developers elected Brett Cannon, Nick Coghlan, Barry Warsaw, Carol Willing and Van Rossum to a five-member \"Steering Council\" to lead the project.[42]\r\n\r\nPython 2.0 was released on 16 October 2000 with many major new features, including a cycle-detecting garbage collector and support for Unicode.[43]\r\n\r\nPython 3.0 was released on 3 December 2008. It was a major revision of the language that is not completely backward-compatible.[44] Many of its major features were backported to Python 2.6.x[45] and 2.7.x version series. Releases of Python 3 include the 2to3 utility, which automates (at least partially) the translation of Python 2 code to Python 3.[46]\r\n\r\nPython 2.7\'s end-of-life date was initially set at 2015 then postponed to 2020 out of concern that a large body of existing code could not easily be forward-ported to Python 3.', 'about-bg.jpg', '2020-05-18 21:55:22', 'third-post'),
(4, 'Features and Philosophy', 'Learn more', 'Python is a multi-paradigm programming language. Object-oriented programming and structured programming are fully supported, and many of its features support functional programming and aspect-oriented programming (including by metaprogramming[49] and metaobjects (magic methods)).[50] Many other paradigms are supported via extensions, including design by contract[51][52] and logic programming.[53]\r\n\r\nPython uses dynamic typing and a combination of reference counting and a cycle-detecting garbage collector for memory management. It also features dynamic name resolution (late binding), which binds method and variable names during program execution.\r\n\r\nPython\'s design offers some support for functional programming in the Lisp tradition. It has filter, map, and reduce functions; list comprehensions, dictionaries, sets, and generator expressions.[54] The standard library has two modules (itertools and functools) that implement functional tools borrowed from Haskell and Standard ML.[55]\r\n\r\nThe language\'s core philosophy is summarized in the document The Zen of Python (PEP 20), which includes aphorisms such as:[56]\r\n\r\nBeautiful is better than ugly.\r\nExplicit is better than implicit.\r\nSimple is better than complex.\r\nComplex is better than complicated.\r\nReadability counts.\r\nRather than having all of its functionality built into its core, Python was designed to be highly extensible. This compact modularity has made it particularly popular as a means of adding programmable interfaces to existing applications. Van Rossum\'s vision of a small core language with a large standard library and easily extensible interpreter stemmed from his frustrations with ABC, which espoused the opposite approach.[35]\r\n\r\nPython strives for a simpler, less-cluttered syntax and grammar while giving developers a choice in their coding methodology. In contrast to Perl\'s \"there is more than one way to do it\" motto, Python embraces a \"there should be one—and preferably only one—obvious way to do it\" design philosophy.[56] Alex Martelli, a Fellow at the Python Software Foundation and Python book author, writes that \"To describe something as \'clever\' is not considered a compliment in the Python culture.\"[57]\r\n\r\nPython\'s developers strive to avoid premature optimization, and reject patches to non-critical parts of the CPython reference implementation that would offer marginal increases in speed at the cost of clarity.[58] When speed is important, a Python programmer can move time-critical functions to extension modules written in languages such as C, or use PyPy, a just-in-time compiler. Cython is also available, which translates a Python script into C and makes direct C-level API calls into the Python interpreter.\r\n\r\nAn important goal of Python\'s developers is keeping it fun to use. This is reflected in the language\'s name—a tribute to the British comedy group Monty Python[59]—and in occasionally playful approaches to tutorials and reference materials, such as examples that refer to spam and eggs (from a famous Monty Python sketch) instead of the standard foo and bar.[60][61]\r\n\r\nA common neologism in the Python community is pythonic, which can have a wide range of meanings related to program style. To say that code is pythonic is to say that it uses Python idioms well, that it is natural or shows fluency in the language, that it conforms with Python\'s minimalist philosophy and emphasis on readability. In contrast, code that is difficult to understand or reads like a rough transcription from another programming language is called unpythonic.\r\n\r\nUsers and admirers of Python, especially those considered knowledgeable or experienced, are often referred to as Pythonistas.', 'home-bg.jpg', '2020-05-18 21:59:13', 'fourth-post'),
(5, 'Statement and Control flow', 'here is more', 'Python\'s statements include (among others):\r\n\r\nThe assignment statement (token \'=\', the equals sign). This operates differently than in traditional imperative programming languages, and this fundamental mechanism (including the nature of Python\'s version of variables) illuminates many other features of the language. Assignment in C, e.g., x = 2, translates to \"typed variable name x receives a copy of numeric value 2\". The (right-hand) value is copied into an allocated storage location for which the (left-hand) variable name is the symbolic address. The memory allocated to the variable is large enough (potentially quite large) for the declared type. In the simplest case of Python assignment, using the same example, x = 2, translates to \"(generic) name x receives a reference to a separate, dynamically allocated object of numeric (int) type of value 2.\" This is termed binding the name to the object. Since the name\'s storage location doesn\'t contain the indicated value, it is improper to call it a variable. Names may be subsequently rebound at any time to objects of greatly varying types, including strings, procedures, complex objects with data and methods, etc. Successive assignments of a common value to multiple names, e.g., x = 2; y = 2; z = 2 result in allocating storage to (at most) three names and one numeric object, to which all three names are bound. Since a name is a generic reference holder it is unreasonable to associate a fixed data type with it. However at a given time a name will be bound to some object, which will have a type; thus there is dynamic typing.\r\nThe if statement, which conditionally executes a block of code, along with else and elif (a contraction of else-if).\r\nThe for statement, which iterates over an iterable object, capturing each element to a local variable for use by the attached block.\r\nThe while statement, which executes a block of code as long as its condition is true.\r\nThe try statement, which allows exceptions raised in its attached code block to be caught and handled by except clauses; it also ensures that clean-up code in a finally block will always be run regardless of how the block exits.\r\nThe raise statement, used to raise a specified exception or re-raise a caught exception.\r\nThe class statement, which executes a block of code and attaches its local namespace to a class, for use in object-oriented programming.\r\nThe def statement, which defines a function or method.\r\nThe with statement, from Python 2.5 released in September 2006,[66] which encloses a code block within a context manager (for example, acquiring a lock before the block of code is run and releasing the lock afterwards, or opening a file and then closing it), allowing Resource Acquisition Is Initialization (RAII)-like behavior and replaces a common try/finally idiom.[67]\r\nThe break statement, exits from the loop.\r\nThe continue statement, skips this iteration and continues with the next item.\r\nThe pass statement, which serves as a NOP. It is syntactically needed to create an empty code block.\r\nThe assert statement, used during debugging to check for conditions that ought to apply.\r\nThe yield statement, which returns a value from a generator function. From Python 2.5, yield is also an operator. This form is used to implement coroutines.\r\nThe import statement, which is used to import modules whose functions or variables can be used in the current program. There are three ways of using import: import <module name> [as <alias>] or from <module name> import * or from <module name> import <definition 1> [as <alias 1>], <definition 2> [as <alias 2>], ....\r\nThe print statement was changed to the print() function in Python 3.\r\nPython does not support tail call optimization or first-class continuations, and, according to Guido van Rossum, it never will.[68][69] However, better support for coroutine-like functionality is provided in 2.5, by extending Python\'s generators.[70] Before 2.5, generators were lazy iterators; information was passed unidirectionally out of the generator. From Python 2.5, it is possible to pass information back into a generator function, and from Python 3.3, the information can be passed through multiple stack levels.', 'about-bg.jpg', '2020-05-18 22:00:40', 'fifth-post'),
(6, 'New Post', 'welcome to the new post', 'hi this is a new post. i will add another post soon', 'img.png', '2020-05-19 17:54:51', 'new-post'),
(7, 'hi', 'hi there', 'hiiiiiiiiiii', 'hi.png', '2020-05-19 17:57:40', 'hi-you');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
