use ola; 
-- list of the top 5 customers who booked the highers number of rides; 
select Customer_ID , count(Booking_ID) as higher_rides from bookings group by Customer_ID order by higher_rides desc limit 5;

-- get the number of rides cancled by drivers dut to personal and car-relaed issues
select  count(Canceled_Rides_by_Driver) from bookings where Canceled_Rides_by_Driver="Personal & Car related issue";

-- find the maximum and minimuc driver ratings for the prime sadan bookings;
select max(Driver_Ratings) as maxrating , min(Driver_Ratings) as minratign from bookings where Vehicle_Type="Prime Sedan";

-- retrive all rides where pyament was made using upi;
 select * from bookings where  Payment_Method="UPI";
 
 -- find average customer rating per vehicle type;
 select Vehicle_Type, avg(Customer_Rating) as aver_cutomer_rating from bookings group by Vehicle_Type;
 
 -- calculate the total booking value of rides completed successfully;
 select sum(Booking_Value) as total_booking_value from bookings where Booking_Status="Success";
 
 -- list all incomplete rides along with the reason;
 select Booking_ID, Incomplete_Rides_Reason from bookings where Incomplete_Rides="Yes";