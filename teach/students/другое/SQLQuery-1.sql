
SELECT Clients.name AS '��� �������', Clients.surname AS '������� �������', Clients.book, Workers.surname AS '������� ���������', PhoneNumbers.phone 
FROM Clients 
 INNER JOIN Workers ON Clients.worker_id = Workers.id
 INNER JOIN PhoneNumbers ON Workers.id = PhoneNumbers.worker_id
WHERE Clients.id between 1 AND 6
      AND Workers.id between 1 AND 6
ORDER BY 
        1 ASC
		;