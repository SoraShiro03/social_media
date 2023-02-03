-- lwin oo maung maung
insert into User_Friends values('KPTMYK--001209', 'KPTMYK--001171');
insert into User_Friends values('KPTMYK--001209', 'KPTMYK--001162');
insert into User_Friends values('KPTMYK--001209', 'KPTMYK--001161');

-- aung phyo zaw
insert into User_Friends values('KPTMYK--001171', 'KPTMYK--001162');
insert into User_Friends values('KPTMYK--001171', 'KPTMYK--001161');
insert into User_Friends values('KPTMYK--001171', 'KPTMYK--001165');

-- tha zin moe
insert into User_Friends values('KPTMYK--001162', 'KPTMYK--001161');
insert into User_Friends values('KPTMYK--001162', 'KPTMYK--001165');
insert into User_Friends values('KPTMYK--001162', 'KPTMYK--001087');

-- hnin yu ya hlaing 
insert into User_Friends values('KPTMYK--001161', 'KPTMYK--001165');
insert into User_Friends values('KPTMYK--001161', 'KPTMYK--001087');
insert into User_Friends values('KPTMYK--001161', 'KPTMYK--001100');

-- yin myint myat thu 
insert into User_Friends values('KPTMYK--001165', 'KPTMYK--001087');
insert into User_Friends values('KPTMYK--001165', 'KPTMYK--001100');
insert into User_Friends values('KPTMYK--001165', 'KPTMYK--001112');

-- su su hlaing
insert into User_Friends values('KPTMYK--001087', 'KPTMYK--001100');
insert into User_Friends values('KPTMYK--001087', 'KPTMYK--001112');
insert into User_Friends values('KPTMYK--001087', 'KPTMYK--001068');

-- zin yoon phyu
insert into User_Friends values('KPTMYK--001100', 'KPTMYK--001112');
insert into User_Friends values('KPTMYK--001100', 'KPTMYK--001068');
insert into User_Friends values('KPTMYK--001100', 'KPTMYK--001067');

-- soe min htet
insert into User_Friends values('KPTMYK--001112', 'KPTMYK--001068');
insert into User_Friends values('KPTMYK--001112', 'KPTMYK--001067');
insert into User_Friends values('KPTMYK--001112', 'KPTMYK--001227');

-- mya anaga san
insert into User_Friends values('KPTMYK--001068', 'KPTMYK--001067');
insert into User_Friends values('KPTMYK--001068', 'KPTMYK--001227');
insert into User_Friends values('KPTMYK--001068', 'KPTMYK--001379');

-- hsu neyik wai
insert into User_Friends (user_profile_id, friend_profile_id)
	values
		('KPTMYK--001067', 'KPTMYK--001227'),
		('KPTMYK--001067', 'KPTMYK--001379'),
		('KPTMYK--001067', 'KPTMYK--001219'),
	-- Ye Min Oo
		('KPTMYK--001227', 'KPTMYK--001379'),
        ('KPTMYK--001227', 'KPTMYK--001219'),
        ('KPTMYK--001227', 'KPTMYK--001217'),
	-- Soe Than
		('KPTMYK--001379', 'KPTMYK--001219'),
        ('KPTMYK--001379', 'KPTMYK--001217'),
        ('KPTMYK--001379', 'KPTMYK--001232'),
	-- Zue Lin Let Lwin
		('KPTMYK--001219', 'KPTMYK--001217'),
        ('KPTMYK--001219', 'KPTMYK--001232'),
        ('KPTMYK--001219', 'KPTMYK--001169'),
	-- Pyae Hein
		('KPTMYK--001217', 'KPTMYK--001232'),
        ('KPTMYK--001217', 'KPTMYK--001169'),
		('KPTMYK--001217', 'KPTMYK--001103'),
	-- Hlyan Htet Aung
		('KPTMYK--001232', 'KPTMYK--001169'),
        ('KPTMYK--001232', 'KPTMYK--001103'),
        ('KPTMYK--001232', 'KPTMYK--001209'),
    -- Min Pyae Sone
		('KPTMYK--001169', 'KPTMYK--001103'),
        ('KPTMYK--001169', 'KPTMYK--001209'),
        ('KPTMYK--001169', 'KPTMYK--001171'),
	-- TheinKha Kyaw
		('KPTMYK--001103', 'KPTMYK--001209'),
        ('KPTMYK--001103', 'KPTMYK--001171'),
		('KPTMYK--001103', 'KPTMYK--001162');
        
select * from user_friends;