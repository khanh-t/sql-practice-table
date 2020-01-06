WITH RECURSIVE recurse AS
(
SELECT MainCourse.courseNo, MainCourse.prerequisite
FROM CoursePrerequisites as MainCourse
WHERE MainCourse.courseNo = 3911

/* This puts 3911 at the top of the hierarchy (anchor query) */

UNION ALL

SELECT PrereqCourse.courseNo, PrereqCourse.prerequisite
FROM CoursePrerequisites AS PrereqCourse, recurse
WHERE recurse.prerequisite = PrereqCourse.courseNo

/* This is the recursive part that will populate the set with all children of 3911 */

)

SELECT DISTINCT prerequisite
FROM recurse
ORDER BY prerequisite DESC;