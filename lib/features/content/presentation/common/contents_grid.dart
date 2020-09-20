import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:instagram_clone/core/widgets/rounded_square_image.dart';
import 'package:instagram_clone/features/content/presentation/common/model/personalized_content.dart';
import 'package:instagram_clone/features/content/presentation/main/main_bloc.dart';

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
      return GridView.builder(
          shrinkWrap: true,
          itemCount: contents.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, childAspectRatio: 1.0),
          itemBuilder: (context, index) {
            return InkWell(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: RoundedSquareImage.network(
                    contents[index].content.image.url),
              ),
              onTap: () => context
                  .bloc<MainBloc>()
                  .openSingleContentPage(content: contents[index]),
            );
          });
    }
  }
}
