-- 1. Общая стоимость книг для каждого автора, отсортирован результат в порядке убывания
SELECT 
    Authors.AuthorName,
    SUM(Books.Price) AS TotalСost
FROM Authors 
JOIN Books ON Authors.Id = Books.Authorld  
GROUP BY Authors.AuthorName  
ORDER BY TotalСost DESC; 

-- 2. Стоимость книг автора превышает 1500
SELECT 
    Authors.AuthorName, 
    SUM(Books.Price) AS TotalСost
FROM Authors 
JOIN Books ON Authors.Id = Books.Authorld  
GROUP BY Authors.AuthorName, Authors.Id 
HAVING SUM(Books.Price) > 1500
ORDER BY Authors.Id;

-- 3. Вывести авторов с количеством книг
SELECT 
    Authors.AuthorName, 
    COUNT(Books.Id) AS NumberBooks 
FROM Authors 
JOIN Books ON Authors.Id = Books.Authorld  
GROUP BY Authors.AuthorName, Authors.Id  
ORDER BY Authors.Id;

-- 4. Получить автора без книг
SELECT 
    Authors.AuthorName
FROM Authors
LEFT JOIN Books ON Authors.Id = Books.Authorld
WHERE Books.Id IS NULL;  