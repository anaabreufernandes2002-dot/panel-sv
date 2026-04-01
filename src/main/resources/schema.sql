DROP TABLE IF EXISTS job_attachment CASCADE;
DROP TABLE IF EXISTS job CASCADE;
DROP TABLE IF EXISTS users CASCADE;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    username TEXT NOT NULL UNIQUE,
    password TEXT NOT NULL,
    role TEXT NOT NULL
);

CREATE TABLE job (
    id SERIAL PRIMARY KEY,
    completed BOOLEAN NOT NULL DEFAULT FALSE,
    contractor TEXT NOT NULL,
    customer TEXT NOT NULL,
    install_date DATE,
    material TEXT NOT NULL,
    notes TEXT,
    stage TEXT NOT NULL CHECK (stage IN (
        'TO_BE_LOCATED',
        'LOCATED',
        'PROGRAMMED',
        'CUT',
        'POLISHED'
    )),
    seller TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    attachment_path TEXT
);

CREATE TABLE job_attachment (
    id SERIAL PRIMARY KEY,
    job_id BIGINT NOT NULL REFERENCES job(id) ON DELETE CASCADE,
    file_name TEXT NOT NULL,
    file_path TEXT NOT NULL,
    content_type TEXT,
    file_size BIGINT
);
