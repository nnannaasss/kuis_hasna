import 'package:flutter/material.dart';

class HelpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bantuan dan Dukungan'),
        backgroundColor: Color.fromARGB(255, 113, 205, 245),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          
          child: Column(
            children: [
              Image.asset('assets/customerService.png'),
              SizedBox(height: 20),
              Text(
                'Pertanyaan Umum',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight:
                        FontWeight.bold), 
              ),
              SizedBox(
                  height:
                      10), 
              Text(
                'Temukan jawaban atas berbagai pertanyaan yang sering ditanyakan oleh pengguna mengenai penggunaan aplikasi ini. Dari proses pendaftaran, cara membeli barang, hingga pengaturan akun, semua jawaban ada di sini untuk mempermudah pengalaman Anda.',
                style: TextStyle(fontSize: 14), 
              ),
              SizedBox(height: 20),
               Text(
                'Panduan Penggunaan',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight:
                        FontWeight.bold), 
              ),
              SizedBox(
                  height:
                      10), 
              Text(
                'Pelajari langkah demi langkah cara menggunakan fitur-fitur aplikasi kami. Panduan ini akan membantu Anda memahami bagaimana memaksimalkan penggunaan aplikasi, mulai dari mencari produk hingga menyelesaikan transaksi dengan mudah.',
                style: TextStyle(fontSize: 14), 
              ),
              SizedBox(height: 20),
               Text(
                'Kontak Dukungan',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight:
                        FontWeight.bold), 
              ),
              SizedBox(
                  height:
                      10), 
              Text(
                'Jika Anda membutuhkan bantuan lebih lanjut, tim dukungan kami siap membantu. Anda dapat menghubungi kami melalui email, telepon, atau live chat. Kami berkomitmen untuk memberikan solusi terbaik bagi setiap masalah atau pertanyaan yang Anda miliki.',
                style: TextStyle(fontSize: 14), 
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
