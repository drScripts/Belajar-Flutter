import 'package:bloc/bloc.dart';
import 'package:mvvm_architecture/model/user.dart';

class UserBloc extends Bloc<int, User> {
  @override
  User get initialState =>
      UninitializeUser(); // karena tidak bole koson maka throw uninitializeUser

  @override
  Stream<User> mapEventToState(int event) async* {
    try {
      User user = await User.connectApi(event);
      yield user;
    } catch (_) {}
  }
}
