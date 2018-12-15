-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Dec 15, 2018 at 04:18 AM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `vue_video_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `info_thumb` varchar(30) NOT NULL,
  `info` varchar(400) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`id`, `info_thumb`, `info`) VALUES
(4, 'poster1.jpg', 'In Stuttgart, Barton steals iridium needed to stabilize the Tesseract\'s power while Loki causes a distraction, leading to a brief confrontation with Rogers, Stark, and Romanoff that ends with Loki\'s surrender. While Loki is being escorted to S.H.I.E.L.D., Thor, his adoptive brother, arrives and frees him, hoping to convince him to abandon his plan and return to Asgard.'),
(5, 'poster2.jpg', 'The Falcon is captured by a larger ship piloted by Han Solo and Chewbacca, looking to reclaim their former vessel. They are attacked by gangs seeking to settle debts with Han, and flee in the Falcon. '),
(6, 'poster3.jpg', 'The first season begins in November 1983, when Will Byers is abducted by a creature from the Upside Down. His mother, Joyce, and the town\'s police chief, Jim Hopper, search for Will. At the same time, a young psychokinetic girl called Eleven escapes from the laboratory and assists Will\'s friends, Mike, Dustin, and Lucas, in their own efforts to find Will.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_video_info`
--

CREATE TABLE `tbl_video_info` (
  `id` int(11) NOT NULL,
  `video_id` int(11) NOT NULL,
  `info_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_video_info`
--

INSERT INTO `tbl_video_info` (`id`, `video_id`, `info_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id` int(11) NOT NULL,
  `vid_name` varchar(45) NOT NULL,
  `vid_path` varchar(60) NOT NULL,
  `vid_desc` varchar(400) NOT NULL,
  `vid_genre` int(11) NOT NULL,
  `vid_thumb` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id`, `vid_name`, `vid_path`, `vid_desc`, `vid_genre`, `vid_thumb`) VALUES
(1, 'Marvel\'s Avengers', 'avengers.mp4', 'The Asgardian Loki encounters the Other, the leader of an extraterrestrial race known as the Chitauri. In exchange for retrieving the Tesseract,[N 2] a powerful energy source of unknown potential, the Other promises Loki an army with which he can subjugate Earth.', 1, 'avengers.jpg'),
(2, 'Star Wars The Force Awakens', 'forceawakens.mp4', 'Thirty years after the Galactic Civil War, the First Order has risen from the fallen Galactic Empire and seeks to eliminate the New Republic. The Resistance, backed by the Republic and led by General Leia Organa, opposes them while Leia searches for her brother, Luke Skywalker.', 2, 'forceawakens.jpg'),
(3, 'Stranger Things', 'strangerthings.mp4', 'Stranger Things is set in the fictional rural town of Hawkins, Indiana, during the early 1980s. The nearby Hawkins National Laboratory ostensibly performs scientific research for the United States Department of Energy, but secretly does experiments into the paranormal and supernatural, including those that involve human test subjects.', 3, 'strangerthings.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
