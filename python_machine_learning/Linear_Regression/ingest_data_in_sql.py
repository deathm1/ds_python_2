import pyodbc
from pyspark.sql import *
from pyspark.sql.functions import *
from pyspark.sql.types import *

spark = SparkSession.builder.getOrCreate()
connection_string = (
    r'Driver={ODBC Driver 18 for SQL Server};'
    r'Server=localhost;'
    r'Database=DATA_WAREHOUSE;'
    r'Trusted_Connection=yes;'
    r'TrustServerCertificate=yes;'
)

my_odbc_connection = pyodbc.connect(connection_string)

my_odbc_cursor = my_odbc_connection.cursor()

# my_odbc_cursor.execute("SELECT * FROM [DATA_WAREHOUSE].[STANDALONE_DATASETS].[MARKETING_WAR];")


my_marketing_df = spark.read.option('header', True).csv("./marketing_war_data.csv")

my_marketing_df.show()


