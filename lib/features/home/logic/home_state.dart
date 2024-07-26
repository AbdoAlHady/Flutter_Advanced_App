import 'package:advanced_flutter_app/features/home/data/models/specialization_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@Freezed()
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;

  // Specialization state
  const factory HomeState.specializationLoading() = SpecializationLoadingState;
  const factory HomeState.specializationSuccess({required SpecializationResponseModel specializationResponseModel}) = SpecializationSuccessState;
  const factory HomeState.specializationError({required String message}) = SpecializationErrorState;
}
