LOAD DATA LOCAL INFILE './output/item_element.csv' INTO TABLE Items 
     FIELDS TERMINATED BY '|' OPTIONALLY ENCLOSED BY '"';

LOAD DATA LOCAL INFILE './output/item_category.csv' INTO TABLE Categorys 
	 FIELDS TERMINATED BY '|' ENCLOSED BY '"';

LOAD DATA LOCAL INFILE './output/user.csv' INTO TABLE User 
	 FIELDS TERMINATED BY '|' OPTIONALLY ENCLOSED BY '"';

LOAD DATA LOCAL INFILE './output/item_bidder.csv' INTO TABLE Bider 
	 FIELDS TERMINATED BY '|' OPTIONALLY ENCLOSED BY '"';