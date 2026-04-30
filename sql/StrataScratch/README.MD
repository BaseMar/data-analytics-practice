## SQL Practice

### StrataScratch

#### 🟡 Medium
**1. Most Active Users On Messenger - Meta**

*Meta/Facebook Messenger stores the number of messages between users in a table named 'fb_messages'. In this table 'user1' is the sender, 'user2' is the receiver, and 'msg_count' is the number of messages exchanged between them.
Find the top 10 most active users on Meta/Facebook Messenger by counting their total number of messages sent and received. Your solution should output usernames and the count of the total messages they sent or received*

Table
```
date: date
id: bigint
msg_count: bigint
user1: text
user2: text
```

Solution
```
WITH combined_messages AS (
    SELECT user1 AS user, msg_count FROM fb_messages
    UNION ALL
    SELECT user2 AS user, msg_count FROM fb_messages
)
SELECT user, SUM(msg_count) AS total_messages
FROM combined_messages
GROUP BY user
ORDER BY total_messages DESC
LIMIT 10;
```

---

#### 🔴 Hard
