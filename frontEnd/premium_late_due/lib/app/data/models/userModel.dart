// To parse this JSON data, do
//
//     final user = userFromJson(jsonString);

import 'dart:convert';

User userFromJson(String str) => User.fromJson(json.decode(str));

String userToJson(User data) => json.encode(data.toJson());

class User {
  User({
    this.urId,
    this.agId,
    this.pfId,
    this.urName,
    this.urUsername,
    this.urPassword,
    this.urCreationDate,
    this.urActive,
    this.urExpirationDate,
    this.urForceChangepass,
    this.urEmail,
    this.crmtId,
    this.crmTeamId,
    this.dptId,
    this.crmDate,
    this.domainUser,
    this.notificationFrom,
    this.notificationTo,
    this.notificationEvery,
    this.urMobile,
    this.notificationEnabled,
    this.avNum,
  });

  int? urId;
  int? agId;
  int? pfId;
  String? urName;
  String? urUsername;
  String? urPassword;
  DateTime? urCreationDate;
  bool? urActive;
  DateTime? urExpirationDate;
  bool? urForceChangepass;
  String? urEmail;
  dynamic? crmtId;
  int? crmTeamId;
  int? dptId;
  DateTime? crmDate;
  String? domainUser;
  dynamic? notificationFrom;
  dynamic? notificationTo;
  dynamic? notificationEvery;
  dynamic? urMobile;
  bool? notificationEnabled;
  int? avNum;

  factory User.fromJson(Map<String, dynamic> json) => User(
        urId: json["ur_id"],
        agId: json["ag_id"],
        pfId: json["pf_id"],
        urName: json["ur_name"],
        urUsername: json["ur_username"],
        urPassword: json["ur_password"],
        urCreationDate: DateTime.parse(json["ur_creation_date"]),
        urActive: json["ur_active"],
        urExpirationDate: DateTime.parse(json["ur_expiration_date"]),
        urForceChangepass: json["ur_force_changepass"],
        urEmail: json["ur_email"],
        crmtId: json["crmt_id"],
        crmTeamId: json["crm_team_id"],
        dptId: json["dpt_id"],
        crmDate: DateTime.parse(json["crm_date"]),
        domainUser: json["domain_user"],
        notificationFrom: json["notification_from"],
        notificationTo: json["notification_to"],
        notificationEvery: json["notification_every"],
        urMobile: json["ur_mobile"],
        notificationEnabled: json["notification_enabled"],
        avNum: json["av_num"],
      );

  Map<String, dynamic> toJson() => {
        "ur_id": urId,
        "ag_id": agId,
        "pf_id": pfId,
        "ur_name": urName,
        "ur_username": urUsername,
        "ur_password": urPassword,
        "ur_creation_date": urCreationDate?.toIso8601String(),
        "ur_active": urActive,
        "ur_expiration_date": urExpirationDate?.toIso8601String(),
        "ur_force_changepass": urForceChangepass,
        "ur_email": urEmail,
        "crmt_id": crmtId,
        "crm_team_id": crmTeamId,
        "dpt_id": dptId,
        "crm_date": crmDate?.toIso8601String(),
        "domain_user": domainUser,
        "notification_from": notificationFrom,
        "notification_to": notificationTo,
        "notification_every": notificationEvery,
        "ur_mobile": urMobile,
        "notification_enabled": notificationEnabled,
        "av_num": avNum,
      };
}
