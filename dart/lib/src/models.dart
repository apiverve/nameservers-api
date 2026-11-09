/// Response models for the Nameservers API.

/// API Response wrapper.
class NameserversResponse {
  final String status;
  final dynamic error;
  final NameserversData? data;

  /// Set only when the current plan locks one or more fields; null otherwise.
  final PremiumInfo? premium;

  NameserversResponse({
    required this.status,
    this.error,
    this.data,
    this.premium,
  });

  factory NameserversResponse.fromJson(Map<String, dynamic> json) => NameserversResponse(
    status: json['status'] as String? ?? '',
    error: json['error'],
    data: json['data'] != null ? NameserversData.fromJson(json['data']) : null,
    premium: json['premium'] != null ? PremiumInfo.fromJson(json['premium']) : null,
  );

  Map<String, dynamic> toJson() => {
    'status': status,
    if (error != null) 'error': error,
    if (data != null) 'data': data,
    if (premium != null) 'premium': premium!.toJson(),
  };
}

/// Describes fields the current plan does not unlock. Locked fields arrive as null
/// in [data], and [lockedFields] names them (nested ones use dot paths).
class PremiumInfo {
  final String? message;
  final String? upgradeUrl;
  final List<String>? lockedFields;

  PremiumInfo({this.message, this.upgradeUrl, this.lockedFields});

  factory PremiumInfo.fromJson(Map<String, dynamic> json) => PremiumInfo(
    message: json['message'] as String?,
    upgradeUrl: json['upgrade_url'] as String?,
    lockedFields: (json['locked_fields'] as List?)?.map((e) => e.toString()).toList(),
  );

  Map<String, dynamic> toJson() => {
    if (message != null) 'message': message,
    if (upgradeUrl != null) 'upgrade_url': upgradeUrl,
    if (lockedFields != null) 'locked_fields': lockedFields,
  };
}

/// Response data for the Nameservers API.

class NameserversData {
  String? domain;
  num? nameserverCount;
  bool? hasMultipleProviders;
  List<NameserversDataNameserversItem>? nameservers;
  List<String>? uniqueOwners;

  NameserversData({
    this.domain,
    this.nameserverCount,
    this.hasMultipleProviders,
    this.nameservers,
    this.uniqueOwners,
  });

  factory NameserversData.fromJson(Map<String, dynamic> json) => NameserversData(
      domain: json['domain'],
      nameserverCount: json['nameserverCount'],
      hasMultipleProviders: json['hasMultipleProviders'],
      nameservers: (json['nameservers'] as List?)?.map((e) => NameserversDataNameserversItem.fromJson(e)).toList(),
      uniqueOwners: (json['uniqueOwners'] as List?)?.cast<String>(),
    );
}

class NameserversDataNameserversItem {
  String? nameserver;
  List<String>? ipAddresses;
  String? reverseDns;
  String? owner;

  NameserversDataNameserversItem({
    this.nameserver,
    this.ipAddresses,
    this.reverseDns,
    this.owner,
  });

  factory NameserversDataNameserversItem.fromJson(Map<String, dynamic> json) => NameserversDataNameserversItem(
      nameserver: json['nameserver'],
      ipAddresses: (json['ipAddresses'] as List?)?.cast<String>(),
      reverseDns: json['reverseDns'],
      owner: json['owner'],
    );
}

class NameserversRequest {
  String domain;

  NameserversRequest({
    required this.domain,
  });

  Map<String, dynamic> toJson() => {
      'domain': domain,
    };
}
