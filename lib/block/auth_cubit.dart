import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sessions/data/auth_model.dart';
import 'package:sessions/dio.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthInitial());

  static AuthCubit get(context)=>BlocProvider.of(context);


  AuthModel? authModel;

  registerUser(String name,String email,int phone, int genger, String password,String password_confirmation ){
    DioHelper.postData(url: 'auth/register', data: {
      "name":name,
      "email":email,
      "phone":phone,
      "gender":genger,
      "password":password,
      "password_confirmation":password_confirmation
    }).then((value) {

authModel=AuthModel.fromJson(value.data);
print(authModel.data.token);
    }).catchError((error){

    });
  }
}
