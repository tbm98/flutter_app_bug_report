import 'package:freezed_annotation/freezed_annotation.dart';

part 'issue_88023.freezed.dart';

@freezed
class LoyaltyProfile with _$LoyaltyProfile {
  const factory LoyaltyProfile({
    String? qrCode,
    @Default(false) bool? hasPromotion,
    @Default([]) List<int>? promotionsResources,
  }) = _LoyaltyProfile;
}

class mapper {
  LoyaltyProfile from(dynamic a) {
    return LoyaltyProfile();
  }
}

Future<LoyaltyProfile?> execute() async {
  dynamic response;
  mapper? _mapper;
  final LoyaltyProfile? result = _mapper?.from(response).copyWith();
  return result?.copyWith(
    // still work without fix analysis
    hasPromotion: result.promotionsResources?.isNotEmpty == true,
    promotionsResources: result.promotionsResources,
  );
}
