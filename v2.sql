--Questão 1:

    SELECT COUNT("endDate") FROM experiences;

--Questão 2:

    SELECT educations."userId" as id,
    COUNT("userId") as educations
    FROM educations 
    GROUP BY "userId";

--Questão 3:

    SELECT users.name as writer, COUNT("writerId") as "testimonialCount" 
    FROM testimonials
    JOIN users ON users.id = "writerId"
    WHERE users.id = 435
    GROUP BY users.name;

--Questão 4:

    SELECT MAX(jobs.salary) as maximumSalary , roles.name as role 
    FROM jobs 
    JOIN roles ON roles.id = jobs."roleId"
    WHERE active = true
    GROUP BY roles.id
    ORDER BY maximumSalary;

--Questão Bônus:

    SELECT schools.name AS school,courses.name AS course, COUNT("userId") AS "studentsCount", educations.status AS role
    FROM educations 
    JOIN schools 
    ON educations."schoolId" = schools.id
    JOIN courses 
    ON educations."courseId" = courses.id
    WHERE educations.status = 'ongoing' OR educations.status = 'finished'
    GROUP BY schools.name, courses.name, educations.status
    ORDER BY COUNT("userId") DESC
    LIMIT 3;