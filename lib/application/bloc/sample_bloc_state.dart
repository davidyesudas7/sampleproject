part of 'sample_bloc_bloc.dart';

@freezed
class SampleBlocState with _$SampleBlocState {
  const factory SampleBlocState(
      {required bool dataloading,
      List<HomePagemodel>? data,
      String? errormessage}) = _SampleBlocState;
  factory SampleBlocState.loading() {
    return const SampleBlocState(dataloading: true);
  }
}
