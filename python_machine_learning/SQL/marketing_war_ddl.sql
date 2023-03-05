CREATE TABLE [STANDALONE_DATASETS].[MARKETING_WAR](
PK_entry_id BIGINT IDENTITY(1,1) NOT NULL,
visitors INT NOT NULL,
revenue BIGINT NOT NULL,
marketing_spend MONEY NOT NULL,
promotion VARCHAR(100) NOT NULL,
present_date DATETIMEOFFSET NOT NULL,
present_day_name VARCHAR(50) NOT NULL,
present_week_number INT NOT NULL,
present_week_id INT NOT NULL,
present_month_number INT NOT NULL,
present_month_id INT NOT NULL,
present_year INT NOT NULL,
created_by VARCHAR(500) NOT NULL,
created_date DATETIMEOFFSET NOT NULL,
updated_by VARCHAR(500) NOT NULL,
updated_date DATETIMEOFFSET NOT NULL,
db_timestamp TIMESTAMP
);