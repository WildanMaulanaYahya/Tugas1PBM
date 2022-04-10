// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioCache audioCache = AudioCache();
  AudioPlayer advancedPlayer = AudioPlayer();

  Future play() async {
    advancedPlayer = await audioCache.play('Timun_mas.mp3');
  }

  Future stopplay() async {
    await advancedPlayer.stop();
  }

  bool isRepeat = false;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(appBarTheme: AppBarTheme(color: Color(0xff680D49))),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Cerita Rakyat"),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                Text("Timun Mas dan Buto Ijo",
                    textAlign: TextAlign.center,
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30)),
                SizedBox(height: 20),
                Image.asset('images/TimunMas.jpg'),
                SizedBox(height: 20),
                Text(
                  """Cerita dimulai dengan kisah seorang janda tua bernama Mbok Srini, yang kesepian dan mengharapkan kehadiran anak. Ia berharap ada keajaiban yang bisa mewujudkan keiginannya tersebut.

Lalu di suatu malam, ia bermimpi didatangi raksasa yang memberikan pesan untuk mengambil bungkusan yang ada di bawah pohon besar, yang katanya adalah jawaban dari harapannya.

Percaya tidak percaya, Mbok Srini kemudian mendatangi hutan dan melihat pohon yang persis seperti di dalam mimpinya. Benar saja, di sebuah lubang ditemukan sebuah bungkusan yang sangat kecil. Penasaran, Mbok Srini membuka bungkusan tersebut dan ternyata isinya adalah sebuah biji timun.

Tiba-tiba terdengar suara keras dan menyeramkan. Sang raksasa yang ada di mimpinya benar-benar hadir dihadapannya.

Singkat cerita Mbok Srini membuat kesepakatan dengan raksasa tersebut, untuk menanam biji timun yang diberikannya. Nantinya, akan ‘lahir’ seorang anak perempuan yang bisa menemani Mbok Srini dalam waktu tertentu, sebelum kemudian diambil oleh raksasa.

Setelah dirawat dengan baik, tanaman tersebut tumbuh dan benar-benar ‘melahirkan’ seorang anak perempuan cantik. Anak ini diberi nama Timun Mas. Timun Mas sendiri kemudian dirawat dan dibesarkan dengan baik serta penuh kasih oleh Mbok Srini.

Tak terasa waktu yang disepakati Mbok Srini dan raksasa telah dekat. Raksasa hadir kembali di mimpinya untuk menagih janji Mbok Srini untuk mengembalikan Timun Mas.

Mbok Srini yang terlanjur mengasihi Timun Mas tidak rela anaknya itu diambil oleh raksasa, dan mencari cara untuk menyelamatkan Timun Mas. Bantuan tiba dalam bentuk seorang petapa yang memberikan empat bungkusan. Bungkusan ini berisi senjata yang bisa digunakan melawan raksasa, dan bisa digunakan oleh Timun Mas.

Tak berapa lama raksasa mendatangi gubuk milik Mbok Srini, dan meminta TImun Mas untuk ikut dengannya. Mbok Srini dan Timum Mas bersepakat bahwa keduanya akan berpisah, Mbok Srini menghadapi raksasa dan Timun Mas lari sejauh mungkin. Tidak berhasil mengalihkan perhatian raksasa, Mbok Srini tersungkur tak berdaya dihadapan raksasa yang marah.

Raksasa kemudian mengejar Timun Mas. Satu per satu senjata yang diberikan oleh petapa tersebut dikeluarkan untuk menghalau raksasa. Senjata pertama adalah biji timun, yang ketika dilemparkan membuat area di belakangnya ditumbuhi tanaman timun yang begitu banyak, hingga membelit raksasa dan menghambatnya. Sialnya cara pertama ini gagal dan raksasa terus mengejarnya.

Kedua, ia melemparkan jarum yang ia pegang dalam bungkusan. Jarum tersebut berubah jadi hutan bambu yang runcing dan melukai raksasa. Kembali, cara yang digunakan ini masih gagal.

Pada bungkusan ketiga, Timun Mas melemparkan garam ke tanah dibelakangnya. Raksasa yang makin murka tak peduli, dan mendadak terjebak di dalam lautan luas. Sial, raksasa masih bisa melewati halangan ini.

Senjata pamungkas yang dimilikinya adalah terasi, yang ketika dilemparkan membuat area di sekitarnya menjadi lautan lumpur yang begitu pekat. Raksasa akhirnya terjebak dan tidak lagi bisa mengejar Timun Mas. Ia selamat, dan kembali berkumpul dengan Mbok Srini dan hidup bahagia hingga akhir waktu.""",
                  textAlign: TextAlign.justify,
                ),
                SizedBox(height: 70)
              ],
            ),
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(width: 17),
            FloatingActionButton(
              onPressed: () {
                play();
              },
              backgroundColor: Color(0xff680D49),
              child: Icon(Icons.play_arrow),
            ),
            SizedBox(width: 10),
            FloatingActionButton(
              onPressed: () {
                stopplay();
              },
              backgroundColor: Color(0xff680D49),
              child: Icon(Icons.stop),
            ),
            SizedBox(width: 60),
            FloatingActionButton.extended(
              onPressed: () {
                advancedPlayer.setPlaybackRate(1);
              },
              backgroundColor: Color(0xff680D49),
              label: Text('1x'),
            ),
            SizedBox(width: 5),
            FloatingActionButton.extended(
              onPressed: () {
                advancedPlayer.setPlaybackRate(2.0);
              },
              backgroundColor: Color(0xff680D49),
              label: Text('2x'),
            ),
            SizedBox(width: 5),
            FloatingActionButton.extended(
              onPressed: () {
                advancedPlayer.setPlaybackRate(2.0);
              },
              backgroundColor: Color(0xff680D49),
              label: Text('4x'),
            )
          ],
        ),
      ),
    );
  }
}
