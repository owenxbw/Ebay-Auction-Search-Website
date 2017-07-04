

Relations (R):
1. ItemID(key) ->-> Name,Category,Currently,Buy_Price,First_Bid,Number_of_Bids,Bids,Location,Country,Started,Ends,Seller,Descrption,
2. ItemID,Bids,Time -> UserID,Rating
3. Location -> latitude,longtitude




Table1.	ItemID -> Name,Currently,Buy_Price,First_Bid,Number_of_Bids,Started,Ends,Description
Table2. ItemID -> Category
Table3. ItemID,Time -> UserID,Amount
Table4. UserId -> rating(b),rating(s),Location,Country


Yes, they are in Boyce-Codd Normal Form (BCNF) and Fourth Normal Form (4NF). I think this relation minimizes the duplicates, and it should be efficient to achieve our searching goals. 


**For the 3rd query "Find the number of auctions belonging to exactly four categories.", I checked the whole ebay data but only found 836 items with exact four categories. It took me a lot of time to debug but I really don't know what's wrong. 