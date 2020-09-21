create table covid_deaths (
    country text,
    placename text,
    frequency text,
    start_date date,
    end_date date,
    year text,
    month int,
    week int,
    deaths int,
    expected_deaths int,
    excess_deaths int,
    baseline text
);

 \copy covid_deaths from '/var/lib/postgresql/data/deaths.csv' delimiter ',' csv header;
