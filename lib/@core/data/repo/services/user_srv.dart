import 'package:linkedin_app_concept/@core/data/api/base_graphql.dart';

class UserSrv extends BaseService {
  UserSrv() : super(module: 'User', fragment: ''' 
  user{
      id
      name
      avatar
    }
    token
  ''');
}
