

\copy google_stock FROM 'C:\Users\USER\Documents\Data Analyst Course\Google_project\csv files\Google_stock_data.csv' WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

COPY google_stock
FROM 'C:\Users\USER\Documents\Data Analyst Course\\csv files\covid_19_indonesia_time_series_all.csv'
WITH (FORMAT csv, HEADER true, DELIMITER ',', ENCODING 'UTF8');

select * from google_stock;