import mysql.connector as mysql
from os import getenv

db = mysql.connect(
            host = getenv('DB_HOST', 'localhost'),
            port = int(getenv('DB_PORT', 8889)),
            user = getenv('DB_USERNAME', 'root'),
            password = getenv('DB_PASSWORD', 'root'),
            database = getenv('DB_NAME', 'ssisdb')
        )
cursor = db.cursor()

