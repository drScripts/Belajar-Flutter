# Belajar-Flutter

=============================== Tutorial FLutter ===============================


================================= Penting ==================================
+ untuk menghilangkan debug checker banner menggunakan (debugShowCheckedModeBanner: false,) pada MaterialApp(),
+ untuk menetapkan rotation dari applikasi menggunakan :
<a href="https://github.com/drScripts/Belajar-Flutter/blob/master/positioned_floatingactionbutton_loginpage/lib/main.dart">disini</a>
<pre>
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    sebelum return MaterialApp();
</pre>

=========================================================================

<ol>
  <li>Row Column : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/row_columns_widget/lib/main.dart">disini</a></li>
  <li>Text Widget : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/text_widget/lib/main.dart">disini</a></li>
  <li>Container Widget : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/container_widget/lib/main.dart">disini</a></li>
  <li>StateFul Widget : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/statefull_widget/lib/main.dart">disini</a></li>
  <li>Anonymous Method : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/anonymous_method/lib/main.dart">disini</a></li>
  <li>List dan ListView : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/lis_list_view/lib/main.dart">disini</a></li>
  <li>Text Style : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/text_style/lib/main.dart">disini</a>
    <ul>
      <li>note: menambahkan font harus menambahkan di pubspec
    </ul>
  </li> 
  <li>Animated Container dan Gesture Detection : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/animated_container_gesture_detector/lib/main.dart">disini</a>
   <ul>
    <li>Animated container digunakan untuk memberikan effect animasi dari setiap perubahan yang terjadi</li>
    <li>Gesture Detection merupakan widget yang digunakan untuk mendeteksi even handler sepertin ontap,onDoubleTap,dll</li>
   </ul>
  </li>
  <li>Flexible Widget : <a href="https://github.com/drScripts/Belajar-Flutter/tree/master/flexible_widget">disini</a>
    <ul>
      <li>Flexible Widget merupakan pembungkus widget lainnya agar menyesuaikan ukuran dengan lebar dari smartphone</li>
      <li><strong>Note: Container merupakan Widget yang harus dibungkus dalam Flexible Widget</strong></li>
    </ul>
  </li>
  <li>
    Stack dan Align : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/stack_align_widget/lib/main.dart">disini</a>
    <ul>
      <li>Stack merupakan Widget yang akan membuat layer baru bagi tiap tiap childrennya</li>
      <li>Align Widget merupakan widget yang akan membantu kalian untuk mengatur posisi Widget</li>
    </ul>
  </li>
 <li>
  Image Widget : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/image_widget/lib/main.dart">disini</a></li>
 <li>
   Spacer Widget : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/spacer_widget/lib/main.dart">disini</a>
   <ul>
    <li>Spacer Widget merupakan Widget yang digunakan untuk memberikan space atau jarak antar Widget lainnya</li>
   </ul>
 </li> 
 <li>
  Draggable dan DragTarget, SizedBox, dan Material : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/draggable_dragtarget_sizedbox_material/lib/main.dart">disini</a>
 <ul>
  <li>Dragable merupakan sebuah widget(Draggable<dataTYpe contoh (Colors)>) yang akan membuat Widget yang dibungkusnya dapat di drag. Widget ini juga harus memiliki params (data:) dimaana params ini yang akan membawa data dari widget yang kita drag lalu ada params(childWhenDragging(disimpan sesudah child)) merupakan params yang akan terjadi pada  child saat Widget tersebut di drag.Lalu paramas(feedback:) merupakan Params yang akan mengatur hal yang akan mengatur perubahan yang terjadi saat Widget tesebut di drag</li>
  <li>
    pada DragTarget ini menerima beberapa parameter yang penting seperti contohnya parameter (onWillAccept) parameter ini akan mengatur apakah WidgetDragTargeet ini akan selalu menerima atau tidak lalu ada parameter (onAccept:) parameter ini akan mengatur hal apa yang terjadi bila menerima dari dragAble.
  </li>
 </ul>
 </li>
  <li>MultiPage dengan navigator :>
    <ul>
      <li>untuk membuat multi page page pertama yang akan menjadi tampilan awal dari aplikasi ini harus dijadikan home pada main.dart seprti : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/navigasi_multiple_page/lib/main.dart">disini</a></li>
      <li>untuk menghilangkan page yang tidak kita ingin lagi untuk tampilkan atau tidak bisa di back maka kita harus menggunakan (Navigator.pushReplacement) seperti <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/navigasi_multiple_page/lib/login.dart">disini</a></li>
      <li>untuk melanjutkan page ke halaman selanjutnya kita menggunakan (Navigator.push) seperti <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/navigasi_multiple_page/lib/main_page.dart">disini</a></li>
      <li>untuk kembali kehalan sebelumnya kita bisa menggunakan (Navigator.pop) seperti <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/navigasi_multiple_page/lib/second.dart">disini</a></li>
    </ul>
  </li>
  <li>
    Costum AppBar Gradient Background dengan imageDecoration Icon dan Iconbutton : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/appbar_iconbutton_icon/lib/main.dart">disini</a>
    <ul>
      <li>leading merupakan tempat untuk menyimpan Icon di sebelah paling kanan</li>
      <li>untuk semua icon yang ingin berada di sebelah kiri ditaruh dengan parameter (action:<Widget>[])</li>
      <li>untuk memberikan decoration seperti image pada appbar menggunakan parameter(flexibleSpace:) </li>  
    </ul>
  </li>
  <li>Card Widget : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/card_widget/lib/main.dart">disini</a></li>
  <li>Text Field : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/text_field_widget/lib/main.dart">disini</a>
  <ul>
    <li>Text Field Harus membuat object (TextEditingController controller = TextEditingController();)</li>
  </ul>
  </li>
  <li>Text Field Decoration : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/text_field_decoration/lib/main.dart">disini</a></li>
  <li>Media Query :> 
    <ul>
      <li>MediaQuery.of(context).size.(width/height) : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/media_query/lib/query_width_height.dart">disini</a></li>
      <li>MediaQuery.of(context).orientation ini harus memanggil class Orientation.(landscape / potrait) <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/media_query/lib/directional_phone.dart">disini</a></li>
    </ul>
  </li>
  <li>Button Dengan Material dan InkWell : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/inkwell/lib/button_material_inkwell.dart">disini</a>
    <ul>
      <li><strong>NOTE :< Untuk membuat sebuah Button dengan Material dan InkWell Yang pertama tama harus membuat sebuah container(untuk menghias buttonnya) lalu membuat Material dan material color harus di set dengan warna transparent lalu baru di dalam Material membuat widget inkWell untuk membuat effect sebuat bayangan harus membungkus container awal dengan Widget Material dan set borderRadius harus sama lalu set elevation sesuka kalian</strong></li>
    </ul>
  </li>
  <li>Opacity membuat Costum Card : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/opacity_custom_card_dengan_latar_bercorak/lib/main_page.dart">disini</a>
  <ul>
    <li><strong>Container dapat di hias menggunakan decoration:BoxDecoration(). card dibungkus dengan menggunakan sizedBox agar dapat diatur width dan heightnya. untuk membuat tipis/transparant menggunakan Opacity()</strong></li>
  </ul>
  </li>
  <li>
    Positioned Widget dan FloatingActionButton : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/positioned_floatingactionbutton_loginpage/lib/login_page.dart">disini</a>
  </li>
  <li>
    Hero Animation dan ClipRRect :
      <ul>
          <li>untuk membuat sebuah gambar menjadi linkran atau berbentuk lingkaran harus menggunakan widget ClipRRect sepert pada berikut <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/hero_animation_clip_r_rect_widget/lib/main_page.dart"></a></li>
          <li>untuk membuat sebuah Hero Animation wajib membungkus sebuah widget yang akan di beri HeroAnimasi dengan Widget Hero dan bila sudah menggunakan Widget Hero Kedua Widget yang akan diberikan Widget Hero harus disertakan params tag dengan value yang sama <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/hero_animation_clip_r_rect_widget/lib/main_page.dart">disini</a> dan <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/hero_animation_clip_r_rect_widget/lib/second_page.dart">disini</a></li>
      </ul>
  </li>
    <li>
    Costum Size AppBar dengan preferredSize() : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/app_bar_costum_size/lib/main_page.dart">disini</a>
    <ul>
        <li><strong>untuk mengatur ukuran AppBar secara costum dapat menggunakan preferredSize lalu agar bisa mengatur tempat tulisan atau title bisa ditaruh dalam flexibleSpace lalu agar bisa mengubah letak secara costum bisa menggunakan Positioned namun widget Positioned ini harus dibungkus menggunakan widget Stack</strong></li>
    <ul>
    </li>
    <li>
        Membuat Tab Bar = <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/tab_bar/lib/main.dart">disini</a>
        <ul>
            <li><strong>untuk membuat tabar kita harus membuat widget awalnya dengan DefaultTabController(); lalu didalam widget tersebut kita memasukan parameter length:yang merupaan panjang TabBar yang akan dipakai lalu setelah itu pada child membuat scafold dan AppBar seperti biasa lalu untuk tabbar itu sendiri kita menyimpannya pada parametter bottom setelah title setelah itu kita membuat list yang berisi Tab() bar itu sendirii isinya bebas berupa Widget lalu pada body: kita menyertakan TabBarView() dimana childrennya akan mengambil setiap element menjadi satu tab atau halaman urut darii bagian pertama hingga akhir</strong></li>
        </ul>
    </li>    
<ol>  
