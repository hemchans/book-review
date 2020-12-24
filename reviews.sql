-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 24, 2020 at 05:13 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reviews`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `authors` varchar(100) NOT NULL,
  `rating` int(11) NOT NULL,
  `description` varchar(4000) NOT NULL,
  `link` varchar(1024) NOT NULL,
  `image_link` varchar(1024) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `authors`, `rating`, `description`, `link`, `image_link`) VALUES
(3, 'Aru Shah and the Tree of Wishes (Pandava Series Book 3)', 'Roshani Chokshi', 5, '\r\nAru and her friends were sent on a mission to find the seer before the Sleeper and get the prophecy from her. They battled a rakshasa and found her and she and her sister ended up being their soul sisters. Their names were Nikita and Sheela. Sheela was the seer. Rakshasa heard the prophecy and ran away with it. They set out to find the Kalpavriksha a.k.a. the Tree of Wishes so that they can win the ongoing war. In the middle however, Nikita was kidnapped because she was thought to be the seer instead of Sheela. They solved the riddle that was asked to them and got Nikita back. Aru finally finds the Kalpavriksha and realized that it was the wrong thing to find. But she makes a wish for them to win and she gets captured. She wakes up in a dark cave and asks were she is and the person in front of her is. The person said that she was in the house of the sleeper and her name was Kara and she was the sleeper’s daughter.', 'https://www.amazon.com/dp/B07WGB36B7', 'https://m.media-amazon.com/images/I/51LDP+CPynL.jpg'),
(4, 'Aru Shah and the End of Time: A Pandava Novel Book 1 (Pandava Series)', 'Roshani Chokshi', 5, 'This story is about a girl name Aru who is dared to light a lamp of destruction and releases a dangerous creature called the Sleeper who is bent on world destruction. When she does this it is revealed to her that she a reincarnation of one of the five pandavas. A bird named Subala (Boo) takes her to the otherworld where devas, asuras, rakshasas, nagas, and many more dwell. On the way there she meets her soul-sister Mini who is also a reincarnation. Together the go to the Otherworld and they are tested to see which god is their “godfather”. After the test they are given weapons and a time limit to find three enchanted objects to defeat the Sleeper. They travel to many places to find the objects and finally came face-to-face with the Sleeper. They fight for a while and right when Aru was about to finish him off, he revealed to her a shocking truth. Apparently, he was her birth father before he became the Sleeper and says that she should join him or else her soul-sisters would turn against her. While she is still in shock, he disappears. Mini and Aru keep training to defeat the Sleeper.', 'https://www.amazon.com/gp/product/B075MWXNQ6/', 'https://m.media-amazon.com/images/I/51wTOFFN0OL.jpg'),
(5, 'Dragon Pearl', 'Yoon Ha Lee', 4, 'This story is about 13-year-old Min who lives in a crowded house of wolves like her. Wolves were known to lure their prey using powers such as Charm and shape-shifting. Her mom however keeps telling everyone to blend in as humans so that they won’t get captured. One day a stranger comes to their house and gives them a message from Min’s elder brother Jun. He had disappeared from a space force with a group of friends and the space force thought that they were searching for the precious Dragon pearl which was on one of the ghost colonies. The Dragon pearl could turn any wasteland into a utopia. She runs away from home to prove her brother’s innocence. She bords a spacecraft to the ghost colonies, but the ship crashes into a space force and everyone thinks that she is dead while she was actually alive. But someone else who worked in the space force died and he turned into a ghost, but nobody realized that. She pretended to be him and took his place to find out more about her brother. In exchange for pretending to be the person who died, she had to find out who killed him so the he could go onto the next world. Her identity is later revealed and she is captured. She manages to escape with her friends and goes to the ghost colonies to get the dragon pearl. She finds her brother, but he already died and turned into a ghost. Her friends double cross her, and they call the culprit who sent Jun and his friends to get the dragon pearl. Her friends realized their wrong and come to her side. They defeat the bad guy. Jun decides to haunt his sister so that he can roam the galaxy with her.', 'https://www.amazon.com/Dragon-Pearl-Yoon-Ha-Lee/dp/136801335X', 'https://images-na.ssl-images-amazon.com/images/I/41Tuqxv48cL._SX340_BO1,204,203,200_.jpg'),
(6, 'I Only have Pies for You', 'Suzanne Nelson', 2, 'This story is about a girl who is the daughter of a baker. Her great-great grandmother Hazel had a secret recipe that she hid before she died. The girl decides that she wants to find that secret recipe. With her friends she searches her entire house but to no avail. She goes to school the next day and the second she came back home she tried finding the recipe again. Finally, she notices an unusual painting and takes it off the wall. On the wall is the recipe. She goes back to school the next day to show the recipe to her friends, but it isn’t in her pocket! She suspects the towns nosy news lady found it and took it. Her suspicions were proved correct the very next day on television. The news lady was reading out her great-great grandmother’s secret recipe on national TV. She and her friends decide to bake the pie and post it on the internet by guessing the ingredients. The pie tasted amazing so they made a lot of pies and took them to town fair. The news lady felt guilty and gave the recipe back.', 'https://www.amazon.com/Only-Have-Pies-You-Novel/dp/1338316419', 'https://images-na.ssl-images-amazon.com/images/I/51vGH8gfXqL._SX342_BO1,204,203,200_.jpg'),
(7, 'Starry River of the Sky', 'Grace Lin', 5, 'This story is about the magistrate’s son Rendi who runs away from home and ends up as a chore boy in an inn. He ran away because he had noticed that the moon was missing. He met the innkeeper’s daughter, a strange but beautiful woman, a woman from next door, and a peculiar old man. The innkeeper mourned about his son who had been missing for a while. They told stories to pass the time every night. Every night heard the sky crying. One night he slipped out of the inn with a gaang of wine to find what was making the noise. He found a giant toad moaning with agony. He gave the toad the gaang of wine to drink. The toad threw up a humungous, smooth, round, white ball and then turned into a human! He was the missing son of the innkeeper. The ball was the missing moon. The mysterious lady and the old man disappeared and the moon returned to its place in the sky.', 'https://www.amazon.com/Starry-River-Sky-Grace-Lin/dp/0316125970/', 'https://images-na.ssl-images-amazon.com/images/I/612nMzm6b5L._SX336_BO1,204,203,200_.jpg'),
(8, 'Turtle Island', 'Eldon Tellowmorn', 3, 'This book is a collection of folktales and the history of the natives of North America. One of the folktales is about a pregnant sky woman who fell through a hole in the sky and ended up on the giant turtle’s back. She gave birth on the turtle’s back and that is how human started living on earth. The story starts in the middle of the ice age when the natives walked on path to North America. They settled there and made most of their things with animal hides. Thousands of years later the Ice age ended many creatures went extinct and the human race had to find newer ways to survive. Now most of there lives depended on buffalos, a species that didn’t disappear. Years later Columbus arrived. He called them amazing people but he captured a lot of them. At one point, captains would by natives just to show them off. There was one such captain but he was much nicer than the rest. He decided to set the native free, but by the time he changed his mind, the native was gone. The British wanted to make natives become Christians. They thought that they were doing them a favor, but little did they know that the natives had their own traditions a religions.', 'https://www.amazon.com/Turtle-Island-Story-Americas-People/dp/1554519446', 'https://images-na.ssl-images-amazon.com/images/I/51gkJ5Rg6SL._SX416_BO1,204,203,200_.jpg'),
(9, 'Aru Shah and the Song of Death', 'Roshani Chokshi', 5, 'Aru and her new soul-sister Brynne are falsely accused of theft of a precious item and putting people under a dangerous mind-control. The devas capture Boo and send the girls on a mission to prove their innocence. They travel all over the Otherworld to find it with Mini and a semi-divine called Aiden. They were told of a prophecy about how to defeat the culprit. Mini is put into a dangerous sleep and they find one of the people who stole the item, a blind naga king called Takshaka. They wake up Mini and find the leader of the gang, Lady M a.k.a Shoorpanakha. They defeat Lady M and break the mind control. In the end they find out that Aiden is a reincarnation of Draupadi the wife of the five Pandavas.', 'https://www.amazon.com/Aru-Shah-Song-Death-Pandava-ebook/dp/B07GTL3RYN', 'https://m.media-amazon.com/images/I/51aRCCEGG5L.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
