SELECT OD.OrderID, 
       OD.ProductID, 
       OD.UnitPrice, 
       OD.Quantity, 
       OD.Discount, 
       OD.StatusId, 
       P.ProductName, 
       OS.Description
FROM OrderDetails AS OD
     INNER JOIN OrderStatus AS OS ON OD.StatusId = OS.StatusId
     INNER JOIN Products AS P ON OD.ProductID = P.ProductID 
WHERE OD.OrderID = 10248 AND OD.StatusId IN (2,3)