import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gunung Tangkuban Perahu',
      home: HalamanDepan(),
    );
  }
}

class HalamanDepan extends StatelessWidget {
  void bukaLokasi() async {
    final url = Uri.parse(
      'https://www.google.com/maps/search/?api=1&query=-6.7596,107.6098',
    );
    await launchUrl(url, mode: LaunchMode.externalApplication);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gunung Tangkuban Perahu'),
        backgroundColor: Colors.green,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              'https://upload.wikimedia.org/wikipedia/commons/thumb/4/4b/Tangkuban_Perahu.jpg/800px-Tangkuban_Perahu.jpg',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return Container(
                  height: 200,
                  color: Colors.green.shade100,
                  child: Center(child: Icon(Icons.landscape, size: 80)),
                );
              },
            ),
            SizedBox(height: 16),
            Text(
              'Tentang Gunung Tangkuban Perahu',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Gunung Tangkuban Perahu adalah gunung api aktif yang berada di Jawa Barat, dekat Kota Bandung. Gunung ini terkenal karena bentuknya yang terlihat seperti perahu terbalik.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Lokasi',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Kawasan Lembang, Kabupaten Bandung Barat, Jawa Barat, Indonesia.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 8),
            Text('Koordinat: -6.7596, 107.6098'),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: bukaLokasi,
              icon: Icon(Icons.location_on),
              label: Text('Lihat Lokasi di Google Maps'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'Legenda Sangkuriang',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Menurut cerita rakyat Sunda, Sangkuriang menendang perahu yang dibuatnya hingga terbalik. Cerita ini dipercaya masyarakat sebagai asal-usul nama Tangkuban Perahu.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 16),
            Text(
              'Fakta Menarik',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('• Tangkuban Perahu merupakan gunung api aktif.'),
            Text('• Salah satu tempat terkenalnya adalah Kawah Ratu.'),
            Text('• Udara di kawasan gunung biasanya sejuk.'),
            SizedBox(height: 16),
            Text(
              'Tips Berkunjung',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Ikuti petunjuk petugas, jangan mendekati area kawah yang ditutup, dan periksa informasi resmi sebelum berkunjung.',
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 24),
            Center(child: Text('Aplikasi sederhana tentang Tangkuban Perahu')),
          ],
        ),
      ),
    );
  }
}
