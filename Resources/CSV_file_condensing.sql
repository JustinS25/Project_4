DROP Table music_streams;

CREATE Table music_streams(
	track_name VARCHAR,
	artist_name VARCHAR,
	artist_count INT,
	released_year INT,
	released_month INT,
	released_day INT,
	in_spotify_playlists VARCHAR,
	in_spotify_charts VARCHAR,
	streams BIGINT,
	in_apple_playlists VARCHAR,
	in_apple_charts VARCHAR,
	in_deezer_playlists VARCHAR,
	in_deezer_charts VARCHAR,
	in_shazam_charts VARCHAR,
	bpm INT,
	key VARCHAR,
	mode VARCHAR,
	danceability_pct INT,
	valence_pct INT,
	energy_pct INT,
	acousticness_pct INT,
	instrumentalness_pct INT,
	liveness_pct INT,
	speechiness_pct INT
);

select * from music_streams;

-- drop columns we don't need
-- (in_apple_playlists, in_spotify_playlists, in_deezer_playlists,in_deezer_charts,in_shazam_charts, key)
alter table music_streams
drop in_apple_playlists;
alter table music_streams
drop in_spotify_playlists;
alter table music_streams
drop in_deezer_playlists;
alter table music_streams
drop in_deezer_charts;
alter table music_streams
drop in_shazam_charts;
alter table music_streams
drop key;

select * from music_streams;