import mysql.connector

mydatabase = mysql.connector.connect(
    host = "localhost",
    user = "root",
    password = "TILSI4CC&db",
    database = "PRACTICE"
)
mycursor= connection.cursor()

def create_database():
    try:
        query="CREATE DATABASE IF NOT EXISTS alx_book_store"
    except mysql.connector.Error:
        print("Database exists")
    else:
        print("Database 'alx_book_store' created successfully!")
        connection.commit()