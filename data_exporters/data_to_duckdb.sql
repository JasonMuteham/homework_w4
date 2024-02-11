CREATE SCHEMA IF NOT EXISTS raw;

CREATE OR REPLACE TABLE raw.{{ table }}_{{ year }} AS
SELECT * 
FROM read_csv_auto(['{{ file }}{{ year }}-01.csv.gz',
                    '{{ file }}{{ year }}-02.csv.gz',
                    '{{ file }}{{ year }}-03.csv.gz',
                    '{{ file }}{{ year }}-04.csv.gz',
                    '{{ file }}{{ year }}-05.csv.gz',
                    '{{ file }}{{ year }}-06.csv.gz',
                    '{{ file }}{{ year }}-07.csv.gz',
                    '{{ file }}{{ year }}-08.csv.gz',
                    '{{ file }}{{ year }}-09.csv.gz',
                    '{{ file }}{{ year }}-10.csv.gz',
                    '{{ file }}{{ year }}-11.csv.gz',
                    '{{ file }}{{ year }}-12.csv.gz'
]);
