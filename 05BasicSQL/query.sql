
#counting how many tracks are on the new order's brotherhood album
select count(*) as track from 
(select 
	b.artist_id,
	a.album_id,
	track_id, track_name
from album a
join artist b on a.artist_id = b.artist_id
join track t on a.artist_id = t.artist_id
where album_name = 'Brotherhood' and artist_name='New Order'
) tabela



########################
#listing the new order's album
select artist_name, album_name 
from album a
join artist b on a.artist_id=b.artist_id
where b.artist_name = 'New Order'

# question 3
# artist_id, arist_name
insert into artist values (8, "Leftfield");
#artist_id, album_id, album_name
insert into album values (8, 1, "Leftism");
#track_id, track_name, artist_id, album_id, time
insert into track values (1, "Release the Pressure", 8, 1, '7.39');
insert into track values (2, "Afro-Melt", 8, 1, '7.33');
insert into track values (3, "Melt", 8, 1, '5.21');
insert into track values (4, "Song of Life", 8, 1, '6.55');
insert into track values (5, "Original", 8, 1, '6.00');
insert into track values (6, "Black Flute", 8, 1, '3.46');
insert into track values (7, "Space Shanty", 8, 1, '7.15');
insert into track values (8, "Inspection Check One", 8, 1, '6.30');
insert into track values (9, "Storm 3000", 8, 1, '5.44');
insert into track values (10, "Open Up", 8, 1, '6.52');
insert into track values (11, "21st Century Poem", 8, 1, '5.42');
insert into track values (12, "Bonus Track", 8, 1, '1.22');


#######
#question 4

select 
	sum(time)
from track
where album_id='1' and artist_id = '1'

#question 5
update track
set time = "6.22" where track_name = "Original"

#question 6
delete from track where track_name = "Bonus Track"

