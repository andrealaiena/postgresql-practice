CREATE TABLE IF NOT EXISTS job_postings(
    job_link VARCHAR,
    last_processed_time TIMESTAMP,
    last_status VARCHAR,
    got_summary BOOL,
    got_ner BOOL,
    is_being_worked BOOL,
    job_title VARCHAR,
    company VARCHAR,
    job_location VARCHAR,
    first_seen DATE,
    search_city VARCHAR,
    search_country VARCHAR ,
    search_position VARCHAR,
    job_level VARCHAR,
    job_type VARCHAR
);
