CREATE TABLE hogwarts_students (
    id INTEGER,
    student_name TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE hogwarts_houses (
    id INTEGER,
    house TEXT,
    head TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE relationship (
    id INTEGER,
    student_name TEXT,
    house TEXT,
    PRIMARY KEY(id)
);
