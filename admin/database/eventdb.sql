-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2021 at 11:03 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `audience`
--

CREATE TABLE `audience` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` text NOT NULL,
  `event_id` int(30) NOT NULL,
  `payment_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0= pending, 1 =Paid',
  `attendance_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '1= present',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0 = for verification,  1 = confirmed,2= declined',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `audience`
--

INSERT INTO `audience` (`id`, `name`, `contact`, `email`, `address`, `event_id`, `payment_status`, `attendance_status`, `status`, `date_created`) VALUES
(2, 'Mark Jason', '+18456-5455-55', 'mjason@sample.com', 'Sample', 2, 1, 0, 1, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(30) NOT NULL,
  `venue_id` int(30) NOT NULL,
  `event` text NOT NULL,
  `description` text NOT NULL,
  `schedule` datetime NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Public, 2-Private',
  `audience_capacity` int(30) NOT NULL,
  `payment_type` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Free,payable',
  `amount` double NOT NULL DEFAULT '0',
  `banner` text NOT NULL,
  `date_created` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `venue_id`, `event`, `description`, `schedule`, `type`, `audience_capacity`, `payment_type`, `amount`, `banner`, `date_created`) VALUES
(1, 1, 'Sample Only', '&lt;p&gt;&lt;/p&gt;&lt;h2 style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;&lt;b style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Sample Header&lt;/b&gt;&lt;/h2&gt;&lt;p style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;&lt;b style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Non diam phasellus vestibulum lorem. Vel elit scelerisque mauris pellentesque pulvinar pellentesque. Fames ac turpis egestas integer eget. Nam at lectus urna duis convallis convallis tellus. Turpis tincidunt id aliquet risus. Turpis tincidunt id aliquet risus feugiat in ante metus. Ut porttitor leo a diam sollicitudin tempor id eu nisl. Sit amet tellus cras adipiscing enim eu turpis. Ultricies mi eget mauris pharetra et ultrices neque.&lt;/b&gt;&lt;/p&gt;&lt;h3 style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;&lt;b style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Headere 3&lt;/b&gt;&lt;/h3&gt;&lt;p style=&quot;text-align: center; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Magna etiam tempor orci eu lobortis elementum nibh. Quis eleifend quam adipiscing vitae proin sagittis nisl rhoncus mattis. Gravida cum sociis natoque penatibus et magnis. Mi ipsum faucibus vitae aliquet nec ullamcorper sit. Malesuada bibendum arcu vitae elementum curabitur vitae nunc sed velit. Tincidunt id aliquet risus feugiat in ante. Elementum facilisis leo vel fringilla est ullamcorper eget. Id semper risus in hendrerit gravida rutrum. Aliquam vestibulum morbi blandit cursus risus at ultrices mi. Elementum pulvinar etiam non quam lacus suspendisse faucibus. Ultrices eros in cursus turpis massa tincidunt dui ut ornare. Pretium vulputate sapien nec sagittis. Lectus sit amet est placerat in egestas erat imperdiet sed. Auctor elit sed vulputate mi. Eget est lorem ipsum dolor sit amet consectetur. Tristique magna sit amet purus gravida quis. In arcu cursus euismod quis viverra nibh cras pulvinar mattis.&lt;/p&gt;&lt;p style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Luctus accumsan tortor posuere ac ut. Fames ac turpis egestas maecenas pharetra convallis posuere morbi. Arcu felis bibendum ut tristique et egestas. Mauris in aliquam sem fringilla ut morbi. Lobortis elementum nibh tellus molestie nunc non blandit massa. Curabitur gravida arcu ac tortor dignissim convallis aenean. Libero enim sed faucibus turpis in eu mi bibendum. Neque egestas congue quisque egestas diam in arcu cursus. Diam phasellus vestibulum lorem sed risus ultricies. Semper feugiat nibh sed pulvinar proin gravida hendrerit lectus a. Volutpat lacus laoreet non curabitur gravida arcu ac. Elementum tempus egestas sed sed risus pretium quam. Diam maecenas ultricies mi eget mauris pharetra et. Venenatis cras sed felis eget velit aliquet sagittis. Arcu dictum varius duis at consectetur lorem donec massa sapien. Ullamcorper velit sed ullamcorper morbi tincidunt ornare.&lt;/p&gt;&lt;p style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Tempus iaculis urna id volutpat lacus laoreet. Auctor neque vitae tempus quam pellentesque nec nam. Eget nunc lobortis mattis aliquam faucibus purus. Amet nisl suscipit adipiscing bibendum est ultricies integer quis. Donec ac odio tempor orci dapibus ultrices in. Varius sit amet mattis vulputate. Ornare massa eget egestas purus. Pellentesque dignissim enim sit amet venenatis. Blandit massa enim nec dui nunc mattis enim ut tellus. Habitant morbi tristique senectus et netus et. Blandit volutpat maecenas volutpat blandit aliquam etiam erat velit scelerisque. Facilisis magna etiam tempor orci eu lobortis elementum nibh. Feugiat nibh sed pulvinar proin gravida hendrerit lectus a. Euismod elementum nisi quis eleifend quam. Convallis convallis tellus id interdum velit laoreet id. Pulvinar mattis nunc sed blandit libero volutpat sed cras ornare.&lt;/p&gt;&lt;p style=&quot;-webkit-tap-highlight-color: rgba(0, 0, 0, 0); margin-top: 1.5em; margin-bottom: 1.5em; line-height: 1.5; animation: 1000ms linear 0s 1 normal none running fadeInLorem;&quot;&gt;Neque gravida in fermentum et. Amet nulla facilisi morbi tempus iaculis urna id volutpat. Id diam vel quam elementum pulvinar etiam non quam lacus. Mauris commodo quis imperdiet massa. Pulvinar mattis nunc sed blandit libero volutpat. Suspendisse faucibus interdum posuere lorem. Nunc pulvinar sapien et ligula ullamcorper malesuada proin libero. Blandit cursus risus at ultrices mi tempus imperdiet nulla. Eget velit aliquet sagittis id consectetur purus. Quis lectus nulla at volutpat diam ut venenatis tellus. Nunc mattis enim ut tellus elementum.&lt;/p&gt;&lt;p&gt;&lt;/p&gt;', '2020-10-20 05:00:00', 1, 500, 2, 500, '1602647100_JSAV-multiscreen_3ddbdd40-38d9-4b64-9cf2-5d0ef356f29c.jpg', '0000-00-00 00:00:00'),
(2, 2, 'Event 2', '&lt;p&gt;Lorem ipsum dolor sit amet, viris eleifend convenire mei te, ei mea probo cotidieque? Pri gloriatur disputationi vituperatoribus ex, dolorum disputationi quo te! Cibo reque postea te his, mea quis oportere ei. Qui ut vide idque minimum, aeterno laoreet consetetur mei in. Mel stet audiam omittantur cu!&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Dictas meliore eos ea, iusto libris volumus mel ut. Sea id exerci ignota expetenda, cum ei nostro eirmod apeirian. Est luptatum liberavisse cu, cu quo stet veniam. Mei causae honestatis ad, esse fugit laudem qui ex, eu duo choro quaestio. Scripta appetere cu vim, agam nulla percipit duo ei.&lt;/p&gt;&lt;p&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;Per in sanctus instructior. No prompta instructior duo, per no mucius deterruisset, sumo munere delenit vix ut? Mea ut idque lorem assum, eum et idque dissentias. Choro tempor per ex, at duo fuisset maiestatis! Has in voluptaria vituperata, at erat vituperata est, autem prompta appetere in per!&lt;/p&gt;', '2020-10-23 18:00:00', 1, 500, 1, 0, '1602652920_pngtree-purple-hd-business-banner-image_5493.jpg', '0000-00-00 00:00:00'),
(3, 2, 'Sample Private', 'Wedding', '2020-10-28 17:00:00', 2, 300, 1, 0, '1602660960_images4.jpg', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `cover_img` text NOT NULL,
  `about_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `cover_img`, `about_content`) VALUES
(1, 'Event Management System', 'sample@sample.com', '+6948 8542 623', '1616488620_green-background.jpg', '&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;span style=&quot;color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-weight: 400; text-align: justify;&quot;&gt;&amp;nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&rsquo;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.&lt;/span&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p style=&quot;text-align: center; background: transparent; position: relative;&quot;&gt;&lt;br&gt;&lt;/p&gt;&lt;p&gt;&lt;/p&gt;');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '2' COMMENT '1=Admin,2=Staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `type`) VALUES
(1, 'Administrator', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `venue`
--

CREATE TABLE `venue` (
  `id` int(30) NOT NULL,
  `venue` text NOT NULL,
  `address` text NOT NULL,
  `description` text NOT NULL,
  `rate` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venue`
--

INSERT INTO `venue` (`id`, `venue`, `address`, `description`, `rate`) VALUES
(1, 'Venue 1', 'Sample Address', 'Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.', 300),
(2, 'Venue 2', 'Sample', 'Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.', 250),
(3, 'Venue 3', 'Sample Address', 'Lorem ipsum dolor sit amet, id has nostro vivendo, id per alii volutpat inciderint? Graece ornatus gubergren te quo, qui at oblique accusamus, id pro eros etiam conceptam! Ullum clita.', 280),
(4, 'Venue 4', 'Sample only', 'Lorem ipsum dolor sit amet, id has nostro vivendo, id per alii volutpat inciderint? Graece ornatus gubergren te quo, qui at oblique accusamus, id pro eros etiam conceptam! Ullum clita.', 1000);

-- --------------------------------------------------------

--
-- Table structure for table `venue_booking`
--

CREATE TABLE `venue_booking` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `address` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `venue_id` int(30) NOT NULL,
  `duration` varchar(100) NOT NULL,
  `datetime` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0-for verification,1=confirmed,2=canceled'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `venue_booking`
--

INSERT INTO `venue_booking` (`id`, `name`, `address`, `email`, `contact`, `venue_id`, `duration`, `datetime`, `status`) VALUES
(3, 'Adam Vayne', 'Kabankalan', 'adam@yahoo.com', '09099828289', 3, '1 night', '2021-03-29 16:56:00', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `audience`
--
ALTER TABLE `audience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue`
--
ALTER TABLE `venue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `venue_booking`
--
ALTER TABLE `venue_booking`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `audience`
--
ALTER TABLE `audience`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `venue`
--
ALTER TABLE `venue`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `venue_booking`
--
ALTER TABLE `venue_booking`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
