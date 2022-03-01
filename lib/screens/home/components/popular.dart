import 'package:fashion_app/screens/home/components/product_card.dart';
import 'package:fashion_app/screens/home/components/section_title.dart';
import 'package:flutter/cupertino.dart';

import '../../../constants.dart';
import '../../../models/Product.dart';

class Popular extends StatelessWidget {
  const Popular({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          title: "Popular",
          pressSeeAll: () {},
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                demo_product.length,
                (index) => Padding(
                      padding: (index + 1) != demo_product.length
                          ? const EdgeInsets.only(right: defaultPadding)
                          : const EdgeInsets.all(0),
                      child: ProductCard(
                        image: demo_product[index].image,
                        title: demo_product[index].title,
                        bgColor: bgColor,
                        price: demo_product[index].price,
                        press: () {},
                      ),
                    )),
          ),
        )
      ],
    );
  }
}
