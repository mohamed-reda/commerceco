import 'package:flutter/foundation.dart';

import '../../../model/navigate_models/offer_models/offer_model.dart';

//as category provider
class ProviderOfOffer extends ChangeNotifier {
//  OfferPresenter _offerPresenter;
  int currentPage = 0;
  List<Offers> _listOfOffers;
  Future<List<Offers>> getOnlineList() async {
//    var accountRepository = OffersRepository();
//    var dataOrError = await accountRepository.getOffers(0);
//    if (dataOrError.status == ApiStatus.SUCCESS) {
//      _listOfOffers = dataOrError.data.data;
//      for (var item in dataOrError.data.data) print('SUCCESS${item.itemName}');
//    } else {
//      print('error${dataOrError.error}');
//    }
//    return _listOfOffers;
  }

  getMoreOnlineList() {}

  List<Offers> getList() => _listOfOffers;

  void notify() {
    notifyListeners();
  }

  get myList => _listOfOffers;
}
