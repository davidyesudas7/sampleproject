import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_project/data/homepage_model.dart';
import 'package:sample_project/domain/homepage_uscase.dart';

part 'sample_bloc_event.dart';
part 'sample_bloc_state.dart';
part 'sample_bloc_bloc.freezed.dart';

@injectable
class SampleBlocBloc extends Bloc<SampleBlocEvent, SampleBlocState> {
  final HomepageUscase homepageUscase;
  SampleBlocBloc({required this.homepageUscase})
      : super(SampleBlocState.loading()) {
    on<_Getdata>((event, emit) async {
      emit(state.copyWith(dataloading: true));
      final data = await homepageUscase.gethompagedata();
      data.fold((failure) {
        emit(state.copyWith(
            dataloading: false, errormessage: failure.errormessage));
      }, (homedata) {
        emit(state.copyWith(
          data: homedata,
          dataloading: false,
        ));
      });
    });
  }
}
