import 'package:bloc_/counter_App.dart/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Inc_Dec_Page extends StatelessWidget {
  const Inc_Dec_Page({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc_Provider = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("INC_DEC"),
      ),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () => bloc_Provider.increment(),
              child: const Icon(Icons.add),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => bloc_Provider.decrement(),
              child: const Icon(Icons.minimize),
            ),
          ],
        ),
      ),
    );
  }
}
