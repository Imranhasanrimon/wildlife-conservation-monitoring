--Problem 1
INSERT INTO
    rangers ("name", region)
VALUES ('Derek Fox', 'Coastal Plains');

--Problem 2
SELECT COUNT(DISTINCT species_id) AS unique_species_count
FROM sightings;

--Problem 3
SELECT * FROM sightings WHERE "location" ILIKE '%Pass%';

--Problem 4
SELECT "name", COUNT(*) AS total_sightings
FROM sightings
    JOIN rangers USING (ranger_id)
GROUP BY
    "name";

--Problem 5
SELECT common_name
FROM species
    LEFT JOIN sightings USING (species_id)
WHERE
    sighting_id IS NULL;

--Problem 6
SELECT
    common_name,
    sighting_time,
    "name"
FROM sightings
    JOIN species USING (species_id)
    JOIN rangers USING (ranger_id)
ORDER BY sighting_time DESC
LIMIT 2;

--Problem 7
UPDATE species
SET
    conservation_status = 'Historic'
WHERE
    discovery_date < '1800-01-01';

-- Problem 8
SELECT
    sighting_id,
    CASE
        WHEN EXTRACT(
            HOUR
            FROM sighting_time
        ) < 12 THEN 'Morning'
        WHEN EXTRACT(
            HOUR
            FROM sighting_time
        ) >= 12
        AND EXTRACT(
            HOUR
            FROM sighting_time
        ) < 17 THEN 'Afternoon'
        ELSE 'Evening'
    END AS time_of_day
FROM sightings;

--Problem 9
DELETE FROM rangers
WHERE
    ranger_id IN (
        SELECT ranger_id
        FROM rangers
            LEFT JOIN sightings USING (ranger_id)
        WHERE
            sighting_id IS NULL
    );