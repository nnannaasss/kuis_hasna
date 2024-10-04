import 'package:flutter/material.dart';
import 'package:flutter_application_1/help_page.dart';
import 'daftar_barang_dummy.dart';

class HomePage extends StatelessWidget {
  final String username;

  HomePage({required this.username});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: const Color.fromARGB(255, 72, 203, 233),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            // Teks "Selamat Datang, admin!"
            Text(
              'Selamat Datang, $username!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 10),

            // Kartu Bantuan
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HelpPage(),
                  ),
                );
              },
              child: Card(
                color: const Color.fromARGB(255, 113, 205, 245),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Butuh Bantuan? Klik untuk pergi ke halaman Panduan dan Dukungan',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),

            // GridView untuk daftar barang
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 0.8), // Menyesuaikan proporsi card
                itemCount: supermarketItemList.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Color.fromARGB(255, 113, 205, 245),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          // Gambar produk dengan ukuran yang proporsional
                          Expanded(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: FadeInImage(
                                placeholder:
                                    AssetImage('images/placeholder.png'),
                                image: NetworkImage(
                                    supermarketItemList[index].imageUrls.first),
                                fit: BoxFit.cover,
                                imageErrorBuilder:
                                    (context, error, stackTrace) {
                                  return Image.asset('images/placeholder.png',
                                      fit: BoxFit.cover);
                                },
                              ),
                            ),
                          ),
                          SizedBox(height: 10),

                          // Nama barang, teks lebih kecil
                          Text(
                            supermarketItemList[index].name,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14, // Ukuran teks lebih kecil
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),

                          // Harga barang
                          Text(
                            supermarketItemList[index].price,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 12, // Ukuran teks lebih kecil
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
