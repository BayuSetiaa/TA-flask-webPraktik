## Tugas Akhir Pemrograman Web Praktik 
### Membuat Web CRUD dengan Flask
### Cara Install
1. pip install -r requirements.txt
2. buat file .env
masukan ini kedalam file .env:
DB_HOST=your_database_host
DB_NAME=ssisdb
DB_USERNAME=your_database_username
DB_PASSWORD=your_database_password
SECRET_KEY=any_string_will_do

CLOUD_NAME = your_cloudinary_name
API_KEY = your_cloudinary_api_key
API_SECRET = your_cloudinary_api_secretkey
PHOTO_UPLOAD = cloud

3. buat file .flaskenv
masukan ini kedalam file .flaskenv:
FLASK_APP=sia
FLASK_ENV=development
FLASK_RUN_PORT=8080

4. Jalankan "python tambah_admin.py"
5. Jalankan "python main.py" atau "flask run"

