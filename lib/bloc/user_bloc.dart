import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tutor/model/user.dart';

class UserBloc extends Bloc<int, User> {
  UserBloc(User initialState) : super(UnintializedUser());

  @override
  Stream<User> mapEventToState(int event) async* {
    try {
      User user = await User.getUserFromApi(event);
      yield user;
    } catch (_) {}
  }
}
