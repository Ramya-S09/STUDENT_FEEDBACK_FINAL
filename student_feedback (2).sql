-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2025 at 08:00 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `student_feedback`
--

-- --------------------------------------------------------

--
-- Table structure for table `ai3021`
--

CREATE TABLE `ai3021` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(114) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ai3021`
--

INSERT INTO `ai3021` (`co_id`, `co`) VALUES
('1', 'The students shall be able to understand the applications of IT in remote sensing applications such as Drones etc.'),
('2', 'The students will be able to get a clear understanding of how a greenhouse can be automated and its advantages. '),
('3', 'The students will be able to apply IT principles and concepts for management of field operations'),
('4', 'The students will get an understanding about weather models, their inputs and applications.'),
('5', 'The students will get an understanding of how IT can be used for e-governance in agriculture.'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `be3251`
--

CREATE TABLE `be3251` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `be3251`
--

INSERT INTO `be3251` (`co_id`, `co`) VALUES
(1, 'Compute the electric circuit parameters for simple problems'),
(2, ' Explain the working principle and applications of electrical machines'),
(3, 'Analyze the characteristics of analog electronic devices'),
(4, 'Explain the basic concepts of digital electronics '),
(5, 'Explain the operating principles of measuring instruments ');

-- --------------------------------------------------------

--
-- Table structure for table `bs3171`
--

CREATE TABLE `bs3171` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `bs3171`
--

INSERT INTO `bs3171` (`co_id`, `co`) VALUES
(1, 'Understand the functioning of various physics laboratory equipment.'),
(2, 'Use graphical models to analyze laboratory data'),
(3, 'Use mathematical models as a medium for quantitative reasoning and describing physical reality.'),
(4, 'To analyse the quality of water samples with respect to their acidity, alkalinity, hardness and DO.'),
(5, 'To quantitatively analyse the impurities in solution by electroanalytical techniques');

-- --------------------------------------------------------

--
-- Table structure for table `cb3491`
--

CREATE TABLE `cb3491` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(96) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cb3491`
--

INSERT INTO `cb3491` (`co_id`, `co`) VALUES
(1, ' Describe the fundamentals of networks  security and Illustrate classical encryption techniques '),
(2, 'Analyze the cryptographic operations of symmetric cryptographic algorithms '),
(3, 'Analyze the cryptographic operations of public key cryptography '),
(4, 'Apply various Authentication schemes to simulate different applications'),
(5, 'Explore various cybercrimes and cyber security '),
(6, 'Apply a suitable cryptography algorithm and cyber security tool to solve a real life problem ');

-- --------------------------------------------------------

--
-- Table structure for table `cb3591`
--

CREATE TABLE `cb3591` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(157) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cb3591`
--

INSERT INTO `cb3591` (`co_id`, `co`) VALUES
(1, 'Understand the importance of software security and low-level attacks, including memory-based attacks on heap and stack.'),
(2, 'Apply requirements engineering principles for secure software and implement the vulnerabilities like Buffer Overflow and Code Injection'),
(3, 'Demonstrate secure design skills through threat modeling and application of security design principles.'),
(4, 'Manage security risks in the software development life cycle, including risk profiling, evaluation, and mitigation using various techniques.'),
(5, 'Apply traditional and secure software testing methodologies, including risk-based security testing, prioritizing security, and conducting penetration testing'),
(6, 'Use tools for securing software. ');

-- --------------------------------------------------------

--
-- Table structure for table `cbm333`
--

CREATE TABLE `cbm333` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(91) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cbm333`
--

INSERT INTO `cbm333` (`co_id`, `co`) VALUES
('1', 'Interpret the various mechanical techniques that will help in assisting the heartfunctions.'),
('2', 'Describe the underlying principles of hemodialyzer machine.'),
('3', 'Indicate the methodologies to assess the hearing loss.'),
('4', 'Evaluate the types of assistive devices for mobilization.'),
('5', 'Explain about TENS and biofeedback system.'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ccs332`
--

CREATE TABLE `ccs332` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(82) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ccs332`
--

INSERT INTO `ccs332` (`co_id`, `co`) VALUES
('1', 'Develop Native applications with GUI Components.'),
('2', 'Develop hybrid applications with basic event handling'),
('3', 'Implement cross-platform applications with location and data storage capabilities.'),
('4', 'Implement cross platform applications with basic GUI and event handling.'),
('5', 'Develop web applications with cloud database access'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ccs335`
--

CREATE TABLE `ccs335` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(74) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ccs335`
--

INSERT INTO `ccs335` (`co_id`, `co`) VALUES
('1', 'Describe the design challenges in the cloud'),
('2', 'Apply the concept of virtualization and its types   '),
('3', 'Experiment with virtualization of hardware resources and Docker   '),
('4', 'Develop and deploy services on the cloud and set up a cloud environment   '),
('5', 'Explain security challenges in the cloud environment  '),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ccs336`
--

CREATE TABLE `ccs336` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ccs336`
--

INSERT INTO `ccs336` (`co_id`, `co`) VALUES
(1, 'Build automated business solutions using cloud technologies.'),
(2, 'Discuss the strong theoretical foundation leading to excellence and excitement towards adoption of cloud-based services.'),
(3, 'Illustrate the cloud service management in cloud environment.'),
(4, 'Create the cloud cost models in a business environment.'),
(5, 'Describe the cloud service governance structure and understand the value of that service.'),
(6, 'Develop a solution for real world problems using cloud services and technologies.');

-- --------------------------------------------------------

--
-- Table structure for table `ccs339`
--

CREATE TABLE `ccs339` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(166) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ccs339`
--

INSERT INTO `ccs339` (`co_id`, `co`) VALUES
('1', 'Explore emerging abstract models for Blockchain Technology '),
('2', 'Illustrate the concepts of bitcoin and their usage'),
('3', 'Explore the function of Blockchain as a method of securing distributed ledgers, how consensus on their contents is achieved, and the new applications that they enable'),
('4', 'Apply Hyperledger Fabric and Ethereum platform to implement the Blockchain Application'),
('5', 'Build various blockchain application'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ccs342`
--

CREATE TABLE `ccs342` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(154) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ccs342`
--

INSERT INTO `ccs342` (`co_id`, `co`) VALUES
('1', 'Understand different actions performed through Version control tools like Git.'),
('2', 'Perform Continuous Integration and Continuous Testing and Continuous Deployment using Jenkins by building and automating test cases using Maven & Gradle. '),
('3', 'Perform Automated Continuous Deployment'),
('4', 'Perform Automated Continuous Deployment'),
('5', 'Create an application to leverage Cloud-based DevOps tools using Azure DevOps.'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ccs343`
--

CREATE TABLE `ccs343` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(67) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ccs343`
--

INSERT INTO `ccs343` (`co_id`, `co`) VALUES
('1', 'Express the knowledge on digital forensics'),
('2', 'Describe  digital crime and  investigations'),
('3', 'Apply forensic strategies and methodologies on digital forensics'),
('4', 'Demonstrate  Digital Evidence on  Ios  Devices'),
('5', 'Use Android tools to demonstrate  forensics on Android OS Devives.\n'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ccs344`
--

CREATE TABLE `ccs344` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(78) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ccs344`
--

INSERT INTO `ccs344` (`co_id`, `co`) VALUES
(1, 'Explain the basics of computer based vulnerabilitie'),
(2, 'Demonstrate the different foot printing, reconnaissance and scanning methods. '),
(3, 'Analyze the enumeration and vulnerability analysis methods '),
(4, 'Describe the hacking options available in Web and wireless applications'),
(5, 'Explore the methods and techniques for network protection'),
(6, 'Use tools to perform ethical hacking to expose the vulnerabilities');

-- --------------------------------------------------------

--
-- Table structure for table `ccs356`
--

CREATE TABLE `ccs356` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(99) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ccs356`
--

INSERT INTO `ccs356` (`co_id`, `co`) VALUES
(1, 'Compare various Software Development Lifecycle Models'),
(2, 'Perform formal analysis on specifications'),
(3, 'Use UML diagrams for analysis and design'),
(4, 'Architect and design using architectural styles, design patterns, and test the system'),
(5, 'Evaluate project management approaches as well as cost and schedule estimation strategies'),
(6, 'Develop an application by applying Object Oriented Software Engineering concepts  using CASE TOOLS.');

-- --------------------------------------------------------

--
-- Table structure for table `ccs362`
--

CREATE TABLE `ccs362` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(108) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ccs362`
--

INSERT INTO `ccs362` (`co_id`, `co`) VALUES
('1', 'Understand the basic security concepts and simulate security challenges in the cloud using simulation tools.'),
('2', 'Apply the various architectural and design considerations for security in the cloud'),
('3', 'Implement cloud access control and Identity Management.'),
('4', 'Practice various cloud security design patterns'),
('5', 'Develop various risks and audit and monitoring mechanisms in the cloud'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ccs363`
--

CREATE TABLE `ccs363` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(102) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ccs363`
--

INSERT INTO `ccs363` (`co_id`, `co`) VALUES
('1', 'Develop semantic web related simple applications.'),
('2', 'Apply Privacy and Security concepts in Social Networking'),
('3', 'Explain the data extraction and mining of Social Networks.'),
('4', 'Demonstrate the model to predict the human behavior in social communities'),
('5', 'Create an application to provide access control, privacy and identity management  in social networks.\n'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ccs365`
--

CREATE TABLE `ccs365` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(56) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ccs365`
--

INSERT INTO `ccs365` (`co_id`, `co`) VALUES
('1', 'Describe the fundamentals of  SDN'),
('2', 'Apply  the functions of the data plane and control plane'),
('3', 'Design and develop network applications using SDN.'),
('4', 'Orchestrate network services using NFV'),
('5', 'Design the various use cases of SDN and NFV'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ccs366`
--

CREATE TABLE `ccs366` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(84) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ccs366`
--

INSERT INTO `ccs366` (`co_id`, `co`) VALUES
('1', 'Understand the basic concepts of software testing and the need for software testing.'),
('2', 'Design Test planning and different activities involved in test planning'),
('3', 'Design effective test cases that can uncover critical defects in the application'),
('4', 'Carry out advanced types of testing'),
('5', 'Automate the software testing using Selenium and TestNG'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ccs367`
--

CREATE TABLE `ccs367` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(131) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ccs367`
--

INSERT INTO `ccs367` (`co_id`, `co`) VALUES
('1', 'Demonstrate the fundamentals of information storage management and various models of Cloud infrastructure services and deployment .'),
('2', 'Illustrate the usage of advanced intelligent storage systems and RAID.'),
('3', 'Interpret various storage networking architectures - SAN, including storage subsystems and virtualization '),
('4', 'Examine the different role in providing disaster recovery and remote replication technologies '),
('5', 'infer the security needs and security measures to be employed in information storage'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ccs370`
--

CREATE TABLE `ccs370` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(81) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ccs370`
--

INSERT INTO `ccs370` (`co_id`, `co`) VALUES
('1', 'Understand the Foundation of Design Thinking'),
('2', 'Explore the knowledge of UI Design Principles and Patterns'),
('3', 'Demonstrate UX Skills in product development '),
('4', ' create visual representation of product using Sketching, Wireframe and Prototype'),
('5', 'Evaluate UI & UX design for products or user Applications'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ccs372`
--

CREATE TABLE `ccs372` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(70) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ccs372`
--

INSERT INTO `ccs372` (`co_id`, `co`) VALUES
('1', 'Analyse  the virtualization concepts and Hypervisor'),
('2', 'Apply the Virtualization for real-world applications'),
('3', 'Install & Configure the different VM platforms'),
('4', 'Experiment with the VM with various software'),
('5', 'Develop a solution for real world problems using Virtualization tools.'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ccs375`
--

CREATE TABLE `ccs375` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(116) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ccs375`
--

INSERT INTO `ccs375` (`co_id`, `co`) VALUES
('1', 'Construct a simple website using HTML and Cascading Style Sheets'),
('2', 'Build dynamic web page with validation using Java Script objects and by applying different event handling mechanisms'),
('3', 'Develop server side programs using Servlets'),
('4', 'Construct simple web pages in PHP and to represent data in XML format'),
('5', 'Develop interactive web applications using various frameworks and tools'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `co_table_analysis`
--

CREATE TABLE `co_table_analysis` (
  `sub_code` varchar(10) NOT NULL,
  `COs` int(10) NOT NULL,
  `CO_statements` varchar(1000) NOT NULL,
  `strongly_agree` int(30) NOT NULL,
  `agree` int(30) NOT NULL,
  `neutral` int(30) NOT NULL,
  `disagree` int(30) NOT NULL,
  `strongly_disagree` int(30) NOT NULL,
  `avg` int(30) NOT NULL,
  `avg(3)` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `co_table_analysis`
--

INSERT INTO `co_table_analysis` (`sub_code`, `COs`, `CO_statements`, `strongly_agree`, `agree`, `neutral`, `disagree`, `strongly_disagree`, `avg`, `avg(3)`) VALUES
('cb3491', 1, ' Describe the fundamentals of networks  security and Illustrate classical encryption techniques ', 1, 2, 0, 0, 0, 0, 0),
('cb3491', 2, 'Analyze the cryptographic operations of symmetric cryptographic algorithms ', 0, 1, 2, 0, 0, 0, 0),
('cb3491', 3, 'Analyze the cryptographic operations of public key cryptography ', 0, 0, 1, 2, 0, 0, 0),
('cb3491', 4, 'Apply various Authentication schemes to simulate different applications', 0, 0, 0, 3, 0, 0, 0),
('cb3491', 5, 'Explore various cybercrimes and cyber security ', 1, 1, 0, 0, 1, 0, 0),
('cb3491', 6, 'Apply a suitable cryptography algorithm and cyber security tool to solve a real life problem ', 1, 0, 0, 0, 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cs3251`
--

CREATE TABLE `cs3251` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(72) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3251`
--

INSERT INTO `cs3251` (`co_id`, `co`) VALUES
(1, 'Write simple programs in C using basic constructs.'),
(2, 'Employ the concept of arrays and strings for solving problems'),
(3, 'Develop modular programs using functions and pointers.'),
(4, 'Build applications using structures with Optimal memory utilization.'),
(5, 'Store and retrieve real world data in sequential and random access file.'),
(6, 'Write simple Embedded C program');

-- --------------------------------------------------------

--
-- Table structure for table `cs3271`
--

CREATE TABLE `cs3271` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(92) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3271`
--

INSERT INTO `cs3271` (`co_id`, `co`) VALUES
(1, 'Develop and Test programs in C using Input-Output, decision making and looping constructs.'),
(2, 'Build simple applications by making use of Arrays and Strings.'),
(3, 'Demonstrate modular programming using functions, recursion, pointers and structures.'),
(4, 'Develop programs to store and retrieve real world data in sequential and random access file.'),
(5, 'Develop and deploy mini-project for real world problems.'),
(6, 'Develop simple Embedded C Program using Keil C Compiler');

-- --------------------------------------------------------

--
-- Table structure for table `cs3301`
--

CREATE TABLE `cs3301` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(74) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3301`
--

INSERT INTO `cs3301` (`co_id`, `co`) VALUES
(1, 'Create abstract data types for Linked list data structures'),
(2, 'Write algorithms to solve problems using stack and queue data structures'),
(3, 'Design algorithms using tree structure and apply them to problem solution.'),
(4, ' Apply graph data structure to solve real-life problems.'),
(5, 'Analyse various sorting, searching and hashing algorithms.'),
(6, '');

-- --------------------------------------------------------

--
-- Table structure for table `cs3311`
--

CREATE TABLE `cs3311` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(53) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3311`
--

INSERT INTO `cs3311` (`co_id`, `co`) VALUES
(1, 'Implement Linear data structure algorithms.'),
(2, ' Implement applications using Stacks and Linked lists'),
(3, 'Implement Binary Search tree and AVL tree operations.'),
(4, ' Implement graph algorithms.'),
(5, 'Analyze the various searching and sorting algorithms.'),
(6, '');

-- --------------------------------------------------------

--
-- Table structure for table `cs3352`
--

CREATE TABLE `cs3352` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(68) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3352`
--

INSERT INTO `cs3352` (`co_id`, `co`) VALUES
(1, 'Describe the data science process'),
(2, 'Explore different types of data description for data science process'),
(3, 'Analyse the relationships between data'),
(4, 'Use the Python Libraries for Data Wrangling'),
(5, 'Apply visualization Libraries in Python to interpret'),
(6, 'Develop the application for a real life problem');

-- --------------------------------------------------------

--
-- Table structure for table `cs3361`
--

CREATE TABLE `cs3361` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(66) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3361`
--

INSERT INTO `cs3361` (`co_id`, `co`) VALUES
(1, 'Use of the python libraries for data science data sets'),
(2, 'Apply basic Statistical and Probability measures for data science'),
(3, 'Explore descriptive analytics on the benchmark'),
(4, 'Perform correlation and regression analytics on standard data sets'),
(5, 'Interpret data using visualization packages in Python'),
(6, '');

-- --------------------------------------------------------

--
-- Table structure for table `cs3381`
--

CREATE TABLE `cs3381` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(97) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3381`
--

INSERT INTO `cs3381` (`co_id`, `co`) VALUES
(1, 'Develop and implement Java programs for simple applications that make use of classes and packages'),
(2, 'Develop and implement Java programs with Interfaces and collections framework'),
(3, 'Design applications using Polymorphism and exception handling mechanism'),
(4, 'Implement applications using multithreading and file processing'),
(5, 'Design applications using generic programming and event handling'),
(6, 'Develop real time application using Java concepts');

-- --------------------------------------------------------

--
-- Table structure for table `cs3391`
--

CREATE TABLE `cs3391` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(114) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3391`
--

INSERT INTO `cs3391` (`co_id`, `co`) VALUES
(1, 'Apply the concepts of classes and objects to solve simple problems'),
(2, 'Develop programs using inheritance, packages and interfaces.'),
(3, 'Make use of exception handling mechanisms and multithreaded model to solve real world problems.'),
(4, 'Build Java applications with I/O packages, string classes, Collections and generics concepts.'),
(5, 'Integrate the concepts of event handling and JavaFX components and controls for developing GUI based applications.'),
(6, '');

-- --------------------------------------------------------

--
-- Table structure for table `cs3401`
--

CREATE TABLE `cs3401` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(108) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3401`
--

INSERT INTO `cs3401` (`co_id`, `co`) VALUES
('1', 'Analyze the efficiency of algorithms using various frameworks'),
('2', 'Analyze the efficiency of graph algorithms to solve problems  '),
('3', 'Apply design techniques like divide and conquer, dynamic programming and greedy techniques to solve problems'),
('4', 'Use the state space tree method for solving problems'),
('5', 'Solve problems using approximation algorithms and randomized algorithms'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `cs3451`
--

CREATE TABLE `cs3451` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(98) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3451`
--

INSERT INTO `cs3451` (`co_id`, `co`) VALUES
(1, 'Describe the basic concepts and functions of the operating system'),
(2, 'Analyze various CPU scheduling algorithms, Process synchronization and Multithreading.'),
(3, 'Analyze deadlock prevention, avoidance, detection and recovery.'),
(4, 'Compare the different memory management schemes'),
(5, 'Describe the functionality of file systems and I/O systems.'),
(6, 'Explain the virtualization, architecture and functionalities of iOS and Android Operating systems.');

-- --------------------------------------------------------

--
-- Table structure for table `cs3452`
--

CREATE TABLE `cs3452` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(57) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3452`
--

INSERT INTO `cs3452` (`co_id`, `co`) VALUES
('1', 'Construct automata theory using Finite Automata '),
('2', 'Write regular expressions for any pattern '),
('3', 'Design context free grammar and Pushdown Automata '),
('4', 'Design Turing machine for computational functions '),
('5', 'Differentiate between decidable and undecidable problems '),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `cs3461`
--

CREATE TABLE `cs3461` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(69) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3461`
--

INSERT INTO `cs3461` (`co_id`, `co`) VALUES
('1', 'Use UNIX Commands'),
('2', 'Compare various CPU Scheduling Algorithms, Process synchronization'),
('3', 'Write programs for various Memory Allocation Methods'),
('4', 'Develop programs for File Organization and File Allocation Strategies'),
('5', 'Construct various Disk Scheduling Algorithms'),
('', 'Summarize the virtualization concept using LINUX');

-- --------------------------------------------------------

--
-- Table structure for table `cs3481`
--

CREATE TABLE `cs3481` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(117) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3481`
--

INSERT INTO `cs3481` (`co_id`, `co`) VALUES
('1', 'Create databases with different types of key constraints.'),
('2', 'Construct simple and complex SQL queries using DML and DCL commands.'),
('3', 'Use advanced features such as stored procedures and triggers and incorporate in GUI    based application development.'),
('4', 'Create an XML database and validate with meta-data (XML schema).'),
('5', 'Create and manipulate data using NOSQL database.'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `cs3491`
--

CREATE TABLE `cs3491` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(56) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3491`
--

INSERT INTO `cs3491` (`co_id`, `co`) VALUES
('1', 'Use appropriate search algorithms for problem solving '),
('2', 'Apply reasoning under uncertainty '),
('3', 'Build supervised learning models  '),
('4', 'Develop ensembling and unsupervised models '),
('5', 'Design deep learning neural network models '),
('', 'Analyze Performance measures of machine learning models ');

-- --------------------------------------------------------

--
-- Table structure for table `cs3492`
--

CREATE TABLE `cs3492` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(126) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3492`
--

INSERT INTO `cs3492` (`co_id`, `co`) VALUES
('1', 'Construct SQL Queries using relational algebra '),
('2', 'Design database using ER model and normalize the database '),
('3', 'Construct queries to handle transaction processing and maintain consistency of the  database '),
('4', 'Describe the various indexing strategies and apply the knowledge to tune the performance of the database   '),
('5', 'Explore the advanced databases differ from Relational Databases and Identify the  suitable database for the given requirement.'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `cs3501`
--

CREATE TABLE `cs3501` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(77) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3501`
--

INSERT INTO `cs3501` (`co_id`, `co`) VALUES
(1, 'Demonstrate the functionality of  Lexical Analyzer using Lex Tool '),
(2, 'Construct types of parser for a grammar using YACC tools. '),
(3, 'Implement three address code generation for different statements using SDT '),
(4, 'Infer the concept of Run time Environment and Design a simple code generator '),
(5, 'Apply various static code optimization techniques '),
(6, 'Illustrate dynamic code optimization technique using JIT Compilation ');

-- --------------------------------------------------------

--
-- Table structure for table `cs3551`
--

CREATE TABLE `cs3551` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(81) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3551`
--

INSERT INTO `cs3551` (`co_id`, `co`) VALUES
('1', 'Describe the foundations and issues of distributed systems'),
('2', 'Solve synchronization and state consistency problems'),
('3', 'Describe mutual exclusion and distributed deadlock detection for resource sharing'),
('4', 'Apply the concepts of consensus and reliability of distributed systems.'),
('5', 'Explain the fundamentals of cloud computing.'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `cs3591`
--

CREATE TABLE `cs3591` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(76) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3591`
--

INSERT INTO `cs3591` (`co_id`, `co`) VALUES
('1', ' Describe the working of various application layer protocols.'),
('2', 'Identify the protocols and functions  of the Transport layer'),
('3', 'Explore the Functions of the network layer and various protocols'),
('4', 'Analyze the various routing algorithms.'),
('5', 'Explain the basic functions required for data flow from one node to another.'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `cs3691`
--

CREATE TABLE `cs3691` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(81) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3691`
--

INSERT INTO `cs3691` (`co_id`, `co`) VALUES
(1, 'Understand the internal architecture and programming of an embedded processor'),
(2, ' Understand the interfacing of  I/O devices to the processor'),
(3, 'Describe the evolution of the Internet of Things (IoT).'),
(4, 'Build a small low-cost embedded and IoT system using Arduino/ open platform'),
(5, 'Build a small low-cost embedded and IoT system using Raspberry Pi/ cloud platform'),
(6, 'Apply the concept of Internet of Things in real world scenario');

-- --------------------------------------------------------

--
-- Table structure for table `cs3711`
--

CREATE TABLE `cs3711` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(112) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cs3711`
--

INSERT INTO `cs3711` (`co_id`, `co`) VALUES
('1', ' Industry Practices, Processes, Techniques, technology, automation and other core aspects of software industry. '),
('2', 'Analyze, Design solutions to complex business problems'),
('3', 'Build and deploy solutions for target platform '),
('4', 'Preparation of Technical reports and presentation'),
('', ''),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `cy3151`
--

CREATE TABLE `cy3151` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(158) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `cy3151`
--

INSERT INTO `cy3151` (`co_id`, `co`) VALUES
(1, 'To infer the quality of water from quality parameter data and propose suitable treatment methodologies to treat water.'),
(2, 'To identify and apply basic concepts of nanoscience and nanotechnology in designing the synthesis of nanomaterials for engineering and technology applications'),
(3, 'To apply the knowledge of phase rule and composites for material selection requirements.'),
(4, 'To recommend suitable fuels for engineering processes and applications'),
(5, 'To recognize different forms of energy resources and apply them for suitable applications in energy sectors');

-- --------------------------------------------------------

--
-- Table structure for table `fsignup`
--

CREATE TABLE `fsignup` (
  `uname` varchar(30) NOT NULL,
  `ino` int(10) NOT NULL,
  `npwd` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fsignup`
--

INSERT INTO `fsignup` (`uname`, `ino`, `npwd`) VALUES
('Arthi@gmail.com', 1, 'Arthi@123'),
('Prisca@26', 1234, 'Prisca@2');

-- --------------------------------------------------------

--
-- Table structure for table `ge3151`
--

CREATE TABLE `ge3151` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(89) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ge3151`
--

INSERT INTO `ge3151` (`co_id`, `co`) VALUES
(1, 'Develop algorithmic solutions to simple computational problems'),
(2, 'Explain the syntax for python programming constructs. '),
(3, 'Demonstrate programs using simple Python statements and expressions'),
(4, 'Implement Python programs with conditionals and functions '),
(5, 'Use Python data structures – lists, tuples & dictionaries for representing compound data '),
(6, 'Explain  files, exception, modules and packages in Python for solving  problems');

-- --------------------------------------------------------

--
-- Table structure for table `ge3171`
--

CREATE TABLE `ge3171` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(78) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ge3171`
--

INSERT INTO `ge3171` (`co_id`, `co`) VALUES
(1, 'Develop algorithmic solutions to simple computational problems'),
(2, 'Develop and execute simple Python programs'),
(3, 'Implement programs in Python using conditionals and loops for solving problems'),
(4, 'Deploy functions to decompose a Python program'),
(5, 'Process compound data using Python data structures'),
(6, 'Utilize Python packages in developing software applications');

-- --------------------------------------------------------

--
-- Table structure for table `ge3172`
--

CREATE TABLE `ge3172` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(93) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ge3172`
--

INSERT INTO `ge3172` (`co_id`, `co`) VALUES
(1, ' Listen to and comprehend general as well as complex academic information'),
(2, ' Listen to and understand different points of view in a discussion '),
(3, ' Speak fluently and accurately in formal and informal communicative contexts'),
(4, 'Describe products and processes and explain their uses and purposes clearly and \naccurately  '),
(5, ' Express their opinions effectively in both formal and informal discussions');

-- --------------------------------------------------------

--
-- Table structure for table `ge3251`
--

CREATE TABLE `ge3251` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(77) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ge3251`
--

INSERT INTO `ge3251` (`co_id`, `co`) VALUES
(1, 'Use BIS conventions and specifications for engineering drawing.'),
(2, 'Construct the conic curves, involutes and cycloid.'),
(3, 'Solve practical problems involving projection of lines.'),
(4, 'Draw the orthographic, isometric and perspective projections of simple solids'),
(5, 'Draw the development of simple solids.');

-- --------------------------------------------------------

--
-- Table structure for table `ge3271`
--

CREATE TABLE `ge3271` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(109) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ge3271`
--

INSERT INTO `ge3271` (`co_id`, `co`) VALUES
(1, 'Able to understand the basics of Plumbing and carpentry works '),
(2, 'Apprehend the basic fabrication process like welding and sheet metal operations '),
(3, 'Understanding the machining operations-Turning/Facing/Step turning, Chamfering &  Knurling '),
(4, ' Study about different types of Electrical wiring and analyze basic parameters of Electrical circuits '),
(5, 'Study basic electronic components and equipment’s and acquire knowledge in PCB   \nfabrication and Soldering. ');

-- --------------------------------------------------------

--
-- Table structure for table `ge3272`
--

CREATE TABLE `ge3272` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(108) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ge3272`
--

INSERT INTO `ge3272` (`co_id`, `co`) VALUES
('1', 'Speak effectively in group discussions held in a formal/semi formal context'),
('2', 'Discuss, analyse and present concepts and problems from various perspectives to arrive at suitable solutions'),
('3', 'Write emails, letters and effective job applications.'),
('4', 'Write critical reports to convey data and information with clarity and precision'),
('5', 'Give appropriate instructions and recommendations for safe execution of tasks'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ge3361`
--

CREATE TABLE `ge3361` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(161) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ge3361`
--

INSERT INTO `ge3361` (`co_id`, `co`) VALUES
('1', 'Use MS Word to create quality documents, by structuring and organizing content for their day to day technical and academic requirements'),
('2', 'Use MS EXCEL to perform data operations and analytics, record, retrieve data as per requirements and visualize data for ease of understanding '),
('3', 'Protect the sheets and use of macros in efficient way.'),
('4', 'Use MS PowerPoint to create high quality academic presentations by including common tables, charts, graphs, interlinking other elements, and using media objects.'),
('5', 'Create animations, organize and group slides and improve the presentation in a better way.'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ge3451`
--

CREATE TABLE `ge3451` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(161) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ge3451`
--

INSERT INTO `ge3451` (`co_id`, `co`) VALUES
('1', ' recognize and understand the functions of environment, ecosystems\nand biodiversity and their conservation.'),
('2', ' identify the causes, effects of environmental pollution and natural\ndisasters and contribute to the preventive measures in the society.'),
('3', 'identify and apply the understanding of renewable and non-renewable\nresources and contribute to the sustainable measures to preserve them for future\ngenerations.'),
('4', ' recognize the different goals of sustainable development and apply them\nfor suitable technological advancement and societal development.'),
('5', 'demonstrate the knowledge of sustainability practices and identify green\nmaterials, energy cycles and the role of sustainable urbanization.'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ge3751`
--

CREATE TABLE `ge3751` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(97) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ge3751`
--

INSERT INTO `ge3751` (`co_id`, `co`) VALUES
('1', 'understanding of managerial functions like planning, organizing, staffing, leading & controlling.'),
('2', 'Have same basic knowledge on international aspect of management.'),
('3', 'Ability to understand management concept of organizing.'),
('4', 'Ability to understand management concept of directing.'),
('5', ' Ability to understand management concept of controlling.'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ge3791`
--

CREATE TABLE `ge3791` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(109) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ge3791`
--

INSERT INTO `ge3791` (`co_id`, `co`) VALUES
('1', 'Identify the importance of democratic, secular and scientific values in harmonious functioning of social life'),
('2', 'Find rational solutions to social problems. '),
('3', 'Behave in an ethical manner in society '),
('4', 'Practice critical thinking and the pursuit of truth'),
('5', ''),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `hs3152`
--

CREATE TABLE `hs3152` (
  `slno` int(1) DEFAULT NULL,
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(188) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hs3152`
--

INSERT INTO `hs3152` (`slno`, `co_id`, `co`) VALUES
(1, 1, 'Ability to comprehend both the written and spoken texts. Ability to frame questions and answer them.Ability to write/speak grammatically correct sentences.'),
(2, 2, 'Ability to write a paragraph around a topic sentence, write short report on event with wide range of vocabulary'),
(3, 3, 'Ability to build on students’ English language skills by engaging them in LSRW activities'),
(4, 4, 'Ability to read and write complex texts ,summaries, definitions essays and user manuals. Ability to use collocations, fixed and semi-fixed expressions'),
(5, 5, 'Ability to participate in group discussions, panel discussion and expressing their opinion on an issue'),
(6, 6, 'Ability to use the English language for functional communication in real life situations through learning the essentials of English grammar and formal and informal communication strategies');

-- --------------------------------------------------------

--
-- Table structure for table `hs3252`
--

CREATE TABLE `hs3252` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(225) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `hs3252`
--

INSERT INTO `hs3252` (`co_id`, `co`) VALUES
(1, 'Ability to understand scientific and technical texts by acquiring adequate vocabulary. Ability to write Professional emails, Email etiquette and Compare and Contrast Essay. Ability to construct grammatically correct sentences'),
(2, 'Ability to read Cause and Effect Essays, and Letters / emails of complaint. Ability to respond to complaints with correct usage of tense and voice pattern'),
(3, 'Ability to participate in group discussion. Ability to write Letter to the Editor, Checklists, Problem solution essay / Argumentative Essay'),
(4, 'Ability to present an oral report, Mini presentations on select topics. Ability to write recommendation and report writing.'),
(5, 'Ability to present their opinions in a planned and logical manner, and draft effective resumes in context of job search. Ability to analyse the interview performance'),
(6, 'Ability to use the English language both for technical and functional situations by learning the essentials of grammar and by enhancing vocabulary');

-- --------------------------------------------------------

--
-- Table structure for table `ma3151`
--

CREATE TABLE `ma3151` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(110) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ma3151`
--

INSERT INTO `ma3151` (`co_id`, `co`) VALUES
(1, 'To develop the use of matrix algebra techniques that is needed by engineers for  practical applications.'),
(2, 'To familiarize the students with differential calculus'),
(3, 'To familiarize the student with functions of several variables. This is needed in many branches of engineering'),
(4, 'To make the students understand various techniques of integration'),
(5, 'To acquaint the student with mathematical tools needed in evaluating multiple integrals and their applications');

-- --------------------------------------------------------

--
-- Table structure for table `ma3251`
--

CREATE TABLE `ma3251` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(180) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ma3251`
--

INSERT INTO `ma3251` (`co_id`, `co`) VALUES
(1, 'Analyze the different samples of data at different level of significance using various hypothesis testing.'),
(2, 'Understand the basic concepts of classification of design of experiments in the engineering fields.'),
(3, 'Learn how to obtain numerical solution of nonlinear equations and system of linear equations using various techniques.'),
(4, 'Appreciate the numerical techniques of interpolation and error approximations in various intervals in real life situations, differentiation and integration for engineering problems'),
(5, 'Understand the knowledge of various methods for solving first order ordinary differential equations with initial conditions.');

-- --------------------------------------------------------

--
-- Table structure for table `ma3354`
--

CREATE TABLE `ma3354` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(135) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ma3354`
--

INSERT INTO `ma3354` (`co_id`, `co`) VALUES
('1', 'To Extend students logical and mathematical maturity and ability to deal with abstraction'),
('2', 'To introduce most of the basic terminologies used in computer science courses and applications of ideas to solve practical problems'),
('3', 'To understand the basic concepts of combinatorics and graph theory.'),
('4', 'To familiarize the applications of algebraic structures'),
('5', 'To understand  the concepts and significance of lattices and boolean algebra which are widely used in computer science and engineering.'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `main_table`
--

CREATE TABLE `main_table` (
  `regno` varchar(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `section` varchar(5) NOT NULL,
  `address` varchar(40) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `email` varchar(25) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `subject_value` varchar(20) NOT NULL,
  `subject_name` varchar(30) NOT NULL,
  `QA` int(2) NOT NULL,
  `QB` int(2) NOT NULL,
  `QC` int(2) NOT NULL,
  `QD` int(2) NOT NULL,
  `QE` int(2) NOT NULL,
  `QF` int(2) NOT NULL,
  `QG` int(2) NOT NULL,
  `QH` int(2) NOT NULL,
  `QI` int(2) NOT NULL,
  `QJ` int(2) NOT NULL,
  `QK` int(2) NOT NULL,
  `QL` int(2) NOT NULL,
  `QZ` int(2) NOT NULL,
  `co1` int(2) NOT NULL,
  `co2` int(2) NOT NULL,
  `co3` int(2) NOT NULL,
  `co4` int(2) NOT NULL,
  `co5` int(2) NOT NULL,
  `timestamp` datetime NOT NULL,
  `co6` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `main_table`
--

INSERT INTO `main_table` (`regno`, `sname`, `section`, `address`, `mobile`, `email`, `dob`, `fname`, `subject_value`, `subject_name`, `QA`, `QB`, `QC`, `QD`, `QE`, `QF`, `QG`, `QH`, `QI`, `QJ`, `QK`, `QL`, `QZ`, `co1`, `co2`, `co3`, `co4`, `co5`, `timestamp`, `co6`) VALUES
('', '', '', '', '', '', '', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0),
('0', 'saipriya', 'C', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '25/09/2999', 'Dr. S. Pushpalatha', 'cb3491', '', 5, 5, 5, 5, 4, 2, 1, 3, 5, 4, 5, 0, 2, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('00', 'saipriya', 'c', '20A/1 mahal 8th street,manajanakara stre', '9042430587', 'shahanak22cs@psnacet.edu.', '25/09/2999', 'Dr. M.S. Thanabal', 'cb3491', '', 5, 5, 2, 2, 3, 3, 2, 2, 4, 5, 4, 0, 5, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('000', 'saipriya', 'c', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '25/09/2999', 'Dr. S. Pushpalatha', 'cb3491', '', 5, 5, 5, 5, 3, 2, 1, 4, 1, 5, 5, 0, 5, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('001', 'sripooja', 'D', 'madurai', '9042430587', 'sridharanvg22it@psnacet.e', '25/09/2999', 'Dr. S. Pushpalatha', 'be3251', '', 5, 5, 5, 5, 1, 1, 3, 1, 5, 3, 2, 0, 5, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 0),
('002', 'sripooja', 'D', 'madurai', '9042430587', 'sridharanvg22it@psnacet.e', '25/09/2999', 'Dr. S. Pushpalatha', 'be3251', '', 5, 5, 5, 5, 1, 1, 3, 1, 5, 3, 2, 0, 5, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 0),
('005', 'sripooja', 'D', 'madurai', '9042430587', 'sridharanvg22it@psnacet.e', '25/09/2999', 'Dr. S. Pushpalatha', 'cbm333', '', 5, 5, 5, 5, 1, 1, 3, 1, 5, 3, 2, 0, 5, 0, 5, 4, 3, 2, '0000-00-00 00:00:00', 1),
('006', 'sripooja', 'D', 'madurai', '9042430587', 'sridharanvg22it@psnacet.e', '25/09/2999', 'Dr. S. Pushpalatha', 'cbm333', '', 5, 5, 5, 5, 1, 1, 3, 1, 5, 3, 2, 0, 5, 0, 5, 4, 3, 2, '0000-00-00 00:00:00', 1),
('007', 'sripooja', 'D', 'madurai', '9042430587', 'sridharanvg22it@psnacet.e', '25/09/2999', 'Dr. S. Pushpalatha', 'cbm333', '', 5, 5, 5, 5, 1, 1, 3, 1, 5, 3, 2, 0, 5, 0, 5, 4, 3, 2, '0000-00-00 00:00:00', 1),
('008', 'sripooja', 'D', 'madurai', '9042430587', 'sridharanvg22it@psnacet.e', '25/09/2999', 'Dr. S. Pushpalatha', 'cbm333', '', 5, 5, 5, 5, 1, 1, 3, 1, 5, 3, 2, 0, 5, 0, 5, 4, 3, 2, '0000-00-00 00:00:00', 1),
('010', 'Sarin', 'D', '20A/1 mahal 8th street,manajanakara stre', '5678901234', 'sarin@2004', '25/09/2999', 'Mrs. S. Naganandhini', 'cbm333', '', 5, 3, 2, 1, 1, 2, 1, 1, 2, 2, 1, 0, 3, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', 1),
('011', 'Sarin', 'D', '20A/1 mahal 8th street,manajanakara stre', '5678901234', 'sarin@2004', '25/09/2999', 'Mrs. S. Naganandhini', 'cbm333', '', 5, 3, 2, 1, 1, 2, 1, 1, 2, 2, 1, 0, 3, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', 1),
('015', 'Sarin', 'D', '20A/1 mahal 8th street,manajanakara stre', '5678901234', 'sarin@2004', '25/09/2999', 'Mrs. S. Naganandhini', 'cbm333', '', 5, 3, 2, 1, 1, 2, 1, 1, 2, 2, 1, 0, 3, 4, 3, 2, 1, 1, '0000-00-00 00:00:00', 1),
('07', 'pooja', 'D', 'madurai', '124', 'Poo@2004', '25/09/2999', 'Dr. N. Kalpana', 'ge3151', '', 5, 5, 5, 5, 5, 5, 5, 5, 3, 2, 2, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('0912345678', 'Sarin', 'D', '20A/1 mahal 8th street,manajanakara stre', '5678901234', 'sarin@2004', '25/09/2999', 'Mrs. S. Naganandhini', 'ge3151', '', 5, 3, 2, 1, 1, 2, 1, 1, 2, 2, 1, 0, 3, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 2),
('098', 'Arya S', 'C', 'Dindigul', '01234567890', 'aryas22cs@psnacet.edu.in', '15/09/2004', '', 'cb3491', '', 5, 5, 5, 5, 3, 1, 5, 3, 5, 1, 2, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('0987654321', 'Sanjana ', 'C', 'madurai', '1234567890', 'sanjana@2004', '25/09/2999', 'Mr. M. Kamarajan', 'ge3151', '', 5, 4, 4, 4, 2, 2, 1, 3, 5, 5, 5, 0, 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0),
('0989', 'Arya S', 'C', 'Dindigul', '01234567890', 'aryas22cs@psnacet.edu.in', '15/09/2004', '', 'cb3491', '', 5, 5, 5, 5, 3, 1, 5, 3, 5, 1, 2, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('09890', 'Arya S', 'C', 'Dindigul', '01234567890', 'aryas22cs@psnacet.edu.in', '15/09/2004', '', 'ai3021', '', 5, 5, 5, 5, 3, 1, 5, 3, 5, 1, 2, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 0),
('09890', 'Arya S', 'C', 'Dindigul', '01234567890', 'aryas22cs@psnacet.edu.in', '15/09/2004', '', 'cb3491', '', 5, 5, 5, 5, 3, 1, 5, 3, 5, 1, 2, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('09891', 'Arya S', 'C', 'Dindigul', '01234567890', 'aryas22cs@psnacet.edu.in', '15/09/2004', '', 'ai3021', '', 5, 5, 5, 5, 3, 1, 5, 3, 5, 1, 2, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 0),
('09892', 'Arya S', 'C', 'Dindigul', '01234567890', 'aryas22cs@psnacet.edu.in', '15/09/2004', '', 'ai3021', '', 5, 5, 5, 5, 3, 1, 5, 3, 5, 1, 2, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 0),
('09893', 'saipriya', 'c', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '26-04-2004', 'Dr. S. Pushpalatha', 'cb3491', '', 3, 5, 5, 5, 3, 1, 1, 3, 5, 5, 5, 0, 5, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('098945', 'saipriya', 'c', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '26-04-2004', 'Dr. S. Pushpalatha', 'cb3491', '', 3, 5, 5, 5, 3, 1, 1, 3, 5, 5, 5, 0, 5, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('098946', 'saipriya', 'c', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '26-04-2004', 'Dr. S. Pushpalatha', 'cb3491', '', 3, 5, 5, 5, 3, 1, 1, 3, 5, 5, 5, 0, 5, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('1', 'nidhish', 'C', '20A/1 mahal 8th street,manajanakara stre', '9042430587', 'nidhish@2004', '25/09/2999', 'Dr. N. Kalpana', 'cs3251', '', 5, 5, 3, 4, 5, 1, 2, 2, 3, 3, 5, 0, 3, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('100', 'nidhish', 'C', '20A/1 mahal 8th street,manajanakara stre', '9042430587', 'nidhish@2004', '25/09/2999', 'Dr. N. Kalpana', 'og1352', '', 5, 5, 3, 4, 5, 1, 2, 2, 3, 3, 5, 0, 3, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 0),
('123456098', 'Balakrishnan', 'C', 'madurai', '0987654321', 'bala@2004', '26-04-2004', 'Dr. S. Pushpalatha', 'ge3151', '', 4, 3, 3, 1, 1, 3, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0),
('1234560987', 'Balakrishnan', 'C', 'madurai', '0987654321', 'bala@2004', '26-04-2004', 'Dr. S. Pushpalatha', 'ge3151', '', 4, 3, 3, 1, 1, 3, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0),
('13', 'saipriya', 'd', 'madurai', '8778861727', 'shahanak22cs@psnacet.edu.', '24/03/2004', 'Dr. N. Kalpana', 'cs3251', '', 5, 1, 2, 1, 1, 1, 1, 1, 2, 1, 1, 0, 2, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('2', 'Sarin', 'D', '20A/1 mahal 8th street,manajanakara stre', '5678901234', 'sarin@2004', '25/09/2999', 'Mrs. S. Naganandhini', 'ge3151', '', 5, 3, 2, 1, 1, 2, 1, 1, 2, 2, 1, 0, 3, 1, 2, 3, 4, 5, '0000-00-00 00:00:00', 6),
('200', 'Sarin', 'D', '20A/1 mahal 8th street,manajanakara stre', '5678901234', 'sarin@2004', '25/09/2999', 'Mrs. S. Naganandhini', 'ge3151', '', 5, 3, 2, 1, 1, 2, 1, 1, 2, 2, 1, 0, 3, 3, 2, 1, 2, 5, '0000-00-00 00:00:00', 5),
('227', 'Sarin', 'D', '20A/1 mahal 8th street,manajanakara stre', '5678901234', 'sarin@2004', '25/09/2999', 'Mrs. S. Naganandhini', 'ge3151', '', 5, 3, 2, 1, 1, 2, 1, 1, 2, 2, 1, 0, 3, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', 1),
('23456098', 'Balakrishnan', 'C', 'madurai', '0987654321', 'bala@2004', '26-04-2004', 'Dr. S. Pushpalatha', 'ge3151', '', 4, 3, 3, 1, 1, 3, 1, 1, 1, 1, 1, 0, 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0),
('2345671890', 'Nithyapooja', 'C', 'Madurai', '8778861776', 'nip@psnacet.edu.in', '20/09/2005', 'Dr. N. Kalpana', 'ma3354', 'ma3354', 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, '2025-03-26 14:45:29', 0),
('23mx', 'saipriya', 'C', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '25/09/2999', 'Dr. M.S. Thanabal', 'cb3491', '', 5, 2, 3, 5, 5, 5, 5, 5, 5, 5, 5, 0, 5, 5, 4, 3, 2, 2, '0000-00-00 00:00:00', 1),
('23mx123', 'saipriya', 'c', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '25/09/2999', 'Dr. M.S. Thanabal', 'cb3491', '', 5, 3, 2, 3, 1, 5, 5, 4, 3, 2, 1, 0, 5, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('23mx1234', 'saipriya', 'c', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 3, 1, 5, 5, 4, 3, 2, 1, 0, 5, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('23MX256789', 'saipriya', 'C', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '26-04-2004', 'Dr. M.S. Thanabal', 'cb3491', '', 5, 5, 5, 5, 3, 3, 3, 1, 1, 1, 2, 0, 2, 4, 5, 5, 2, 1, '0000-00-00 00:00:00', 3),
('23mxyx', 'saipriya', 'C', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '26-04-2004', 'Dr. S. Pushpalatha', 'cb3491', '', 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 1, 0, 5, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('23mxyxyx', 'saipriya', 'C', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '26-04-2004', 'Dr. S. Pushpalatha', 'cb3491', '', 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 1, 0, 5, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('23mxyxyxyy', 'saipriya', 'C', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '26-04-2004', '', 'cb3491', '', 5, 5, 5, 5, 5, 4, 4, 5, 5, 5, 1, 0, 5, 4, 3, 2, 5, 3, '0000-00-00 00:00:00', 2),
('2403', 'Sarin', 'D', '20A/1 mahal 8th street,manajanakara stre', '5678901234', 'sarin@2004', '25/09/2999', 'Mrs. S. Naganandhini', 'ge3151', '', 5, 3, 2, 1, 1, 2, 1, 1, 2, 2, 1, 0, 3, 3, 2, 1, 2, 5, '0000-00-00 00:00:00', 5),
('246', 'Arya S', 'C', 'Dindigul', '01234567890', 'aryas22cs@psnacet.edu.in', '15/09/2004', 'Dr. M.S. Thanabal', 'cb3491', '', 5, 5, 5, 5, 3, 1, 5, 3, 5, 1, 2, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('2468', 'Sarin', 'D', '20A/1 mahal 8th street,manajanakara stre', '5678901234', 'sarin@2004', '25/09/2999', 'Mrs. S. Naganandhini', 'cb3491', '', 5, 3, 2, 1, 1, 2, 1, 1, 2, 2, 1, 0, 3, 4, 3, 2, 1, 1, '0000-00-00 00:00:00', 1),
('2600', 'sri', 'C', '20A/1 mahal 8th street,manajanakara stre', '9042430587', 'saran@2004', '26-04-2004', 'Dr. S. Pushpalatha', 'og1352', '', 5, 5, 3, 2, 1, 1, 2, 3, 3, 5, 1, 0, 1, 1, 2, 3, 4, 1, '0000-00-00 00:00:00', 0),
('2604', 'Sarin', 'D', '20A/1 mahal 8th street,manajanakara stre', '5678901234', 'sarin@2004', '25/09/2999', 'Mrs. S. Naganandhini', 'ge3151', '', 5, 3, 2, 1, 1, 2, 1, 1, 2, 2, 1, 0, 3, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 2),
('2627', 'Sarin', 'D', '20A/1 mahal 8th street,manajanakara stre', '5678901234', 'sarin@2004', '25/09/2999', 'Mrs. S. Naganandhini', 'ge3151', '', 5, 3, 2, 1, 1, 2, 1, 1, 2, 2, 1, 0, 3, 1, 2, 3, 4, 5, '0000-00-00 00:00:00', 5),
('27', 'Sarin', 'D', '20A/1 mahal 8th street,manajanakara stre', '5678901234', 'sarin@2004', '25/09/2999', 'Mrs. S. Naganandhini', 'ge3151', '', 5, 3, 2, 1, 1, 2, 1, 1, 2, 2, 1, 0, 3, 1, 2, 3, 4, 5, '0000-00-00 00:00:00', 6),
('300', 'saran', 'C', '20A/1 mahal 8th street,manajanakara stre', '9042430587', 'saran@2004', '26-04-2004', 'Dr. S. Pushpalatha', 'og1352', '', 5, 5, 3, 2, 1, 1, 2, 3, 3, 5, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 0),
('3000', 'Sarin', 'D', '20A/1 mahal 8th street,manajanakara stre', '5678901234', 'sarin@2004', '25/09/2999', 'Mrs. S. Naganandhini', 'cbm333', '', 5, 3, 2, 1, 1, 2, 1, 1, 2, 2, 1, 0, 3, 4, 3, 2, 1, 1, '0000-00-00 00:00:00', 1),
('47', 'Sarin', 'D', '20A/1 mahal 8th street,manajanakara stre', '5678901234', 'sarin@2004', '25/09/2999', 'Mrs. S. Naganandhini', 'ge3151', '', 5, 3, 2, 1, 1, 2, 1, 1, 2, 2, 1, 0, 3, 1, 1, 1, 1, 1, '0000-00-00 00:00:00', 1),
('500', 'V G sridharan', 'D', '20A/1 mahal 8th street,manajanakara stre', '8778861727', 'sridharanvg22it@psnacet.e', '26-04-2004', 'Dr. S. Pushpalatha', 'omr353', '', 5, 4, 4, 2, 1, 2, 2, 2, 1, 5, 3, 0, 2, 2, 3, 4, 5, 1, '0000-00-00 00:00:00', 0),
('6398000', 'saipriya', 'C', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '25/09/2999', 'Dr. S. Pushpalatha', 'ma3151', '', 5, 5, 2, 2, 2, 3, 5, 5, 3, 2, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 0),
('6398027', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398028', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398029', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398030', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398031', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398032', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398033', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398034', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398037', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398038', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398039', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398040', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398041', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398042', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398045', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398046', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398047', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398048', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398049', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('6398050', 'saipriya', 'c', 'madurai', '9042430587', 'poojaprem2004@gmail.com', '25/09/2999', '', 'cb3491', '', 5, 3, 2, 1, 1, 1, 4, 3, 3, 1, 1, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('63984', 'saipriya', 'd', '20A/1 mahal 8th street,manajanakara stre', '9042430587', 'shahanak22cs@psnacet.edu.', '25/09/2999', 'Dr. S. Pushpalatha', 'ma3151', '', 5, 4, 3, 2, 1, 5, 5, 5, 1, 1, 5, 0, 5, 4, 3, 2, 1, 0, '0000-00-00 00:00:00', 0),
('63985', 'saipriya', 'd', '20A/1 mahal 8th street,manajanakara stre', '9042430587', 'shahanak22cs@psnacet.edu.', '25/09/2999', 'Dr. S. Pushpalatha', 'ma3151', '', 5, 4, 3, 2, 1, 5, 5, 5, 1, 1, 5, 0, 5, 4, 3, 2, 1, 0, '0000-00-00 00:00:00', 0),
('63986', 'saipriya', 'd', '20A/1 mahal 8th street,manajanakara stre', '9042430587', 'shahanak22cs@psnacet.edu.', '25/09/2999', 'Dr. S. Pushpalatha', 'ma3151', '', 5, 4, 3, 2, 1, 5, 5, 5, 1, 1, 5, 0, 5, 4, 3, 2, 1, 0, '0000-00-00 00:00:00', 0),
('63987', 'saipriya', 'd', '20A/1 mahal 8th street,manajanakara stre', '9042430587', 'shahanak22cs@psnacet.edu.', '25/09/2999', 'Dr. S. Pushpalatha', 'ma3151', '', 5, 4, 3, 2, 1, 5, 5, 5, 1, 1, 5, 0, 5, 4, 3, 2, 1, 0, '0000-00-00 00:00:00', 0),
('700', 'sri', 'D', 'madurai', '9042430587', 'sridharanvg22it@psnacet.e', '25/09/2999', 'Dr. S. Pushpalatha', 'omr353', '', 5, 5, 5, 5, 1, 1, 3, 1, 5, 3, 2, 0, 5, 4, 3, 2, 1, 5, '0000-00-00 00:00:00', 0),
('800', 'sripooja', 'D', 'madurai', '9042430587', 'sridharanvg22it@psnacet.e', '25/09/2999', 'Dr. S. Pushpalatha', 'omr353', '', 5, 5, 5, 5, 1, 1, 3, 1, 5, 3, 2, 0, 5, 4, 3, 2, 1, 5, '0000-00-00 00:00:00', 0),
('8778861727', 'saipriya', 'c', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '25/09/2999', 'Dr. S. Pushpalatha', 'cb3491', '', 5, 5, 5, 5, 3, 2, 1, 4, 1, 5, 5, 0, 5, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('903748389239', 'Nithyapooja', 'C', 'Madurai', '8778861776', 'nip@psnacet.edu.in', '20/09/2005', 'Dr. N. Kalpana', 'ma3354', 'ma3354', 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, '2025-03-26 14:48:17', 0),
('90456783298', 'Nithyapooja', 'C', 'Madurai', '8778861776', 'nip@psnacet.edu.in', '20/09/2005', 'Dr. N. Kalpana', 'ma3354', 'ma3354', 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, '2025-03-26 14:36:44', 0),
('91234567', 'Sarin', 'D', '20A/1 mahal 8th street,manajanakara stre', '5678901234', 'sarin@2004', '25/09/2999', 'Mrs. S. Naganandhini', 'ge3151', '', 5, 3, 2, 1, 1, 2, 1, 1, 2, 2, 1, 0, 3, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 2),
('9213221256', 'raja', 'c', 'abcd', '45678990123', 'raja@26', '34/09/2004', 'Mr. V. Nanda Kumar', 'ma3354', '', 5, 4, 4, 5, 5, 4, 1, 1, 1, 1, 1, 1, 2, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0),
('92132213127', 'nidish', 'c', 'madurai', '0987123456', 'nidis@2004', '09/04/2005', 'Dr. D. M. D. Preethi', 'ai3021', '', 5, 5, 5, 5, 4, 4, 3, 3, 2, 2, 1, 1, 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0),
('92132213128', 'Nithya', 'c', '20A/1 mahal 8th street,manajanakara stre', '9042430587', 'nithyasreesv22cs@psnacet.', '14/11/2004', 'Dr. D. Suresh', 'oce351', '', 3, 4, 3, 4, 5, 5, 5, 3, 5, 5, 1, 2, 4, 0, 0, 0, 0, 0, '2025-03-03 15:33:37', 0),
('92132213131', 'Arya S', 'C', '20A/1 mahal 8th street,manajanakara stre', '1234567890', 'aryas22cs@psnacet.edu.in', '26-04-2004', 'Dr. D. Suresh', 'cb3491', '', 5, 2, 1, 1, 5, 5, 5, 5, 5, 5, 5, 0, 3, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('92132213131', 'sri', 'c', '20A/1 mahal 8th street,manajanakara stre', '9042430587', 'sridharanvg22it@psnacet.e', '12/04/2004', 'Dr. D. Suresh', 'ma3151', '', 5, 4, 3, 1, 4, 3, 2, 2, 5, 3, 4, 0, 4, 4, 5, 4, 3, 2, '0000-00-00 00:00:00', 0),
('92132213144', 'Prisca Carmel B', 'C', 'Dindigul', '06379852593', 'poojasrisp22cs@psnacet.ed', '09/12/2004', 'Dr. N. Dhanalakshmi', 'ma3151', '', 5, 5, 5, 5, 5, 5, 1, 4, 3, 3, 2, 1, 1, 0, 0, 0, 0, 0, '2025-03-03 15:55:46', 0),
('92132213160', 'Ramya', 'C', 'Dindigul', '9698693098', 'ramyas22cs@psnacet.edu.in', '09/12', 'Dr. D. M. D. Preethi', 'ai3021', 'ai3021', 4, 5, 5, 4, 4, 4, 4, 4, 4, 4, 4, 5, 5, 5, 4, 3, 2, 1, '2025-03-27 09:23:36', 0),
('92132213165', 'swetha', 'd', 'trichy', '1029384756', 'swetha@2004', '12/04/2004', 'Mrs. S. Santhana Pra', 'mf3003', '', 5, 5, 1, 4, 1, 1, 3, 3, 1, 2, 2, 1, 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0),
('92132213170', 'shahana', 'd', '20A/1 mahal 8th street,manajanakara stre', '9042430587', 'shahanak22cs@psnacet.edu.', '24/03/2004', 'Dr. D. Suresh', 'cb3491', '', 3, 3, 5, 2, 5, 3, 3, 5, 5, 4, 4, 0, 4, 5, 2, 3, 1, 4, '0000-00-00 00:00:00', 3),
('92132213170', 'saipriya', 'c', 'madurai', '8778861727', 'sai@2004', '14/11/2005', 'Dr. N. Kalpana', 'ma3151', '', 5, 5, 5, 4, 4, 4, 3, 3, 2, 2, 2, 1, 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0),
('92132213175', 'sai', 'c', 'madurai', '1234567890', 'sanjanaj22cs@psnacet.edu.', '14/11/2005', 'Mr. M. Kamarajan', 'cs3251', '', 5, 5, 5, 4, 4, 4, 3, 3, 3, 2, 2, 2, 1, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0),
('92132213178', 'poojasri', 'C', 'Madurai', '8778861727', 'saipriyar22cs@psnacet.edu', '20/09/2005', 'Dr. N. Kalpana', 'ma3354', 'ma3354', 5, 5, 4, 5, 4, 5, 5, 5, 4, 5, 5, 5, 4, 5, 4, 3, 4, 5, '2025-03-26 14:52:12', 0),
('92132213179', 'saran', 'd', 'cbm', '0987654321', 'saran@2002', '14/11/2004', 'Mrs. S. Naganandhini', 'ge3151', '', 4, 2, 4, 4, 3, 4, 3, 5, 5, 1, 2, 1, 4, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0),
('92132213181', 'poojasri', 'C', 'Madurai', '8778861727', 'saipriyar22cs@psnacet.edu', '20/09/2005', 'Dr. N. Kalpana', 'ge3251', 'ge3251', 5, 5, 4, 5, 4, 5, 5, 5, 4, 5, 5, 5, 4, 5, 4, 3, 4, 5, '2025-03-26 15:32:12', 0),
('92132213183', 'poojasri', 'C', 'Madurai', '8778861727', 'saipriyar22cs@psnacet.edu', '20/09/2005', 'Dr. N. Kalpana', 'ma3354', 'ma3354', 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, '2025-03-26 14:31:54', 0),
('987567483974', 'Nithyapooja', 'C', 'Madurai', '8778861776', 'nip@psnacet.edu.in', '20/09/2005', 'Dr. N. Kalpana', 'ma3354', 'ma3354', 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 0, 0, 0, 0, 0, '2025-03-26 14:44:06', 0),
('9994902040', 'saipriya', 'c', 'madurai', '9042430587', 'poojasrisp22cs@psnacet.ed', '26-04-2004', 'Dr. D. Suresh', 'cb3491', '', 5, 4, 5, 5, 5, 1, 5, 4, 5, 2, 5, 0, 1, 5, 4, 3, 2, 2, '0000-00-00 00:00:00', 1),
('abc', 'saipriya', 'C', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '26-04-2004', 'Dr. M.S. Thanabal', 'cb3491', '', 4, 4, 5, 2, 1, 4, 2, 2, 3, 5, 5, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('abcd', 'saipriya', 'c', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '26-04-2004', 'Dr. M.S. Thanabal', 'cb3491', '', 5, 5, 4, 3, 3, 5, 3, 4, 5, 4, 4, 0, 4, 4, 3, 2, 2, 5, '0000-00-00 00:00:00', 1),
('abcde', 'saipriya', 'c', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '26-04-2004', '', 'cb3491', '', 5, 5, 4, 3, 3, 5, 3, 4, 5, 4, 4, 0, 4, 4, 3, 2, 2, 4, '0000-00-00 00:00:00', 5),
('mx26', 'saipriya', 'c', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '26-04-2004', 'Dr. M.S. Thanabal', 'cb3491', '', 5, 2, 1, 2, 4, 4, 5, 5, 5, 4, 2, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1),
('mx2627', 'saipriya', 'c', 'madurai', '9042430587', 'shahanak22cs@psnacet.edu.', '26-04-2004', 'Dr. M.S. Thanabal', 'cb3491', '', 5, 2, 1, 2, 4, 4, 5, 5, 5, 4, 2, 0, 1, 5, 4, 3, 2, 1, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `mf3003`
--

CREATE TABLE `mf3003` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(191) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `mf3003`
--

INSERT INTO `mf3003` (`co_id`, `co`) VALUES
('1', 'Apply the fundamental concepts and principles of reverse engineering in product design and development.'),
('2', 'Apply the concept and principles of material characteristicsidentification, process verification, part durability and life limitation in reverse engineering of product design and development.'),
('3', 'Apply the concept and principles of data processing, part performance and system compatibilityin reverse engineering of product design and development.'),
('4', 'Apply the concept and principles of 3D scanning and modellingin reverse engineering of product design and development.'),
('5', 'Analyze the various legal aspects and applications of reverse engineering in product design and development.'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `oce351`
--

CREATE TABLE `oce351` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `oce351`
--

INSERT INTO `oce351` (`co_id`, `co`) VALUES
('1', 'Carrry out scoping and screening of developmental projects for environmental and project\nassessments'),
('2', 'Explain different methodologies for environmental impact prediction and assessment'),
('3', 'Plan environmental impact assessments and environmental management plans'),
('4', 'Evaluate environmental impact assessments reports'),
('', ''),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `og1352`
--

CREATE TABLE `og1352` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(52) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `og1352`
--

INSERT INTO `og1352` (`co_id`, `co`) VALUES
('1', 'Have basic idea about the fundamentals of GIS'),
('2', 'Understand the types of data models'),
('3', 'Get knowledge about data input and topology'),
('4', 'Gain knowledge on data quality and standards'),
('5', 'Understand data management functions and data output'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `omr353`
--

CREATE TABLE `omr353` (
  `co_id` varchar(1) DEFAULT NULL,
  `co` varchar(199) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `omr353`
--

INSERT INTO `omr353` (`co_id`, `co`) VALUES
('1', 'Understand various sensor effects, sensor characteristics, signal types, calibration methods and obtain transfer function and empirical relation of sensors. They can also analyze the Sensor response.'),
('2', 'Analyze and select suitable sensor for displacement, proximity and range measurement.'),
('3', 'Analyze and select suitable sensor for force, magnetic field, speed, position and direction measurement.'),
('4', 'Analyze and Select suitable sensor for light detection, pressure and temperature measurement and also familiar with other miniaturized smart sensors.'),
('5', 'Select and design suitable signal conditioning circuit with proper compensation and linearizing element based on sensor output signal.'),
('', '');

-- --------------------------------------------------------

--
-- Table structure for table `ph3151`
--

CREATE TABLE `ph3151` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(101) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ph3151`
--

INSERT INTO `ph3151` (`co_id`, `co`) VALUES
(1, 'Students understand the importance of mechanics'),
(2, 'Express their knowledge in electromagnetic waves'),
(3, 'The students demonstrate a strong foundational knowledge in oscillations, optics and lasers'),
(4, 'The students understand the importance of quantum physics '),
(5, 'The students comprehend and apply quantum mechanical principles towards the formation of energy bands');

-- --------------------------------------------------------

--
-- Table structure for table `ph3256`
--

CREATE TABLE `ph3256` (
  `co_id` int(1) DEFAULT NULL,
  `co` varchar(133) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `ph3256`
--

INSERT INTO `ph3256` (`co_id`, `co`) VALUES
(1, ' understand the importance in studying electrical properties of materials'),
(2, 'gain knowledge in semiconductor physics '),
(3, 'gain knowledge on magnetic properties of materials '),
(4, 'acquire a sound grasp of knowledge on different optical properties of materials, optical  displays and applications '),
(5, 'inculcate an idea of significance of nano structures, quantum confinement, ensuing nano device applications and quantum computing    ');

-- --------------------------------------------------------

--
-- Table structure for table `signup`
--

CREATE TABLE `signup` (
  `name` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `regno` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `signup`
--

INSERT INTO `signup` (`name`, `email`, `phone`, `password`, `regno`) VALUES
('Prisca Carmel B', 'b.priscacarmel@gmail.com', '8270936254', 'Prisca#200', '92132213244'),
('Ramya S', 'ramya@gmail.com', '9698693098', 'Ramya@123', '92132213160'),
('Nithya', 'poojasrisp22cs@psnacet.edu.in', '9047906968', 'Pooja@26', '92132213131');

-- --------------------------------------------------------

--
-- Table structure for table `student_details`
--

CREATE TABLE `student_details` (
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_details`
--

INSERT INTO `student_details` (`name`, `email`, `phone`, `password`) VALUES
('Poojasri S P', 'poojasrisp22cs@psnacet.edu.in', '9994902040', 'Poojasri@26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `main_table`
--
ALTER TABLE `main_table`
  ADD PRIMARY KEY (`regno`,`subject_value`);

--
-- Indexes for table `student_details`
--
ALTER TABLE `student_details`
  ADD PRIMARY KEY (`phone`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
