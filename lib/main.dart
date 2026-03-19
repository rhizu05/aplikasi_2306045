import 'package:flutter/material.dart';

void main() {
  runApp(const MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  static const List<Map<String, String>> products = [
    {
      "nama": "Sepatu Sneakers",
      "harga": "Rp 750.000",
      "gambar":
          "https://images.unsplash.com/photo-1542291026-7eec264c27ff?w=500&auto=format",
    },
    {
      "nama": "Hoodie Pria",
      "harga": "Rp 300.000",
      "gambar":
          "https://img.lazcdn.com/g/p/2ae584b1ce695c5a4be9a11d3193bc13.jpg_720x720q80.jpg",
    },
    {
      "nama": "Jam Tangan",
      "harga": "Rp 500.000",
      "gambar":
          "https://cdn.shopify.com/s/files/1/0672/3806/8470/files/619937f2-ec5d-46ca-8433-47b5316ba976.jpg?v=1709972823",
    },
    {
      "nama": "Tas Ransel",
      "harga": "Rp 400.000",
      "gambar":
          "https://www.static-src.com/wcsstore/Indraprastha/images/catalog/full//catalog-image/91/MTA-140463162/brd-112462_tas-ransel-pria-axo-backpack-tas-punggung-pria-kapasitas-26l-2l-tas-laptop-15-inc-waterproof_full01-a0e9d9aa.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Toko Online"),
        ),
        body: SingleChildScrollView(
          child: Container(
            margin: EdgeInsets.only(top: 20),
            child: Column(
              children: [
                // 👤 PROFILE
                Flex(
                  direction: Axis.horizontal,
                  children: [
                    Expanded(
                      flex: 1,
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage: NetworkImage(
                          'https://randomuser.me/api/portraits/men/32.jpg',
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 3,
                      child: Text(
                        'Halo Rasyid 👋',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                // 🎯 BANNER PROMO
                Stack(
                  children: [
                    Image.network(
                      "https://www.shutterstock.com/image-vector/creative-shopping-flash-sale-banner-260nw-2542329053.jpg",
                      width: double.infinity,
                      height: 180,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return Container(
                          width: double.infinity,
                          height: 180,
                          color: Colors.grey.shade300,
                          alignment: Alignment.center,
                          child: Icon(Icons.broken_image, size: 40),
                        );
                      },
                    ),
                    Positioned(
                      bottom: 10,
                      left: 10,
                      child: Text(
                        "DISKON SAMPAI 50%",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),

                SizedBox(height: 20),

                // 📂 KATEGORI
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    kategori("Sepatu"),
                    kategori("Pakaian"),
                    kategori("Aksesoris"),
                    kategori("Elektronik"),
                  ],
                ),

                SizedBox(height: 20),

                // 🛍️ PRODUK REAL
                GridView.count(
                  crossAxisCount: 2,
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: products.map((item) {
                    return Card(
                      child: Column(
                        children: [
                          Image.network(
                            item['gambar']!,
                            height: 120,
                            width: double.infinity,
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                height: 120,
                                width: double.infinity,
                                color: Colors.grey.shade300,
                                alignment: Alignment.center,
                                child: Icon(Icons.broken_image),
                              );
                            },
                          ),
                          SizedBox(height: 8),
                          Text(item['nama']!),
                          Text(
                            item['harga']!,
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget kategori(String text) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(backgroundColor: Colors.green),
      child: Text(text, style: TextStyle(color: Colors.white)),
    );
  }
}
