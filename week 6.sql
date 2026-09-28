CREATE DATABASE IF NOT EXISTS PET_SUPPLIES;

USE PET_SUPPLIES;

DROP TABLE IF EXISTS Rating;
DROP TABLE IF EXISTS Review;

CREATE TABLE Review
(
    ReviewID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ProductID INT,
    ReviewText VARCHAR(255),
    ReviewDate DATE
);

CREATE TABLE Rating
(
    RatingID INT PRIMARY KEY,
    ReviewID INT,
    Rating INT,
    FOREIGN KEY (ReviewID) REFERENCES Review(ReviewID)
);

INSERT INTO Review VALUES
(1, 'Arun', 101, 'Good product', '2026-09-01'),
(2, 'Priya', 102, 'Bad quality', '2026-09-02'),
(3, 'Karthik', 103, 'Very useful', '2026-09-03'),
(4, 'Divya', 104, 'Good quality', '2026-09-04'),
(5, 'Rahul', 105, 'Worth the price', '2026-09-05');

INSERT INTO Rating VALUES
(1, 1, 5),
(2, 2, 2),
(3, 3, 4),
(4, 4, 5),
(5, 5, 4);

SELECT * FROM Review;

SELECT * FROM Rating;

SELECT * FROM Review
WHERE ProductID = 101;

SELECT * FROM Rating
WHERE Rating > 3;

UPDATE Review
SET ReviewText = 'Excellent product'
WHERE ReviewID = 1;

UPDATE Rating
SET Rating = 5
WHERE RatingID = 3;

SELECT * FROM Review
ORDER BY ReviewDate;

SELECT * FROM Rating
ORDER BY Rating DESC;

SELECT COUNT(*) AS TotalReviews
FROM Review;

SELECT AVG(Rating) AS AverageRating
FROM Rating;

SELECT R.ReviewID,
       R.CustomerName,
       R.ProductID,
       R.ReviewText,
       R.ReviewDate,
       RT.Rating
FROM Review R
JOIN Rating RT
ON R.ReviewID = RT.ReviewID;