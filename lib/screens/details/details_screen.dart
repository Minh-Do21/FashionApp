import 'package:fashion_app/constants.dart';
import 'package:fashion_app/models/Product.dart';
import 'package:fashion_app/screens/details/bloc/details_bloc.dart';
import 'package:fashion_app/screens/details/bloc/details_state.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'ColorDort.dart';
import 'bloc/details_event.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailsBloc(product: product),
      child: DetailScreenForm(),
    );
  }
}

class DetailScreenForm extends StatefulWidget {

  DetailScreenForm();
  @override
  State<StatefulWidget> createState() =>
      DetailsScreenFormState();
}

class DetailsScreenFormState extends State<DetailScreenForm> {

  DetailsScreenFormState();
  @override
  Widget build(BuildContext context) {
    // var _state = BlocProvider.of<DetailsBloc>(context).state;

    return BlocConsumer<DetailsBloc, DetailsState>(
      listenWhen: (previous, current) => previous.product.colorProducts != current.product.colorProducts,
      listener: (context, state) {
      },
      builder: (context, state) {
        return Scaffold(
        backgroundColor: state.product.bgColor,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: const BackButton(
            color: Colors.black,
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                backgroundColor: Colors.white,
                child: SvgPicture.asset(
                  "assets/icons/Heart.svg",
                  height: 20,
                ),
              ),
            )
          ],
        ),
        body: Column(
          children: [
            Image.asset(
              state.product.image,
              height: MediaQuery.of(context).size.height * 0.4,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Expanded(
              child: Container(
                padding: const EdgeInsets.fromLTRB(defaultPadding,
                    defaultPadding * 2, defaultPadding, defaultPadding),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(defaulBorderRadius * 3),
                    topRight: Radius.circular(defaulBorderRadius * 3),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              state.product.title,
                              style: Theme.of(context).textTheme.headline6,
                            ),
                          ),
                          const SizedBox(
                            width: defaultPadding,
                          ),
                          Text(
                            "\$" + state.product.price.toString(),
                            style: Theme.of(context).textTheme.headline6,
                          )
                        ],
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(vertical: defaultPadding),
                        child: Text(
                            "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons."),
                      ),
                      const Text(
                        "Color",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(
                        height: defaultPadding / 2,
                      ),
                      
                      Row(
                        children: List.generate(
                          state.product.colorProducts.length,
                          (index) => ColorDort(
                            color: state.product.colorProducts[index].color,
                            isActive: state.product.colorProducts[index].isActive,
                            press: () {
                              BlocProvider.of<DetailsBloc>(context).add(SelectColor(index: index));
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: defaultPadding * 1.5,
                      ),
                      Center(
                        child: SizedBox(
                          width: 200,
                          height: 48,
                          child: ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                                shape: const StadiumBorder()),
                            child: Text("Add to cart"),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      );
      }
    );
  }
}
