import 'package:flutter/material.dart';
import 'package:technical_test_prabowo/style.dart';

class ListProductPage extends StatefulWidget {
  @override
  _ListProductPageState createState() => _ListProductPageState();
}

class _ListProductPageState extends State<ListProductPage> {
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
            Row(
              children: [
                Text(
                  "Harga",
                  style: generalTextWhite,
                )
              ],
            ),
            SizedBox(
              width: 7,
            ),
            Icon(Icons.more_vert)
          ],
        ),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SafeArea(
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(left: 14),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 7),
                      child: Chip(
                        label: Text("Filter"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 7),
                      child: Chip(
                        label: Text("Terbaru"),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(right: 7),
                      child: Chip(
                        label: Text("Terlaris"),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(14),
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                        childAspectRatio: 3 / 5.5),
                    children: [
                      for (var i = 0; i < 10; i++)
                        GestureDetector(
                          onTap: () {
                            Navigator.of(context).pushNamed('/detail');
                          },
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                                color: colorDark,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              children: [
                                AspectRatio(
                                  aspectRatio: 1,
                                  child: Stack(
                                    children: [
                                      Container(
                                        padding: EdgeInsets.all(16),
                                        child: Image.network(
                                            'https://assets.jamtangan.com/images/product/garmin/010-02430-71/010-02430-71.jpg'),
                                      ),
                                      i == 0
                                          ? Container(
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Container(
                                                    decoration: BoxDecoration(
                                                        color: Colors.green,
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(15)),
                                                    margin: EdgeInsets.all(10),
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      vertical: 4,
                                                      horizontal: 7,
                                                    ),
                                                    child: Text(
                                                      "TERLARIS",
                                                      style: boldTextOrange
                                                          .copyWith(
                                                        color: colorWhite,
                                                      ),
                                                    ),
                                                  ),
                                                  Spacer(),
                                                  Container(
                                                    width: double.infinity,
                                                    color: colorOrange,
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                      horizontal: 4,
                                                      vertical: 2,
                                                    ),
                                                    child: Text(
                                                        "BUNDLING STRAP",
                                                        style: generalTextWhite
                                                            .copyWith(
                                                                color:
                                                                    colorBlack,
                                                                fontSize: 12)),
                                                  )
                                                ],
                                              ),
                                            )
                                          : SizedBox()
                                    ],
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Garmin Forerunner 265S 010-02810-54 Smartwatch Music Digital Dial Whitestone Rubber Strap",
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: generalTextWhite.copyWith(
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "Rp1.000.000",
                                          maxLines: 1,
                                          style: boldTextOrange.copyWith(
                                              fontSize: 16),
                                        ),
                                        SizedBox(
                                          height: 4,
                                        ),
                                        Text(
                                          "Rp1.000.000",
                                          maxLines: 1,
                                          style: boldTextOrange.copyWith(
                                              fontSize: 10,
                                              color: Colors.white54),
                                        ),
                                        SizedBox(
                                          height: 4,
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
                                          height: 4,
                                        ),
                                        Text(
                                          "120 Ulasan",
                                          maxLines: 1,
                                          style: boldTextOrange.copyWith(
                                              fontSize: 10,
                                              color: Colors.white54),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
