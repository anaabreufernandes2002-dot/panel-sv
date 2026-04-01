DROP TABLE IF EXISTS users CASCADE;
DROP TABLE IF EXISTS job CASCADE;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    role TEXT NOT NULL
);

CREATE TABLE job (
    id SERIAL PRIMARY KEY,
    contractor TEXT NOT NULL,
    customer TEXT NOT NULL,
    material TEXT NOT NULL,
    stage TEXT NOT NULL CHECK (stage IN (
        'TO_BE_LOCATED',
        'LOCATED',
        'PROGRAMMED',
        'CUT',
        'POLISHED'
    )),
    install_date DATE,
    notes TEXT,
    completed BOOLEAN NOT NULL DEFAULT FALSE
);
