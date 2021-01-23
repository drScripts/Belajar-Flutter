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
    </ul>
    </li>
    <li>
        Membuat Tab Bar = <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/tab_bar/lib/main.dart">disini</a>
        <ul>
            <li><strong>untuk membuat tabar kita harus membuat widget awalnya dengan DefaultTabController(); lalu didalam widget tersebut kita memasukan parameter length:yang merupaan panjang TabBar yang akan dipakai lalu setelah itu pada child membuat scafold dan AppBar seperti biasa lalu untuk tabbar itu sendiri kita menyimpannya pada parametter bottom setelah title setelah itu kita membuat list yang berisi Tab() bar itu sendirii isinya bebas berupa Widget lalu pada body: kita menyertakan TabBarView() dimana childrennya akan mengambil setiap element menjadi satu tab atau halaman urut darii bagian pertama hingga akhir</strong></li>
        </ul>
    </li>    
    <li>
        Menghias Tab Bar = <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/costum_tampilan_tab_bar/lib/main.dart">disini</a>
        <ul>
        <li>
            untuk dapat membuat background color jadii widget Tab Bar kita dapat membungkus Widget Tab dengan Container, namun karena Tab Bar tersusun dengan Widget preferredSized maka kita harus membungkus Container dengan preferredSized dan mengatur heightnya. dan kita bisa mewarnain Containernya. untuk menghias indicator kita bisa membuat Widget DecorationBox pada parameter indicator dan bisa menghiasnnyaa. 
            </li>
        </ul>
    </li>
    <li> Memasukan Qr Code : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/menampilkan_qr_code/lib/main.dart">disini</a>
        <ul>
            <li>Untuk menaruh qr code ke dalam aplikasi kita harus menaruh qr_flutter:(version) pada depedencies di pubspec lalu setelah itu kita harus import "package:qr_flutter/qr_flutter.dart" seperti biasa dan cara menampilkannya dengan menaruh widget QrImage()</li>
        </ul>
    </li>
    <li>
        Hard Costum Button untuk file <a href="https://github.com/drScripts/Belajar-Flutter/tree/master/costum_button/lib/main.dart">main.dart</a> dan file <a href="https://github.com/drScripts/Belajar-Flutter/tree/master/costum_button/lib/costum_button.dart">costum_button.dart</a>
    </li>
    <li>
        Shader Mask (Opacity dengan Gradient) : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/gradient_opacity_shader_mask/lib/main.dart">disini</a>
        <ul>
            <li>Untuk ShadeMask() ia membutuhkan parameter shaderCallBack:(retangle){return {(gradient).createShade(Rect.fromLTRB())} laluuu untuk tambahkan parameter BlendMode untuk menyatukan gambar dengan opacity tadi</li>
        </ul>
    </li>
    <li>
        Memainkan Music : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/memainkan_sound_music/lib/main.dart">disini</a>
        <ul>
            <li>
                untuk dapat memainkan music pertama kita harus mengimport library atau plugin audioplayer pada denpedencies audioplayers lalu mengimport package audioplayers
            </li>
        </ul>
    </li>
    <li>
        ScanBarcode (<span style="font-color:red">Masih gagal</span>) : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/scan_qrcode/lib/main_page.dart">disini</a>
    </li>
    <li>
        Font Features typography : <a href="https://github.com/drScripts/Belajar-Flutter/tree/master/font_features/lib/main.dart">disini</a>
    </li>
    <li>
        Clip Path : <a href="https://github.com/drScripts/Belajar-Flutter/tree/master/clip_path/lib/my_clipper.dart">disini</a>
    </li>
    <li>
        API http (Post Method) : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/http_request_api_post_method/lib/post_result_model.dart">model</a> dan <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/http_request_api_post_method/lib/main.dart">main</a>
       <ul>
           <li>
               Note : Untuk menghubungkan ke API kita memerlukan depedencies http yang harus didaftarkan pada pubspec terlebih dahulu lalu import dan kaish inisial dengan as,
               setelah itu membuat class bebas dengan constructor sesuai dengan isi dari json yang akan di return hasilnya. lalu membuat method request Connect to Api dimana syntaks seperti berikut 
               <pre> 
    static Future<Result> connectApi(String name, String job) async {
    String url = "https://reqres.in/api/users";
    var results = await http.post(
      url,
      body: {
        "name": name,
        "job": job,
      },
    );

    var jsonObject = json.decode(results.body);
    return Result.createResult(jsonObject);
  }
  </pre>
  </li>
  <li>
  lalu kita harus membuat factory diama factory ini yang akan mereturn kan hasil json menjadi type map seperti berikut :
  <pre>
    factory Result.createResult(Map<String, dynamic> obj) {
    return Result(
      id: obj['id'],
      name: obj['name'],
      job: obj['job'],
      created: obj['createdAt'],
    );
  }
  </pre>
 </li>
 <li>
     lalu pada main dart kita memanggil mehod pada class tadi dengan sytaks async atau menambahkan .then seperti berikut :
     <pre>
      Result.connectApi('Nathanael', 'Android Developer').then(
        (val) {
        postResult = val;
      };

 </pre>
  </li>
   </ul>
 </li>
 
 <li>
    Http Get Method Single Data : <a href="https://github.com/drScripts/Belajar-Flutter/tree/master/http_request_api_get_method/lib/main.dart">main</a> dan <a href="https://github.com/drScripts/Belajar-Flutter/tree/master/http_request_api_get_method/lib/request_method.dart">model</a>
    <ul>
        <li>untuk melakukan sebuah request API Get Method biasanya kita menggunakan method yang sama dimana kita harus membuat terlebihdahulu sebuah factory dan lalu membuat Future method untuk connect ke API
        <pre>
        factory Person.createUser(Map<String, dynamic> obj) {
             return Person(
             id: obj['id'].toString(),
             name: obj['first_name'] + " " + obj['last_name'],
             );
         }
        </pre>
        <li>
        <li>
            lalu untuk method requestnya : 
            <pre>
                 static Future<Person> connectApi(String id) async {
                     String url = "https://reqres.in/api/users/" + id;
                     var hasil = await http.get(url);
                     var jsons = json.decode(hasil.body);
                     var data = (jsons as Map<String, dynamic>)['data'];
                     return Person.createUser(data);
                }
            </pre>
        </li>
        <li>
            lalu untuk padaa bagian main.dart kita melakukannya sama seperti post method tidak ada perubahan
        </li>
    </ul>
</li>
<li>
    Http Get Method dengan Multi Data : <a href="https://github.com/drScripts/Belajar-Flutter/tree/master/http_get_method_multi_data/lib/main.dart">main</a> dan <a href="https://github.com/drScripts/Belajar-Flutter/tree/master/http_get_method_multi_data/lib/request_model.dart">model</a>
</li>
<li>
    Animated Switcher dan Switch : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/witch_animated_switcher_widget/lib/main.dart">disini</a>
</li>
<li>
    Animated Padding Widget : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/animated_padding/lib/main.dart">disini</a>
</li>
<li>
    Shared Preferences dan Double QuestionMark Operation(??) : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/shared_preferences_double_question_mark_operator/lib/main.dart">disini</a>
    <ul>
        <li>Untuk Shared Preferences kita harus menambahkan shared_preferences ke pubspec.yaml</li>
        <li>Lalu selanjutnya kita harus mengimport sharedPreferences.dart</li>
        <li>Lalu untuk mensave data kita harus membuat seperti ini dengan kata kunci set
            <pre>
             void saveData() async {
               // inisialisasi class SharedPrefrences;
              SharedPreferences pref = await SharedPreferences.getInstance();
              // set save
              pref.setString('nama', controler.text);
              pref.setBool('isOn', isOn);
  }
            </pre>
        <li>
        <li>
            lalu untuk return atau mengambil data menggunakan method seperti ini
            <pre>
            Future<String> loadNama() async {
               SharedPreferences pref = await SharedPreferences.getInstance();
               return pref.getString('nama') ?? "no saved Data";
            }
            </pre>
        </li>
        <li>
            untuk double questionMark Operator itu merupakan operator yang dimana bila statement awal bernilai null maka ia akan mereturn statement baru;
            <pre>
                return pref.getString('nama') ?? "no saved Data";
            </pre>
        </li>
    </ul>
</li>
<li>
    Untuk melakukan Change notifier pada widget harus menambahkan plugin provider pada pubspec : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/provider_state_management/lib/main.dart">main</a> dan  <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/provider_state_management/lib/shared_state.dart">Class Implement ChangeNotifier</a>
    <ul>
<li>
    lalu membuat class terpisah bebas namanya namun ia harus mengimplement si class ChangeNotifier seperti ini
    <pre>
    import 'package:flutter/cupertino.dart';
    import 'package:flutter/material.dart';

    class SharedState with ChangeNotifier {
     bool _isLightblue = true;

     bool get getLightBlue => _isLightblue;

     set setLightBlue(bool isLB) {
       _isLightblue = isLB;
       notifyListeners(); // memberitahukan ke widget consumers
     }

     Color get getColorLB => (_isLightblue) ? Colors.lightBlue : Colors.amber;
     
    }
    </pre>
</li>
<li>
    lalu setelahh itu pada main dart kita harus mengimport class tadi dan juga provider.dart
</li>
<li>
    setelah itu pada home atau main widget yang akan kita rubah harus di bungkus dengan menggunakan Widget ChangeNotifierProvider<(isi dari class yang menyimpan changenotifier)>
</li>
<li>
    lalu stelah itu kita harus membungkus semua widget yang akan kita berikan animasi dengan Widget Consumer dalam Widget Consumers ini juga membutuhkan parameter builder dimana didalamnya membutuhkan sebuah function yang membutuhkan 3 parameter yaitu context, (nama pengganti class yang mengimplement Chagenotifier,_) function ini akan mereturn widget tadi yang dibungkus dengan Consumer : 
<pre>
   Consumer<SharedState>(
    builder: (context, sharedState, _) {
    return Text(
        'Provider State Management',
           style: TextStyle(
                color: sharedState.getColorLB,
                  ),
               );
             },
   ),
</pre>
</li>
    </ul>
</li>
<li>
    Multi Provider in Provider State Management : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/provider_state_management_multi_provider/lib/main.dart">main</a>  <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/provider_state_management_multi_provider/lib/money.dart">money</a> dan <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/provider_state_management_multi_provider/lib/cart.dart">cart</a>
    <ul>
        <li>
            yang menjadi perbedaan Multi dengan single ada lah kita harus membuat Widget MultiProvider terlebih dahulu pada Widget inti
            <pre>
            home: MultiProvider(
             providers: [
             ChangeNotifierProvider<Money>(
                create: (context) => Money(),
            ),
            ChangeNotifierProvider<Cart>(
                create: (context) => Cart(),
            ),
           ],
            child: Scaffold(
            </pre>
        </li>
    </ul>
</li>
<li>
    BloC State Management tanpa Library : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/bloc_state_management/lib/main.dart">main</a> dan <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/bloc_state_management/lib/color_bloc.dart">Color BloC</a>
</li>
<li>
    BloC State Management Dengan Library : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/bloc_state_management_library/lib/color_bloc.dart">BloC Class</a> <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/bloc_state_management_library/lib/main_page.dart">Main Page</a> dan <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/bloc_state_management_library/lib/main.dart">main</a>
</li>
<li>Doc Documment : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/doc_comment/lib/profile.dart">disini</a> </li>
<li>Timer Class : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/timer/lib/main.dart">disini</a></li>
<li>
    Custom Progress Bar dengan menggunakan Timer dan Provider : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/custom_progress_bar/lib/main.dart">main</a>, <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/custom_progress_bar/lib/custom_progress.dart">Progress Bar Widget</a> dan <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/custom_progress_bar/lib/share_state.dart">Provider</a>
</li>
<li>
    Costum Product Card : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/product_card/lib/main.dart">main</a>, <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/product_card/lib/provider.dart">provider</a> dan <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/product_card/lib/product_card.dart">Product Card</a> 
</li>
<li>
    SelectableText ToggleButtons ColorFiltered Widget : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/selectabletext_togglebuttons_colorfiltered/lib/main.dart">disini</a>
</li>
<li>
    Hydrated BLoC State Management : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/hydrated_bloc_state_management/lib/color_bloc.dart">BLoC Class</a> dan <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/hydrated_bloc_state_management/lib/main.dart">main</a> dan <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/hydrated_bloc_state_management/lib/main_page.dart">Main Page Class</a>
</li>
<li>
    ListView Builder + BloC : <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/list_view_builder_bloc/lib/main.dart">main</a> dan <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/list_view_builder_bloc/lib/main_page.dart">main page</a> dan <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/list_view_builder_bloc/lib/product_bloc.dart">BLoC</a> dan <a href="https://github.com/drScripts/Belajar-Flutter/blob/master/list_view_builder_bloc/lib/product_card.dart">Product Card</a>
</li>
<li>
    MVVM Arsitecture : <a href="https://github.com/drScripts/Belajar-Flutter/tree/master/mvvm_architecture/lib">disini</a> 
</li> 
<li>
    Multi Bloc With Multi Page : <a href="https://github.com/drScripts/Belajar-Flutter/tree/master/multi_bloc_in_multi_page/lib">disini</a>
</li>
<ol>
