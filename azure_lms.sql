-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql306.byetcluster.com
-- Generation Time: Oct 17, 2020 at 08:36 AM
-- Server version: 5.6.48-88.0
-- PHP Version: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ezyro_26764300_azure`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog_table`
--

CREATE TABLE `blog_table` (
  `blog_id` int(15) NOT NULL,
  `title` varchar(250) NOT NULL,
  `description` varchar(200) NOT NULL,
  `date` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `course_stud`
--

CREATE TABLE `course_stud` (
  `id` int(15) NOT NULL,
  `course_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course_stud`
--

INSERT INTO `course_stud` (`id`, `course_id`, `user_id`) VALUES
(1, 4, 46),
(3, 4, 13),
(8, 11, 47),
(9, 6, 47),
(10, 6, 13);

-- --------------------------------------------------------

--
-- Table structure for table `educate_table`
--

CREATE TABLE `educate_table` (
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` int(15) NOT NULL,
  `description` varchar(1000) NOT NULL,
  `requirement` varchar(1000) NOT NULL,
  `skill` varchar(1000) NOT NULL,
  `location` varchar(100) NOT NULL,
  `experience` varchar(200) NOT NULL,
  `salary` varchar(100) NOT NULL,
  `img1` text NOT NULL,
  `img2` text NOT NULL,
  `img3` text NOT NULL,
  `apply` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `educate_table`
--

INSERT INTO `educate_table` (`job_id`, `user_id`, `name`, `email`, `phone`, `description`, `requirement`, `skill`, `location`, `experience`, `salary`, `img1`, `img2`, `img3`, `apply`) VALUES
(24, 14, 'Tata Consultancy Services', 'info@tcs.com', 91, 'We ensure the highest levels of certainty and satisfaction through a deep-set commitment to our clients, comprehensive industry expertise and a global network of innovation and delivery centers. Our mission is to help customers achieve their business objectives by providing innovative, best-in-class consulting, IT solutions and services and to make it a joy for all stakeholders to work with us. We function as a full stakeholder to business, offering a consulting-led approach with an integrated portfolio of technology led solutions that encompass the entire Enterprise value chain. Our Customer-centric Engagement Model defines how we do engage with you, offering specialized services and solutions that meet the distinct needs of your business. We build bespoke teams around your domain and technology requirements drawn from our talent pool of over 443,676 global professionals including 36.2% women from 146 nationalities. Our domain expertise has been built upon decades of experience workin', 'DevOps Build Engineer', 'At-least 4 years of experience with DevOps [CI/CD/Ansbile].\r\nGood understanding and technical background in Application Performance Monitoring. Experience with monitoring application technologies (Java, Python). Exposure to Middleware components such as WebServer, AppServer. Excellent Written and Communication Skills and team player.', 'Kochi, Hyderabad', 'None', '4', 'tcs1_a.jpg', 'tcs2.jpg', 'tcs3.jpeg', 'https://www.tcs.com/careers?country=IN&lang=EN'),
(16, 14, 'Cognizant Technology Solutions', 'cognizant@solutions.com', 91, 'Cognizant is an American multinational corporation that provides IT services, including digital, technology, consulting, and operations services. ... It was founded as an in-house technology unit of Dun & Bradstreet in 1994, and started serving external clients in 1996', 'Program Analyst', 'Develop coding (business layer coding, interface development, service development, creation of stored procedures etc) as required in the project. Raise clarifications / issues / concerns regarding work output to the lead on time. Seek review from peer / Senior Developer periodically. Rework on the code based on code review / defects raised in unit testing or any other relevant testing phases. Participate in code peer review, as required. Highlight any potential risks to the Leads and seek inputs to resolve issues identified. Support integration of components, as required. Update traceability matrix for the work package developed. Provide support on process audit activities.', 'Chennai, Tamil Nadu, India', 'None', '5', 'cog1.jpg', 'cog3.jpg', 'cog4.jpg', 'https://careers.cognizant.com/studentandinterns/na/en'),
(17, 14, 'Capgemini', 'capgemini@india.com', 91, 'Capgemini SE is a French multinational corporation that provides consulting, technology, professional, and outsourcing services. It is headquartered in Paris, France. Capgemini has over 270,000 employees in over 50 countries, of whom nearly 120,000 are in India.', 'Junior Fullstack Developer', 'Technical skills:Java/J2EE, .Net, C++, Python, Web development technology (JavaScript, HTML, CSS, JQuery, JSON), database (Oracle), responsive Web design, ETL, PL/SQL, Hadoop, cloud APIs (e.g., a public cloud such as AWS, Azure, GCP, or an advanced private cloud such as Google or Facebook), UX design skills, UI prototyping, database management and data manipulation. Functional skills:system analysis, business analytics (such as Power BI), project management, testing, technical and/or creative writing, workshop facilitation, HR process knowledge, SharePoint, Office365, Dynamics.', 'Hyderabad', 'None', '4', 'cap1.png', 'cap2.jpg', 'cap3.jpg', 'https://www.capgemini.com/in-en/careers/'),
(18, 14, 'WIPRO', 'wipro@india.com', 91, 'Wipro Limited is an Indian multinational corporation that provides information technology, consulting and business process services. It is headquartered in Bangalore, Karnataka, India. In 2013, Wipro separated its non-IT businesses and formed the privately owned Wipro Enterprises.', '.NET-Developer', 'Use Microsoft technologies: Sitecore, C#, ASP.NET, SQL, MVC, and WebAPI to develop technical solutions to complex problems that require the regular use of ingenuity and creativity. Responsible for establishing deployment profile, IIS configuration and management. Design, code, test, debug and document software according to the functional requirements. Analyze, diagnose and resolve errors related to their applications n tHelp define project plans and tasks assignment requiring software development.', 'Noida', '2', '6', 'wip1.jpg', 'wip2.jpg', 'wip4.png', 'https://careers.wipro.com/careers-home/'),
(19, 14, 'Accenture Solutions', 'accenture@usa.com', 98, 'Accenture plc is a multinational professional services company. A Fortune Global 500 company, it reported revenues of $43.2 billion in 2019 and had 492,000 employees, serving clients in more than 120 countries. In 2015, the company had about 150,000 employees in India, 48,000 in the US, and 50,000 in the Philippines.', 'Program/Project Manager', 'Coordinate internal resources and third parties vendors for the flawless execution of projects Ensure that all projects are delivered on-time, within scope and within budget Assist in the definition of project scope and objectives, involving all relevant stakeholders and ensuring technical feasibility Ensure resource availability and allocation Develop a detailed project plan to monitor and track progress.', 'Kolkata, West Bengal', '2', '6', 'acc1.png', 'acc2_a.jpg', 'acc3.jpg', 'https://www.accenture.com/in-en/careers?src=PSEARCH&c=car_in_rmbrandawarenes_11024992&n=psgs_0919&gclid=CjwKCAjw19z6BRAYEiwAmo64LbdMatlzcmeNgdjJzQ0B3PKiFNanryoXrYQ53igOXXqcl7WK61wzAhoCXTEQAvD_BwE'),
(20, 14, 'Mindtree Solutions', 'mindtree@india.com', 91, 'Mindtree Limited is an Indian multinational information technology and outsourcing company headquartered in Bangalore, India and New Jersey, USA. It part of the Larsen & Toubro group. Founded in 1999, the company employs approximately 21,991 employees with an annual revenue of ₹7839.9 crore (US$1.1 billion). Mindtree delivers digital transformation and technology services from ideation to execution, enabling Global 2000 clients to outperform the competition. “Born digital,” Mindtree takes an agile, collaborative approach to creating customized solutions across the digital value chain. Our deep expertise in infrastructure and applications management turns IT into a strategic asset. Whether you need to run your business more efficiently or accelerate revenue growth, Mindtree can get you there.', 'Oracle DBMS Developer', 'Planning for Production Storage and Capacity Management.\r\nCreate logical models and build physical models. Installing and Managing Oracle 10g and 11g RAC databases. Configuring and Administering Oracle 10g/11g Automatic Storage Management(ASM). Cloning development databases from PROD using RMAN and BCVs. Managing Database Performance using (Statspack, TKPROF, AWR, ADDM). Implementation and Administration of Oracle Data guard. Planning for Production Storage and Capacity Management. Hands on experience on OS (HP/AIX/Linux/Sun OS/Windows etc) and OS issues monitoring and troubleshooting. Infrastructure Specialist in Oracle 9i/10g/11g database server. Creating databases from the ground up. Design, implement and operate database systems for performance and reliability. Administer production and development databases, ensuring maximum availability. Installation and configuration of Oracle 11g on Unix platforms including Solaris, AIX & RH Linux, Upgrade of Oracle Database from 9i, 10g, 11g t', 'Bangalore, Karnataka', 'None', '4', 'mind1_a.jpg', 'mind2.jpg', 'mind3.jpg', 'https://www.mindtree.com/careers'),
(22, 39, 'ITC Infotech', 'ITCinfo@india.com', 1994367890, 'ITC Infotech is a global technology solution and services leader providing business-friendly solutions, that enable future-readiness for clients. ... Our solutions and services are focused on Banking & Financial Services, Healthcare, Manufacturing, Consumer Goods, Travel and Hospitality.', 'Java Developer', 'Desirable Skills Strong Java programming skills Minimum of 5 years practical software development experience Robust object-oriented design pattern knowledge and implementation experience using Java; Python a plus Advanced knowledge and experience developing and working with relational databases such as Sybase and MySQL Experience with multi-tier application architecture and high performance distributed and in-memory caching solutions Strong understanding of data modeling techniques Strong foundation in SDLC best practices including test driven development, unit testing discipline, agile development, and CI/CD strategies Education: B.E, B. Tech, MCA, MSc (CS) or equivalent Passion for engineering highly available, performant systems Creativity and resourcefulness to problem solve independently', 'Bangalore, Karnataka', '3', '8', 'ITC1.jpg', 'ITC3.png', 'ITC2.jpg', 'https://jobs.itcinfotech.com/#!/'),
(3, 39, 'Delloite ', 'delloite@india.com', 91, 'Deloitte Touche Tohmatsu Limited, commonly referred to as Deloitte, is a multinational professional services network. Deloitte is one of the Big Four accounting organizations and the largest professional services network in the world by revenue and number', 'Senior Manager', 'Conduct advanced level research, analysis, and writing in LSHC – assist and support LSHC research/project leads in building eminence for Deloitte’s LSHC practice in the marketplace. Support research proposals and projects being developed by LSHC project l', 'Bangalore, Karnataka', '5', '10', 'dello1.jpg', 'dello2.jpg', 'dello3.jpg', 'https://www2.deloitte.com/us/en/pages/careers/topics/careers.html'),
(15, 14, 'Mphasis Limited', 'mphasisindia@limited.com', 91, 'Mphasis Limited is an IT services company based in Bangalore, India. The company provides infrastructure technology and applications outsourcing services, as well as architecture guidance, application development and integration, and application managemen', 'Senior Software Developer', 'Good knowledge on agile methodology. Good hands on with architecting the solution. Behavioral Skills. Good communication. Comfortable talking to business when needed. Multi-tasking', 'Hyderabad', '4', '12', 'm1.png', 'm2.jpg', 'h3.jpg', 'https://careers.mphasis.com/'),
(2, 14, 'American Express', 'american_express@usa.com', 91, 'The American Express Company, also known as Amex, is an American multinational financial services corporation headquartered at 200 Vesey Street in New York City. The company was founded in 1850 and is one of the 30 components of the Dow Jones Industrial A', 'Engineer II - Big Data Developer (Python and Spark)', 'Every member of our team must be able to demonstrate the following technical, functional, leadership and business core competencies, including: Agile Practices, Programming Languages (Python, Spark, Shell Scripting etc.), Thorough Data Analysis, Critical ', 'Chennai, Tamil Nadu, India', '4', '14', 'a4.png', 'ameri2.jpg', 'ameri3.jpg', 'https://jobs.americanexpress.com/india'),
(4, 14, 'Amazon Web Servies', 'amazonweb@info.com', 91, 'Amazon Web Services is a subsidiary of Amazon providing on-demand cloud computing platforms and APIs to individuals, companies, and governments, on a metered pay-as-you-go basis.', 'Sr. Technical Program Manager', 'Excellent organizational skills and project tracking abilities; experience of procurement and logistics, strong focus and attention to detail; the ability to work in a very fast-paced, hectic, and energetic environment, yet able to maintain high quality s', 'Bangalore, Karnataka', '5', '15', 'amaz1_a.png', 'amaz2.jpg', 'amaz3.jpg', 'https://aws.amazon.com/careers/'),
(5, 14, 'Microsoft', 'microsoftsolutions@usa.com', 79, 'Microsoft Corporation (/maɪkroʊ.sɒft/) is an American multinational technology company with headquarters in Redmond, Washington. It develops, manufactures, licenses, supports, and sells computer software, consumer electronics, personal computers, and rela', 'Software Developer', 'Software Development, C, C++, C#, Java, JavaScript, SQL, Python, Algorithms.', 'Bangalore, Karnataka', '2', '20', 'micr1.jpg', 'micr2.jpg', 'micr3.jpg', 'https://careers.microsoft.com/us/en'),
(6, 14, 'Siemens Limited', 'siemens@info_usa.com', 89, 'Siemens AG is a German multinational conglomerate company headquartered in Munich and the largest industrial manufacturing company in Europe with branch offices abroad. ', 'Sales incentives strategy lead', 'Definition and roll-out of the strategy. Implement a transparent sales performance process across all divisions, from target setting to quarterly order intake tracking for each of the 400 sales and account managers in the country.', 'Hyderabad, India', '5', '18', 'siemen1_a.png', 'siemen2.jpg', 't2.jpg', 'https://new.siemens.com/global/en/company/jobs/search-careers.html'),
(7, 39, 'Xebia Technologies', 'xebia@usa.com', 1992178898, 'As a pioneering IT consultancy company, Xebia delivers high-quality services to cover all aspects of digital transformation. Expert collectives specialized in Data & AI, Cloud, DevOps, Business Agility, Security, Training & Learning, Software Development,', 'Senior Full Stack Engineer', 'Expertise with one of the following scripting languages; Python, R, Knime, Mat-lab, Java, Mat-lab/Octave OpenNLP, WordNet, NLTK. Hadoop ecosystem, H2o, elastic search, spark.', 'Bangalore, Karnataka', '5', '18', 'x1.jpg', 'm2.jpg', 'x2.jpg', 'https://pages.xebia.com/vacancy-senior-full-stack-engineer');

-- --------------------------------------------------------

--
-- Table structure for table `job_table`
--

CREATE TABLE `job_table` (
  `job_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `agenda` varchar(1000) NOT NULL,
  `class` varchar(30) NOT NULL,
  `subject` varchar(1000) NOT NULL,
  `video` varchar(1000) NOT NULL,
  `presentation` varchar(100) NOT NULL,
  `date` varchar(15) NOT NULL,
  `join_id` varchar(200) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `img1` text NOT NULL,
  `img2` text NOT NULL,
  `img3` text NOT NULL,
  `apply` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_table`
--

INSERT INTO `job_table` (`job_id`, `user_id`, `name`, `email`, `phone`, `agenda`, `class`, `subject`, `video`, `presentation`, `date`, `join_id`, `pwd`, `img1`, `img2`, `img3`, `apply`) VALUES
(34, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'Learning about Sets and Relations', '11', 'Mathematics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '62891198547', 'XIMATHS', 'Set-Theory.jpg', '', '', 'https://teams.live.com/l/invite/FBAAvrDPkL0amf6-Q'),
(28, 44, 'Nilavro Seal', 'nilavro@gmail.com', '7862365600', 'Optics: 1. Convex lens2. Sums on convex lens3. Previous year question solve', '11', 'Physics Optics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '00-00-0000', '34524534', 'Optics123', 'IMG-20200918-WA0018.jpg', '', '', 'https://teams.live.com/l/invite/FBAvSO0tj9T1NCGSQ'),
(29, 44, 'Nilavro Seal ', 'nilavro@gmail.com', '7862365600', 'Thermodynamics1. Sums2. Exam', '12', 'Thermodynamics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '34524534667', 'Thermodynamics123', 'IMG-20200918-WA0017.jpg', '', '', 'https://teams.live.com/l/invite/FBAvSO0tj9T1NCGSQ'),
(30, 44, 'Nilavro Seal ', 'nilavro@gmail.com', '7862365600', 'Quantum Physics basic Introduction and discussion ', '11', 'Quantum Physics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '00-00-0000', '527277373', 'Quantum123', 'IMG-20200918-WA0020.jpg', '', '', 'https://teams.live.com/l/invite/FBAvSO0tj9T1NCGSQ'),
(35, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'Integration ', '12', 'Mathematics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '62891198547', 'XIIMATHS', 'integration.jpg', '', '', 'https://teams.live.com/l/invite/FBAAvrDPkL0amf6-Q'),
(36, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'Learning about higher algebra', '11', 'Mathematics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '62891198547', 'XIMATHS', 'algebra.jpeg', '', '', 'https://teams.live.com/l/invite/FBAAvrDPkL0amf6-Q'),
(37, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'Basics of Trigometry', '9', 'Mathematics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '62891198547', 'IXMATHS', 'trigonometry_basics.jpg', '', '', 'https://teams.live.com/l/invite/FBAAvrDPkL0amf6-Q'),
(38, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'More about Trigometry', '9', 'Mathematics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '62891198547', 'IXMATHS', 'trigonometry.jpg', '', '', 'https://teams.live.com/l/invite/FBAAvrDPkL0amf6-Q'),
(39, 44, 'Nilavro Seal', 'nilavro@gmail.com', '7862365600', 'Discussion on Basic physics of light', '8', 'Physic Light', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '00-00-0000', '62882672', 'Light123', 'IMG-20200918-WA0023.jpg', '', '', 'https://teams.live.com/l/invite/FBAvSO0tj9T1NCGSQ'),
(40, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'Learning Higher Trigonometry', '11', 'Mathematics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '62891198547', 'XIMATHS', 'trigonometry-solving-side-1.jpg', '', '', 'https://teams.live.com/l/invite/FBAAvrDPkL0amf6-Q'),
(41, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'Learning Higher Trigonometry (Part 2)', '11', 'Mathematics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '62891198547', 'XIMATHS', 'Icon-Trigonometry.jpg', '', '', 'https://teams.live.com/l/invite/FBAAvrDPkL0amf6-Q'),
(42, 44, 'Nilavro Seal', 'nilavro@gmail.com', '7862365600', 'Today I will discuss basis principles of waves', '8', 'Physics Waves', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '00-00-0000', '62778628', 'Waves123', 'IMG-20200918-WA0027.jpg', '', '', 'https://teams.live.com/l/invite/FBAvSO0tj9T1NCGSQ'),
(43, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'Construction of Triangles', '10', 'Mathematics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '62891198547', 'XMATHS', 'triangle1.jpg', '', '', 'https://teams.live.com/l/invite/FBAAvrDPkL0amf6-Q'),
(44, 44, 'Nilavro Seal', 'nilavro@gmail.com', '7862365600', 'Todays agenda SHM', '11', 'Physics SHM', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '00-00-0000', '52767886', 'PhysicsSHM123', 'IMG-20200918-WA0021.jpg', '', '', 'https://teams.live.com/l/invite/FBAvSO0tj9T1NCGSQ'),
(45, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'Construction of Polygons of higher order', '10', 'Mathematics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '62891198547', 'XMATHS', 'polygons.jpg', '', '', 'https://teams.live.com/l/invite/FBAAvrDPkL0amf6-Q'),
(46, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'Learning about other geometric shapes', '12', 'Mathematics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '62891198547', 'XIIMATHS', 'conic_section.jpg', '', '', 'https://teams.live.com/l/invite/FBAAvrDPkL0amf6-Q'),
(47, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'Concepts of Line and Plane', '11', 'Mathematics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '62891198547', 'XIMATHS', 'plane_line.jpg', '', '', 'https://teams.live.com/l/invite/FBAAvrDPkL0amf6-Q'),
(48, 44, 'Nilavro Seal', 'nilavro@gmail.com', '7862365600', 'Fluid Mechanis', '12', 'Physics Fluid Mechanics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '00-00-0000', '5266526727', 'Passcode232', 'IMG-20200918-WA0028.jpg', '', '', 'https://teams.live.com/l/invite/FBAvSO0tj9T1NCGSQ'),
(49, 44, 'Nilavro Seal', 'nilavro@gmail.com', '7862365600', 'Today I will take a short exam on Thermodynamics and Optics', '12', 'Physics exam', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '00-00-0000', '34524534', 'Passcode232', 'IMG-20200918-WA0031.jpg', '', '', 'https://teams.live.com/l/invite/FBAvSO0tj9T1NCGSQ'),
(50, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'Concepts of 3D', '12', 'Mathematics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '62891198547', 'XIIMATHS', '3d.jpg', '', '', 'https://teams.live.com/l/invite/FBAAvrDPkL0amf6-Q'),
(51, 44, 'Nilavro Seal', 'nilavro@gmail.com', '7862365600', 'Today I will discuss basic concepts of Semiconductor ', '11', 'Physics Semiconductor ', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '00-00-0000', '34524534667', 'Passcode23266', 'IMG-20200918-WA0030.jpg', '', '', 'https://teams.live.com/l/invite/FBAvSO0tj9T1NCGSQ'),
(52, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'Reflection', '9', 'Mathematics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '62891198547', 'IXMATHS', 'reflection.jpg', '', '', 'https://teams.live.com/l/invite/FBAAvrDPkL0amf6-Q'),
(53, 44, 'Nilavro Seal', 'nilavro@gmail.com', '7862365600', 'Today I will discuss the 2nd part of Semiconductor And discuss previous Year question...', '11', 'Physics Semiconductor 2', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '00-00-0000', '34524534667', 'Passcode23266', 'IMG-20200918-WA0030.jpg', '', '', 'https://teams.live.com/l/invite/FBAvSO0tj9T1NCGSQ'),
(54, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'Ogive Drawing', '10', 'Mathematics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '62891198547', 'XMATHS', 'ogive.jpg', '', '', 'https://teams.live.com/l/invite/FBAAvrDPkL0amf6-Q'),
(55, 44, 'Nilavro Seal', 'nilavro@gmail.com', '7862365600', 'Wave nature of sound', '12', 'Physics Wave 2', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '00-00-0000', '57562727', 'Passcode23266', 'IMG-20200918-WA0027.jpg', '', '', 'https://teams.live.com/l/invite/FBAvSO0tj9T1NCGSQ'),
(56, 44, 'Nilavro Seal', 'nilavro@gmail.com', '7862365600', 'Today I will discuss 2nd part of quantum physics ', '12', 'Quantum Physics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '00-00-0000', '47565457', '244355', 'IMG-20200918-WA0020.jpg', '', '', 'https://teams.live.com/l/invite/FBAvSO0tj9T1NCGSQ'),
(57, 44, 'Nilavro Seal', 'nilavro@gmail.com', '7862365600', 'Today I will take exam on full syllabus', '11', 'Physics exam', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '00-00-0000', '5266252', 'Pass4625', 'IMG-20200918-WA0031.jpg', '', '', 'https://teams.live.com/l/invite/FBAvSO0tj9T1NCGSQ'),
(58, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'Learning about Quadratic Equation', '9', 'Mathematics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '62891198547', 'IXMATHS', 'quadratic.png', '', '', 'https://teams.live.com/l/invite/FBAAvrDPkL0amf6-Q'),
(59, 44, 'Nilavro Seal', 'nilavro@gmail.com', '7862365600', '1. Today I will revise Numericals of optics2. Suggestion will be given for next exam', '11', 'Physics Optics', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '00-00-0000', '5262625', 'Passcode232', 'IMG-20200918-WA0018.jpg', '', '', 'https://teams.live.com/l/invite/FBAvSO0tj9T1NCGSQ'),
(60, 44, 'Nilavro Seal', 'nilavro@gmail.com', '7862365600', 'Basic concepts of Sound wave', '8', 'Physics sound ', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '00-00-0000', '5628627', 'Physics8888', 'IMG-20200918-WA0032.jpg', '', '', 'https://teams.live.com/l/invite/FBAvSO0tj9T1NCGSQ'),
(61, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', 'Understand the concept of functions and recursion.', '12', 'Computer Science', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '54789512', 'recursion12', 'recursion.jpeg', '', '', 'https://teams.live.com/l/invite/FBA9zWwsu0si7NyVA'),
(62, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', ' Learn how to create and use Python libraries.', '12', 'Computer Science', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '78951542', 'python12', 'python.png', '', '', 'https://teams.live.com/l/invite/FBA9zWwsu0si7NyVA'),
(63, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', 'Learn about the concept of efficiency in algorithms and computing in general.', '11', 'Computer Science', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '69851423', 'algo437', 'algorithms.jpg', '', '', 'https://teams.live.com/l/invite/FBA9zWwsu0si7NyVA'),
(64, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', 'Learn basic data structures: lists, stacks, and queues.', '12', 'Computer Science', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '89546258', 'dataStruct12', 'dataStructures.jpg', '', '', 'https://teams.live.com/l/invite/FBA9zWwsu0si7NyVA'),
(65, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', 'Learn file handling.', '9', 'Computer Science', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '58964562', 'filehandl32', 'file_handling.jpg', '', '', 'https://teams.live.com/l/invite/FBA9zWwsu0si7NyVA'),
(66, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', 'Get a basic understanding of computer networks: network stack, basic network hardware, basic protocols, and basic tools.', '12', 'Computer Science', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '58964588', 'network12', 'network.jpg', '', '', 'https://teams.live.com/l/invite/FBA9zWwsu0si7NyVA'),
(67, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', 'Connect a Python program with an SQL database, and learn aggregation functions in SQL.', '12', 'Computer Science', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '55698554', 'sqldata12', 'sql.png', '', '', 'https://teams.live.com/l/invite/FBA9zWwsu0si7NyVA'),
(68, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', 'Have a clear understanding of cyber ethics and cybercrime. Understand the value of technology in societies, gender and disability issues, and the technology behind biometric ids.', '12', 'Computer Science', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '56894577', 'hack57', 'security.png', '', '', 'https://teams.live.com/l/invite/FBA9zWwsu0si7NyVA'),
(69, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', 'Familiarity with basics of computers.', '9', 'Computer Science', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '54896545', 'basics9', 'computerBasics.png', '', '', 'https://teams.live.com/l/invite/FBA9zWwsu0si7NyVA'),
(70, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', 'Ability to navigate the file system.', '9', 'Computer Science', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '78552489', 'filehandl9', 'filesystem.png', '', '', 'https://teams.live.com/l/invite/FBA9zWwsu0si7NyVA'),
(71, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', 'Microsoft Power Point Basics', '8', 'Computer Science', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '95894689', 'powpoint8', 'Power-Point.jpg', '', '', 'https://teams.live.com/l/invite/FBA9zWwsu0si7NyVA'),
(72, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', 'Create and edit rich text documents, spreadsheets, and presentations.', '10', 'Computer Science', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '78959546', 'document45', 'office.jpg', '', '', 'https://teams.live.com/l/invite/FBA9zWwsu0si7NyVA'),
(73, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', 'Perform basic data manipulation using spreadsheets.', '7', 'Computer Science', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '45896585', 'spreadsheet7', 'spreadsheets.png', '', '', 'https://teams.live.com/l/invite/FBA9zWwsu0si7NyVA'),
(74, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', 'Safe and correct usage of websites, social networks, chat sites, and email.', '10', 'Computer Science', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '98654752', 'cyber10', 'cyberbullying.jpg', '', '', 'https://teams.live.com/l/invite/FBA9zWwsu0si7NyVA'),
(75, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', 'Send and receive emails, follow email etiquette, and communicate over the internet.', '9', 'Computer Science', 'https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '58964851', 'emailequity9', 'email.png', '', '', 'https://teams.live.com/l/invite/FBA9zWwsu0si7NyVA'),
(76, 45, 'soumya bhattacherjee', 'sb3567cv@gmail.com', '7980775239', 'Organic chemistry -OH bonding alcohol formation ', '12', 'Chemistry', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', 'Chemistry_12', 'chemistry12', 'free-chemistry-books.jpg', '', '', 'https://teams.live.com/l/invite/FBAiMGl60nKcNY-gg'),
(77, 45, 'soumya bhattacherjee', 'sb3567cv@gmail.com', '7980775239', 'Basic idea about organic chemistry', '12', 'Chemistry', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', 'Chemistry_12', 'chemistry12', 'apps.33325.14369444307494184.16fbe8f7-06c4-4e13-b0a2-3483175db1af.jpg', '', '', 'https://teams.live.com/l/invite/FBAiMGl60nKcNY-gg'),
(78, 51, 'Ritam Dey', 'ritam@gmail.com', '9007635827', 'English Language PracticeArticlesVoices', '10', 'English Language', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '123456', 'englang', 'englang.jpg', '', '', 'https://teams.live.com/l/invite/FBAkNBrEq3BK3OTOw'),
(79, 45, 'soumya bhattacherjee', 'sb3567cv@gmail.com', '7980775239', 'Basic idea About physical Chemistry', '11', 'Chemistry', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', 'Chemistry_11', 'chemistry11', 'Physical-Chemistry.jpg', '', '', 'https://teams.live.com/l/invite/FBAiMGl60nKcNY-gg'),
(80, 51, 'Ritam Dey', 'ritam@gmail.com', '9007635827', 'English Language Practice\r\nTenses', '10', 'English Language', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '123456', 'englang', 'englang3.jpg', '', '', 'https://teams.live.com/l/invite/FBAkNBrEq3BK3OTOw'),
(81, 45, 'soumya bhattacherjee', 'sb3567cv@gmail.com', '7980775239', 'Why we study inorganic chemistry', '11', 'Chemistry', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', 'Chemistry_11', 'chemistry11', 'inorganic.jpg', '', '', 'https://teams.live.com/l/invite/FBAiMGl60nKcNY-gg'),
(82, 51, 'Ritam Dey', 'ritam@gmail.com', '9007635827', 'Prepositions', '10', 'English Language', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '123456', 'englang', 'englang4.jpg', '', '', 'https://teams.live.com/l/invite/FBAkNBrEq3BK3OTOw'),
(83, 45, 'soumya bhattacherjee', 'sb3567cv@gmail.com', '7980775239', 'Study about Different kind of R-group', '12', 'Chemistry', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', 'Chemistry_12', 'chemistry12', 'fgroup.gif', '', '', 'https://teams.live.com/l/invite/FBAiMGl60nKcNY-gg'),
(84, 51, 'Ritam Dey', 'ritam@gmail.com', '9007635827', 'Change the Voice', '10', 'English Language', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '123456', 'englang', 'englang5.jpg', '', '', 'https://teams.live.com/l/invite/FBAkNBrEq3BK3OTOw'),
(85, 51, 'Ritam Dey', 'ritam@gmail.com', '9007635827', 'Gammar Practice 1', '10', 'English Language', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '123456', 'englang', 'englang6.jpg', '', '', 'https://teams.live.com/l/invite/FBAkNBrEq3BK3OTOw'),
(86, 45, 'soumya bhattacherjee', 'sb3567cv@gmail.com', '7980775239', 'Study On Functional group', '12', 'Chemistry', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', 'Chemistry_12', 'chemistry12', '60b63548a51b0c80ecdcd8076d81362a.png', '', '', 'https://teams.live.com/l/invite/FBAiMGl60nKcNY-gg'),
(87, 51, 'Ritam Dey', 'ritam@gmail.com', '9007635827', 'Grammar Practice 2', '10', 'English Language', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '123456', 'englang', 'englang7.jpg', '', '', 'https://teams.live.com/l/invite/FBAkNBrEq3BK3OTOw'),
(88, 45, 'soumya bhattacherjee', 'sb3567cv@gmail.com', '7980775239', 'Study on periodic table', '11', 'Chemistry', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', 'Chemistry_11', 'chemistry11', 'version-periodic-table-elements.jpg', '', '', 'https://teams.live.com/l/invite/FBAiMGl60nKcNY-gg'),
(89, 51, 'Ritam Dey', 'ritam@gmail.com', '9007635827', 'Nouns', '10', 'English Language', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '123456', 'englang', 'englang8.jpg', '', '', 'https://teams.live.com/l/invite/FBAkNBrEq3BK3OTOw'),
(90, 51, 'Ritam Dey', 'ritam@gmail.com', '9007635827', 'Adjectives', '10', 'English Language', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '123456', 'englang', 'englang9.jpg', '', '', 'https://teams.live.com/l/invite/FBAkNBrEq3BK3OTOw'),
(91, 45, 'soumya bhattacherjee', 'sb3567cv@gmail.com', '7980775239', 'Re  activity series\r\n', '12', 'Chemistry', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', 'Chemistry_12', 'chemistry12', 'reactivity-series-of-metals.jpeg', '', '', 'https://teams.live.com/l/invite/FBAiMGl60nKcNY-gg'),
(92, 45, 'soumya bhattacherjee', 'sb3567cv@gmail.com', '7980775239', 'Acid vs base', '11', 'Chemistry', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', 'Chemistry_11', 'chemistry11', 'Acids-Vs-Bases.png', '', '', 'https://teams.live.com/l/invite/FBAiMGl60nKcNY-gg'),
(93, 45, 'soumya bhattacherjee', 'sb3567cv@gmail.com', '7980775239', 'Halogens', '11', 'Chemistry', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', 'Chemistry_11', 'chemistry11', 'maxresdefault.jpg', '', '', 'https://teams.live.com/l/invite/FBAiMGl60nKcNY-gg'),
(94, 45, 'soumya bhattacherjee', 'sb3567cv@gmail.com', '7980775239', 'Alkali group of meatals', '11', 'Chemistry', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', 'Chemistry_11', 'chemistry11', 'maxresdefault (1).jpg', '', '', 'https://teams.live.com/l/invite/FBAiMGl60nKcNY-gg'),
(95, 45, 'soumya bhattacherjee', 'sb3567cv@gmail.com', '7980775239', 'Solid state', '11', 'Chemistry', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', 'Chemistry_11', 'chemistry11', '2017728-121453262-8347-particles-of-matter-are-arranged-to-form-solid-shape.png', '', '', 'https://teams.live.com/l/invite/FBAiMGl60nKcNY-gg'),
(96, 45, 'soumya bhattacherjee', 'sb3567cv@gmail.com', '7980775239', 'Molecular structure of air molecule', '12', 'Chemistry', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', 'Chemistry_12', 'chemistry12', 'molecular-structure-air-molecules-16914042.jpg', '', '', 'https://teams.live.com/l/invite/FBAiMGl60nKcNY-gg'),
(97, 45, 'soumya bhattacherjee', 'sb3567cv@gmail.com', '7980775239', 'chemical bonding', '11', 'Chemistry', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', 'Chemistry_11', 'chemistry11', 'big_thumb.jpg', '', '', 'https://teams.live.com/l/invite/FBAiMGl60nKcNY-gg'),
(98, 45, 'soumya bhattacherjee', 'sb3567cv@gmail.com', '7980775239', 'kinetic theory of gases', '11', 'Chemistry', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', 'Chemistry_11', 'chemistry11', 'hi_4648.jpg', '', '', 'https://teams.live.com/l/invite/FBAiMGl60nKcNY-gg'),
(99, 51, 'Ritam Dey', 'ritam@gmail.com', '9007635827', 'Adverbs', '10', 'English Language', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '123456', 'englang', 'englang10.jpg', '', '', 'https://teams.live.com/l/invite/FBAkNBrEq3BK3OTOw'),
(100, 51, 'Ritam Dey', 'ritam@gmail.com', '9007635827', 'Punctuation', '10', 'English Language', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '123456', 'englang', 'englang11.jpg', '', '', 'https://teams.live.com/l/invite/FBAkNBrEq3BK3OTOw'),
(101, 51, 'Ritam Dey', 'ritam@gmail.com', '9007635827', 'Pronouns', '10', 'English Language', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '123456', 'englang', 'englang12.jpg', '', '', 'https://teams.live.com/l/invite/FBAkNBrEq3BK3OTOw'),
(102, 51, 'Ritam Dey', 'ritam@gmail.com', '9007635827', 'Basic Grammar Practice', '10', 'English Language', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '123456', 'englang', 'englang13.jpg', '', '', 'https://teams.live.com/l/invite/FBAkNBrEq3BK3OTOw'),
(103, 51, 'Ritam Dey', 'ritam@gmail.com', '9007635827', 'Determiners', '10', 'English Language', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '123456', 'englang', 'englang15.jpg', '', '', 'https://teams.live.com/l/invite/FBAkNBrEq3BK3OTOw'),
(104, 51, 'Ritam Dey', 'ritam@gmail.com', '9007635827', 'Basic Grammar Practice', '10', 'English Language', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '123456', 'englang', 'englang14.jpg', '', '', 'https://teams.live.com/l/invite/FBAkNBrEq3BK3OTOw'),
(105, 51, 'Ritam Dey', 'ritam@gmail.com', '9007635827', 'Verb tenses', '10', 'English Language', ' https://aka.ms/azuremediaplayer?url=https%3A%2F%2Findeesvideo-aase.streaming.media.azure.net%2Fa0ced634-629d-4120-9f6d-faf94b1b03d0%2FIndees2.ism%2Fmanifest', 'https://1drv.ms/u/s!Aibwdbk2vSojeQD7rLP6Vh_QbC8?e=lfXU7O', '0000-00-00', '123456', 'englang', 'english16.jpg', '', '', 'https://teams.live.com/l/invite/FBAkNBrEq3BK3OTOw');

-- --------------------------------------------------------

--
-- Table structure for table `lms_table`
--

CREATE TABLE `lms_table` (
  `course_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(60) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `course` varchar(150) NOT NULL,
  `short_desc` varchar(3500) NOT NULL,
  `link` varchar(150) NOT NULL,
  `price` varchar(10) NOT NULL,
  `learn` varchar(1000) NOT NULL,
  `requirement` varchar(1000) NOT NULL,
  `long_desc` varchar(10000) NOT NULL,
  `img` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lms_table`
--

INSERT INTO `lms_table` (`course_id`, `user_id`, `name`, `email`, `phone`, `course`, `short_desc`, `link`, `price`, `learn`, `requirement`, `long_desc`, `img`) VALUES
(5, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'Web Development using HTML, CSS, JS', 'Learn Complete Web Development using HTML, CSS, JS', 'https://www.youtube.com/embed/BU2rjqA_8Y4', '750.00', 'YOU WILL LEARN ABOUT HTML5, CSS3, BOOTSTRAP, JS AND INPLEMENTING THEN TO CREATE BEAUTIFUL WEBSITES FROM SCRATCH.', 'SHOULD HAVE A COMPUTER/LAPTOP WITH INTERNET CONNECTION.', 'YOU WILL LEARN ABOUT HTML5, CSS3, BOOTSTRAP, JS AND INPLEMENTING THEN TO CREATE BEAUTIFUL WEBSITES FROM SCRATCH.', 'webdevelopement.jpeg'),
(6, 44, 'Nilavro Seal', 'nilavro@gmail.com', '7862365600', 'Object Oriented C++ ', 'C++ is one of the most widely used programming languages today. The language itself is object-oriented, offering you the utmost control over data usage, interface, and resource allocation. This course covers the fundamentals of programming in C++. Created for the novice programmer, this course assumes no prior knowledge of computer programming.', 'https://www.youtube.com/embed/18c3MTX0PK0?list=PLlrATfBNZ98dudnM48yfGUldqGD0S4FFb', '759.00', 'C++ is one of the most widely used programming languages today. First course will cover basic syntax of C++, then we will dive in OOP.', 'No Prerequisites ', 'C++ is one of the most widely used programming languages today. The language itself is object-oriented, offering you the utmost control over data usage, interface, and resource allocation. This course covers the fundamentals of programming in C++. Created for the novice programmer, this course assumes no prior knowledge of computer programming.', 'C++ Logo.jpg'),
(7, 46, 'Priyam Mazundar', 'tirthadeepbfb.com@gmail.com', '9748196335', 'JAVA BASIC ', 'Learn the complete java basic and its applications in the IT field', 'https://www.youtube.com/embed/AushtkE0FKM', '800.00', 'Complete programming using JAVA', 'SHOULD HAVE COMPUTER/LAPTOP WITH PROPER INTERNET CONNECTION', 'LEARN THE NEW PROGRAMMING LANGUAGE JAVA WITH ITS SYNTAX, ITS ADVANTANGES OVER OTHER PROGRAMMING LANGUAGES AND ITS APPLICATION.', 'JAVA.jpg'),
(8, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', 'Machine Learning using Python', 'Learn the Machine Learning and train your Machine to do you stuff.', 'https://www.youtube.com/embed/gmvvaobm7eQ', '900.00', 'Learn the Python basic and Implement it to learn Machine Learning.', 'SHOULD HAVE A COMPUTER AND INTERNET CONNECTION.', 'Learn the Python basic and Implement it to learn Machine Learning.', 'ML.jpg'),
(9, 44, 'Nilavro Seal', 'nilavro@gmail.com', '7862365600', 'Introduction to CMD', 'Command Prompt is a command line interpreter application available in most Windows operating systems. ', 'https://www.youtube.com/embed/MBBWVgE0ewk?list=PL6gx4Cwl9DGDV6SnbINlVUd0o2xT4JbMu', '315.00', 'Basic of CMD', 'Basic Knowledge of Computer Hardware', 'Command Prompt is a command line interpreter application available in most Windows operating systems. ', 'CMD1.png'),
(10, 45, 'soumya bhattacherjee', 'sb3567cv@gmail.com', '7980775239', 'SQL in DBMS', 'The course is designed for beginners to SQL and database management systems, and will introduce common database management topics.', 'https://www.youtube.com/embed/xmwI6VB_wUM?list=PLLAZ4kZ9dFpMGXTKXsBM_ZNpJwowfsP49', '549.00', 'The course is designed for beginners to SQL and database management systems, and will introduce common database management topics.', 'Basic Knowledge of DBMS', 'The course is designed for beginners to SQL and database management systems, and will introduce common database management topics.', 'SQL.png'),
(11, 50, 'Arijit Saha Ray', 'arijitsaharay07@gmail.com', '+91 7003959492', 'Web Development using python', 'You will learn how to develop a beautiful website using python', 'https://www.youtube.com/embed/BybWnqGYoC8', '700.00', 'You will learn html, css, jquery, mysql', 'Need a basic concept of coding', 'Learn the Python basic and Implement it to make websites.', 'WhatsApp Image 2019-07-18 at 2.06.05 AM (4).jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `stud_table`
--

CREATE TABLE `stud_table` (
  `stud_id` int(10) NOT NULL,
  `user_id` int(20) NOT NULL,
  `name` text NOT NULL,
  `address` varchar(300) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` int(15) NOT NULL,
  `profession` varchar(200) NOT NULL,
  `objective` varchar(500) NOT NULL,
  `education` varchar(500) NOT NULL,
  `experience` varchar(500) NOT NULL,
  `skill` varchar(500) NOT NULL,
  `language` varchar(500) NOT NULL,
  `links` varchar(50) NOT NULL,
  `img1` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stud_table`
--

INSERT INTO `stud_table` (`stud_id`, `user_id`, `name`, `address`, `email`, `phone`, `profession`, `objective`, `education`, `experience`, `skill`, `language`, `links`, `img1`) VALUES
(6, 13, 'Angelina Stuart', 'Sukanta Pally, Agarpara, Kolkata-700109', 'angelinastuart@gmail.com', 1995645389, 'Software Engineer', 'Young engineer with 2 years knowledge in software industry.', 'B.Tech - Georgia State University (CGPA-7/10). ', 'IBM-2 years as software developer and tester, already done 2 projects one for data science and other for machine learning.', 'C, C++, .Net, NodeJS, React, AngularJS, PHP, MySQL', 'English, Spanish, Japanese', 'www.github.com/Arijit', 'job1.jpg'),
(7, 13, 'Jason Bourne', '17/A Manhattan Street, New York, United States of America', 'jasonbourne@hotmail.com', 1783456712, 'Ethical Hacker', 'Young dynamic professional hacker qualified with penetration testing and cyber security as well as hands on experience in digital financial transactions.', 'MS - MIT (CGPA-5/5)', '4 years as bug finder in Facebook, Microsoft.', 'Networking, Problem Solving, SQL Injection.', 'English,Chinese', 'www.github.com/JasonBourne', 'job2.jpg'),
(10, 13, 'Scarlett Johansson', 'Manhattan, New York city, United States of America', 'witchscarlet@hotmail.com', 1994367890, 'Business Analyst', 'Responsible for bridging the gap between IT and the business using data analytics to assess processes, determine requirements and deliver data-driven recommendations and reports to executives and stakeholders.', 'MS - California State University, Los Angeles (CGPA-4/5)', '2 years as business and marketing engineer in Deloitte,USA. 1 year as project manager and Team Leader in Deloitte,USA.', 'MBA in marketing and finance as well as in strategies. Having knowledge of .Net and C#.', 'English, Russian, Italian, Spanish', 'www.github.com/witch', 'job7.jpg'),
(12, 13, 'Chris Evans', 'Brooklyn, New York city, United States of America', 'evans@office.com', 1973435645, 'Web Analyst', 'Experienced in web development and website maintainance. Perform gap analyses and root case analyses on goals and objectives. Define, track, measure and analyze performance of both internal and external promotions including multi/omni channel attribution. Design A/B and multivariate test strategies to optimize performance of a feature, product or offering. Utilize mathematical and anal.', 'MCA - IIT Kharagpur (CGPA-9/10)', '1 year experience as web developer in Technotrix Solutions. 2 years experience as web analyst in Capgemini.', 'Formulate market, audience and product analyses and provide actionable insights to stakeholders to help drive digital subscriptions, grow audience and optimize revenue.', 'English, Russian, Japanese, Spanish.', 'www.github.com/Chrisevans', 'job10.jpg'),
(15, 13, 'Rudrasish Bagchi', 'india', 'rudrasishbagchi@gmail.com', 91, 'Web Developer', 'About us ', 'Education', '5', 'mysql', 'English', 'https://hello1', 'doctor_sign.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `u_name` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` text NOT NULL,
  `email` varchar(50) NOT NULL,
  `radio` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `u_name`, `password`, `name`, `phone`, `email`, `radio`) VALUES
(13, 'applicant', 'applicant@123', 'Rudrasish Bagchi', '+91-9007837970', 'rudrasishbagchi@gmail.com', 'applicant'),
(39, 'rookie', 'rookie@123', 'Arijit Saha Ray', '+91-7003959492', 'arijitsaharay07@gmail.com', 'applicant'),
(14, 'deep', 'arijit@123', 'Arijit Saha Ray', '+919830887076', 'arijitsaharay07@gmail.com', 'recruiter'),
(44, 'Nilavro Seal', '12345', 'Nilavro Seal', '7862365600', 'nilavro@gmail.com', 'recruiter'),
(43, 'deep', 'deep@1234', 'Deep Saha', '4569874562', 'deep@gmail.com', 'recruiter'),
(45, 'soumya', 'soumya@123', 'soumya bhattacherjee', '7980775239', 'sb3567cv@gmail.com', 'recruiter'),
(46, 'tirtha2208', 'tirthaindees', 'Priyam Mazundar', '9748196335', 'tirthadeepbfb.com@gmail.com', 'recruiter'),
(47, 'ritam', 'ritam@123456', 'Ritam rfmor', '9738477572', 'ritam34@gmail.com', 'applicant'),
(48, 'deep', 'deep', 'deep@123', '456554645', 'deep@123', 'applicant'),
(49, 'deep', 'deep', 'deep@123', '456554645', 'deep@123', 'applicant'),
(50, 'arijit', 'arijit@123', 'Arijit Saha Ray', '+91 7003959492', 'arijitsaharay07@gmail.com', 'recruiter'),
(51, 'Ritam', 'ritam123', 'Ritam Dey', '9007635827', 'ritam@gmail.com', 'recruiter');

-- --------------------------------------------------------

--
-- Table structure for table `video_table`
--

CREATE TABLE `video_table` (
  `video_id` int(15) NOT NULL,
  `course_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `name` varchar(300) NOT NULL,
  `video_link` varchar(500) NOT NULL,
  `description` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video_table`
--

INSERT INTO `video_table` (`video_id`, `course_id`, `user_id`, `name`, `video_link`, `description`) VALUES
(6, 5, 0, 'HTML,CSS BASIC PART 1', 'https://www.youtube.com/embed/jBQFnyq7BFI', ''),
(7, 6, 0, 'Object Oriented C++', 'https://www.youtube.com/embed/18c3MTX0PK0?list=PLlrATfBNZ98dudnM48yfGUldqGD0S4FFb', 'This video is the introductory part of C++'),
(8, 5, 0, 'HTML,CSS BASIC PART 2', 'https://www.youtube.com/embed/Sr9yAi_q4LQ', ''),
(9, 5, 0, 'JAVASCRIPT TUITORIAL', 'https://www.youtube.com/embed/ZpU3mEaK0_w', ''),
(10, 5, 0, 'INTRODUCTION TO NODE JS PART 1', 'https://www.youtube.com/embed/EFxGk7wtCa4', ''),
(11, 5, 0, 'INTRODUCTION TO NODE JS PART 2', 'https://www.youtube.com/embed/d_bi_ZGfcBI', ''),
(12, 6, 0, 'Setup C++ on Window', 'https://www.youtube.com/embed/1OsGXuNA5cc?list=PLlrATfBNZ98dudnM48yfGUldqGD0S4FFb', 'How to set C++ environment in Window'),
(13, 6, 0, 'Variables in C++', 'https://www.youtube.com/embed/zB9RI8_wExo?list=PLlrATfBNZ98dudnM48yfGUldqGD0S4FFb', 'How to use variable in C++'),
(14, 7, 0, 'HOW TO SET JDK IN YOUR SYSTEM ', 'https://www.youtube.com/embed/bwUWEioRlgE', ''),
(15, 7, 0, 'WRITE YOUR FIRST PROGRAM \"HELLO WORLD\" IN JAVA', 'https://www.youtube.com/embed/rs1o-4nPUb0', ''),
(16, 7, 0, 'JAVA VARIABLES, DATA TYPES, EXPESSION', 'https://www.youtube.com/embed/iFzA43xR04s', ''),
(17, 7, 0, 'OPERATORS', 'https://www.youtube.com/embed/YdB1K9bjYaM', ''),
(18, 6, 0, 'Functions in C++', 'https://www.youtube.com/embed/V9zuox47zr0?list=PLlrATfBNZ98dudnM48yfGUldqGD0S4FFb', 'This video describe how to use function in  C++'),
(19, 7, 0, 'LOOPS', 'https://www.youtube.com/embed/InL3oefmc1Y', ''),
(20, 6, 0, 'Pointers in C++', 'https://www.youtube.com/embed/DTxHyVn0ODg?list=PLlrATfBNZ98dudnM48yfGUldqGD0S4FFb', 'This video is for pointer in C++'),
(21, 6, 0, 'Classes in C++', 'https://www.youtube.com/embed/2BP8NhxjrO0?list=PLlrATfBNZ98dudnM48yfGUldqGD0S4FFb', 'This video describe classes in C++'),
(22, 6, 0, 'Inheritance in C++', 'https://www.youtube.com/embed/X8nYM8wdNRE?list=PLlrATfBNZ98dudnM48yfGUldqGD0S4FFb', 'This discuss how to inherit classes '),
(23, 6, 0, 'Operator Overloading in C++', 'https://www.youtube.com/embed/mS9755gF66w?list=PLlrATfBNZ98dudnM48yfGUldqGD0S4FFb', 'This video is for operator overloading'),
(24, 6, 0, 'This in C++', 'https://www.youtube.com/embed/Z_hPJ_EhceI?list=PLlrATfBNZ98dudnM48yfGUldqGD0S4FFb', 'This describes this keyword in C++'),
(25, 8, 0, 'LINEAR REGRESSION', 'https://www.youtube.com/embed/8jazNUpO3lQ', ''),
(26, 8, 0, 'GRADIENT DESCENT AND COST FUNCTION', 'https://www.youtube.com/embed/vsWrXfO3wWw', ''),
(27, 8, 0, 'TRANING AND TESTING', 'https://www.youtube.com/embed/fwY9Qv96DJY', ''),
(28, 8, 0, 'LOGISTIC REGRESSION', 'https://www.youtube.com/embed/zM4VZR0px8E', ''),
(29, 8, 0, 'DECISION TREE', 'https://www.youtube.com/embed/PHxYNGo8NcI', ''),
(30, 9, 0, 'Intro to CMD', 'https://www.youtube.com/embed/MBBWVgE0ewk?list=PL6gx4Cwl9DGDV6SnbINlVUd0o2xT4JbMu', 'Introduction to Command Prompt'),
(31, 9, 0, 'Listing Files and Directories', 'https://www.youtube.com/embed/7ABkcHLdG_A', 'This video describes how to list files and Directories using CMD'),
(32, 9, 0, 'Opening files and History', 'https://www.youtube.com/embed/LHhPvq5R0hA', 'This video will describe how to open files and history logs'),
(33, 9, 0, 'Removing Directories', 'https://www.youtube.com/embed/ODk8CoSLofA', 'Removing Directories using CMD'),
(34, 10, 0, 'Introduction to DBMS', 'https://www.youtube.com/embed/xmwI6VB_wUM?list=PLLAZ4kZ9dFpMGXTKXsBM_ZNpJwowfsP49', ''),
(35, 10, 0, 'Tables and Keys', 'https://www.youtube.com/embed/uw6lx3R6q5A?list=PLLAZ4kZ9dFpMGXTKXsBM_ZNpJwowfsP49', ''),
(36, 10, 0, 'Basics of SQL', 'https://www.youtube.com/embed/hSv_88mDEio?list=PLLAZ4kZ9dFpMGXTKXsBM_ZNpJwowfsP49', ''),
(37, 10, 0, 'Designing ER Model', 'https://www.youtube.com/embed/8JFaaD1vzSY?list=PLLAZ4kZ9dFpMGXTKXsBM_ZNpJwowfsP49', ''),
(38, 10, 0, 'Converting ER diagram to Schemas', 'https://www.youtube.com/embed/xQRRf5fOAt8?list=PLLAZ4kZ9dFpMGXTKXsBM_ZNpJwowfsP49', ''),
(39, 11, 0, 'Python Web Programming - OOP Part 1', 'https://www.youtube.com/embed/ZGWVXUFq220', ''),
(40, 11, 0, 'Python Web Programming - OOP Part 2', 'https://www.youtube.com/embed/oMYX0_IY_1k', ''),
(41, 11, 0, 'Python Web Programming - Modules', 'https://www.youtube.com/embed/oggGA78szhE', ''),
(42, 11, 0, 'Python Web Programming - Modules Part 2', 'https://www.youtube.com/embed/04VBQ64alnk', ''),
(43, 11, 0, 'Python Web Programming - SQLite Intro', 'https://www.youtube.com/embed/Zs8h9kPBfLg', ''),
(44, 11, 0, 'Python Web Programming - Creating Database Table', 'https://www.youtube.com/embed/F76KGhQG2Xk', '');

-- --------------------------------------------------------

--
-- Table structure for table `video_watch`
--

CREATE TABLE `video_watch` (
  `watch_id` int(15) NOT NULL,
  `user_id` int(15) NOT NULL,
  `course_id` int(15) NOT NULL,
  `video_id` int(15) NOT NULL,
  `status` varchar(25) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `video_watch`
--

INSERT INTO `video_watch` (`watch_id`, `user_id`, `course_id`, `video_id`, `status`) VALUES
(24, 46, 4, 2, 'checked'),
(28, 46, 4, 3, 'checked'),
(30, 50, 11, 39, 'checked'),
(31, 50, 11, 40, 'checked'),
(32, 50, 11, 41, 'checked'),
(33, 50, 11, 42, 'checked'),
(34, 50, 11, 43, 'checked'),
(43, 47, 11, 42, 'checked'),
(42, 47, 11, 41, 'checked'),
(41, 47, 11, 40, 'checked'),
(40, 47, 11, 39, 'checked'),
(44, 47, 11, 43, 'checked'),
(45, 13, 6, 7, 'checked'),
(46, 13, 6, 12, 'checked'),
(47, 13, 6, 13, 'checked'),
(48, 13, 6, 18, 'checked'),
(49, 13, 6, 20, 'checked'),
(50, 13, 6, 21, 'checked'),
(58, 13, 6, 23, 'checked'),
(57, 13, 6, 22, 'checked');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog_table`
--
ALTER TABLE `blog_table`
  ADD PRIMARY KEY (`blog_id`);

--
-- Indexes for table `course_stud`
--
ALTER TABLE `course_stud`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `educate_table`
--
ALTER TABLE `educate_table`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `job_table`
--
ALTER TABLE `job_table`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `lms_table`
--
ALTER TABLE `lms_table`
  ADD PRIMARY KEY (`course_id`);

--
-- Indexes for table `stud_table`
--
ALTER TABLE `stud_table`
  ADD PRIMARY KEY (`stud_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `video_table`
--
ALTER TABLE `video_table`
  ADD PRIMARY KEY (`video_id`);

--
-- Indexes for table `video_watch`
--
ALTER TABLE `video_watch`
  ADD PRIMARY KEY (`watch_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog_table`
--
ALTER TABLE `blog_table`
  MODIFY `blog_id` int(15) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_stud`
--
ALTER TABLE `course_stud`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `educate_table`
--
ALTER TABLE `educate_table`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `job_table`
--
ALTER TABLE `job_table`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `lms_table`
--
ALTER TABLE `lms_table`
  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `stud_table`
--
ALTER TABLE `stud_table`
  MODIFY `stud_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `video_table`
--
ALTER TABLE `video_table`
  MODIFY `video_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `video_watch`
--
ALTER TABLE `video_watch`
  MODIFY `watch_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
