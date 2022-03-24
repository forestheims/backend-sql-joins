-- find all address_id of addresses in the city of Dundee
-- use INNER JOIN FROM address on to city
SELECT
    address_id
FROM
    address
INNER JOIN
    city
ON
    city.city_id = address.city_id
WHERE
    city.city = 'Dundee';
