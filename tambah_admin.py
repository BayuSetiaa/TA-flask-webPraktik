from werkzeug.security import generate_password_hash
import mysql.connector as mysql



class Admin():
    def __init__(self, username, password) -> None:
        self.username = username
        self.password = generate_password_hash(password, 'sha256')
    
    def add(self):
        query = f'''
        INSERT INTO admin(username,password)
        VALUE ('{self.username}', '{self.password}')
        '''
        cursor.execute(query)
        db.commit()
        print('Admin added!')


if __name__ == '__main__':
    print('Untuk membuat koneksi MySQL')
    host = input("Enter your database host: ")
    user = input("Enter your database username: ")
    password = input("Enter your database password: ")

    db = mysql.connect(
            host = host,
            port = 8889,
            user = user,
            password = password,
            database = 'ssisdb'
        )
    cursor = db.cursor()

    print('Koneksi MySQL dibuat!')
    print()
    print('Untuk kridensial SIA Anda')
    username = input("Username: ")
    password = input("Password: ")
    Admin(username,password).add()
    