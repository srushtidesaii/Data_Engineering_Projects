--How Many Car Accidents Are There in NYC Every Year?
Select Count(number_of_Vehicles_involved) AS NUMBER_CAR_ACCIDENT, year(collision_dt) as [Year] from FCT_COLLISION_CRASH
group by (number_of_Vehicles_involved), (collision_dt)
Order by Count(number_of_Vehicles_involved) desc

--Which Boroughs in New York City Have the Most Accidents?

select TOP 1 borough, COUNT(collision_sk) AS [Most Accidents] from FCT_COLLISION_CRASH
where borough != 'No Value Provided'
group by borough
Order by COUNT(collision_sk) DESC

--How Many NYC Car Accidents Result in an Injury?

select TOP 10 number_of_persons_injured, collision_id, collision_dt from FCT_COLLISION_CRASH
Group by collision_id, number_of_persons_injured, collision_dt
Order by number_of_persons_injured  DESC

--Which NYC Borough Has the Most Fatal Car Accidents?

select TOP 10 number_of_persons_killed, collision_id, collision_dt from FCT_COLLISION_CRASH
Group by collision_id, number_of_persons_killed, collision_dt
Order by number_of_persons_killed  DESC

--When Do Most New York City Car Accidents Happen?
Select TOP 1 [collision_time]  as [Time] , Count(collision_id) as Collisions from FCT_COLLISION_CRASH
Group by [collision_time]
Order by Count(collision_id) desc

--How Common Are Bicycle Accidents in NYC?

Select Count([collision_id]) aS  [Number of collisions] , number_of_cyclist_injured AS [Number of Bicycle Accident] from FCT_COLLISION_CRASH
Group by number_of_cyclist_injured
Order by number_of_cyclist_injured  desc

--How Often Are Pedestrians Involving New York Traffic Accidents?


Select Count([collision_id]) aS  [Number of collisions] , number_of_pedestrians_injured AS [Number of Pedestrian Accident] from FCT_COLLISION_CRASH
Group by number_of_pedestrians_injured
Order by number_of_pedestrians_injured  desc

--How Many Motorcyclists are Injured or Killed in NYC Accidents?

Select Borough, Count([collision_id]) aS  [Number of collisions] , (number_of_cyclist_injured) AS [Number of cyclist Injured], number_of_cyclist_killed AS [Number of cyclist Killed] from FCT_COLLISION_CRASH
where borough != 'No Value Provided'
Group by number_of_cyclist_injured, number_of_cyclist_killed,borough
Order by number_of_cyclist_injured  desc

--Are Trucks Involved in Many New York Accidents?

select COUNT(COLLISION_ID) AS [Number of collisions with Trucks Involved] from FCT_COLLISION_CRASHES_VEHICLES CCV
JOIN dim_vehicle_type_code VTC ON CCV.VEHICLE_TYPE_CODE_SK = VTC.VEHICLE_TYPE_CODE_SK
where VTC.VEHICLE_TYPE_CODE like 'TRUCK'
