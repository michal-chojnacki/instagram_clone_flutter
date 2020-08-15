import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/navigation/navigation_bloc.dart';

class ContentsGrid extends StatelessWidget {
  final List<PersonalizedContent> contents;
  final bool loading;

  ContentsGrid({@required this.contents, this.loading});

  @override
  Widget build(BuildContext context) {
    if (loading) {
      return Center(
        child: CircularProgressIndicator(),
      );
    } else {
      return Expanded(
        child: GridView.builder(
            itemCount: contents.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, childAspectRatio: 1.0),
            itemBuilder: (context, index) {
              return InkWell(
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      contents[index].content.image.url,
                    )),
                onTap: () => context
                    .bloc<NavigationBloc>()
                    .openSingleContentPage(content: contents[index]),
              );
            }),
      );
    }
  }
}
