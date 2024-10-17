import 'package:bloc_/counter_App.dart/counter_cubit.dart';
import 'package:bloc_/counter_App.dart/increment_dec_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //final instance_of_CounterCubit = CounterCubit();
  @override
  Widget build(BuildContext context) {
    final bloc_Provider = BlocProvider.of<CounterCubit>(context);
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            BlocBuilder(
                bloc: bloc_Provider,
                builder: (context, state) {
                  return Text(
                    '$state',
                    style: Theme.of(context).textTheme.headlineMedium,
                  );
                }),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Inc_Dec_Page(),
                  ));
                },
                child: const Text(" Page "))
          ],
        ),
      ),
    );
  }
}
