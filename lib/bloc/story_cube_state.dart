import 'package:equatable/equatable.dart';
import 'package:story_cube_app/models/chronicle_profile_model.dart';

abstract class StoryCubeState extends Equatable {
  const StoryCubeState();

  @override
  List<Object> get props => [];
}

class StoryCubeInitial extends StoryCubeState {
  const StoryCubeInitial();
}

class StoryCubeLoadInProgress extends StoryCubeState {
  const StoryCubeLoadInProgress();
}

class StoryCubeLoadSuccess extends StoryCubeState {
  const StoryCubeLoadSuccess({
    required this.chronicleProfile,
  });

  final ChronicleProfileModel chronicleProfile;

  @override
  List<Object> get props => [
        chronicleProfile,
      ];
}

class StoryCubeLoadFailure extends StoryCubeState {
  const StoryCubeLoadFailure();
}
