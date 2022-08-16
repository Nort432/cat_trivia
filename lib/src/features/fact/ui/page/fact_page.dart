import 'package:cat_trivia/src/config/app_widgets/errors/my_error_widget.dart';
import 'package:cat_trivia/src/config/app_widgets/loadings/my_loading_widget.dart';
import 'package:cat_trivia/src/features/fact/ui/bloc/fact_bloc.dart';
import 'package:cat_trivia/src/features/fact/ui/page/fact_body.dart';
import 'package:cat_trivia/src/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FactPage extends StatelessWidget {
  const FactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FactBloc>(
      create: (context) => injector<FactBloc>()..add(const FactInitialEvent()),
      child: blocBuilder(context),
    );
  }

  Widget blocBuilder(BuildContext context) {
    return BlocBuilder<FactBloc, FactState>(
      builder: (context, state) {
        if (state is FactLoading) {
          return const MyLoadingWidget();
        }

        if (state is FactLoaded) {
          return const FactBody();
        }

        if (state is FactError) {
          return MyErrorWidget(state.messageError);
        }

        return const SizedBox();
      },
    );
  }
}
