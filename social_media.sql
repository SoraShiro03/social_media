-- created!
create table UserAccount(
	UID varchar(50),
	name varchar(50),
	email varchar(50),
	password varchar(50),
	date_created date,
	date_modified date,
	primary key(UID)
);

create table UserProfile(
	UID varchar(50),
    user_name varchar(50),
    bio varchar(255),
    profile_image varchar(255),
    profile_cover_image varchar(255),
    user_hobbies varchar(50),
    -- user_friends varchar(50),
    -- user_save_collection int,
    date_created date,
    date_modified date,
		FOREIGN KEY (UID) REFERENCES User(UID),
        FOREIGN KEY (user_hobbies) REFERENCES Hobbies(hobby_name)
        -- FOREIGN KEY (user_friends) REFERENCES Friends(user_profile_id),
        -- FOREIGN KEY (user_save_collection) REFERENCES SaveCollection(save_item),
		-- FOREIGN KEY (UID) references SaveCollection(author)
);

create table Page(
	page_name varchar(50),
    page_profile_image varchar(155),
    page_cover_image varchar(155),
    -- followers int,
	page_admin varchar(50),
    page_post int,
    date_created date,
    date_modified date,
		primary key (page_name),
        foreign key (page_admin) references UserProfile(UID)
        -- foreign key (followers) references UserProfile(UID)
        
);
-- created!
create table Hobbies(
	hobby_name varchar(30),
    primary key(hobby_name)
);

-- UserProfile need to create first
create table Friends(
	user_profile_id varchar(50),
    friend_profile_id varchar(50),
    foreign key(user_profile_id) references UserProfile(UID),
    foreign key(friend_profile_id) references UserProfile(UID)
);
-- UserProfile need to create first
create table Post(
	post_id varchar(255),
    caption varchar(255),
    post_image varchar(255),
    -- like_count int,
    date_created date,
    author varchar(50),
    primary key (post_id),
    foreign key (author) references UserProfile(UID)
);
-- UserProfile need to create first
create table UserGroup(
	group_name varchar(50),
    group_admin varchar(50),
    group_cover_image varchar(155),
    group_members int,
    group_posts int,
    date_created date,
	primary key(group_name)
);
-- UserProfile need to create first
create table SaveCollection(
	save_item int,
    author varchar(50), 
    foreign key(save_item) references Post(post_id),
    foreign key(author) references UserProfile(UID)
);

show databases;
use social_media;
create database social_mediaDB;
show tables;