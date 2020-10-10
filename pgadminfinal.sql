DROP TABLE esport; 
DROP TABLE game; 
DROP TABLE merged_esport; 

CREATE TABLE esport(
  id INTEGER PRIMARY KEY, 
	Game TEXT,  
	ReleaseDate int, 
	Genre TEXT, 
	TotalEarnings float, 
	OnlineEarnings	float, 
	TotalPlayers int, 
	TotalTournaments int
); 


CREATE TABLE game(
	id INTEGER PRIMARY KEY, 
	Name TEXT, 
	Global_Sales float
); 

SELECT * FROM esport; 

CREATE TABLE merged_esport as 
(SELECT esport.id,
	   esport.game,
	   esport.releasedate,
	   esport.genre, 
	   esport.totalearnings,
	   esport.onlineearnings,
	   esport.totalplayers,
	   esport.totaltournaments,
	   game.global_sales 
FROM esport
INNER JOIN game ON (esport.game = game.name)
ORDER BY esport.game); 

SELECT * FROM merged_esport; 

