import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:technical_test_prabowo/style.dart';

class DetailProductPage extends StatefulWidget {
  @override
  _DetailProductPageState createState() => _DetailProductPageState();
}

class _DetailProductPageState extends State<DetailProductPage> {
  List tokoOffline = [
    'Jamtangan.com Roxy Square',
    'Jamtangan.com AEON Sentul',
    'Jamtangan.com Living World',
    'Jamtangan.com Roxy Supermarket',
  ];

  int selectedTab = 0;
  List tabs = [
    'Spesifikasi',
    'Deskripsi',
    'Service Center',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: colorWhite),
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Cari di Jamtangan.com',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(),
                    isDense: true, // Added this
                    contentPadding: EdgeInsets.all(8), // Added this
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 16,
            ),
            Icon(Icons.shopping_bag_outlined),
            SizedBox(
              width: 14,
            ),
            Icon(Icons.more_vert)
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Expanded(
                child: ListView(
              children: [
                Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        color: colorDark,
                        child: ImageCarousel(),
                      ),
                    ),
                    Container(
                      child: Row(
                        children: [
                          IconButton(
                              onPressed: () {},
                              icon: Container(
                                  width: 90,
                                  height: 90,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                        width: 1,
                                        color: Colors.white54,
                                      ),
                                      borderRadius: BorderRadius.circular(50)),
                                  child: Icon(Icons.share)))
                        ],
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  padding: EdgeInsets.all(14),
                  color: colorDark,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Garmin Forerunner 265S 010-02810-54 Smartwatch Music Digital Dial Whitestone Rubber Strap",
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: boldTextOrange.copyWith(
                            fontSize: 16, color: colorWhite),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          Text(
                            "BRAND: FOSSIL",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: generalTextWhite.copyWith(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Row(
                            children: [
                              for (var indexStar = 0;
                                  indexStar < 5;
                                  indexStar++)
                                Icon(
                                  Icons.star,
                                  color: colorOrange,
                                  size: 10,
                                )
                            ],
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            "175 ULASAN",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: generalTextWhite.copyWith(
                              fontSize: 10,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Row(
                        children: [
                          Text(
                            "Rp1.000.000",
                            maxLines: 1,
                            style: boldTextOrange.copyWith(
                                fontSize: 10, color: Colors.white54),
                          ),
                          SizedBox(
                            width: 14,
                          ),
                          Text(
                            "KAMU HEMAT RP.1.073.000",
                            maxLines: 1,
                            style: boldTextOrange.copyWith(
                                fontSize: 10, color: Colors.white54),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "Rp1.000.000",
                        maxLines: 1,
                        style: boldTextOrange.copyWith(fontSize: 22),
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                        "100% Pricematch Guarantee",
                        maxLines: 1,
                        style: boldTextOrange.copyWith(
                            fontSize: 10, color: Colors.white54),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  padding: EdgeInsets.all(14),
                  color: colorDark,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('Cicilan 0% mulai dari Rp649.916/bulan.'),
                      ),
                      Divider(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Icon(Icons.remove_red_eye),
                              SizedBox(
                                width: 7,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Dilihat'),
                                  Text(
                                    '443',
                                    style: boldTextOrange.copyWith(
                                        color: colorWhite),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.remove_red_eye),
                              SizedBox(
                                width: 7,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Terjual'),
                                  Text(
                                    '1',
                                    style: boldTextOrange.copyWith(
                                        color: colorWhite),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.remove_red_eye),
                              SizedBox(
                                width: 7,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Barang Tersisa'),
                                  Text(
                                    '< 5 pcs',
                                    style: boldTextOrange.copyWith(
                                        color: colorWhite),
                                  ),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text('Reward Point : 38.995'),
                      ),
                      Divider(),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 10),
                        child: Text(
                            'Pesanan dikirimkan setelah 1-2 hari kerja proses gudang'),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  padding: EdgeInsets.all(14),
                  color: colorDark,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Stok Toko Offline",
                            style: boldTextOrange.copyWith(fontSize: 16),
                          ),
                          Text(
                            "Lihat Semua".toUpperCase(),
                            style: TextStyle(
                                fontSize: 12,
                                color: colorWhite,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 14,
                      ),
                      Text(
                          'Selain secara online, kamu juga bisa beli dari stok offline di toko kami:'),
                      SizedBox(
                        height: 14,
                      ),
                      Container(
                        height: 100,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: tokoOffline.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushNamed('/list');
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                padding: EdgeInsets.all(14),
                                width: 200,
                                decoration: BoxDecoration(
                                    border: Border.all(
                                      color: Colors.white54,
                                    ),
                                    borderRadius: BorderRadius.circular(5)),
                                height: 80,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      // width: 48,
                                      child: Text(
                                        "${tokoOffline[index]}",
                                        maxLines: 2,
                                        softWrap: true,
                                        style: boldTextWhite,
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 7, vertical: 2),
                                      decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius:
                                              BorderRadius.circular(50)),
                                      child: Text(
                                        "Tersedia",
                                        softWrap: true,
                                        style: boldTextBlacke,
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
                SizedBox(
                  height: 14,
                ),
                Container(
                  padding: EdgeInsets.all(14),
                  color: colorDark,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.safety_check),
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Garansi Jamtangan.com",
                              style: generalTextWhite,
                            ),
                            Text(
                              "2 Tahun",
                              style: generalTextWhite,
                            ),
                          ],
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                      Divider(),
                      ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "100% New Original",
                              style: boldTextOrange,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Produk Jamtangan.com 100% produk baru dan original.",
                              style: generalTextWhite,
                            ),
                          ],
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      ),
                      Divider(),
                      ListTile(
                        title: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "3 hari Pengembalian",
                              style: boldTextOrange,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Kamu punya jangka waktu 3 hari untuk mengembalikan produk :)",
                              style: generalTextWhite,
                            ),
                          ],
                        ),
                        trailing: Icon(Icons.keyboard_arrow_right),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 14,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: OutlinedButton(
                      style: ButtonStyle(),
                      onPressed: () {},
                      child: Container(
                        height: 50,
                        child: Center(
                          child: Text(
                            "TIPS MEMILIH JAM TANGAN",
                            style: boldTextOrange,
                          ),
                        ),
                      )),
                ),
                SizedBox(
                  height: 14,
                ),
                Container(
                  // padding: EdgeInsets.all(14),
                  color: colorDark,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          for (var index = 0; index < tabs.length; index++)
                            Expanded(
                                child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedTab = index;
                                });
                              },
                              child: Container(
                                decoration: BoxDecoration(
                                    color: selectedTab == index
                                        ? colorDark
                                        : colorBlack),
                                height: 40,
                                child: Center(
                                  child: Text(
                                    "${tabs[index]}",
                                    style: boldTextOrange.copyWith(
                                        color: selectedTab == index
                                            ? colorOrange
                                            : Colors.white24),
                                  ),
                                ),
                              ),
                            )),
                        ],
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 14, vertical: 14),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Model No",
                              style: boldTextWhite,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "FS4835",
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Text(
                              "Brand",
                              style: boldTextWhite,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "FOSSIL",
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Text(
                              "Series",
                              style: boldTextWhite,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "Fossil Grant",
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Text(
                              "Gender",
                              style: boldTextWhite,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "pria",
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Text(
                              "Colour",
                              style: boldTextWhite,
                            ),
                            SizedBox(
                              height: 7,
                            ),
                            Text(
                              "biru\nrose-gold",
                            ),
                            SizedBox(
                              height: 14,
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 14),
                              child: OutlinedButton(
                                  style: ButtonStyle(),
                                  onPressed: () {},
                                  child: Container(
                                    height: 50,
                                    child: Center(
                                      child: Text(
                                        "LIHAT SELENGKAPNYA",
                                        style: boldTextWhite,
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            )),
            Container(
              width: double.infinity,
              color: Color(0xff424242),
              padding: EdgeInsets.symmetric(horizontal: 7, vertical: 7),
              child: Row(
                children: [
                  Expanded(
                      child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              backgroundColor: colorBlack,
                              foregroundColor: colorOrange),
                          onPressed: () {},
                          child: Text(
                            "+ KERANJANG",
                            style:
                                generalTextWhite.copyWith(color: colorOrange),
                          ))),
                  SizedBox(
                    width: 14,
                  ),
                  Expanded(
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.amber,
                          ),
                          onPressed: () {},
                          child: Text(
                            "BELI SEKARANG",
                            style: generalTextWhite,
                          ))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ImageCarousel extends StatefulWidget {
  @override
  _ImageCarouselState createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  List images = [
    'https://assets.jamtangan.com/images/product/garmin/010-02810-54/1l.jpg',
    'https://assets.jamtangan.com/images/product/garmin/010-02810-54/2l.jpg',
    'https://assets.jamtangan.com/images/product/garmin/010-02810-54/3l.jpg',
  ];
  int _current = 0;
  final CarouselController _controller = CarouselController();

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = images
        .map((item) => Container(
              child: Container(
                margin: EdgeInsets.all(5.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(5.0)),
                    child:
                        Image.network(item, fit: BoxFit.cover, width: 1000.0)),
              ),
            ))
        .toList();

    return Stack(
      children: [
        Container(
          // height: 70,
          child: CarouselSlider(
            items: imageSliders,
            carouselController: _controller,
            options: CarouselOptions(
                // autoPlay: true,
                viewportFraction: 1.0,
                aspectRatio: 1,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            margin: EdgeInsets.only(bottom: 14),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(images.length, (int index) {
                return AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  width: _current == index ? 10 : 8,
                  height: 8,
                  margin: const EdgeInsets.symmetric(horizontal: 4),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: _current == index ? colorOrange : Colors.grey,
                  ),
                );
              }),
            ),
          ),
        ),
      ],
    );
  }
}
