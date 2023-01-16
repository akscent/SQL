--- ������� 1 ---
------------- ������ � ----------------
SELECT Clients.name AS '��� �������', Clients.surname AS '������� �������', Clients.book, Workers.surname AS '������� ���������', PhoneNumbers.phone 
FROM Clients 
 INNER JOIN Workers ON Clients.worker_id = Workers.id
 INNER JOIN PhoneNumbers ON Workers.id = PhoneNumbers.worker_id
WHERE Clients.id between 1 AND 6
      AND Workers.id between 1 AND 6
ORDER BY 
        1 ASC
		;
------------- ������ � ----------------
SELECT Clients.name AS '��� �������', Cnigi.release AS '���� ���������� �����', Cnigi.price AS '���� �����' 
FROM Clients 
 INNER JOIN Cnigi ON Clients.book_id = Cnigi.id
WHERE Clients.name LIKE 'A%' OR Clients.name LIKE 'T%'
      AND Cnigi.release between '2000-01-01' and '2014-01-01' 
	  AND Clients.surname !='%va' 
ORDER BY 
        3 ASC
		;
------------- ������ � ----------------
SELECT Clients.name AS '��� �������', Clients.book AS '������������ �����', Cnigi.price AS '���� �����' 
FROM Clients 
 INNER JOIN Cnigi ON Clients.book_id = Cnigi.id
WHERE Clients.name LIKE 'A%' 
      AND Clients.name LIKE '%a'
	  OR Cnigi.price < 10000
ORDER BY 
        3 ASC
		;

--- ������� 2 ---
--- ������� ������� ���� �����, ��������� ��� ���� �������������� ����������
SELECT '������� ���� ����� = '+ CAST(AVG(price) AS CHAR(4)) + '�.'
FROM Cnigi; 
-- ��������������� ����
SELECT book AS '�����' , price AS '����' ,
       CONVERT(varchar, release, 104) AS '���� ���������� �����'
  FROM Cnigi
  ORDER BY release;
-- ��������� ���������� ��� ����� �������� ������ ����� � ��������� � ����������
SELECT DATEDIFF(yy, (SELECT MIN(release) 
 FROM Cnigi
 ), 
 (SELECT MAX(release) 
 FROM Cnigi
 )
 );
-- ��������� ���������� ����������, ��� id ������ 7
SELECT COUNT(name)
FROM Workers
WHERE id<7;
-- ��������� ���� ����������, ��� ��� ���������� �� A
SELECT SUM(id)
FROM Workers
WHERE name LIKE 'A%';