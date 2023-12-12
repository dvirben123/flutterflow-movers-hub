import 'dart:convert';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class LoginCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "$email",
  "password": "$password"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Login',
      apiUrl: 'https://api.movers-hub.com/api-mobile/auth-sign-in',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class LoadsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Loads',
      apiUrl:
          'https://api.movers-hub.com/api-mobile/ld-loads-list?id=string&ids=string&load_id=0&name=string&ad=true&source=string&color=string&status=string&fromStates=string&toStates=string&ldLoadType=string&ldLoadFromCity=string&ldLoadFromState=string&ldLoadFromZip=0&ldLoadFromLang=string&ldLoadToCity=string&ldLoadToState=string&ldLoadToZip=0&ldLoadToLang=string&ldLoadRFDFrom=string&ldLoadRFDTo=string&ldLoadCF=0&ldLoadLBS=0&ldTotalPrice=0&ldLoadRate=0&ldLoadRateType=string&ldLoadContactName=string&ldLoadDistance=string&ldLoadDuration=string&ldLoadContactPhone=string&ldLoadAddDate=string&ldLoadRequest=string&ldLoadFromInput=string&ldLoadFromInputRadius=0&ldLoadToInput=string&ldLoadToInputRadius=0&ldLoadMinLBS=0&ldLoadMaxLBS=0&ldLoadMinCF=0&ldLoadMaxCF=0&ldLoadOriginCompany=string&ldLoadDelCompany=string&ldLoadJobId=string&ldLoadTripId=string&ldLoadDriverId=string&ldLoadDelHelperId=string&ldLoadRFDBetween=string&userId=string',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class PickupsCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'Pickups',
      apiUrl:
          'https://api.movers-hub.com/api-mobile/ld-pick-up-list?id=string&type=string&name=string&jobId=string&pickUpType=string&delFromDateRange=string&fromCity=string&fromState=string&fromZip=0&toCity=string&toState=string&toZip=0&cf=0&lbs=0&milesRange=0&ad=true&totalPriceRange=0&ratePerCFLBSRange=0&contactName=string&contractPhone=string&request=string&bookCompany=string&pupCompany=string&delCompany=string&status=string&trip=string&userId=string&pupDriver=string&groupIdRange=0',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class TruckRoutesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'TruckRoutes',
      apiUrl:
          'https://api.movers-hub.com/api-mobile/truck-routes-list?id=string&name=string&type=string&equipmentType=string&departureStartDate=string&departureEndDate=string&fromCity=string&directions=string&fromState=string&fromZip=0&fromLang=string&fromRadius=0&fromPlaceId=string&toCity=string&toState=string&toZip=0&toLang=string&toRadius=0&toPlaceId=string&RFDFrom=string&RFDTo=string&availableCF=0&availableLBS=0&ad=true&rate=string&contactName=string&contactPhone=string&addDate=string&request=string&status=string&originCompany=string&deliveryCompany=string&distance=string&duration=string&jobId=string&tripId=string&tripName=string&truck=string&routes=string&driverId=string&driverName=string&delHelperId=string&userId=string',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
