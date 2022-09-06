import 'package:ebook_app_ui/constant/color_constant.dart';
import 'package:ebook_app_ui/model/book_model.dart';
import 'package:ebook_app_ui/ui/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedCategory = 0;

  // ignore: prefer_final_fields
  List<BookModel> _boolList = [
    BookModel(
      description:
          'This high-fantasy novel is a famous three volume epic. It centers around an all powerful ring forged by the Dark Lord Sauron. For many years the ring is sought after by all likes, but at the start of the novel,',
      price: '340',
      rating: '4.5',
      title: 'Lord of the Rings',
      image:
          'https://orion-uploads.openroadmedia.com/sm_f7e651-tolkien-lordoftherings.jpg',
      author: 'J.R.R. Tolkien',
      followers: '1200',
      views: '2.1k',
      following: '860',
    ),
    BookModel(
      description:
          'The most recent novel on this list, Harry Potter and the Sorcerer’s Stone brings readers into a world of magic at Hogwarts School of Witchcraft and Wizardry. On his eleventh birthday, Harry’s magical heritage is brought to light by the bumbling half-giant Hagrid.',
      price: '500',
      rating: '4.5',
      title: 'Harry Potter',
      image: 'https://orion-uploads.openroadmedia.com/sm_9333ba5b72d2-hp.jpg',
      author: 'J.K. Rowling',
      followers: '1200',
      views: '1.1k',
      following: '800',
    ),
    BookModel(
      description:
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
      price: '300',
      rating: '4.5',
      title: 'And Then There Were None',
      image:
          'https://orion-uploads.openroadmedia.com/sm_e82064-and-then-there-were-none.jpg',
      author: 'Agatha Christie',
      followers: '1600',
      views: '1.1k',
      following: '800',
    ),
    BookModel(
      description:
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
      price: '300',
      rating: '4.5',
      title: 'Alices Adventures',
      image: 'https://book-assets.openroadmedia.com/9781497644984.jpg',
      author: 'Lewis Carroll',
      followers: '1240',
      views: '1.1k',
      following: '800',
    ),
    BookModel(
      description:
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
      price: '300',
      rating: '4.5',
      title: 'The Lion, the Witch',
      image:
          'https://orion-uploads.openroadmedia.com/sm_c19ae1-the-lion-the-witch-and-the-wardrobe-book.jpg',
      author: 'C.S. Lewis',
      followers: '1200',
      views: '1.1k',
      following: '800',
    ),
    BookModel(
      description:
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
      price: '300',
      rating: '4.5',
      title: 'Pinocchio',
      image: 'https://book-assets.openroadmedia.com/9781497679276.jpg',
      author: 'Carlo Collodi',
      followers: '1200',
      views: '6.1k',
      following: '850',
    ),
    BookModel(
      description:
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
      price: '300',
      rating: '4.5',
      title: 'The World of Abstract Art',
      image: 'https://m.media-amazon.com/images/I/511WHFP7R5S.jpg',
      author: 'Sophine Rox',
      followers: '1200',
      views: '1.1k',
      following: '800',
    ),
    BookModel(
      description:
          'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.',
      price: '300',
      rating: '4.5',
      title: 'The World of Abstract Art',
      image: 'https://m.media-amazon.com/images/I/511WHFP7R5S.jpg',
      author: 'Sophine Rox',
      followers: '1200',
      views: '1.1k',
      following: '800',
    ),
  ];
  List<String> _bookCategory = [
    'For You',
    'Popular',
    'All Books',
    'New release',
    'Gold',
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: size.height * .55,
            width: size.width,
            decoration: BoxDecoration(
                color: ColorConstant.appColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(
                    40.0,
                  ),
                )),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * .05,
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: size.width * .04),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // Image.asset(
                      //   'assets/images/menu.png',
                      //   width: size.width * .1,
                      // ),
                      SvgPicture.asset(
                        'assets/images/menu.svg',
                        semanticsLabel: 'Acme Logo',
                        width: size.width * .1,
                      ),
                      Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            color: Colors.white30,
                            borderRadius: BorderRadius.circular(
                              10.0,
                            )),
                        child: Icon(
                          Icons.search_outlined,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
                Container(
                    margin: EdgeInsets.symmetric(
                      horizontal: size.width * .04,
                    ),
                    child: Text(
                      'What do\nyou want to Read ?',
                      style: TextStyle(
                        fontSize: size.width * .08,
                        color: Colors.white,
                      ),
                    )),
                SizedBox(
                  height: size.height * .02,
                ),
                Container(
                  height: size.height * .06,
                  margin: EdgeInsets.only(
                    left: size.width * .04,
                  ),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _bookCategory.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              _selectedCategory = index;
                            });
                          },
                          child: Container(
                            margin: EdgeInsets.only(
                              right: size.width * .05,
                            ),
                            child: Text(
                              _bookCategory[index],
                              style: TextStyle(
                                color: _selectedCategory == index
                                    ? Colors.white
                                    : Colors.white54,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: size.width * .04,
                  ),
                  height: size.height * .2,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _boolList.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookDetails(
                                        similar_books: _boolList,
                                        bookModel: _boolList[index],
                                      )),
                            );
                          },
                          child: Container(
                              width: size.width * .46,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                              ),
                              padding: EdgeInsets.all(
                                6.0,
                              ),
                              margin: EdgeInsets.only(
                                right: size.width * .05,
                              ),
                              child: Row(
                                children: [
                                  ClipRRect(
                                    borderRadius: BorderRadius.circular(
                                      10.0,
                                    ),
                                    child: Image.network(
                                      _boolList[index].image,
                                      height: size.height * .15,
                                    ),
                                  ),
                                  SizedBox(
                                    width: size.width * .02,
                                  ),
                                  Column(
                                    children: [
                                      SizedBox(
                                        height: size.height * .02,
                                      ),
                                      SizedBox(
                                        width: size.width * .2,
                                        child: Text(
                                          _boolList[index].title,
                                          maxLines: 3,
                                          style: TextStyle(
                                            fontSize: size.width * .04,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: size.height * .02,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Container(
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.star,
                                                  color: ColorConstant
                                                      .secondaryColor,
                                                  size: size.width * .04,
                                                ),
                                                Text(
                                                  _boolList[index].rating,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .secondaryColor,
                                                    fontSize: size.width * .04,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            padding: EdgeInsets.all(4),
                                            decoration: BoxDecoration(
                                                color: ColorConstant
                                                    .secondaryColor
                                                    .withOpacity(.5),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                  10.0,
                                                )),
                                            child: Row(
                                              children: [
                                                Icon(
                                                  Icons.remove_red_eye_outlined,
                                                  color: ColorConstant
                                                      .secondaryColor,
                                                  size: size.width * .04,
                                                ),
                                                Text(
                                                  _boolList[index].views,
                                                  style: TextStyle(
                                                    color: ColorConstant
                                                        .secondaryColor,
                                                    fontSize: size.width * .025,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  )
                                ],
                              )),
                        );
                      }),
                ),
                SizedBox(
                  height: size.height * .02,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: size.width * .04,
              right: size.width * .04,
              top: size.width * .04,
            ),
            child: Text(
              'New Releases',
              style: TextStyle(
                fontSize: size.width * .06,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: size.width * .04,
              right: size.width * .04,
            ),
            child: GridView.custom(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverWovenGridDelegate.count(
                crossAxisCount: 4,
                mainAxisSpacing: 8,
                crossAxisSpacing: 8,
                pattern: [
                  // WovenGridTile(1),
                  const WovenGridTile(
                    5 / 12.5,
                    crossAxisRatio: 0.9,
                    alignment: AlignmentDirectional.centerEnd,
                  ),
                ],
              ),
              childrenDelegate: SliverChildBuilderDelegate(
                childCount: _boolList.length,
                (context, index) => GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => BookDetails(
                                bookModel: _boolList[index],
                                similar_books: _boolList,
                              )),
                    );
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(
                          10.0,
                        ),
                        child: Image.network(
                          _boolList[index].image,
                          width: size.width * .2,
                          height: size.height * .15,
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(
                        height: size.height * .01,
                      ),
                      Text(
                        _boolList[index].title,
                        maxLines: 2,
                        style: TextStyle(
                          fontSize: size.width * .03,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(
                        height: size.height * .01,
                      ),
                      Container(
                        width: size.width * .12,
                        padding: EdgeInsets.all(4),
                        decoration: BoxDecoration(
                            color:
                                ColorConstant.secondaryColor.withOpacity(.25),
                            borderRadius: BorderRadius.circular(
                              10.0,
                            )),
                        child: Center(
                          child: Row(
                            children: [
                              Text(
                                String.fromCharCodes(new Runes('\u0024')) +
                                    _boolList[index].price,
                                style: TextStyle(
                                  color: ColorConstant.secondaryColor,
                                  fontSize: size.width * .035,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
