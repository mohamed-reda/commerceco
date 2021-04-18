import 'package:app_settings/app_settings.dart';
import 'package:connectivity/connectivity.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get_it/get_it.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

import '../../../model/Area.dart';
import '../../../model/user/register_model.dart';
import '../../../utils/DialogUtility.dart';
import 'final_map.dart';

class ProviderOfRegister with ChangeNotifier {
  final addressController = TextEditingController();
  final floorController = TextEditingController();
  final apartmentController = TextEditingController();
  final specialLandMarkController = TextEditingController();

  final phoneNumberController = TextEditingController();
  final emailController = TextEditingController();
  final fullNameController = TextEditingController();
  final passwordController = TextEditingController();
//  LatLng locationAddress;
  Position current = Position(latitude: 30.0616796, longitude: 31.4441103);
  LatLng lastPosition;

  DialogUtility myDialog = GetIt.instance<DialogUtility>();

//  LatLng latLng;
  List<String> _stringListOfAreas = [];
  List<Area> _listOfAreas;

//  RegisterPresenter _registerPresenter;
  RegisterModel _user;
  BuildContext _context;
  int _indexOfArea = 0;

//  bool showArea = true;

  // final Geolocator _geolocator = Geolocator;
  String areaNow;

  static int indexedTab = 0;

  // ignore: avoid_init_to_null
  ProviderOfRegister({BuildContext context}) {
//    if (_registerPresenter == null) {
//      showArea = false;
    //check after adding if condition

//      _registerPresenter = RegisterPresenter(_user, this);
//      getAreasFromPresenter();

//    }
    if (context != null) {
      _context = context;
    }
  }

//  RegisterPresenter getRegisterPresenter() => _registerPresenter;

  getAreaIndex() => _indexOfArea;

  List<String> getStringListOfAreas() => _stringListOfAreas;

  getArea() {
//    if (_stringListOfAreas.length > 0) {
    return _stringListOfAreas[_indexOfArea];
//    }
  }

//
//  @override
//  void registerResponse(String user) {
//    try {
//      if (user == Constants.trueInLoginOrRegister) {
//        Navigator.pushReplacementNamed(_context, Constants.myHomePage);
//      } else if (user == Constants.noInternet) {
//      } else {}
//    } catch (e) {
//      print('Erorr at signup $registerResponse');
//    }
//  }

  void select(String newValue) {
    areaNow = newValue;
    _indexOfArea = _stringListOfAreas.indexOf(areaNow);
    notifyListeners();
  }

//  @override
//  void setAreas(List<Area> areas) {
//    void setAreas(List<Area> areas) {
//      if (_stringListOfAreas.isEmpty) {
//        _listOfAreas = areas;
//        _stringListOfAreas.clear();
//        for (Area a in areas) {
//          _stringListOfAreas.add(a.areaName);
//        }
//      }
////    print('sss ${_stringListOfAreas.toString()}');
//      notifyListeners();
//    }

//    checkRegister({
//      @required BuildContext context,
//      @required String email,
//      @required String phone,
//      @required String password,
//      @required String clientName,
//      int fkAreaId,
//      @required String address,
//      @required String floor,
//      @required String apartment,
//      @required String specialMark,
//    }) async {
////    print('dddd ${_stringListOfAreas.indexOf(areaNow)}');
////    print(
////        'dddd ${fullName + fullNameEn + phone + emailController + password + DateTime.now().toString() + _listOfAreas.elementAt(1).areaName}');
////    _registerPresenter.doRegister(
////        email,
////        phone,
////        password,
////        clientName,
////        _listOfAreas.elementAt(_indexOfArea).areaId,
////        address,
////        floor,
////        apartment,
////        specialMark,
////        lastPosition.toString());
//
////    UserLogin _user = UserLogin(phone, password);
//      _user = RegisterModel(
//        email: email,
//        phone: phone,
//        password: password,
//        clientName: clientName,
//        fkAreaId: fkAreaId,
//        address: address,
//        floor: floor,
//        apartment: apartment,
//        specialMark: specialMark,
//      );
//      AccountRepository accountRepository = AccountRepository();
//      ResponseApi<NewUserResponseModel> dataOrError =
//          await accountRepository.doRegister(_user);
//
//      if (dataOrError.status == ApiStatus.SUCCESS) {
//        print('SUCCESS${dataOrError.data.toJson()}');
//        //save
//        NewUserResponseModel userResponse = dataOrError.data;
//
//        SharedPreferencesDomain sharedPreferences =
//            locator.get<SharedPreferencesDomain>();
//        sharedPreferences.saveUserData(userResponse.data.userData);
//
//        sharedPreferences.saveUserToken(userResponse.data.token.toString());
//        Navigator.pushReplacementNamed(context, '/');
//      } else
//        print('error${dataOrError.error}');
//    }

  void notify() {
    notifyListeners();
  }

  void checkAndViewMaps(BuildContext context) async {
    var connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi) {
      // I am connected to a mobile network or a wifi network.
//       connected
//      Map<PermissionGroup, PermissionStatus> result = await PermissionHandler()
//          .requestPermissions([PermissionGroup.location]);
      Map<Permission, PermissionStatus> result = await [
        Permission.location,
      ].request();
      if (result[Permission.location] == PermissionStatus.granted) {
//        Permission granted'
        bool gps = await Geolocator.isLocationServiceEnabled();
        if (gps) {
          print('ddd gps ok');
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (BuildContext context) => OpenFinalMap(
                providerOfRegister: this,
              ),
            ),
          );
        } else {
//          there is no gps
          myDialog.showDialogWithButtons(
              context: context,
              title: 'Open GPS',
              msg: 'Are you want to open your GPS settings',
              funOfOk: AppSettings.openLocationSettings,
              funOfCancel: () {},
              showCancel: true);
        }
      } else {
        //no permission yet
        print('no permission yet');
        myDialog.showDialogWithButtons(
            context: context,
            title: 'Confirm location permission',
            msg: 'Are you want to open your GPS settings',
            funOfOk: () async {
//              result = await PermissionHandler()
//                  .requestPermissions([PermissionGroup.location]);
              result = await [
                Permission.location,
              ].request();
            },
            funOfCancel: () {},
            showCancel: true);
      }
    } else if (connectivityResult == ConnectivityResult.none) {
      myDialog.showDialogWithButtons(
          context: context,
          title: 'No Internet',
          msg: 'Please open Your Internet',
          funOfOk: () {});
    }
  }

  getAreasFromInternet() async {
//    if (_stringListOfAreas.isEmpty) {
//      AccountRepository accountRepository = AccountRepository();
//      var dataOrError = await accountRepository.getAreas();
//      if (dataOrError.status == ApiStatus.SUCCESS) {
//        _listOfAreas = dataOrError.data.areas;
//        for (var item in _listOfAreas) {
//          print('SUCCESS${item.areaName}');
//          _stringListOfAreas.add(item.areaName);
//        }
//
//        notifyListeners();
//      } else
//        print('error${dataOrError.error}');
//    }
  }

  void checkRegister(
      {BuildContext context,
      String email,
      String phone,
      String password,
      String clientName,
      String address,
      String floor,
      String apartment,
      String specialMark,
      int fkAreaIndex}) async {
//    AccountRepository accountRepository = AccountRepository();
//    var _registerModel = RegisterModel(
//        email: '_emaildkok',
//        phone: '_phonvejjj}',
//        password: '_password',
//        clientName: '_clientName',
//        clientNameEn: '_clientName',
//        fkAreaId: 0,
//        address: 'address',
//        floor: 'floor',
//        apartment: 'apartment',
//        specialMark: 'specialMark',
//        locationAddress: 'locationAddress');
//
//    var dataOrError = await accountRepository.doRegister(_registerModel);
//    if (dataOrError.status == ApiStatus.SUCCESS)
//      print('SUCCESS${dataOrError.data.toJson()}');
//    else
//      print('error${dataOrError.error}');

//
    _user = RegisterModel(
      email: email,
      phone: phone,
      password: password,
      clientName: clientName,
      fkAreaId: _listOfAreas[fkAreaIndex].areaId,
      address: address,
      floor: floor,
      apartment: apartment,
      specialMark: specialMark,
      locationAddress: lastPosition.toString(),
      clientNameEn: '_clientName',
    );
    print(_user.toRawJson());

//    ResponseApi<NewUserResponseModel> dataOrError =
//        await accountRepository.doRegister(_user);

//    if (dataOrError.status == ApiStatus.SUCCESS) {
//      print('SUCCESS${dataOrError.data.toJson()}');
//      //save
//      NewUserResponseModel userResponse = dataOrError.data;
//
//      SharedPreferencesDomain sharedPreferences =
//          locator.get<SharedPreferencesDomain>();
//      MyApp.userID = userResponse.data.userData.delClientId;
//      sharedPreferences.saveUserData(userResponse.data.userData);
//      MyApp.token = userResponse.data.token.toString();
//      sharedPreferences.saveUserToken(MyApp.token);
//      Navigator.pushReplacementNamed(context, '/');
//    }
//    else
//      print('error${dataOrError.error}');
  }
}
//LatLng(30.066154067532665, 31.44712843000889)
//phone":"09876543"
//password":"0987654
