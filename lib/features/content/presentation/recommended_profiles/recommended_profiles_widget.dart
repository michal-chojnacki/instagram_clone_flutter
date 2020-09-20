import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:instagram_clone/features/content/presentation/recommended_profiles/recommended_profile_item.dart';
import 'package:instagram_clone/features/content/presentation/recommended_profiles/recommended_profiles_bloc.dart';
import 'package:instagram_clone/features/content/presentation/recommended_profiles/recommended_profiles_state.dart';

class RecommendedProfilesWidget extends StatefulWidget {
  @override
  _RecommendedProfilesWidgetState createState() =>
      _RecommendedProfilesWidgetState();
}

class _RecommendedProfilesWidgetState extends State<RecommendedProfilesWidget> {
  final _recommendedProfilesBloc = GetIt.I<RecommendedProfilesBloc>();

  @override
  void dispose() {
    _recommendedProfilesBloc.close();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _recommendedProfilesBloc.getRecommendedProfiles();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recommendations for you'),
      ),
      body: BlocBuilder<RecommendedProfilesBloc, RecommendedProfilesState>(
          cubit: _recommendedProfilesBloc,
          builder: (context, RecommendedProfilesState state) {
            if (state.loading) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (state.users.isEmpty) {
              return Center(
                child: Text("No recommendations currently"),
              );
            } else {
              return NotificationListener<ScrollNotification>(
                  child: ListView.builder(
                      itemCount: state.users.length,
                      itemBuilder: (context, index) {
                        return RecommendedProfileItem(
                            user: state.users[index],
                            onOpenProfileClick: (user) =>
                                _recommendedProfilesBloc.openUserProfilePage(
                                    user: user),
                            onObserveClick: (user) => _recommendedProfilesBloc
                                .observeUser(user: user));
                      }));
            }
          }),
    );
  }
}
