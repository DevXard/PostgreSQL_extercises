-- write your queries here
-- Join bouth tables so that every colomn and record appears
SELECT * FROM owners FULL JOIN vehicles ON owners.id = vehicles.owner_id;
-- Display owners first and last name and count of vehicles order by first name
SELECT o.first_name, o.last_name, COUNT(*) AS total FROM vehicles v JOIN owners o ON v.owner_id = o.id GROUP BY o.id ORDER BY o.first_name;
-- Count the number of cars for each owner and display the average price of the cars display the first and last name of the owner average price and count of vehicles
-- order by first name and only display  results with more the 1 vehicle and an average price greater then 10 000
SELECT o.first_name, o.last_name, AVG(price) AS average_price, COUNT(*) AS count FROM vehicles v JOIN owners o ON v.owner_id = o.id  GROUP BY o.id HAVING COUNT(*) > 1 AND AVG(price) > 10000 ORDER BY o.first_name desc;