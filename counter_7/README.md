# Assignment 7

## Stateless widget dan stateful widget
Stateless Widget adalah widget yang tidak akan berubah (statis) tampilannya. Sedangkan, stateful Widget adalah widget yang dapat berubah tampilannya oleh karena events (interaksi user maupun perubahan suatu nilai)

## Widget yang dipakai dalam oriyek ini
1. Center
Widget yang menaruh elemen didalamnya pada tengah-tengah layar
2. Column: 
Widget yang menaruh children dalam array vertical
3. Row: 
Widget yang menaruh children dalam array horizontal
4. Text: 
Widget yang menampilkan teks, serta memberinya style
5. FloatingActionButton:
widget button yang "hover"/melayang diatas konten untuk menunjukkan aksi utama yang dapat dilakukan dalam aplikasi
6. Appbar:
Widget yang berperan sebagai menu penunjuk
7. Scaffold: 
widget utama dalam flutter untuk menampilkan halaman
8. Icon: 
widget yang menampilkan icon 
9. Padding:
widget yang memberikan jarak antar elemennya

## Fungsi dari setState()
Fungsi dari setState() adalah untuk memberi tahu framework bahwa internal state dari objek tersebut telah berubah. Dengan setState(), framework akan melakukan build untuk objek State tersebut karena ada perubahan yang dapat mengubah interface dari pengguna. Variabel yang akan berubah adalah variabel yang kita manipulasi dalam pemanggilan setState().

## Perbedaan const dengan final
final dan const digunakan saat kita ingin membuat suatu objek yang tidak dapat re-assign. Final akan menentukan nilai dari objek tersebut pada runtime. Sedangkan const akan menentukan nilai saat compile-time, membuatnya menjadi frozen dan dan completely immutable.

## Cara saya mengimplementasikan checklist
Pertama-tama, saya melakukan start app flutter pada direktori tugas pbp saya. Lalu, saya mempelajari terlebih dahulu kode demo yang ada pada lib/main.dart karena tugas kali ini menggunaka template yang tidak jauh berbeda dari kode tersebut. Setelah itu, saya membuat suatu fungsi yang akan dipanggil saat ingin men-decrement nilai yang ada serta menambahkan variable serta fungsi yang meng-handel text inidkator genap ganjil. Setelah itu saya menambahkan button yang akan memanggil fungsi decrement tersebut dengan menggunakan FloatingActionButton. Lalu, saya menambahkan suatu ternary diatas widget Text yang berisi , ternary tersebut akan menampilkan widget berdasarkan kondisi genap ganjilnya counter tersebut.

# Assignment 8

## Perbedaan Navigator.push dan Navigator.pushReplacement
Navigator.push menampilkan route baru dengan cara melakukan push diatas route sebelumnya, sedangkan Navigator.pushReplacement menampilkan route baru dengan cara menggantikan posisi route sebelumnya.

## Widget yang dipakai dalam proyek ini
1. Drawer :
Widget untuk menampillan menu di bagian kiri layar. 
Biasa digunakan untuk memberikan akses ke fungsionalitas berbeda.

2. ListTile :
Widget yang digunakan untuk menampilkan tiap item pada suatu daftar/list.

3. TextFormField :
Widget yang menampilkan TextField agar pengguna dapat memberikan input berupa text.

4. InputDecoration :
Widget digunakan untuk menambah dekorasi pada TextField.

5. DropdownButton :
Widget yang memungkinkan pengguna untuk memilih item melalui format dropdown.

6. DropdownMenuItem :
Widget yang digunakn untuk mendefenisikan item-item yang ada dalam suatu DropdownButton.

7. ListView:
Widgte yang digunakan untuk menampilkan suatu daftar/list. Constructor ListView.builder membuat "anak-anak" dari suatu ListView sesuai keinginan.

## Jenis-jenis event dalam Flutter
1. onPressed
2. onTap
3. onChanged
4. onSaved
5. onLongPress
6. onDoubleTap
7. dan masih banyak lagi

## Cara kerja Navigator
Navigator mengatur stack of Routes yang ada dalam suatu app FLutter. Terdapat dua cara yang dapat dilakukan dengan Navigator, pertama adalah push yaitu dengan cara menambahkan Route baru pada stack sehingga app menampilkan Route baru. Kedua adalah pop yaitu dengan cara mengeluarkan Route teratas pada stack sehingga app menampilkan Route terakhir setelah Route yang barus saja di-pop.

## Cara saya mengimplementasikan checklist
Yang pertama saya lakukan adalah membuat dua file dart kosong baru yaitu form.dart yang akan berfungsi saat ingin menambahkan budget dan showbudget.dart yang akan berfungsi saat ingin menampilkan daftar budget yang telah dibuat. Setelah itu, saya membuat suatu App pada file baru bernama drawer.app, app tersebut bernama DrawerApp. App ini akan digunakan pada laman lainnya untuk menampilkan drawer yang berisi navigasi laman bagi pengguna. Lalu, saya membuat suatu file global.dart dan mengisinya dengan suatu class bernama Budget yang akan merepresentasikan budget, serta membuat suatu list kosong dengan isi object dari class tersebut. Setelah itu saya mengedit form.dart menjadi import global.dart dan menambahkan form yang akan menampilkan input sesuai dengan atribut class Budget sehingga saat pengguna melakukan submit, program akan membuat object Budget dan menyimpannya pada list yang ada di global.dart. Pada show_budget.dart, saya menampilkan budget-budget dengan cara import globals.dart dan menampilkan seluruh item yang ada pada list tersebut dengan menggunakan ListView.builder.