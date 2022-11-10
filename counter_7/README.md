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

## Cara saya dalam pengimplementasikan checklis
Pertama-tama, saya melakukan start app flutter pada direktori tugas pbp saya. Lalu, saya mempelajari terlebih dahulu kode demo yang ada pada lib/main.dart karena tugas kali ini menggunaka template yang tidak jauh berbeda dari kode tersebut. Setelah itu, saya membuat suatu fungsi yang akan dipanggil saat ingin men-decrement nilai yang ada serta menambahkan variable serta fungsi yang meng-handel text inidkator genap ganjil. Setelah itu saya menambahkan button yang akan memanggil fungsi decrement tersebut dengan menggunakan FloatingActionButton. Lalu, saya menambahkan suatu ternary diatas widget Text yang berisi , ternary tersebut akan menampilkan widget berdasarkan kondisi genap ganjilnya counter tersebut.