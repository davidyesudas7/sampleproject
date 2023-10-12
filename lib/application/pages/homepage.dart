import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:sample_project/application/provider/homepage_data_provider.dart';
import 'package:sample_project/application/widgets/homedatacard.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    context.read<HomepageDtatProvider>().gethomepagedata();
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'sample data',
            style: TextStyle(
                fontSize: 30, fontWeight: FontWeight.w700, color: Colors.white),
          ),
          backgroundColor: Colors.purple.shade900,
        ),
        body: context.watch<HomepageDtatProvider>().isloading
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : context.watch<HomepageDtatProvider>().errormessage != null
                ? Center(
                    child: Text(
                        context.watch<HomepageDtatProvider>().errormessage!),
                  )
                : GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    itemCount: context
                        .read<HomepageDtatProvider>()
                        .homePageEntity
                        .length,
                    itemBuilder: (context, index) {
                      return DataCard(
                        title: context
                            .watch<HomepageDtatProvider>()
                            .homePageEntity[index]
                            .title,
                        backgroundurl: context
                            .watch<HomepageDtatProvider>()
                            .homePageEntity[index]
                            .url,
                      );
                    },
                  ));
  }
}
