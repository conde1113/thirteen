SELECT concat(course_name, ' - ', semester)
from courses;

SELECT course_id, course_name, lab_time
FROM courses
WHERE lab_time LIKE 'Fri%';

SELECT *
FROM assignments
WHERE due_date > CURRENT_DATE
ORDER BY due_date;

SELECT status, COUNT(status)
FROM assignments
GROUP BY status;

SELECT course_name, length(course_name)
FROM courses
ORDER by length(course_name);

SELECT upper(course_name)
from courses;

SELECT title
FROM assignments
WHERE due_date LIKE '%09%';

INSERT INTO assignments (course_id, title, status) 
VALUES ('COMP1238', 'Assignment with no date', 'Not Started');
SELECT *
FROM assignments
WHERE due_date ISNULL;