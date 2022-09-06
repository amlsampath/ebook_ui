import 'package:ebook_app_ui/constant/color_constant.dart';
import 'package:ebook_app_ui/model/book_model.dart';
import 'package:ebook_app_ui/ui/reusable_widget/icon_text_box.dart';
import 'package:flutter/material.dart';

class BookDetails extends StatefulWidget {
  final BookModel bookModel;
  final List<BookModel> similar_books;
  const BookDetails({
    required this.similar_books,
    required this.bookModel,
    Key? key,
  }) : super(key: key);

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * .04),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(Icons.arrow_back_outlined)),
                    Icon(
                      Icons.search_outlined,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Center(
                child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                        10.0,
                      ),
                    ),
                    padding: EdgeInsets.all(
                      6.0,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                          child: Image.network(
                            widget.bookModel.image,
                            height: size.height * .28,
                            width: size.width * .4,
                            fit: BoxFit.fill,
                          ),
                        ),
                        SizedBox(
                          width: size.width * .02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: size.width * .5,
                              child: Text(
                                widget.bookModel.title,
                                maxLines: 3,
                                style: TextStyle(
                                  fontSize: size.width * .06,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: size.height * .02,
                            ),
                            Center(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.star,
                                        color: ColorConstant.secondaryColor,
                                        size: size.width * .04,
                                      ),
                                      Text(
                                        widget.bookModel.rating,
                                        style: TextStyle(
                                          color: ColorConstant.secondaryColor,
                                          fontSize: size.width * .04,
                                        ),
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: size.width * .04,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        color: ColorConstant.secondaryColor
                                            .withOpacity(.5),
                                        borderRadius: BorderRadius.circular(
                                          10.0,
                                        )),
                                    child: Row(
                                      children: [
                                        Icon(
                                          Icons.remove_red_eye_outlined,
                                          color: ColorConstant.secondaryColor,
                                          size: size.width * .04,
                                        ),
                                        Text(
                                          widget.bookModel.views,
                                          style: TextStyle(
                                            color: ColorConstant.secondaryColor,
                                            fontSize: size.width * .035,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: size.height * .02,
                            ),
                            Container(
                              padding: EdgeInsets.all(8.0),
                              decoration: BoxDecoration(
                                  color: ColorConstant.appColor,
                                  borderRadius: BorderRadius.circular(10.0)),
                              child: Text(
                                'Buy for ${String.fromCharCodes(new Runes('\u0024')) + widget.bookModel.price}',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    )),
              ),
              SizedBox(
                height: size.height * .02,
              ),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width * .02,
                ),
                child: Text(
                  'In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form.',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 18,
                  ),
                ),
              ),
              SizedBox(height: size.height * .01),
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: size.width * .04,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                            radius: (32),
                            backgroundColor: Colors.white,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.network(
                                "https://dl.memuplay.com/new_market/img/com.vicman.newprofilepic.icon.2022-06-07-21-33-07.png",
                                fit: BoxFit.cover,
                              ),
                            )),
                        SizedBox(
                          width: size.width * .02,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.bookModel.author,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(
                                2.0,
                              ),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  10.0,
                                ),
                                color: ColorConstant.appColor.withOpacity(.2),
                              ),
                              child: Text(
                                'Author',
                                style: TextStyle(
                                    color: ColorConstant.appColor,
                                    fontSize: size.width * .025),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        IconTextBox(
                          title: 'Followers',
                          count: widget.bookModel.followers,
                        ),
                        SizedBox(
                          height: size.height * .01,
                        ),
                        IconTextBox(
                          title: 'Following',
                          count: widget.bookModel.following,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomSheet: Container(
            height: size.height * .36,
            width: size.width,
            decoration: BoxDecoration(
                color: ColorConstant.appColor,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(
                      50.0,
                    ),
                    topRight: Radius.circular(
                      50.0,
                    ))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: size.height * .01,
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: size.width * .04,
                    right: size.width * .04,
                    top: size.width * .04,
                  ),
                  child: Text(
                    'Similar Books',
                    style: TextStyle(
                      fontSize: size.width * .06,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .01,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: widget.similar_books.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BookDetails(
                                        bookModel: widget.similar_books[index],
                                        similar_books: widget.similar_books,
                                      )),
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.all(
                              5.0,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                  child: Image.network(
                                    widget.similar_books[index].image,
                                    width: size.width * .2,
                                    height: size.height * .15,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * .01,
                                ),
                                SizedBox(
                                  width: size.width * .2,
                                  child: Text(
                                    widget.similar_books[index].title,
                                    maxLines: 2,
                                    style: TextStyle(
                                        fontSize: size.width * .03,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  height: size.height * .01,
                                ),
                                Container(
                                  width: size.width * .12,
                                  padding: EdgeInsets.all(4),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(
                                        10.0,
                                      )),
                                  child: Center(
                                    child: Row(
                                      children: [
                                        Text(
                                          String.fromCharCodes(
                                                  new Runes('\u0024')) +
                                              widget.similar_books[index].price,
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
                        );
                      }),
                ),
              ],
            )));
  }
}
