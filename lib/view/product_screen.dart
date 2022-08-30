import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/product_http.dart';

class ProductData extends StatefulWidget {
  const ProductData({Key? key}) : super(key: key);

  @override
  _ProductDataState createState() => _ProductDataState();
}

class _ProductDataState extends State<ProductData> {
  @override
  void initState() {
    ProductProvider productProvider = Provider.of(context, listen: false);
    productProvider.getData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ProductProvider productProvider = Provider.of(context);
    return Scaffold(
        appBar: AppBar(title: Text("edjewj")),
        body: GridView.builder(
            itemCount: productProvider.productModel.length,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 1,
            ),
            itemBuilder: (context, index) {
              return Card(
                child: Column(
                  children: [
                    Expanded(
                      child: Container(
                          child: Image.network(productProvider
                              .productModel![index]!.image
                              .toString())),
                    ),
                    Text(productProvider.productModel![index]!.title.toString())
                  ],
                ),
              );
            }));
  }
}
