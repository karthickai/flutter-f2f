class UserSession {
  String accessToken;

  int expiresIn;

  String idToken;

  String refreshToken;

  String tokenType;

  String email;

  bool subscriptionStatus;

  bool hasTrailEnded;

  UserSession(
      {this.accessToken,
      this.expiresIn,
      this.idToken,
      this.refreshToken,
      this.tokenType,
      this.email,
      this.subscriptionStatus,
      this.hasTrailEnded});

  UserSession.fromJson(Map<String, dynamic> json) {
    accessToken = json['access_token'];

    expiresIn = json['expires_in'];

    idToken = json['id_token'];

    refreshToken = json['refresh_token'];

    tokenType = json['token_type'];

    email = json['email'];

    subscriptionStatus = json['subscription_status'];

    hasTrailEnded = json['has_trail_ended'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['access_token'] = this.accessToken;

    data['expires_in'] = this.expiresIn;

    data['id_token'] = this.idToken;

    data['refresh_token'] = this.refreshToken;

    data['token_type'] = this.tokenType;

    data['email'] = this.email;

    data['subscription_status'] = this.subscriptionStatus;

    data['has_trail_ended'] = this.hasTrailEnded;

    return data;
  }
}
