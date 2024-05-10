
--------------------------------------------------------------------------------
SELECT description
FROM crime_scene_reports
WHERE year = 2023 AND day = 28 AND month = 7 AND street = 'Humphrey Street';
/* CS50 duck was stolen
   Location: Humphrey Street bakery
   Time: 10:15 AM
   Witness: 3
   Littering took place at 16:36*/


SELECT name, transcript
FROM interviews
WHERE year = 2023 AND day = 28 AND month = 7 AND transcript LIKE '%thief%';
/* Ruth: within ten minutes, says to look for cars that left the parking lot in that time frame
   Eugene: someone he recognized, thief was withdrawing money from the ATM on Leggett Street
   Raymond: was on call with someone for less than a minute, planning to take the earliest flight out of Fiftyville tomorrow,
             asked someone on the phone to purchase the flight ticket.*/



SELECT name AS left_bakery
FROM people
JOIN bakery_security_logs ON bakery_security_logs.license_plate = people.license_plate
WHERE year = 2023 AND day = 28 AND month = 7 AND hour = 10 AND minute >= 15 AND minute <= 25 AND activity = 'exit';
/* Vanessa, Bruce, Barry, Luca, Sofia, Iman, Diana, Kelsey*/




SELECT name AS withdraw_money
FROM people
JOIN bank_accounts ON bank_accounts.person_id = people.id
JOIN atm_transactions ON atm_transactions.account_number = bank_accounts.account_number
WHERE year = 2023 AND day = 28 AND month = 7 AND atm_location = 'Leggett Street' AND transaction_type = 'withdraw';
/* Bruce, Diana, Brooke, Kenny, Iman, Luca, Taylor, Benista
   Common Name: Bruce, Luca, Iman, Diana*/



SELECT name AS left_fiftyville
FROM people
JOIN passengers ON passengers.passport_number = people.passport_number
WHERE passengers.flight_id = (
  SELECT id
  FROM flights
  WHERE year = 2023 AND month = 7 AND day = 29 AND flights.origin_airport_id = (
    SELECT id
    FROM airports
    WHERE city = 'Fiftyville')
  ORDER BY hour, minute
  LIMIT 1);
/* Doris, Sophia, Bruce, Edward, Kelsey, Taylor, Kenny, Luca
Common Name: Bruce, Luca*/


SELECT DISTINCT(name) AS suspect
FROM people
JOIN phone_calls ON phone_calls.caller = people.phone_number
WHERE year = 2023 AND month = 7 AND day = 28 AND duration < 60;
/* Sofia, Kelsey, Bruce, Taylor, Diana, Carina, Kenny, benista
   Common Name: Bruce*/

   

SELECT city AS went_to
FROM airports
WHERE id = (SELECT destination_airport_id FROM flights
WHERE year = 2023 AND day = 29 AND month = 7 AND origin_airport_id = (
  SELECT id FROM airports
  WHERE city = 'Fiftyville'
)
ORDER BY hour, minute
LIMIT 1);
/* New York City*/



SELECT receiver_name AS accomplice
FROM phone_calls
WHERE caller_name = 'Bruce' AND year = 2023 AND day = 28 AND month = 7 AND duration < 60;
/* Robin */
