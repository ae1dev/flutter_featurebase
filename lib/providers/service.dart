part of featurebase;

_FBService _fbService = _FBService();

class _FBService {
  /// Featurebase API
  late _FeaturebaseApi api;

  /// Haptic Feedback Enabled value
  bool isHapticEnabled = true;

  /// Setup the Featurebase API
  void setup(String organizationName, bool hapticEnabled) {
    api = _FeaturebaseApi.from(
      organizationName: organizationName,
    );
    isHapticEnabled = hapticEnabled;
  }
}
