import 'package:flutter/material.dart';
import 'package:free_class_fitek/model.dart';
import 'package:free_class_fitek/theme.dart';

class DetailPage extends StatelessWidget {
  DetailPage(this.scarlettProduct);
  ScarlettProduct scarlettProduct;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        actions: const [Icon(Icons.favorite_border)],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Image.asset(scarlettProduct.imgUrl,height: 330,),
          Padding(
            padding: const EdgeInsets.only(
              top: 17,
              left: 25,
              right: 25
            ),
            child: Column(
              children: [
                Container(
                  width: 330,
                  child: Text(
                    scarlettProduct.title,
                    style: titleDetail,
                    maxLines: 2,
                  ),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
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
                      ' ${scarlettProduct.rating} (267 Reviews)',
                      style: ratingText.copyWith(fontSize: 12),
                    ),
                      ],
                    ),
                    Text(
                      'Rp ${scarlettProduct.price}',
                      style: titleAndPriceItem,
                    ) , 
                  ],
                ),
                SizedBox(height: 25,),
                Text(scarlettProduct.detail , style: detailText,)
              ],
            ),
            )
          ],
      )),
    );
  }
}
