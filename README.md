# myportofolio_mobile

Nama : Clevraldo Limuel

NPM : 2506656583

Kelas: PBP B

## WEEK 1
Progress:
Menyelesaikan setup awal (project flutter)

Membuat halaman homepage

Challenges:
Tantangan yang saya hadapi adalah betapa berbedanya flutter ini dengan materi setengah semester sebelumnya.

AI Disclosure:
Saya tidak menggunakan AI

### TUGAS 7

1. Widget tree pada flutter adalah struktur yang berupa hierarki antara elemen-elemen dimana elemen parent memiliki hubungan dengan elemen childnya sebagai semacam pembungkus
2. Widget yang saya gunakan yaitu custom classes antara lain: MyHomepage yang merupakan turunan dari statelesswidget, yang berfungsi sebagai widget utama halaman beranda, InfoCard yang berfungsi untuk menampilkan informasi seperti nama, npm, dan kelas, ItemCard yang berfungsi sebagai menu aksi. Widget yang berfungsi sebagai struktur antara lain: scaffold yang memberikan struktur tata letak halaman, AppBar sebagai bagian atas aplikasi yang menampilkan judul dan navigasi, dan SnackBar yang berfungsi sebagai notifikasi. Widget tata letak yang dapat berupa padding, column, row, dan lain-lain. Widget visual antara lain: Text yang menampilkan teks, Icon yang menampilkan grafis sederhana, Card yang berfungsi sebagai panel yang dapat diisi widget lain, dan Material yang membungkus ItemCard untuk memberikan warna latar belakang (item.color), sudut melengkung (borderRadius), serta menyediakan kanvas agar efek animasi sentuhan dari InkWell dapat terlihat. Widget Inkwell juga digunakan untuk menerima input sentuhan dari user.
3. MaterialApp adalah widget yang memang berfungsi sebagai interface yang memberikan widget-widget child nya informasi-informasi yang diperlukan. Widget seperti scaffold, appbar, text, dan lain-lain dependant dengan widget MaterialApp ini dan tidak dapat digunakan tanpanya.
4. Statelesswidget tidak menyimpan state atau keadaan dalam widget tersebut atau bersifat statis. Sementara StatefulWidget dapat menyimpan data yang dapat berubah selama aplikasi berjalan. Gunakan StatelessWidget ketika widget hanya perlu berjalan secara statis atau akan sesuai dengan konfigurasii yang sudah diatur. Gunakan statefulWidget ketika tampilan widget perlu berubah secara dinamis.
5. BuildContext adalah objek penunjuk atau referensi yang berfungsi untuk mereferensikan objek tertentu di dalam widget tree, salah satu penggunaannya yaitu menunjuk pada widget ancestor dan menampilkan snackbar. Method build menerima parameter BuildContext yang merepresentasikan posisi widget tersebut yang akan di build. Contoh penggunaanya yaitu untuk mengukur dimensi:  (MediaQuery.of(context)) mendapatkan informasi ukuran layar, orientasi, atau padding sistem perangkat agar tampilan bersifat responsif.
6. Hot reload menyuntik kode baru ke dart VM dan menjalankan ulang method build, berbeda dengan hot restart yang mengompilasi ulang seluruh kode Dart dan memulai ulang aplikasi dari fungsi main(). Hot reload tidak dapat digunakan atau tidak akan melakukan perubahan jika perubahan dilakukan pada method main() atau method lainnya diluar method build(). Full restart perlu dilakukan ketika kita menambahkan dependensi baru atau melakukan perubahan pada file konfigurasi atau kode native.