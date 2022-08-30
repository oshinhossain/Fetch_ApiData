import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/details_provider.dart';
import 'package:http/http.dart' as http;

class DetailsInfo extends StatefulWidget {
  const DetailsInfo({Key? key}) : super(key: key);

  @override
  _DetailsInfoState createState() => _DetailsInfoState();
}

class _DetailsInfoState extends State<DetailsInfo> {
  @override
  void initState() {
    DetailsProvider detailsProvider = Provider.of(context, listen: false);
    detailsProvider.getDetail();
    super.initState();
  }

  Widget build(BuildContext context) {
    DetailsProvider detailsProvider = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('njnjnn'),
      ),
      body: ListView.builder(
        itemCount: detailsProvider.detailsInfo!.data?.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(
              detailsProvider.detailsInfo!.data![index].email.toString(),
              style: TextStyle(color: Colors.red),
            ),
            subtitle: Text(
                detailsProvider.detailsInfo!.data![index].firstName.toString()),
          );
        },
      ),
    );
  }
}
