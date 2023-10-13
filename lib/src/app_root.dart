import 'package:flutter/material.dart';
import 'package:sessions/block/auth_cubit.dart';

import '../screens/reg_screen.dart';

import 'package:flutter_bloc/flutter_bloc.dart';


class AppRoot extends StatelessWidget {
  const AppRoot({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>AuthCubit())
      ],
      child: MaterialApp(
        home: RegScreen(),
      ),
    );
  }
}
