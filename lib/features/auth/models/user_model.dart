class User {
  final String? server;
  final String? db;
  final num? loginNo;
  final String? loginId;
  final String? username;
  final String? userCode;
  final String? password;
  final String? syskey;
  final bool? isRememberMe;
  final String? isEditor;
  final String? defaultLanguage;
  final String? languagesList;
  final String? organisation;
  final String? companyEmail;
  final String? isDashboard;
  final String? logoImage;
  final num? orgId;
  final num? loggedOrgId;
  final num? userId;
  final String? apiKey;
  final String? mobile;
  final num? errorNo;
  final String? validationKey;
  final String? userBranches;
  final String? managerDb;
  final String? salesDb;
  final String? accountDb;
  final String? employeeDb;
  final String? purchaseDb;
  final String? hrmDb;
  final String? rtmDb;

  const User({
    this.server,
    this.db,
    this.loginNo,
    this.loginId,
    this.username,
    this.userCode,
    this.password,
    this.syskey,
    this.isRememberMe,
    this.isEditor,
    this.defaultLanguage,
    this.languagesList,
    this.organisation,
    this.companyEmail,
    this.isDashboard,
    this.logoImage,
    this.orgId,
    this.loggedOrgId,
    this.userId,
    this.apiKey,
    this.mobile,
    this.errorNo,
    this.validationKey,
    this.userBranches,
    this.managerDb,
    this.salesDb,
    this.accountDb,
    this.employeeDb,
    this.purchaseDb,
    this.hrmDb,
    this.rtmDb,
  });

  factory User.fromJson(Map<String, dynamic> j) => User(
        server: j['server']?.toString(),
        db: j['DB']?.toString(),
        loginNo: j['LoginNo'] as num?,
        loginId: j['LoginID']?.toString(),
        username: j['Username']?.toString(),
        userCode: j['userCode']?.toString(),
        password: j['password']?.toString(),
        syskey: j['syskey']?.toString(),
        isRememberMe: j['isRememberMe'] as bool?,
        isEditor: j['IsEditor']?.toString(),
        defaultLanguage: j['DefualtLanguage']?.toString(),
        languagesList: j['LanguagesList']?.toString(),
        organisation: j['Organisation']?.toString(),
        companyEmail: j['CompanyEmail']?.toString(),
        isDashboard: j['IsDashboard']?.toString(),
        logoImage: j['logoImage']?.toString(),
        orgId: j['OrgId'] as num?,
        loggedOrgId: j['LoggedOrgID'] as num?,
        userId: j['UserId'] as num?,
        apiKey: j['api_key']?.toString(),
        mobile: j['Mobile']?.toString(),
        errorNo: j['ErrorNo'] as num?,
        validationKey: j['ValidationKey']?.toString(),
        userBranches: j['UserBranches']?.toString(),
        managerDb: j['MangerDB']?.toString(),
        salesDb: j['SalesDB']?.toString(),
        accountDb: j['AccountDB']?.toString(),
        employeeDb: j['EmployeeDB']?.toString(),
        purchaseDb: j['PurchaseDB']?.toString(),
        hrmDb: j['HRMDB']?.toString(),
        rtmDb: j['RTMDB']?.toString(),
      );

  Map<String, dynamic> toJson() => {
        'server': server,
        'DB': db,
        'LoginNo': loginNo,
        'LoginID': loginId,
        'Username': username,
        'userCode': userCode,
        'password': password,
        'syskey': syskey,
        'isRememberMe': isRememberMe,
        'IsEditor': isEditor,
        'DefualtLanguage': defaultLanguage,
        'LanguagesList': languagesList,
        'Organisation': organisation,
        'CompanyEmail': companyEmail,
        'IsDashboard': isDashboard,
        'logoImage': logoImage,
        'OrgId': orgId,
        'LoggedOrgID': loggedOrgId,
        'UserId': userId,
        'api_key': apiKey,
        'Mobile': mobile,
        'ErrorNo': errorNo,
        'ValidationKey': validationKey,
        'UserBranches': userBranches,
        'MangerDB': managerDb,
        'SalesDB': salesDb,
        'AccountDB': accountDb,
        'EmployeeDB': employeeDb,
        'PurchaseDB': purchaseDb,
        'HRMDB': hrmDb,
        'RTMDB': rtmDb,
      };
}
