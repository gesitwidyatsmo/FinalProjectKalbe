# Melakukan import mysql connector
import mysql.connector

# Melakukan percobaan koneksi
conn = mysql.connector.connect(
    host='localhost', user='root', password='', database='kalbe')

#Membuat object connector menjai penanda
cursor=conn.cursor()

# Deklarasi SQL Query Untuk Memasukan record ke DB (karyawan)
insert_sql = (
    "INSERT INTO Karyawan (FIRST_NAME, LAST_NAME, AGE, SEX, INCOME)"
    "VALUES (%s, %s, %s, %s, %s)"
)
values = ('Gesit', "Widi Atmoko", 23, 'Pria', 8000000)

try:
    #eksekusi SQL Command
    cursor.execute(insert_sql, values)

    # Melakukan perubahan (commit) pada DB
    conn.commit()

except:
    # Rollback apabila ada issue
    conn.rollback()

# Menutup Koneksi
conn.close()
