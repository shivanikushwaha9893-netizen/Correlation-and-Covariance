/* =========================
Q1. Covariance vs Correlation
Covariance: Direction batata hai (positive/negative)
Correlation: Strength + direction (-1 to +1), scale free
========================= */

/*
Q2.
Positive: dono sath badhte
Negative: ek badhe dusra ghate
Zero: no relation
*/

/*
Q3.
Covariance scale dependent hai
Compare karna mushkil
Isliye correlation preferred
*/

/*
Q4.
Pearson: actual values, linear
Spearman: rank based
*/

/*
Q5.
r = 0.85 => strong positive correlation
Causation nahi hota
*/


/* =========================
Q6. Covariance (X,Y)
========================= */

WITH q6(x,y) AS (
SELECT 2,3 UNION ALL
SELECT 4,7 UNION ALL
SELECT 6,5 UNION ALL
SELECT 8,10
),
m6 AS (SELECT AVG(x) mx, AVG(y) my FROM q6)
SELECT 'Q6 Covariance' AS Question,
SUM((x-mx)*(y-my))/(COUNT(*)-1) AS Result
FROM q6,m6;


/* =========================
Q7. Pearson Correlation (A,B)
========================= */

WITH q7(a,b) AS (
SELECT 10,8 UNION ALL
SELECT 20,14 UNION ALL
SELECT 30,18 UNION ALL
SELECT 40,24 UNION ALL
SELECT 50,28
),
m7 AS (SELECT AVG(a) ma, AVG(b) mb FROM q7)
SELECT 'Q7 Correlation' AS Question,
SUM((a-ma)*(b-mb)) /
SQRT(SUM((a-ma)*(a-ma))*SUM((b-mb)*(b-mb))) AS Result
FROM q7,m7;


/* =========================
Q8. Height Weight Correlation
========================= */

WITH q8(h,w) AS (
SELECT 150,50 UNION ALL
SELECT 160,55 UNION ALL
SELECT 165,58 UNION ALL
SELECT 170,62 UNION ALL
SELECT 180,70
),
m8 AS (SELECT AVG(h) mh, AVG(w) mw FROM q8)
SELECT 'Q8 Correlation' AS Question,
SUM((h-mh)*(w-mw)) /
SQRT(SUM((h-mh)*(h-mh))*SUM((w-mw)*(w-mw))) AS Result
FROM q8,m8;


/* =========================
Q9. Sign of Correlation
========================= */

SELECT 'Q9 Answer' AS Question,
'Negative Correlation' AS Result;


/* =========================
Q10. Portfolio Covariance + Correlation
========================= */

WITH q10(a,b) AS (
SELECT 8,6 UNION ALL
SELECT 10,9 UNION ALL
SELECT 12,11 UNION ALL
SELECT 9,8 UNION ALL
SELECT 11,10
),
m10 AS (SELECT AVG(a) ma, AVG(b) mb FROM q10)
SELECT
'Q10' AS Question,
SUM((a-ma)*(b-mb))/(COUNT(*)-1) AS Covariance,
SUM((a-ma)*(b-mb)) /
SQRT(SUM((a-ma)*(a-ma))*SUM((b-mb)*(b-mb))) AS Correlation
FROM q10,m10;
