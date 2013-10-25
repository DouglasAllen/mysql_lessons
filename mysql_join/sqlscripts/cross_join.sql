/* The following two Cross Join statements are equivalent */

/* Cross Join Option #1 */
SELECT 'Cross Join', e.ename, e.salary, d.dname
FROM employees AS e, departments AS d;

/* Cross Join Option #2 */
SELECT 'Cross Join', e.ename, e.salary, d.dname
FROM employees AS e CROSS JOIN departments AS d;


