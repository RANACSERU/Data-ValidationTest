CREATE TABLE `user_info` (
  `user_name` varchar(100) NOT NULL,
  `user_roll` int(100) NOT NULL,
  `user_father_name` varchar(100) NOT NULL,
  `user_birthday` varchar(100) DEFAULT NULL,
  `user_address` varchar(100) DEFAULT NULL,
  `user_email` varchar(100) DEFAULT NULL,
  `user_phone` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




CREATE TABLE `user_qualification` (
  `user_roll` int(100) NOT NULL,
  `user_HSC` varchar(100) NOT NULL,
  `user_SSC` varchar(100) DEFAULT NULL,
  `user_BSc` int(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_name`,`user_roll`);


  ALTER TABLE `user_qualification`
  ADD PRIMARY KEY (`user_name`),
  ADD UNIQUE KEY `email` (`email`);
  
user_info[
	user_name, user_roll, user_father_name, user_birthday,
	user_address, user_email, user_phone
]
user_qualification[
	user_roll, user_HSC, user_SSC, user_BSc
]