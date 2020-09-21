# reading_data_cron_job


One of the most common tasks that data engineers perform is fetching third party data and loading it into a database. Let’s pretend you work as a data engineer and your boss has instructed you to load some COVID-19 death data into your company’s database to be used by a web application. Your company is using Postgres for its database. Let’s walk through a simple way of building a data pipeline to fetch some third-party data and load it into Postgres.

In my case, I am using Docker.

Note that in the cron log file, first i came cross some errors:

- *Operation not permitted*

  - Mac OS user: grant cron full disk access
 
- *the input device is not a TTY*

  - Docker user: change -it to -i
