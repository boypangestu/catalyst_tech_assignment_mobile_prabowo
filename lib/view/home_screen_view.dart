import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:technical_test_prabowo/models/home_screen_model.dart';
import 'package:technical_test_prabowo/style.dart';
import 'package:technical_test_prabowo/view_models/home_view_model.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return [
              SliverToBoxAdapter(
                child: Container(
                  height: 35,
                  color: colorOrange,
                  child: Center(
                    child: Text(
                      "Promo 1",
                      style: TextStyle(color: colorWhite),
                    ),
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Container(
                  // padding: EdgeInsets.symmetric(vertical: ),
                  margin: EdgeInsets.symmetric(horizontal: 14),
                  alignment: Alignment.centerLeft,
                  height: 50,
                  color: colorBlack,
                  child: Image.asset(
                    "assets/logo.png",
                    width: 150,
                  ),
                ),
              ),
              HomeAppBar(),
            ];
          },
          body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 14),
                  HomeMenuList(),
                  ImageCarousel(),
                  SizedBox(height: 14),
                  BrandSection(),
                  SizedBox(height: 14),
                  ProductList(),
                  SizedBox(height: 14),
                  AccessoriesSection(),
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        backgroundColor: colorDark,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Product List',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.login),
            label: 'Sign in',
          ),
        ],
        currentIndex: context.watch<HomeViewModel>().selectedIndex,
        selectedItemColor: colorOrange,
        unselectedItemColor: Colors.white70,
        onTap: (int index) {
          context.read<HomeViewModel>().onItemTapped(index, context);
        },
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      backgroundColor: colorBlack,
      // expandedHeight: 200,
      flexibleSpace: FlexibleSpaceBar(
        expandedTitleScale: 1,
        background: Container(
          // color: Colors.amber,
          child: Column(
            children: [],
          ),
        ),
      ),
      title: Container(
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Cari di Jamtangan.com',
                  prefixIcon: Icon(Icons.search),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              width: 14,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed('/signin');
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.login),
                  Text(
                    "Sign in",
                    style: generalTextWhite.copyWith(fontSize: 10),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HomeMenuList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeViewModel = Provider.of<HomeViewModel>(context);

    return Container(
      margin: EdgeInsets.only(left: 14),
      // color: color_2,
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: homeViewModel.homeMenuList.length,
        itemBuilder: (BuildContext context, int index) {
          final menu = homeViewModel.homeMenuList[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed('/list');
            },
            child: Container(
              margin: EdgeInsets.only(right: 16),
              child: Column(
                children: [
                  Container(
                    child: Icon(
                      Icons.watch,
                      color: colorOrange,
                    ),
                    height: 50,
                    width: 50,
                    margin: EdgeInsets.only(bottom: 4),
                    decoration: BoxDecoration(
                        color: colorDark,
                        borderRadius: BorderRadius.all(Radius.circular(5))),
                  ),
                  SizedBox(height: 8),
                  Container(
                    width: 48,
                    // height: 40,
                    child: Text(
                      menu.title.toUpperCase(),
                      maxLines: 2,
                      softWrap: true,
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.white, fontSize: 8),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}

class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeViewModel = Provider.of<HomeViewModel>(context);

    final List<Widget> imageSliders = homeViewModel.imgCarousel
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
    // Build image carousel widget
    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 14),
          // height: 70,
          child: CarouselSlider(
            items: imageSliders,
            carouselController: homeViewModel.carouselController,
            options: CarouselOptions(
                autoPlay: true,
                viewportFraction: 1.0,
                aspectRatio: 2.0,
                onPageChanged: (index, reason) {
                  // setState(() {
                  //   _current = index;
                  // });
                }),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              List.generate(homeViewModel.imgCarousel.length, (int index) {
            return AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              width: homeViewModel.currentSlider == index ? 10 : 8,
              height: 8,
              margin: const EdgeInsets.symmetric(horizontal: 4),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: homeViewModel.currentSlider == index
                    ? colorOrange
                    : Colors.grey,
              ),
            );
          }),
        ),
      ],
    );
  }
}

class BrandSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeViewModel = Provider.of<HomeViewModel>(context);

    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Brand Terpopuler!",
                style: boldTextOrange.copyWith(fontSize: 16),
              ),
              Text(
                "Lihat Semua".toUpperCase(),
                style: TextStyle(fontSize: 12, color: colorWhite),
              ),
            ],
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            // color: color_2,
            height: 140,
            child: GridView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: homeViewModel.imgBrands.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 6,
                  mainAxisSpacing: 6,
                  childAspectRatio: 2 / 3),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/list');
                  },
                  child: Container(
                    padding: EdgeInsets.all(14),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.white54,
                        ),
                        borderRadius: BorderRadius.circular(5)),
                    height: 80,
                    child: Image.network('${homeViewModel.imgBrands[index]}'),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Build product list widget
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 14),
            child: Text(
              "Seru Terbaru",
              style: boldTextOrange.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            // color: color_2,
            height: 280,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(
                  width: 10,
                ),
                for (var i = 0; i < 10; i++)
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushNamed('/detail');
                      },
                      child: Container(
                        width: 150,
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
                                                        BorderRadius.circular(
                                                            15)),
                                                margin: EdgeInsets.all(10),
                                                padding: EdgeInsets.symmetric(
                                                  vertical: 4,
                                                  horizontal: 7,
                                                ),
                                                child: Text(
                                                  "TERLARIS",
                                                  style:
                                                      boldTextOrange.copyWith(
                                                    color: colorWhite,
                                                  ),
                                                ),
                                              ),
                                              Spacer(),
                                              Container(
                                                width: double.infinity,
                                                color: colorOrange,
                                                padding: EdgeInsets.symmetric(
                                                  horizontal: 4,
                                                  vertical: 2,
                                                ),
                                                child: Text("BUNDLING STRAP",
                                                    style: generalTextWhite
                                                        .copyWith(
                                                            color: colorBlack,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                      style:
                                          boldTextOrange.copyWith(fontSize: 16),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      "Rp1.000.000",
                                      maxLines: 1,
                                      style: boldTextOrange.copyWith(
                                          fontSize: 10, color: Colors.white54),
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
                                          fontSize: 10, color: Colors.white54),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class AccessoriesSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final homeViewModel = Provider.of<HomeViewModel>(context);

    // Build accessories section widget
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 14),
            child: Text(
              "Bikin Jam Kamu Makin Keren",
              style: boldTextOrange.copyWith(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 14,
          ),
          Container(
            child: GridView.builder(
              shrinkWrap: true,
              itemCount: homeViewModel.aksesoris.length,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  // crossAxisSpacing: 6,
                  // mainAxisSpacing: 6,
                  childAspectRatio: 2.5 / 3),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {},
                  child: Container(
                    // padding: EdgeInsets.all(14),
                    height: 80,
                    child: Column(
                      children: [
                        Image.network(
                            '${homeViewModel.aksesoris[index]['img']}'),
                        Text(
                          '${homeViewModel.aksesoris[index]['title']}',
                          style: boldTextWhite,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
