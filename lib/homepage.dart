import 'package:flutter/material.dart';
import 'package:free_class_fitek/detail.dart';
import 'package:free_class_fitek/model.dart';
import 'package:free_class_fitek/theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Find the best skincare',
          style: title,
        ),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 16, left: 30, right: 30, bottom: 25),
        child: Container(
          child: ListView.builder(
            itemCount: dataSkinCare.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 27),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                DetailPage(dataSkinCare[index])));
                  },
                  child: buildItem(
                      dataSkinCare[index].title,
                      dataSkinCare[index].imgUrl,
                      dataSkinCare[index].price,
                      dataSkinCare[index].rating),
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  Widget buildItem(String title, String img, int price, double rating) {
    return Container(
      width: 351,
      height: 125,
      decoration:
          BoxDecoration(color: creme, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 17, bottom: 17, left: 11, right: 15),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                img,
                height: 90,
                width: 90,
              ),
            ),
            const SizedBox(
              width: 11,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 224,
                  child: Text(
                    title,
                    style: titleAndPriceItem,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star_rounded,
                      color: gold,
                      size: 15,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(
                      ' $rating (267 Reviews)',
                      style: ratingText,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 28,
                ),
                Text(
                  'Rp $price',
                  style: titleAndPriceItem,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
