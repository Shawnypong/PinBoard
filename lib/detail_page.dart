import 'package:cached_network_image/cached_network_image.dart';
import 'package:faker/faker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:like_button/like_button.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, required this.imageUrl});
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: CachedNetworkImageProvider(imageUrl),
                  fit: BoxFit.cover,
                ),
              ),
              child: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 14),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () => Navigator.pop(context),
                            child: CircleAvatar(
                              backgroundColor: Colors.blueGrey.withOpacity(0.2),
                              child: const Icon(
                                CupertinoIcons.chevron_back,
                                color: Colors.white,
                                size: 24,
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
                            child: const Icon(
                              CupertinoIcons.ellipsis,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.only(
              top: 10,
              bottom: 30,
              left: 18,
              right: 18,
            ),
            color: Colors.blueGrey,

            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (context) {
                        return SizedBox(
                          height: 340,
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 14),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                                      'Share to..',
                                      style: GoogleFonts.notoSans(),
                                    ),
                                  ],
                                ),

                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: Image.asset('assets/images/link.png'),
                                  ),
                                  Container(
                                    child: Image.asset('assets/images/instagram.png'),
                                  ),
                                  Container(
                                    child: Image.asset('assets/images/facebook.png'),
                                  ),
                                ],
                              ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const SizedBox(
                                      width: 34,
                                    ),
                                    Text(
                                      'Copy',
                                      style: GoogleFonts.notoSans(),
                                    ),
                                    const SizedBox(
                                      width: 37,
                                    ),
                                    Text(
                                      'Instagram',
                                      style: GoogleFonts.notoSans(),
                                    ),
                                    const SizedBox(
                                      width: 24,
                                    ),
                                    Text(
                                      'Facebook',
                                      style: GoogleFonts.notoSans(),
                                    ),
                                    const SizedBox(
                                      width: 17,
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                   Container(
                                      child: Image.asset('assets/images/naver.png'),
                                    ),
                                    Container(
                                      child: Image.asset('assets/images/twitter X.png'),
                                    ),
                                    Container(
                                      child: Image.asset('assets/images/youtube.png'),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    const SizedBox(
                                      width: 17,
                                    ),
                                    Text(
                                      'Naver',
                                      style: GoogleFonts.notoSans(),
                                    ),
                                    const SizedBox(
                                      width: 44,
                                    ),
                                    Text(
                                      'X',
                                      style: GoogleFonts.notoSans(),
                                    ),
                                    const SizedBox(
                                      width: 39,
                                    ),
                                    Text(
                                      'Youtube',
                                      style: GoogleFonts.notoSans(),
                                    ),
                                    const SizedBox(
                                      width: 7,
                                    ),
                                  ],
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
                  child: const Icon(
                    Icons.share_sharp,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 17, vertical: 14),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F1F1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: LikeButton(
                        size: 24,
                        circleColor:
                        CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Color(0xff33b5e5),
                          dotSecondaryColor: Color(0xff0099cc),
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            CupertinoIcons.heart_fill,
                            color: isLiked ? Colors.cyan : Colors.grey,
                            size: 24,
                          );
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 17, vertical: 14),
                      decoration: BoxDecoration(
                        color: const Color(0xFFF1F1F1),
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: LikeButton(
                        size: 24,
                        circleColor:
                        CircleColor(start: Color(0xff00ddff), end: Color(0xff0099cc)),
                        bubblesColor: BubblesColor(
                          dotPrimaryColor: Color(0xff33b5e5),
                          dotSecondaryColor: Color(0xff0099cc),
                        ),
                        likeBuilder: (bool isLiked) {
                          return Icon(
                            CupertinoIcons.arrow_down_circle_fill,
                            color: isLiked ? Colors.cyan : Colors.grey,
                            size: 24,
                          );
                        },
                      ),
                    ),
                  ],
                ),
                CircleAvatar(
                  backgroundColor: Colors.white.withOpacity(0.8),
                  child: const Icon(
                    CupertinoIcons.viewfinder,
                    color: Colors.black,
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