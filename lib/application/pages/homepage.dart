import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:sample_project/application/bloc/sample_bloc_bloc.dart';

import 'package:sample_project/application/widgets/homedatacard.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    log('build is working ');
    BlocProvider.of<SampleBlocBloc>(context)
        .add(const SampleBlocEvent.getdata());
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(
            'sample data',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          backgroundColor: Colors.purple.shade900,
        ),
        body: BlocBuilder<SampleBlocBloc, SampleBlocState>(
          builder: (context, state) {
            if (state.dataloading == true) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.data != null && state.dataloading == false) {
              return GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: state.data!.length,
                itemBuilder: (context, index) {
                  return DataCard(
                    title: state.data![index].title,
                    backgroundurl: state.data![index].url,
                  );
                },
              );
            } else {
              return Center(
                child: Text(state.errormessage ?? ''),
              );
            }
          },
        ));
  }
}
