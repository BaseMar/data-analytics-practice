## SQL Practice

### StrataScratch
#### 🟢 Easy
**1. Find all posts which were reacted to with a heart** [Problem](https://platform.stratascratch.com/coding/10087-find-all-posts-which-were-reacted-to-with-a-heart)

*Find all posts which were reacted to with a heart. For such posts output all columns from facebook_posts table.*

Solution
```
SELECT DISTINCT fp.*
FROM facebook_posts fp
JOIN facebook_reactions fr ON fr.post_id = fp.post_id
AND fr.reaction = 'heart';
```

**2. Finding Updated Records** [Problem](https://platform.stratascratch.com/coding/10299-finding-updated-records)

*We have a table with employees and their salaries; however, some of the records are old and contain outdated salary information. Since there is no timestamp, assume salary is non-decreasing over time. You can consider the current salary for an employee is the largest salary value among their records. If multiple records share the same maximum salary, return any one of them. Output their id, first name, last name, department ID, and current salary. Order your list by employee ID in ascending order.*

Solution
```
SELECT id, first_name, last_name, department_id, salary
FROM (
    SELECT *,
    ROW_NUMBER() OVER (PARTITION BY id ORDER BY salary DESC, department_id DESC) AS rn FROM ms_employee_salary) S
WHERE rn =1
ORDER BY id ASC;
```


---

#### 🟡 Medium
**1. Most Active Users On Messenger** [Problem](https://platform.stratascratch.com/coding/10295-most-active-users-on-messenger)

*Meta/Facebook Messenger stores the number of messages between users in a table named 'fb_messages'. In this table 'user1' is the sender, 'user2' is the receiver, and 'msg_count' is the number of messages exchanged between them.
Find the top 10 most active users on Meta/Facebook Messenger by counting their total number of messages sent and received. Your solution should output usernames and the count of the total messages they sent or received*

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
**2. Second Highest Salary** [Problem](https://platform.stratascratch.com/coding/9892-second-highest-salary)

*Find the second highest salary of employees.*

Solution
```
SELECT salary
FROM (
    SELECT salary,
           DENSE_RANK() OVER (ORDER BY salary DESC) AS salary_rank
    FROM employee
) ranked_salaries
WHERE salary_rank = 2;
```
---
#### 🔴 Hard
