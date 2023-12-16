import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:faker/faker.dart';

import 'detail_page.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: TabBar(
                tabs: [
                  Container(
                    height: 24,
                    alignment: Alignment.center,
                    child: const Text(
                      'Browse',
                    ),
                  ),
                ],
                labelPadding: const EdgeInsets.only(bottom: 4),
                indicatorPadding: const EdgeInsets.symmetric(horizontal: 24),
                indicatorWeight: 4,
                indicatorColor: Colors.cyan,
                labelColor: Colors.cyan,
                unselectedLabelColor: Colors.black,
                controller: _tabController,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 7,
                    ),
                    child: MasonryGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 10,
                      crossAxisSpacing: 10,
                      itemBuilder: (context, index) {
                        return Column(
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailPage(
                                        imageUrl:
                                        'https://picsum.photos/${800 + index}/${(index % 2 + 1) * 970}'),
                                  ),
                                );
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: CachedNetworkImage(
                                  imageUrl:
                                  'https://picsum.photos/${800 + index}/${(index % 2 + 1) * 970}',
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => AspectRatio(
                                    aspectRatio:
                                    (800 + index) / ((index % 2 + 1) * 970),
                                    child: Container(
                                      color: Colors.cyan,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            InkWell(
                              onTap: () {
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return SizedBox(
                                      height: 340,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 14, vertical: 16),
                                        child: Column(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                const Icon(
                                                    FontAwesomeIcons.xmark),
                                                const SizedBox(
                                                  width: 14,
                                                ),
                                                Text(
                                                  'Options',
                                                  style: GoogleFonts.notoSans(),
                                                ),
                                              ],
                                            ),
                                            const SizedBox(
                                              height: 34,
                                            ),
                                            Text(
                                              'Follow ${Faker().internet.userName()}',
                                              style: GoogleFonts.notoSans(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 14,
                                            ),
                                            Text(
                                              'Copy link',
                                              style: GoogleFonts.notoSans(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 14,
                                            ),
                                            Text(
                                              'Download image',
                                              style: GoogleFonts.notoSans(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 14,
                                            ),
                                            Text(
                                              'Hide Pin',
                                              style: GoogleFonts.notoSans(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 14,
                                            ),
                                            Text(
                                              'Report Pin',
                                              style: GoogleFonts.notoSans(
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              "This goes against Pinterest's community guidelines",
                                              style: GoogleFonts.notoSans(
                                                fontSize: 14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    );
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20.0),
                                  ),
                                );
                              },
                              child: const Align(
                                alignment: Alignment.centerRight,
                                child: Icon(
                                  Icons.more_horiz,
                                  size: 24,
                                ),
                              )
                            ),
                          ],
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 34,
              color: Colors.cyan,
              padding: const EdgeInsets.symmetric(horizontal: 70),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const
                  Icon(
                    FontAwesomeIcons.house,
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