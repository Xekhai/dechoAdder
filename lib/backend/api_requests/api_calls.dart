import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

class CreateCauseDeCHOCall {
  static Future<ApiCallResponse> call({
    String date = '',
    int votegoal,
    int donationgoal,
    String title = '',
    String shDesc = '',
    String webLink = '',
    String address = '',
  }) {
    final body = '''
{
  "cause_approval": {
    "expiry_date": "${date}",
    "goal": ${votegoal}
  },
  "donations": {
    "expiry_date": "${date}",
    "goal": ${donationgoal}
  },
  "title": "${title}",
  "short_description": "${shDesc}",
  "long_description": "${webLink}",
  "wallet_address": "${address}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'createCauseDeCHO',
      apiUrl: 'https://decho-staging.herokuapp.com/api/v1/create/',
      callType: ApiCallType.POST,
      headers: {},
      params: {
        'date': date,
        'votegoal': votegoal,
        'donationgoal': donationgoal,
        'title': title,
        'shDesc': shDesc,
        'webLink': webLink,
        'address': address,
      },
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
    );
  }
}
