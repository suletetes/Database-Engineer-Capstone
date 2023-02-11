CREATE VIEW ordersView AS
    select 
        orderID, quantity, TotalCost
    from
        littlelemondb.orders
    where
        quantity > 2
