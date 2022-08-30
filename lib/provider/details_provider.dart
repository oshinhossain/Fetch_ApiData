import 'package:flutter/cupertino.dart';

import 'package:flutter/cupertino.dart';

import '../model/details_model.dart';
import '../service/http_details.dart';

class DetailsProvider extends ChangeNotifier {
  // List<DetailsInfo>? detailList = [];

  DetailsInfo? detailsInfo;
  getDetail() async {
    var data = await getDetailsData();
    detailsInfo = data as DetailsInfo?;
    notifyListeners();
  }
//   List<Map<String, dynamic>> data_list = [];
//
//   List<DetailsInfo?> details_List = [];
//
//   getDetails() async {
//     // isloading = true;
//     var data = await getDetailData();
//     details_List = data!.toList();
//     // isloading = true;
//     notifyListeners();
//   }
}
