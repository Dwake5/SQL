-- Following an active tutorial on database's



-- Operatives used for queerying
-- <, >, <=, >=, <>, AND, OR

-- Make a table that autp increments with name and major each with max length of 20,
-- The default value of major is undefined and the primary key is student id.
CREATE TABLE student
(
    student_id INT
    AUTO_INCREMENT,
    name VARCHAR
    (20),
    major VARCHAR
    (20) DEFAULT 'undecided',
    PRIMARY KEY
    (student_id)
    );

    -- Insert Values
    INSERT INTO student
        (name, major)
    VALUES('Danny', 'Math');
    INSERT INTO student
        (name, major)
    VALUES('Kate', 'English');
    INSERT INTO student
        (name, major)
    VALUES('Charlie', 'History');
    INSERT INTO student
        (name, major)
    VALUES('Roy', 'Physics');
    INSERT INTO student
        (name, major)
    VALUES('Jack', 'Biology');
    INSERT INTO student
        (name, major)
    VALUES('Mike', 'Biology');
    INSERT INTO student
        (name, major)
    VALUES('Mike', 'CS');

    -- Assign all majors to none
    UPDATE student
    SET major = 'none';

    -- Delete something specific
    DELETE FROM student
    WHERE student_id = 5;

    -- See all students, i.e. check database
    SELECT *
    FROM student;

    -- Show only name and major, order it by name and only show 3.
    SELECT name, major
    FROM student
    ORDER BY name
    LIMIT 3;

    -- Only show students whose names are in list.
    SELECT *
    FROM student
    WHERE name IN
    ('Mike', 'Kate', 'Charlie');

    -- Show the schema
    DESCRIBE student;

    -- Delete entire table
    DROP TABLE student;

    -- Add something to the table
    ALTER TABLE student ADD gpa DECIMAL(3, 2);

    -- Delete something from table
    ALTER TABLE student DROP COLUMN gpa;
