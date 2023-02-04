-- Main Table For all user to authenticate
create table User_Account(
	UID varchar(50),
	name varchar(50),
	email varchar(50),
	password varchar(50),
    -- fix in error here auto date time add doesn't work!
	date_created timestamp default current_timestamp,
	date_modified timestamp default current_timestamp on update current_timestamp,
		primary key(UID)
);
-- User Hobby category
create table Hobbies(
	hobby_name varchar(30),
    primary key(hobby_name)
);
-- Main Table for all user to access other tables
create table User_Profile(
	UID varchar(50),
    user_name varchar(50),
    bio varchar(255),
    birthday date,
    profile_image varchar(255),
    profile_cover_image varchar(255),
    user_hobbies varchar(50),
    
    date_created timestamp default current_timestamp,
    date_modified timestamp on update current_timestamp,
		PRIMARY KEY (UID),
		FOREIGN KEY (UID) REFERENCES User_Account(UID),
        FOREIGN KEY (user_hobbies) REFERENCES Hobbies(hobby_name)
);

-- Making connection with each other(users) like see your friend post like facebook
create table User_Friends(
	user_profile_id varchar(50),
    friend_profile_id varchar(50),
    foreign key(user_profile_id) references User_Profile(UID),
    foreign key(friend_profile_id) references User_Profile(UID)
);


-- UserProfile need to create first
create table Post(
	post_id varchar(255),
    caption varchar(255),
    post_image varchar(255),
	author varchar(50),
    
    date_created timestamp default current_timestamp,
   
		primary key (post_id),
		foreign key (author) references User_Profile(UID)
);

-- Reaction type for Reaction Table (like, love, care, haha, upvote, downvote...) <- reaction types
create table Reaction_Type(
	reaction_name varchar(20),
		primary key(reaction_name)
);
-- Reaction table for Post table (user can give their reaction like in facebook when you give reaction at other user's post)
create table Reaction(
	user_post_id varchar(255),
    user_profile_id varchar(50),
    user_reaction varchar(20),
		foreign key(user_post_id) references Post(post_id),
        foreign key(user_profile_id) references User_Profile(UID),
        foreign key(user_reaction) references Reaction_Type(reaction_name)
);

-- To save your post
create table User_Save_Collection(
	save_item varchar(255),
    author varchar(50), 
    
		foreign key(save_item) references Post(post_id),
		foreign key(author) references User_Profile(UID)
);

-- This table for user to create his/her page (like in facebook)
create table User_Page(
	page_name varchar(50),
    page_profile_image varchar(155),
    page_cover_image varchar(155),
	page_admin varchar(50),
    -- page_post int, (add a table for it if you want to connect with your page)
    date_created timestamp default current_timestamp,
    date_modified timestamp on update current_timestamp,
    
		primary key (page_name),
        foreign key (page_admin) references User_Profile(UID)
);
-- Users can intereact each other more easily when users want to intereact multiple users at the same time or same place
create table User_Group(
	group_name varchar(255),
    group_admin varchar(50),
    group_cover_image varchar(155),
    -- group_members int,
    -- group_posts int,
    date_created timestamp default current_timestamp,
		primary key(group_name),
		foreign key(group_admin) references User_Profile(UID)
);
-- Group Post collection table (so only group memebers can see it) 
create table Group_Post(
	group_name varchar(255),
    user_post_id varchar(255),
		foreign key(group_name) references User_Group(group_name),
        foreign key(user_post_id) references Post(post_id)
);
-- For Group Members
create table Group_Members(
	group_name varchar(255),
    user_profile_id varchar(50),
		foreign key(group_name) references User_Group(group_name),
        foreign key(user_profile_id) references User_Profile(UID)
);


-- My Table Creation Order!
-- 1 User_Account
-- 2 Hobbies
-- 3 User_Profile
-- 4 User_Friends
-- 5 Post
-- 6 Reaction
-- 7 Reaction_Type (here i reached)
-- 8 User_Save_Collection
-- 9 User_Page (optional followers table)
-- 10 User_Group
-- 11 Group_Post
-- 12 Group_Members

show databases;
use social_mediadb;
create database social_mediaDB;
show tables;
drop table user_page;
drop database social_mediadb;

select * from user_account;