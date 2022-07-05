/*
-- Query: SELECT 
    YEAR(d.from_date) AS calender_year,
    e.gender,
    COUNT(e.emp_no) AS num_employees
FROM
    t_employees e
        JOIN
    t_dept_emp d ON d.emp_no = e.emp_no
GROUP BY calender_year , e.gender
HAVING calender_year >= 1990
-- Date: 2022-07-04 08:17
*/
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1998,'M',8929);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1990,'F',5470);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1992,'M',8480);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1993,'F',5623);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1999,'M',9199);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1997,'M',8930);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1998,'F',6030);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1995,'M',8623);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1991,'M',8295);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1994,'M',8468);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1990,'M',8134);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (2002,'F',414);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1994,'F',5719);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1992,'F',5596);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1991,'F',5255);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1995,'F',5734);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1999,'F',6076);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1996,'F',5815);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1993,'M',8483);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1996,'M',8818);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (2000,'F',1287);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (1997,'F',5795);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (2000,'M',1896);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (2001,'F',765);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (2001,'M',1153);
INSERT INTO `` (`calender_year`,`gender`,`num_employees`) VALUES (2002,'M',668);
