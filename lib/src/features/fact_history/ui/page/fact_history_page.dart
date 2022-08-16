import 'package:cat_trivia/src/config/app_widgets/errors/my_error_widget.dart';
import 'package:cat_trivia/src/config/app_widgets/loadings/my_loading_widget.dart';
import 'package:cat_trivia/src/features/fact_history/ui/bloc/fact_history_bloc.dart';
import 'package:cat_trivia/src/features/fact_history/ui/page/fact_history_body.dart';
import 'package:cat_trivia/src/injector.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FactHistoryPage extends StatelessWidget {
  const FactHistoryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<FactHistoryBloc>(
      create: (context) => injector<FactHistoryBloc>(),
      child: blocBuilder(context),
    );
  }

  Widget blocBuilder(BuildContext context) {
    return BlocBuilder<FactHistoryBloc, FactHistoryState>(
      builder: (context, state) {
        if (state is FactHistoryLoading) {
          return const MyLoadingWidget();
        }

        if (state is FactHistoryLoaded) {
          return const FactHistoryBody();
        }

        if (state is FactHistoryError) {
          return MyErrorWidget(state.messageError);
        }

        return const SizedBox();
      },
    );
  }
}
