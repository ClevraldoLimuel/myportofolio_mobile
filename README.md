# myportofolio_mobile

Nama : Clevraldo Limuel

NPM : 2506656583

Kelas: PBP B

## WEEK 9
Progress:

Membuat form tambah project dan tambah experience serta left_drawer

Menghubungkan kedua form yang dibuat dengan menu dan drawer

Challenges:
Tantangan yang saya hadapi adalah menemukan cara untuk bagian input form tanggal. Awalnya saya berencana memakai inputDatePickerFormField, tetapi karena kombinasi TextFormField dan showDatePicker lebih sederhana (dan tertulis di web tugas), saya menggunakan pilihan yang kedua itu.

AI Disclosure:
Saya tidak menggunakan AI

### TUGAS 8

1. Navigator.push() menambahkan rute ke atas stack, Navigator.pushReplacement() menukar rute teratas dengan rute yang akan di push, dan Navigator.pop() menghapus rute teratas dan menampilkan halaman dibawahnya sebagai halaman aktif. Saya menggunakan push() untuk membuka ProjectForm dan ExperienceForm dari kartu aksi (bukan pushReplacement supaya halaman home tidak ter-replace). Untuk opsi home di drawer, saya menggunakan Navigator.popUntil() untuk membersihkan route stack, lalu Navigator.pushReplacement in case kalau halaman home tidak sengaja ter-replace.
2. Scaffold memberikan pembagian yang konsisten untuk tiap halaman dimana halaman akan dibagi menjadi (kira-kira) header, body, dan sidebar/sidecontent. Appbar mengatur bagian atas/header halaman, mengatur ikon drawer, judul halaman, dan lain-lain. Drawer menyediakan menu akses samping yang dapat digunakan sebagai akses mudah bagi pengguna untuk berpindah halaman ke halaman. Warna tema dapat ditentukan di level MaterialApp, yang kemudian dapat diambil dengan Theme.of(context).colorScheme
3. Formulir dibangun dengan Scaffold -> (body) SingleChildScrollView -> Column -> Padding -> FormField. Scaffold untuk memberi kerangka, SingleChildScrollView supaya tampilan tidak overflow (yang akan menyebabkan error, dan singleChild karena childnya memang satu), Column digunakan untuk mengikuti cara pembacaan yang natural, yaitu dari atas ke bawah (per baris), dan Padding digunakan supaya tiap FormField memiliki total lebar dengan whitespace yang serupa, yaitu rata dari kiri ke kanan, sehingga tidak tumpang tindih.
4. Validator berguna untuk memvalidasi input pengguna, sehingga hasil yang diberikan dari form memenuhi constraint dari model atau aturan yang berlaku, ketika fungsi validate() dipanggil. Pembatasan papan ketik tidak dapat mencegah pengguna untuk memberikan input yang kosong atau logically incorrect (i.e negative values when positive values are expected).