-- Question: Invalid Tweets
-- Task: Get IDs of tweets with content length strictly greater than 15.
-- Table: Tweets(tweet_id, content)

select tweet_id 
from Tweets
where char_length(content)>15; --or length(content)>15;