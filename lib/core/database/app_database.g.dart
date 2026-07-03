// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_database.dart';

// ignore_for_file: type=lint
class $CustomersTable extends Customers
    with TableInfo<$CustomersTable, Customer> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CustomersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _cvCodeMeta = const VerificationMeta('cvCode');
  @override
  late final GeneratedColumn<String> cvCode = GeneratedColumn<String>(
      'cv_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orgIdMeta = const VerificationMeta('orgId');
  @override
  late final GeneratedColumn<int> orgId = GeneratedColumn<int>(
      'org_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _cvNameMeta = const VerificationMeta('cvName');
  @override
  late final GeneratedColumn<String> cvName = GeneratedColumn<String>(
      'cv_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tel1Meta = const VerificationMeta('tel1');
  @override
  late final GeneratedColumn<String> tel1 = GeneratedColumn<String>(
      'tel1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _mobileNoMeta =
      const VerificationMeta('mobileNo');
  @override
  late final GeneratedColumn<String> mobileNo = GeneratedColumn<String>(
      'mobile_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _areaMeta = const VerificationMeta('area');
  @override
  late final GeneratedColumn<String> area = GeneratedColumn<String>(
      'area', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _placeMeta = const VerificationMeta('place');
  @override
  late final GeneratedColumn<String> place = GeneratedColumn<String>(
      'place', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _districtMeta =
      const VerificationMeta('district');
  @override
  late final GeneratedColumn<String> district = GeneratedColumn<String>(
      'district', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _pinCodeMeta =
      const VerificationMeta('pinCode');
  @override
  late final GeneratedColumn<int> pinCode = GeneratedColumn<int>(
      'pin_code', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _balanceMeta =
      const VerificationMeta('balance');
  @override
  late final GeneratedColumn<double> balance = GeneratedColumn<double>(
      'balance', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _creditLimitMeta =
      const VerificationMeta('creditLimit');
  @override
  late final GeneratedColumn<int> creditLimit = GeneratedColumn<int>(
      'credit_limit', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _priceListMeta =
      const VerificationMeta('priceList');
  @override
  late final GeneratedColumn<int> priceList = GeneratedColumn<int>(
      'price_list', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _paymentTermsMeta =
      const VerificationMeta('paymentTerms');
  @override
  late final GeneratedColumn<int> paymentTerms = GeneratedColumn<int>(
      'payment_terms', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _gstNoMeta = const VerificationMeta('gstNo');
  @override
  late final GeneratedColumn<String> gstNo = GeneratedColumn<String>(
      'gst_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _panNoMeta = const VerificationMeta('panNo');
  @override
  late final GeneratedColumn<String> panNo = GeneratedColumn<String>(
      'pan_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _inactiveMeta =
      const VerificationMeta('inactive');
  @override
  late final GeneratedColumn<String> inactive = GeneratedColumn<String>(
      'inactive', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedDateMeta =
      const VerificationMeta('updatedDate');
  @override
  late final GeneratedColumn<String> updatedDate = GeneratedColumn<String>(
      'updated_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _paymentTermsNameMeta =
      const VerificationMeta('paymentTermsName');
  @override
  late final GeneratedColumn<String> paymentTermsName = GeneratedColumn<String>(
      'payment_terms_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        cvCode,
        orgId,
        cvName,
        type,
        tel1,
        mobileNo,
        email,
        address,
        area,
        place,
        district,
        pinCode,
        balance,
        creditLimit,
        priceList,
        paymentTerms,
        gstNo,
        panNo,
        inactive,
        updatedDate,
        paymentTermsName
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'customers';
  @override
  VerificationContext validateIntegrity(Insertable<Customer> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('cv_code')) {
      context.handle(_cvCodeMeta,
          cvCode.isAcceptableOrUnknown(data['cv_code']!, _cvCodeMeta));
    } else if (isInserting) {
      context.missing(_cvCodeMeta);
    }
    if (data.containsKey('org_id')) {
      context.handle(
          _orgIdMeta, orgId.isAcceptableOrUnknown(data['org_id']!, _orgIdMeta));
    }
    if (data.containsKey('cv_name')) {
      context.handle(_cvNameMeta,
          cvName.isAcceptableOrUnknown(data['cv_name']!, _cvNameMeta));
    } else if (isInserting) {
      context.missing(_cvNameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('tel1')) {
      context.handle(
          _tel1Meta, tel1.isAcceptableOrUnknown(data['tel1']!, _tel1Meta));
    }
    if (data.containsKey('mobile_no')) {
      context.handle(_mobileNoMeta,
          mobileNo.isAcceptableOrUnknown(data['mobile_no']!, _mobileNoMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('area')) {
      context.handle(
          _areaMeta, area.isAcceptableOrUnknown(data['area']!, _areaMeta));
    }
    if (data.containsKey('place')) {
      context.handle(
          _placeMeta, place.isAcceptableOrUnknown(data['place']!, _placeMeta));
    }
    if (data.containsKey('district')) {
      context.handle(_districtMeta,
          district.isAcceptableOrUnknown(data['district']!, _districtMeta));
    }
    if (data.containsKey('pin_code')) {
      context.handle(_pinCodeMeta,
          pinCode.isAcceptableOrUnknown(data['pin_code']!, _pinCodeMeta));
    }
    if (data.containsKey('balance')) {
      context.handle(_balanceMeta,
          balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta));
    }
    if (data.containsKey('credit_limit')) {
      context.handle(
          _creditLimitMeta,
          creditLimit.isAcceptableOrUnknown(
              data['credit_limit']!, _creditLimitMeta));
    }
    if (data.containsKey('price_list')) {
      context.handle(_priceListMeta,
          priceList.isAcceptableOrUnknown(data['price_list']!, _priceListMeta));
    }
    if (data.containsKey('payment_terms')) {
      context.handle(
          _paymentTermsMeta,
          paymentTerms.isAcceptableOrUnknown(
              data['payment_terms']!, _paymentTermsMeta));
    }
    if (data.containsKey('gst_no')) {
      context.handle(
          _gstNoMeta, gstNo.isAcceptableOrUnknown(data['gst_no']!, _gstNoMeta));
    }
    if (data.containsKey('pan_no')) {
      context.handle(
          _panNoMeta, panNo.isAcceptableOrUnknown(data['pan_no']!, _panNoMeta));
    }
    if (data.containsKey('inactive')) {
      context.handle(_inactiveMeta,
          inactive.isAcceptableOrUnknown(data['inactive']!, _inactiveMeta));
    }
    if (data.containsKey('updated_date')) {
      context.handle(
          _updatedDateMeta,
          updatedDate.isAcceptableOrUnknown(
              data['updated_date']!, _updatedDateMeta));
    }
    if (data.containsKey('payment_terms_name')) {
      context.handle(
          _paymentTermsNameMeta,
          paymentTermsName.isAcceptableOrUnknown(
              data['payment_terms_name']!, _paymentTermsNameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cvCode};
  @override
  Customer map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Customer(
      cvCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cv_code'])!,
      orgId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}org_id']),
      cvName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cv_name'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
      tel1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tel1']),
      mobileNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mobile_no']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address']),
      area: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}area']),
      place: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}place']),
      district: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}district']),
      pinCode: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}pin_code']),
      balance: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}balance'])!,
      creditLimit: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}credit_limit'])!,
      priceList: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}price_list']),
      paymentTerms: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}payment_terms']),
      gstNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gst_no']),
      panNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pan_no']),
      inactive: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}inactive']),
      updatedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_date']),
      paymentTermsName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}payment_terms_name']),
    );
  }

  @override
  $CustomersTable createAlias(String alias) {
    return $CustomersTable(attachedDatabase, alias);
  }
}

class Customer extends DataClass implements Insertable<Customer> {
  final String cvCode;
  final int? orgId;
  final String cvName;
  final String? type;
  final String? tel1;
  final String? mobileNo;
  final String? email;
  final String? address;
  final String? area;
  final String? place;
  final String? district;
  final int? pinCode;
  final double balance;
  final int creditLimit;
  final int? priceList;
  final int? paymentTerms;
  final String? gstNo;
  final String? panNo;
  final String? inactive;
  final String? updatedDate;
  final String? paymentTermsName;
  const Customer(
      {required this.cvCode,
      this.orgId,
      required this.cvName,
      this.type,
      this.tel1,
      this.mobileNo,
      this.email,
      this.address,
      this.area,
      this.place,
      this.district,
      this.pinCode,
      required this.balance,
      required this.creditLimit,
      this.priceList,
      this.paymentTerms,
      this.gstNo,
      this.panNo,
      this.inactive,
      this.updatedDate,
      this.paymentTermsName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['cv_code'] = Variable<String>(cvCode);
    if (!nullToAbsent || orgId != null) {
      map['org_id'] = Variable<int>(orgId);
    }
    map['cv_name'] = Variable<String>(cvName);
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || tel1 != null) {
      map['tel1'] = Variable<String>(tel1);
    }
    if (!nullToAbsent || mobileNo != null) {
      map['mobile_no'] = Variable<String>(mobileNo);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || area != null) {
      map['area'] = Variable<String>(area);
    }
    if (!nullToAbsent || place != null) {
      map['place'] = Variable<String>(place);
    }
    if (!nullToAbsent || district != null) {
      map['district'] = Variable<String>(district);
    }
    if (!nullToAbsent || pinCode != null) {
      map['pin_code'] = Variable<int>(pinCode);
    }
    map['balance'] = Variable<double>(balance);
    map['credit_limit'] = Variable<int>(creditLimit);
    if (!nullToAbsent || priceList != null) {
      map['price_list'] = Variable<int>(priceList);
    }
    if (!nullToAbsent || paymentTerms != null) {
      map['payment_terms'] = Variable<int>(paymentTerms);
    }
    if (!nullToAbsent || gstNo != null) {
      map['gst_no'] = Variable<String>(gstNo);
    }
    if (!nullToAbsent || panNo != null) {
      map['pan_no'] = Variable<String>(panNo);
    }
    if (!nullToAbsent || inactive != null) {
      map['inactive'] = Variable<String>(inactive);
    }
    if (!nullToAbsent || updatedDate != null) {
      map['updated_date'] = Variable<String>(updatedDate);
    }
    if (!nullToAbsent || paymentTermsName != null) {
      map['payment_terms_name'] = Variable<String>(paymentTermsName);
    }
    return map;
  }

  CustomersCompanion toCompanion(bool nullToAbsent) {
    return CustomersCompanion(
      cvCode: Value(cvCode),
      orgId:
          orgId == null && nullToAbsent ? const Value.absent() : Value(orgId),
      cvName: Value(cvName),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      tel1: tel1 == null && nullToAbsent ? const Value.absent() : Value(tel1),
      mobileNo: mobileNo == null && nullToAbsent
          ? const Value.absent()
          : Value(mobileNo),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      area: area == null && nullToAbsent ? const Value.absent() : Value(area),
      place:
          place == null && nullToAbsent ? const Value.absent() : Value(place),
      district: district == null && nullToAbsent
          ? const Value.absent()
          : Value(district),
      pinCode: pinCode == null && nullToAbsent
          ? const Value.absent()
          : Value(pinCode),
      balance: Value(balance),
      creditLimit: Value(creditLimit),
      priceList: priceList == null && nullToAbsent
          ? const Value.absent()
          : Value(priceList),
      paymentTerms: paymentTerms == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentTerms),
      gstNo:
          gstNo == null && nullToAbsent ? const Value.absent() : Value(gstNo),
      panNo:
          panNo == null && nullToAbsent ? const Value.absent() : Value(panNo),
      inactive: inactive == null && nullToAbsent
          ? const Value.absent()
          : Value(inactive),
      updatedDate: updatedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedDate),
      paymentTermsName: paymentTermsName == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentTermsName),
    );
  }

  factory Customer.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Customer(
      cvCode: serializer.fromJson<String>(json['cvCode']),
      orgId: serializer.fromJson<int?>(json['orgId']),
      cvName: serializer.fromJson<String>(json['cvName']),
      type: serializer.fromJson<String?>(json['type']),
      tel1: serializer.fromJson<String?>(json['tel1']),
      mobileNo: serializer.fromJson<String?>(json['mobileNo']),
      email: serializer.fromJson<String?>(json['email']),
      address: serializer.fromJson<String?>(json['address']),
      area: serializer.fromJson<String?>(json['area']),
      place: serializer.fromJson<String?>(json['place']),
      district: serializer.fromJson<String?>(json['district']),
      pinCode: serializer.fromJson<int?>(json['pinCode']),
      balance: serializer.fromJson<double>(json['balance']),
      creditLimit: serializer.fromJson<int>(json['creditLimit']),
      priceList: serializer.fromJson<int?>(json['priceList']),
      paymentTerms: serializer.fromJson<int?>(json['paymentTerms']),
      gstNo: serializer.fromJson<String?>(json['gstNo']),
      panNo: serializer.fromJson<String?>(json['panNo']),
      inactive: serializer.fromJson<String?>(json['inactive']),
      updatedDate: serializer.fromJson<String?>(json['updatedDate']),
      paymentTermsName: serializer.fromJson<String?>(json['paymentTermsName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cvCode': serializer.toJson<String>(cvCode),
      'orgId': serializer.toJson<int?>(orgId),
      'cvName': serializer.toJson<String>(cvName),
      'type': serializer.toJson<String?>(type),
      'tel1': serializer.toJson<String?>(tel1),
      'mobileNo': serializer.toJson<String?>(mobileNo),
      'email': serializer.toJson<String?>(email),
      'address': serializer.toJson<String?>(address),
      'area': serializer.toJson<String?>(area),
      'place': serializer.toJson<String?>(place),
      'district': serializer.toJson<String?>(district),
      'pinCode': serializer.toJson<int?>(pinCode),
      'balance': serializer.toJson<double>(balance),
      'creditLimit': serializer.toJson<int>(creditLimit),
      'priceList': serializer.toJson<int?>(priceList),
      'paymentTerms': serializer.toJson<int?>(paymentTerms),
      'gstNo': serializer.toJson<String?>(gstNo),
      'panNo': serializer.toJson<String?>(panNo),
      'inactive': serializer.toJson<String?>(inactive),
      'updatedDate': serializer.toJson<String?>(updatedDate),
      'paymentTermsName': serializer.toJson<String?>(paymentTermsName),
    };
  }

  Customer copyWith(
          {String? cvCode,
          Value<int?> orgId = const Value.absent(),
          String? cvName,
          Value<String?> type = const Value.absent(),
          Value<String?> tel1 = const Value.absent(),
          Value<String?> mobileNo = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> address = const Value.absent(),
          Value<String?> area = const Value.absent(),
          Value<String?> place = const Value.absent(),
          Value<String?> district = const Value.absent(),
          Value<int?> pinCode = const Value.absent(),
          double? balance,
          int? creditLimit,
          Value<int?> priceList = const Value.absent(),
          Value<int?> paymentTerms = const Value.absent(),
          Value<String?> gstNo = const Value.absent(),
          Value<String?> panNo = const Value.absent(),
          Value<String?> inactive = const Value.absent(),
          Value<String?> updatedDate = const Value.absent(),
          Value<String?> paymentTermsName = const Value.absent()}) =>
      Customer(
        cvCode: cvCode ?? this.cvCode,
        orgId: orgId.present ? orgId.value : this.orgId,
        cvName: cvName ?? this.cvName,
        type: type.present ? type.value : this.type,
        tel1: tel1.present ? tel1.value : this.tel1,
        mobileNo: mobileNo.present ? mobileNo.value : this.mobileNo,
        email: email.present ? email.value : this.email,
        address: address.present ? address.value : this.address,
        area: area.present ? area.value : this.area,
        place: place.present ? place.value : this.place,
        district: district.present ? district.value : this.district,
        pinCode: pinCode.present ? pinCode.value : this.pinCode,
        balance: balance ?? this.balance,
        creditLimit: creditLimit ?? this.creditLimit,
        priceList: priceList.present ? priceList.value : this.priceList,
        paymentTerms:
            paymentTerms.present ? paymentTerms.value : this.paymentTerms,
        gstNo: gstNo.present ? gstNo.value : this.gstNo,
        panNo: panNo.present ? panNo.value : this.panNo,
        inactive: inactive.present ? inactive.value : this.inactive,
        updatedDate: updatedDate.present ? updatedDate.value : this.updatedDate,
        paymentTermsName: paymentTermsName.present
            ? paymentTermsName.value
            : this.paymentTermsName,
      );
  Customer copyWithCompanion(CustomersCompanion data) {
    return Customer(
      cvCode: data.cvCode.present ? data.cvCode.value : this.cvCode,
      orgId: data.orgId.present ? data.orgId.value : this.orgId,
      cvName: data.cvName.present ? data.cvName.value : this.cvName,
      type: data.type.present ? data.type.value : this.type,
      tel1: data.tel1.present ? data.tel1.value : this.tel1,
      mobileNo: data.mobileNo.present ? data.mobileNo.value : this.mobileNo,
      email: data.email.present ? data.email.value : this.email,
      address: data.address.present ? data.address.value : this.address,
      area: data.area.present ? data.area.value : this.area,
      place: data.place.present ? data.place.value : this.place,
      district: data.district.present ? data.district.value : this.district,
      pinCode: data.pinCode.present ? data.pinCode.value : this.pinCode,
      balance: data.balance.present ? data.balance.value : this.balance,
      creditLimit:
          data.creditLimit.present ? data.creditLimit.value : this.creditLimit,
      priceList: data.priceList.present ? data.priceList.value : this.priceList,
      paymentTerms: data.paymentTerms.present
          ? data.paymentTerms.value
          : this.paymentTerms,
      gstNo: data.gstNo.present ? data.gstNo.value : this.gstNo,
      panNo: data.panNo.present ? data.panNo.value : this.panNo,
      inactive: data.inactive.present ? data.inactive.value : this.inactive,
      updatedDate:
          data.updatedDate.present ? data.updatedDate.value : this.updatedDate,
      paymentTermsName: data.paymentTermsName.present
          ? data.paymentTermsName.value
          : this.paymentTermsName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Customer(')
          ..write('cvCode: $cvCode, ')
          ..write('orgId: $orgId, ')
          ..write('cvName: $cvName, ')
          ..write('type: $type, ')
          ..write('tel1: $tel1, ')
          ..write('mobileNo: $mobileNo, ')
          ..write('email: $email, ')
          ..write('address: $address, ')
          ..write('area: $area, ')
          ..write('place: $place, ')
          ..write('district: $district, ')
          ..write('pinCode: $pinCode, ')
          ..write('balance: $balance, ')
          ..write('creditLimit: $creditLimit, ')
          ..write('priceList: $priceList, ')
          ..write('paymentTerms: $paymentTerms, ')
          ..write('gstNo: $gstNo, ')
          ..write('panNo: $panNo, ')
          ..write('inactive: $inactive, ')
          ..write('updatedDate: $updatedDate, ')
          ..write('paymentTermsName: $paymentTermsName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hashAll([
        cvCode,
        orgId,
        cvName,
        type,
        tel1,
        mobileNo,
        email,
        address,
        area,
        place,
        district,
        pinCode,
        balance,
        creditLimit,
        priceList,
        paymentTerms,
        gstNo,
        panNo,
        inactive,
        updatedDate,
        paymentTermsName
      ]);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Customer &&
          other.cvCode == this.cvCode &&
          other.orgId == this.orgId &&
          other.cvName == this.cvName &&
          other.type == this.type &&
          other.tel1 == this.tel1 &&
          other.mobileNo == this.mobileNo &&
          other.email == this.email &&
          other.address == this.address &&
          other.area == this.area &&
          other.place == this.place &&
          other.district == this.district &&
          other.pinCode == this.pinCode &&
          other.balance == this.balance &&
          other.creditLimit == this.creditLimit &&
          other.priceList == this.priceList &&
          other.paymentTerms == this.paymentTerms &&
          other.gstNo == this.gstNo &&
          other.panNo == this.panNo &&
          other.inactive == this.inactive &&
          other.updatedDate == this.updatedDate &&
          other.paymentTermsName == this.paymentTermsName);
}

class CustomersCompanion extends UpdateCompanion<Customer> {
  final Value<String> cvCode;
  final Value<int?> orgId;
  final Value<String> cvName;
  final Value<String?> type;
  final Value<String?> tel1;
  final Value<String?> mobileNo;
  final Value<String?> email;
  final Value<String?> address;
  final Value<String?> area;
  final Value<String?> place;
  final Value<String?> district;
  final Value<int?> pinCode;
  final Value<double> balance;
  final Value<int> creditLimit;
  final Value<int?> priceList;
  final Value<int?> paymentTerms;
  final Value<String?> gstNo;
  final Value<String?> panNo;
  final Value<String?> inactive;
  final Value<String?> updatedDate;
  final Value<String?> paymentTermsName;
  final Value<int> rowid;
  const CustomersCompanion({
    this.cvCode = const Value.absent(),
    this.orgId = const Value.absent(),
    this.cvName = const Value.absent(),
    this.type = const Value.absent(),
    this.tel1 = const Value.absent(),
    this.mobileNo = const Value.absent(),
    this.email = const Value.absent(),
    this.address = const Value.absent(),
    this.area = const Value.absent(),
    this.place = const Value.absent(),
    this.district = const Value.absent(),
    this.pinCode = const Value.absent(),
    this.balance = const Value.absent(),
    this.creditLimit = const Value.absent(),
    this.priceList = const Value.absent(),
    this.paymentTerms = const Value.absent(),
    this.gstNo = const Value.absent(),
    this.panNo = const Value.absent(),
    this.inactive = const Value.absent(),
    this.updatedDate = const Value.absent(),
    this.paymentTermsName = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  CustomersCompanion.insert({
    required String cvCode,
    this.orgId = const Value.absent(),
    required String cvName,
    this.type = const Value.absent(),
    this.tel1 = const Value.absent(),
    this.mobileNo = const Value.absent(),
    this.email = const Value.absent(),
    this.address = const Value.absent(),
    this.area = const Value.absent(),
    this.place = const Value.absent(),
    this.district = const Value.absent(),
    this.pinCode = const Value.absent(),
    this.balance = const Value.absent(),
    this.creditLimit = const Value.absent(),
    this.priceList = const Value.absent(),
    this.paymentTerms = const Value.absent(),
    this.gstNo = const Value.absent(),
    this.panNo = const Value.absent(),
    this.inactive = const Value.absent(),
    this.updatedDate = const Value.absent(),
    this.paymentTermsName = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : cvCode = Value(cvCode),
        cvName = Value(cvName);
  static Insertable<Customer> custom({
    Expression<String>? cvCode,
    Expression<int>? orgId,
    Expression<String>? cvName,
    Expression<String>? type,
    Expression<String>? tel1,
    Expression<String>? mobileNo,
    Expression<String>? email,
    Expression<String>? address,
    Expression<String>? area,
    Expression<String>? place,
    Expression<String>? district,
    Expression<int>? pinCode,
    Expression<double>? balance,
    Expression<int>? creditLimit,
    Expression<int>? priceList,
    Expression<int>? paymentTerms,
    Expression<String>? gstNo,
    Expression<String>? panNo,
    Expression<String>? inactive,
    Expression<String>? updatedDate,
    Expression<String>? paymentTermsName,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (cvCode != null) 'cv_code': cvCode,
      if (orgId != null) 'org_id': orgId,
      if (cvName != null) 'cv_name': cvName,
      if (type != null) 'type': type,
      if (tel1 != null) 'tel1': tel1,
      if (mobileNo != null) 'mobile_no': mobileNo,
      if (email != null) 'email': email,
      if (address != null) 'address': address,
      if (area != null) 'area': area,
      if (place != null) 'place': place,
      if (district != null) 'district': district,
      if (pinCode != null) 'pin_code': pinCode,
      if (balance != null) 'balance': balance,
      if (creditLimit != null) 'credit_limit': creditLimit,
      if (priceList != null) 'price_list': priceList,
      if (paymentTerms != null) 'payment_terms': paymentTerms,
      if (gstNo != null) 'gst_no': gstNo,
      if (panNo != null) 'pan_no': panNo,
      if (inactive != null) 'inactive': inactive,
      if (updatedDate != null) 'updated_date': updatedDate,
      if (paymentTermsName != null) 'payment_terms_name': paymentTermsName,
      if (rowid != null) 'rowid': rowid,
    });
  }

  CustomersCompanion copyWith(
      {Value<String>? cvCode,
      Value<int?>? orgId,
      Value<String>? cvName,
      Value<String?>? type,
      Value<String?>? tel1,
      Value<String?>? mobileNo,
      Value<String?>? email,
      Value<String?>? address,
      Value<String?>? area,
      Value<String?>? place,
      Value<String?>? district,
      Value<int?>? pinCode,
      Value<double>? balance,
      Value<int>? creditLimit,
      Value<int?>? priceList,
      Value<int?>? paymentTerms,
      Value<String?>? gstNo,
      Value<String?>? panNo,
      Value<String?>? inactive,
      Value<String?>? updatedDate,
      Value<String?>? paymentTermsName,
      Value<int>? rowid}) {
    return CustomersCompanion(
      cvCode: cvCode ?? this.cvCode,
      orgId: orgId ?? this.orgId,
      cvName: cvName ?? this.cvName,
      type: type ?? this.type,
      tel1: tel1 ?? this.tel1,
      mobileNo: mobileNo ?? this.mobileNo,
      email: email ?? this.email,
      address: address ?? this.address,
      area: area ?? this.area,
      place: place ?? this.place,
      district: district ?? this.district,
      pinCode: pinCode ?? this.pinCode,
      balance: balance ?? this.balance,
      creditLimit: creditLimit ?? this.creditLimit,
      priceList: priceList ?? this.priceList,
      paymentTerms: paymentTerms ?? this.paymentTerms,
      gstNo: gstNo ?? this.gstNo,
      panNo: panNo ?? this.panNo,
      inactive: inactive ?? this.inactive,
      updatedDate: updatedDate ?? this.updatedDate,
      paymentTermsName: paymentTermsName ?? this.paymentTermsName,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cvCode.present) {
      map['cv_code'] = Variable<String>(cvCode.value);
    }
    if (orgId.present) {
      map['org_id'] = Variable<int>(orgId.value);
    }
    if (cvName.present) {
      map['cv_name'] = Variable<String>(cvName.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (tel1.present) {
      map['tel1'] = Variable<String>(tel1.value);
    }
    if (mobileNo.present) {
      map['mobile_no'] = Variable<String>(mobileNo.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (area.present) {
      map['area'] = Variable<String>(area.value);
    }
    if (place.present) {
      map['place'] = Variable<String>(place.value);
    }
    if (district.present) {
      map['district'] = Variable<String>(district.value);
    }
    if (pinCode.present) {
      map['pin_code'] = Variable<int>(pinCode.value);
    }
    if (balance.present) {
      map['balance'] = Variable<double>(balance.value);
    }
    if (creditLimit.present) {
      map['credit_limit'] = Variable<int>(creditLimit.value);
    }
    if (priceList.present) {
      map['price_list'] = Variable<int>(priceList.value);
    }
    if (paymentTerms.present) {
      map['payment_terms'] = Variable<int>(paymentTerms.value);
    }
    if (gstNo.present) {
      map['gst_no'] = Variable<String>(gstNo.value);
    }
    if (panNo.present) {
      map['pan_no'] = Variable<String>(panNo.value);
    }
    if (inactive.present) {
      map['inactive'] = Variable<String>(inactive.value);
    }
    if (updatedDate.present) {
      map['updated_date'] = Variable<String>(updatedDate.value);
    }
    if (paymentTermsName.present) {
      map['payment_terms_name'] = Variable<String>(paymentTermsName.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CustomersCompanion(')
          ..write('cvCode: $cvCode, ')
          ..write('orgId: $orgId, ')
          ..write('cvName: $cvName, ')
          ..write('type: $type, ')
          ..write('tel1: $tel1, ')
          ..write('mobileNo: $mobileNo, ')
          ..write('email: $email, ')
          ..write('address: $address, ')
          ..write('area: $area, ')
          ..write('place: $place, ')
          ..write('district: $district, ')
          ..write('pinCode: $pinCode, ')
          ..write('balance: $balance, ')
          ..write('creditLimit: $creditLimit, ')
          ..write('priceList: $priceList, ')
          ..write('paymentTerms: $paymentTerms, ')
          ..write('gstNo: $gstNo, ')
          ..write('panNo: $panNo, ')
          ..write('inactive: $inactive, ')
          ..write('updatedDate: $updatedDate, ')
          ..write('paymentTermsName: $paymentTermsName, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ItemHeadersTable extends ItemHeaders
    with TableInfo<$ItemHeadersTable, ItemHeader> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemHeadersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _itemNoMeta = const VerificationMeta('itemNo');
  @override
  late final GeneratedColumn<String> itemNo = GeneratedColumn<String>(
      'item_no', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orgIdMeta = const VerificationMeta('orgId');
  @override
  late final GeneratedColumn<int> orgId = GeneratedColumn<int>(
      'org_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _itemNameMeta =
      const VerificationMeta('itemName');
  @override
  late final GeneratedColumn<String> itemName = GeneratedColumn<String>(
      'item_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String> description = GeneratedColumn<String>(
      'description', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _barcodeMeta =
      const VerificationMeta('barcode');
  @override
  late final GeneratedColumn<String> barcode = GeneratedColumn<String>(
      'barcode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _hsnCodeMeta =
      const VerificationMeta('hsnCode');
  @override
  late final GeneratedColumn<String> hsnCode = GeneratedColumn<String>(
      'hsn_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxcodeMeta =
      const VerificationMeta('taxcode');
  @override
  late final GeneratedColumn<String> taxcode = GeneratedColumn<String>(
      'taxcode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _uomMeta = const VerificationMeta('uom');
  @override
  late final GeneratedColumn<String> uom = GeneratedColumn<String>(
      'uom', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _onHandMeta = const VerificationMeta('onHand');
  @override
  late final GeneratedColumn<double> onHand = GeneratedColumn<double>(
      'on_hand', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _costMeta = const VerificationMeta('cost');
  @override
  late final GeneratedColumn<double> cost = GeneratedColumn<double>(
      'cost', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _mrpMeta = const VerificationMeta('mrp');
  @override
  late final GeneratedColumn<double> mrp = GeneratedColumn<double>(
      'mrp', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _imageMeta = const VerificationMeta('image');
  @override
  late final GeneratedColumn<String> image = GeneratedColumn<String>(
      'image', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _inactiveMeta =
      const VerificationMeta('inactive');
  @override
  late final GeneratedColumn<String> inactive = GeneratedColumn<String>(
      'inactive', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedDateMeta =
      const VerificationMeta('updatedDate');
  @override
  late final GeneratedColumn<String> updatedDate = GeneratedColumn<String>(
      'updated_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isInclusiveMeta =
      const VerificationMeta('isInclusive');
  @override
  late final GeneratedColumn<String> isInclusive = GeneratedColumn<String>(
      'is_inclusive', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _taxRateMeta =
      const VerificationMeta('taxRate');
  @override
  late final GeneratedColumn<int> taxRate = GeneratedColumn<int>(
      'tax_rate', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _cessPercMeta =
      const VerificationMeta('cessPerc');
  @override
  late final GeneratedColumn<double> cessPerc = GeneratedColumn<double>(
      'cess_perc', aliasedName, true,
      type: DriftSqlType.double, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        itemNo,
        orgId,
        itemName,
        description,
        barcode,
        hsnCode,
        taxcode,
        uom,
        onHand,
        cost,
        mrp,
        image,
        inactive,
        updatedDate,
        isInclusive,
        type,
        taxRate,
        cessPerc
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_headers';
  @override
  VerificationContext validateIntegrity(Insertable<ItemHeader> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('item_no')) {
      context.handle(_itemNoMeta,
          itemNo.isAcceptableOrUnknown(data['item_no']!, _itemNoMeta));
    } else if (isInserting) {
      context.missing(_itemNoMeta);
    }
    if (data.containsKey('org_id')) {
      context.handle(
          _orgIdMeta, orgId.isAcceptableOrUnknown(data['org_id']!, _orgIdMeta));
    }
    if (data.containsKey('item_name')) {
      context.handle(_itemNameMeta,
          itemName.isAcceptableOrUnknown(data['item_name']!, _itemNameMeta));
    } else if (isInserting) {
      context.missing(_itemNameMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    }
    if (data.containsKey('barcode')) {
      context.handle(_barcodeMeta,
          barcode.isAcceptableOrUnknown(data['barcode']!, _barcodeMeta));
    }
    if (data.containsKey('hsn_code')) {
      context.handle(_hsnCodeMeta,
          hsnCode.isAcceptableOrUnknown(data['hsn_code']!, _hsnCodeMeta));
    }
    if (data.containsKey('taxcode')) {
      context.handle(_taxcodeMeta,
          taxcode.isAcceptableOrUnknown(data['taxcode']!, _taxcodeMeta));
    }
    if (data.containsKey('uom')) {
      context.handle(
          _uomMeta, uom.isAcceptableOrUnknown(data['uom']!, _uomMeta));
    }
    if (data.containsKey('on_hand')) {
      context.handle(_onHandMeta,
          onHand.isAcceptableOrUnknown(data['on_hand']!, _onHandMeta));
    }
    if (data.containsKey('cost')) {
      context.handle(
          _costMeta, cost.isAcceptableOrUnknown(data['cost']!, _costMeta));
    }
    if (data.containsKey('mrp')) {
      context.handle(
          _mrpMeta, mrp.isAcceptableOrUnknown(data['mrp']!, _mrpMeta));
    }
    if (data.containsKey('image')) {
      context.handle(
          _imageMeta, image.isAcceptableOrUnknown(data['image']!, _imageMeta));
    }
    if (data.containsKey('inactive')) {
      context.handle(_inactiveMeta,
          inactive.isAcceptableOrUnknown(data['inactive']!, _inactiveMeta));
    }
    if (data.containsKey('updated_date')) {
      context.handle(
          _updatedDateMeta,
          updatedDate.isAcceptableOrUnknown(
              data['updated_date']!, _updatedDateMeta));
    }
    if (data.containsKey('is_inclusive')) {
      context.handle(
          _isInclusiveMeta,
          isInclusive.isAcceptableOrUnknown(
              data['is_inclusive']!, _isInclusiveMeta));
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('tax_rate')) {
      context.handle(_taxRateMeta,
          taxRate.isAcceptableOrUnknown(data['tax_rate']!, _taxRateMeta));
    }
    if (data.containsKey('cess_perc')) {
      context.handle(_cessPercMeta,
          cessPerc.isAcceptableOrUnknown(data['cess_perc']!, _cessPercMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {itemNo};
  @override
  ItemHeader map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemHeader(
      itemNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_no'])!,
      orgId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}org_id']),
      itemName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_name'])!,
      description: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}description']),
      barcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}barcode']),
      hsnCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}hsn_code']),
      taxcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}taxcode']),
      uom: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uom']),
      onHand: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}on_hand'])!,
      cost: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}cost'])!,
      mrp: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}mrp'])!,
      image: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image']),
      inactive: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}inactive']),
      updatedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_date']),
      isInclusive: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}is_inclusive']),
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
      taxRate: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}tax_rate']),
      cessPerc: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}cess_perc']),
    );
  }

  @override
  $ItemHeadersTable createAlias(String alias) {
    return $ItemHeadersTable(attachedDatabase, alias);
  }
}

class ItemHeader extends DataClass implements Insertable<ItemHeader> {
  final String itemNo;
  final int? orgId;
  final String itemName;
  final String? description;
  final String? barcode;
  final String? hsnCode;
  final String? taxcode;
  final String? uom;
  final double onHand;
  final double cost;
  final double mrp;
  final String? image;
  final String? inactive;
  final String? updatedDate;
  final String? isInclusive;
  final String? type;
  final int? taxRate;
  final double? cessPerc;
  const ItemHeader(
      {required this.itemNo,
      this.orgId,
      required this.itemName,
      this.description,
      this.barcode,
      this.hsnCode,
      this.taxcode,
      this.uom,
      required this.onHand,
      required this.cost,
      required this.mrp,
      this.image,
      this.inactive,
      this.updatedDate,
      this.isInclusive,
      this.type,
      this.taxRate,
      this.cessPerc});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['item_no'] = Variable<String>(itemNo);
    if (!nullToAbsent || orgId != null) {
      map['org_id'] = Variable<int>(orgId);
    }
    map['item_name'] = Variable<String>(itemName);
    if (!nullToAbsent || description != null) {
      map['description'] = Variable<String>(description);
    }
    if (!nullToAbsent || barcode != null) {
      map['barcode'] = Variable<String>(barcode);
    }
    if (!nullToAbsent || hsnCode != null) {
      map['hsn_code'] = Variable<String>(hsnCode);
    }
    if (!nullToAbsent || taxcode != null) {
      map['taxcode'] = Variable<String>(taxcode);
    }
    if (!nullToAbsent || uom != null) {
      map['uom'] = Variable<String>(uom);
    }
    map['on_hand'] = Variable<double>(onHand);
    map['cost'] = Variable<double>(cost);
    map['mrp'] = Variable<double>(mrp);
    if (!nullToAbsent || image != null) {
      map['image'] = Variable<String>(image);
    }
    if (!nullToAbsent || inactive != null) {
      map['inactive'] = Variable<String>(inactive);
    }
    if (!nullToAbsent || updatedDate != null) {
      map['updated_date'] = Variable<String>(updatedDate);
    }
    if (!nullToAbsent || isInclusive != null) {
      map['is_inclusive'] = Variable<String>(isInclusive);
    }
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || taxRate != null) {
      map['tax_rate'] = Variable<int>(taxRate);
    }
    if (!nullToAbsent || cessPerc != null) {
      map['cess_perc'] = Variable<double>(cessPerc);
    }
    return map;
  }

  ItemHeadersCompanion toCompanion(bool nullToAbsent) {
    return ItemHeadersCompanion(
      itemNo: Value(itemNo),
      orgId:
          orgId == null && nullToAbsent ? const Value.absent() : Value(orgId),
      itemName: Value(itemName),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      barcode: barcode == null && nullToAbsent
          ? const Value.absent()
          : Value(barcode),
      hsnCode: hsnCode == null && nullToAbsent
          ? const Value.absent()
          : Value(hsnCode),
      taxcode: taxcode == null && nullToAbsent
          ? const Value.absent()
          : Value(taxcode),
      uom: uom == null && nullToAbsent ? const Value.absent() : Value(uom),
      onHand: Value(onHand),
      cost: Value(cost),
      mrp: Value(mrp),
      image:
          image == null && nullToAbsent ? const Value.absent() : Value(image),
      inactive: inactive == null && nullToAbsent
          ? const Value.absent()
          : Value(inactive),
      updatedDate: updatedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedDate),
      isInclusive: isInclusive == null && nullToAbsent
          ? const Value.absent()
          : Value(isInclusive),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      taxRate: taxRate == null && nullToAbsent
          ? const Value.absent()
          : Value(taxRate),
      cessPerc: cessPerc == null && nullToAbsent
          ? const Value.absent()
          : Value(cessPerc),
    );
  }

  factory ItemHeader.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemHeader(
      itemNo: serializer.fromJson<String>(json['itemNo']),
      orgId: serializer.fromJson<int?>(json['orgId']),
      itemName: serializer.fromJson<String>(json['itemName']),
      description: serializer.fromJson<String?>(json['description']),
      barcode: serializer.fromJson<String?>(json['barcode']),
      hsnCode: serializer.fromJson<String?>(json['hsnCode']),
      taxcode: serializer.fromJson<String?>(json['taxcode']),
      uom: serializer.fromJson<String?>(json['uom']),
      onHand: serializer.fromJson<double>(json['onHand']),
      cost: serializer.fromJson<double>(json['cost']),
      mrp: serializer.fromJson<double>(json['mrp']),
      image: serializer.fromJson<String?>(json['image']),
      inactive: serializer.fromJson<String?>(json['inactive']),
      updatedDate: serializer.fromJson<String?>(json['updatedDate']),
      isInclusive: serializer.fromJson<String?>(json['isInclusive']),
      type: serializer.fromJson<String?>(json['type']),
      taxRate: serializer.fromJson<int?>(json['taxRate']),
      cessPerc: serializer.fromJson<double?>(json['cessPerc']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'itemNo': serializer.toJson<String>(itemNo),
      'orgId': serializer.toJson<int?>(orgId),
      'itemName': serializer.toJson<String>(itemName),
      'description': serializer.toJson<String?>(description),
      'barcode': serializer.toJson<String?>(barcode),
      'hsnCode': serializer.toJson<String?>(hsnCode),
      'taxcode': serializer.toJson<String?>(taxcode),
      'uom': serializer.toJson<String?>(uom),
      'onHand': serializer.toJson<double>(onHand),
      'cost': serializer.toJson<double>(cost),
      'mrp': serializer.toJson<double>(mrp),
      'image': serializer.toJson<String?>(image),
      'inactive': serializer.toJson<String?>(inactive),
      'updatedDate': serializer.toJson<String?>(updatedDate),
      'isInclusive': serializer.toJson<String?>(isInclusive),
      'type': serializer.toJson<String?>(type),
      'taxRate': serializer.toJson<int?>(taxRate),
      'cessPerc': serializer.toJson<double?>(cessPerc),
    };
  }

  ItemHeader copyWith(
          {String? itemNo,
          Value<int?> orgId = const Value.absent(),
          String? itemName,
          Value<String?> description = const Value.absent(),
          Value<String?> barcode = const Value.absent(),
          Value<String?> hsnCode = const Value.absent(),
          Value<String?> taxcode = const Value.absent(),
          Value<String?> uom = const Value.absent(),
          double? onHand,
          double? cost,
          double? mrp,
          Value<String?> image = const Value.absent(),
          Value<String?> inactive = const Value.absent(),
          Value<String?> updatedDate = const Value.absent(),
          Value<String?> isInclusive = const Value.absent(),
          Value<String?> type = const Value.absent(),
          Value<int?> taxRate = const Value.absent(),
          Value<double?> cessPerc = const Value.absent()}) =>
      ItemHeader(
        itemNo: itemNo ?? this.itemNo,
        orgId: orgId.present ? orgId.value : this.orgId,
        itemName: itemName ?? this.itemName,
        description: description.present ? description.value : this.description,
        barcode: barcode.present ? barcode.value : this.barcode,
        hsnCode: hsnCode.present ? hsnCode.value : this.hsnCode,
        taxcode: taxcode.present ? taxcode.value : this.taxcode,
        uom: uom.present ? uom.value : this.uom,
        onHand: onHand ?? this.onHand,
        cost: cost ?? this.cost,
        mrp: mrp ?? this.mrp,
        image: image.present ? image.value : this.image,
        inactive: inactive.present ? inactive.value : this.inactive,
        updatedDate: updatedDate.present ? updatedDate.value : this.updatedDate,
        isInclusive: isInclusive.present ? isInclusive.value : this.isInclusive,
        type: type.present ? type.value : this.type,
        taxRate: taxRate.present ? taxRate.value : this.taxRate,
        cessPerc: cessPerc.present ? cessPerc.value : this.cessPerc,
      );
  ItemHeader copyWithCompanion(ItemHeadersCompanion data) {
    return ItemHeader(
      itemNo: data.itemNo.present ? data.itemNo.value : this.itemNo,
      orgId: data.orgId.present ? data.orgId.value : this.orgId,
      itemName: data.itemName.present ? data.itemName.value : this.itemName,
      description:
          data.description.present ? data.description.value : this.description,
      barcode: data.barcode.present ? data.barcode.value : this.barcode,
      hsnCode: data.hsnCode.present ? data.hsnCode.value : this.hsnCode,
      taxcode: data.taxcode.present ? data.taxcode.value : this.taxcode,
      uom: data.uom.present ? data.uom.value : this.uom,
      onHand: data.onHand.present ? data.onHand.value : this.onHand,
      cost: data.cost.present ? data.cost.value : this.cost,
      mrp: data.mrp.present ? data.mrp.value : this.mrp,
      image: data.image.present ? data.image.value : this.image,
      inactive: data.inactive.present ? data.inactive.value : this.inactive,
      updatedDate:
          data.updatedDate.present ? data.updatedDate.value : this.updatedDate,
      isInclusive:
          data.isInclusive.present ? data.isInclusive.value : this.isInclusive,
      type: data.type.present ? data.type.value : this.type,
      taxRate: data.taxRate.present ? data.taxRate.value : this.taxRate,
      cessPerc: data.cessPerc.present ? data.cessPerc.value : this.cessPerc,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItemHeader(')
          ..write('itemNo: $itemNo, ')
          ..write('orgId: $orgId, ')
          ..write('itemName: $itemName, ')
          ..write('description: $description, ')
          ..write('barcode: $barcode, ')
          ..write('hsnCode: $hsnCode, ')
          ..write('taxcode: $taxcode, ')
          ..write('uom: $uom, ')
          ..write('onHand: $onHand, ')
          ..write('cost: $cost, ')
          ..write('mrp: $mrp, ')
          ..write('image: $image, ')
          ..write('inactive: $inactive, ')
          ..write('updatedDate: $updatedDate, ')
          ..write('isInclusive: $isInclusive, ')
          ..write('type: $type, ')
          ..write('taxRate: $taxRate, ')
          ..write('cessPerc: $cessPerc')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      itemNo,
      orgId,
      itemName,
      description,
      barcode,
      hsnCode,
      taxcode,
      uom,
      onHand,
      cost,
      mrp,
      image,
      inactive,
      updatedDate,
      isInclusive,
      type,
      taxRate,
      cessPerc);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemHeader &&
          other.itemNo == this.itemNo &&
          other.orgId == this.orgId &&
          other.itemName == this.itemName &&
          other.description == this.description &&
          other.barcode == this.barcode &&
          other.hsnCode == this.hsnCode &&
          other.taxcode == this.taxcode &&
          other.uom == this.uom &&
          other.onHand == this.onHand &&
          other.cost == this.cost &&
          other.mrp == this.mrp &&
          other.image == this.image &&
          other.inactive == this.inactive &&
          other.updatedDate == this.updatedDate &&
          other.isInclusive == this.isInclusive &&
          other.type == this.type &&
          other.taxRate == this.taxRate &&
          other.cessPerc == this.cessPerc);
}

class ItemHeadersCompanion extends UpdateCompanion<ItemHeader> {
  final Value<String> itemNo;
  final Value<int?> orgId;
  final Value<String> itemName;
  final Value<String?> description;
  final Value<String?> barcode;
  final Value<String?> hsnCode;
  final Value<String?> taxcode;
  final Value<String?> uom;
  final Value<double> onHand;
  final Value<double> cost;
  final Value<double> mrp;
  final Value<String?> image;
  final Value<String?> inactive;
  final Value<String?> updatedDate;
  final Value<String?> isInclusive;
  final Value<String?> type;
  final Value<int?> taxRate;
  final Value<double?> cessPerc;
  final Value<int> rowid;
  const ItemHeadersCompanion({
    this.itemNo = const Value.absent(),
    this.orgId = const Value.absent(),
    this.itemName = const Value.absent(),
    this.description = const Value.absent(),
    this.barcode = const Value.absent(),
    this.hsnCode = const Value.absent(),
    this.taxcode = const Value.absent(),
    this.uom = const Value.absent(),
    this.onHand = const Value.absent(),
    this.cost = const Value.absent(),
    this.mrp = const Value.absent(),
    this.image = const Value.absent(),
    this.inactive = const Value.absent(),
    this.updatedDate = const Value.absent(),
    this.isInclusive = const Value.absent(),
    this.type = const Value.absent(),
    this.taxRate = const Value.absent(),
    this.cessPerc = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  ItemHeadersCompanion.insert({
    required String itemNo,
    this.orgId = const Value.absent(),
    required String itemName,
    this.description = const Value.absent(),
    this.barcode = const Value.absent(),
    this.hsnCode = const Value.absent(),
    this.taxcode = const Value.absent(),
    this.uom = const Value.absent(),
    this.onHand = const Value.absent(),
    this.cost = const Value.absent(),
    this.mrp = const Value.absent(),
    this.image = const Value.absent(),
    this.inactive = const Value.absent(),
    this.updatedDate = const Value.absent(),
    this.isInclusive = const Value.absent(),
    this.type = const Value.absent(),
    this.taxRate = const Value.absent(),
    this.cessPerc = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : itemNo = Value(itemNo),
        itemName = Value(itemName);
  static Insertable<ItemHeader> custom({
    Expression<String>? itemNo,
    Expression<int>? orgId,
    Expression<String>? itemName,
    Expression<String>? description,
    Expression<String>? barcode,
    Expression<String>? hsnCode,
    Expression<String>? taxcode,
    Expression<String>? uom,
    Expression<double>? onHand,
    Expression<double>? cost,
    Expression<double>? mrp,
    Expression<String>? image,
    Expression<String>? inactive,
    Expression<String>? updatedDate,
    Expression<String>? isInclusive,
    Expression<String>? type,
    Expression<int>? taxRate,
    Expression<double>? cessPerc,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (itemNo != null) 'item_no': itemNo,
      if (orgId != null) 'org_id': orgId,
      if (itemName != null) 'item_name': itemName,
      if (description != null) 'description': description,
      if (barcode != null) 'barcode': barcode,
      if (hsnCode != null) 'hsn_code': hsnCode,
      if (taxcode != null) 'taxcode': taxcode,
      if (uom != null) 'uom': uom,
      if (onHand != null) 'on_hand': onHand,
      if (cost != null) 'cost': cost,
      if (mrp != null) 'mrp': mrp,
      if (image != null) 'image': image,
      if (inactive != null) 'inactive': inactive,
      if (updatedDate != null) 'updated_date': updatedDate,
      if (isInclusive != null) 'is_inclusive': isInclusive,
      if (type != null) 'type': type,
      if (taxRate != null) 'tax_rate': taxRate,
      if (cessPerc != null) 'cess_perc': cessPerc,
      if (rowid != null) 'rowid': rowid,
    });
  }

  ItemHeadersCompanion copyWith(
      {Value<String>? itemNo,
      Value<int?>? orgId,
      Value<String>? itemName,
      Value<String?>? description,
      Value<String?>? barcode,
      Value<String?>? hsnCode,
      Value<String?>? taxcode,
      Value<String?>? uom,
      Value<double>? onHand,
      Value<double>? cost,
      Value<double>? mrp,
      Value<String?>? image,
      Value<String?>? inactive,
      Value<String?>? updatedDate,
      Value<String?>? isInclusive,
      Value<String?>? type,
      Value<int?>? taxRate,
      Value<double?>? cessPerc,
      Value<int>? rowid}) {
    return ItemHeadersCompanion(
      itemNo: itemNo ?? this.itemNo,
      orgId: orgId ?? this.orgId,
      itemName: itemName ?? this.itemName,
      description: description ?? this.description,
      barcode: barcode ?? this.barcode,
      hsnCode: hsnCode ?? this.hsnCode,
      taxcode: taxcode ?? this.taxcode,
      uom: uom ?? this.uom,
      onHand: onHand ?? this.onHand,
      cost: cost ?? this.cost,
      mrp: mrp ?? this.mrp,
      image: image ?? this.image,
      inactive: inactive ?? this.inactive,
      updatedDate: updatedDate ?? this.updatedDate,
      isInclusive: isInclusive ?? this.isInclusive,
      type: type ?? this.type,
      taxRate: taxRate ?? this.taxRate,
      cessPerc: cessPerc ?? this.cessPerc,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (itemNo.present) {
      map['item_no'] = Variable<String>(itemNo.value);
    }
    if (orgId.present) {
      map['org_id'] = Variable<int>(orgId.value);
    }
    if (itemName.present) {
      map['item_name'] = Variable<String>(itemName.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (barcode.present) {
      map['barcode'] = Variable<String>(barcode.value);
    }
    if (hsnCode.present) {
      map['hsn_code'] = Variable<String>(hsnCode.value);
    }
    if (taxcode.present) {
      map['taxcode'] = Variable<String>(taxcode.value);
    }
    if (uom.present) {
      map['uom'] = Variable<String>(uom.value);
    }
    if (onHand.present) {
      map['on_hand'] = Variable<double>(onHand.value);
    }
    if (cost.present) {
      map['cost'] = Variable<double>(cost.value);
    }
    if (mrp.present) {
      map['mrp'] = Variable<double>(mrp.value);
    }
    if (image.present) {
      map['image'] = Variable<String>(image.value);
    }
    if (inactive.present) {
      map['inactive'] = Variable<String>(inactive.value);
    }
    if (updatedDate.present) {
      map['updated_date'] = Variable<String>(updatedDate.value);
    }
    if (isInclusive.present) {
      map['is_inclusive'] = Variable<String>(isInclusive.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (taxRate.present) {
      map['tax_rate'] = Variable<int>(taxRate.value);
    }
    if (cessPerc.present) {
      map['cess_perc'] = Variable<double>(cessPerc.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemHeadersCompanion(')
          ..write('itemNo: $itemNo, ')
          ..write('orgId: $orgId, ')
          ..write('itemName: $itemName, ')
          ..write('description: $description, ')
          ..write('barcode: $barcode, ')
          ..write('hsnCode: $hsnCode, ')
          ..write('taxcode: $taxcode, ')
          ..write('uom: $uom, ')
          ..write('onHand: $onHand, ')
          ..write('cost: $cost, ')
          ..write('mrp: $mrp, ')
          ..write('image: $image, ')
          ..write('inactive: $inactive, ')
          ..write('updatedDate: $updatedDate, ')
          ..write('isInclusive: $isInclusive, ')
          ..write('type: $type, ')
          ..write('taxRate: $taxRate, ')
          ..write('cessPerc: $cessPerc, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $ItemPricesTable extends ItemPrices
    with TableInfo<$ItemPricesTable, ItemPrice> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemPricesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _orgIdMeta = const VerificationMeta('orgId');
  @override
  late final GeneratedColumn<int> orgId = GeneratedColumn<int>(
      'org_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _itemNoMeta = const VerificationMeta('itemNo');
  @override
  late final GeneratedColumn<String> itemNo = GeneratedColumn<String>(
      'item_no', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceListIdMeta =
      const VerificationMeta('priceListId');
  @override
  late final GeneratedColumn<int> priceListId = GeneratedColumn<int>(
      'price_list_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _discountMeta =
      const VerificationMeta('discount');
  @override
  late final GeneratedColumn<double> discount = GeneratedColumn<double>(
      'discount', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _isInclusiveMeta =
      const VerificationMeta('isInclusive');
  @override
  late final GeneratedColumn<String> isInclusive = GeneratedColumn<String>(
      'is_inclusive', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedDateMeta =
      const VerificationMeta('updatedDate');
  @override
  late final GeneratedColumn<String> updatedDate = GeneratedColumn<String>(
      'updated_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        orgId,
        itemNo,
        priceListId,
        price,
        discount,
        isInclusive,
        updatedDate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_prices';
  @override
  VerificationContext validateIntegrity(Insertable<ItemPrice> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('org_id')) {
      context.handle(
          _orgIdMeta, orgId.isAcceptableOrUnknown(data['org_id']!, _orgIdMeta));
    }
    if (data.containsKey('item_no')) {
      context.handle(_itemNoMeta,
          itemNo.isAcceptableOrUnknown(data['item_no']!, _itemNoMeta));
    } else if (isInserting) {
      context.missing(_itemNoMeta);
    }
    if (data.containsKey('price_list_id')) {
      context.handle(
          _priceListIdMeta,
          priceListId.isAcceptableOrUnknown(
              data['price_list_id']!, _priceListIdMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    }
    if (data.containsKey('discount')) {
      context.handle(_discountMeta,
          discount.isAcceptableOrUnknown(data['discount']!, _discountMeta));
    }
    if (data.containsKey('is_inclusive')) {
      context.handle(
          _isInclusiveMeta,
          isInclusive.isAcceptableOrUnknown(
              data['is_inclusive']!, _isInclusiveMeta));
    }
    if (data.containsKey('updated_date')) {
      context.handle(
          _updatedDateMeta,
          updatedDate.isAcceptableOrUnknown(
              data['updated_date']!, _updatedDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemPrice map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemPrice(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      orgId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}org_id']),
      itemNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_no'])!,
      priceListId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}price_list_id']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      discount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount'])!,
      isInclusive: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}is_inclusive']),
      updatedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_date']),
    );
  }

  @override
  $ItemPricesTable createAlias(String alias) {
    return $ItemPricesTable(attachedDatabase, alias);
  }
}

class ItemPrice extends DataClass implements Insertable<ItemPrice> {
  final int id;
  final int? orgId;
  final String itemNo;
  final int? priceListId;
  final double price;
  final double discount;
  final String? isInclusive;
  final String? updatedDate;
  const ItemPrice(
      {required this.id,
      this.orgId,
      required this.itemNo,
      this.priceListId,
      required this.price,
      required this.discount,
      this.isInclusive,
      this.updatedDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || orgId != null) {
      map['org_id'] = Variable<int>(orgId);
    }
    map['item_no'] = Variable<String>(itemNo);
    if (!nullToAbsent || priceListId != null) {
      map['price_list_id'] = Variable<int>(priceListId);
    }
    map['price'] = Variable<double>(price);
    map['discount'] = Variable<double>(discount);
    if (!nullToAbsent || isInclusive != null) {
      map['is_inclusive'] = Variable<String>(isInclusive);
    }
    if (!nullToAbsent || updatedDate != null) {
      map['updated_date'] = Variable<String>(updatedDate);
    }
    return map;
  }

  ItemPricesCompanion toCompanion(bool nullToAbsent) {
    return ItemPricesCompanion(
      id: Value(id),
      orgId:
          orgId == null && nullToAbsent ? const Value.absent() : Value(orgId),
      itemNo: Value(itemNo),
      priceListId: priceListId == null && nullToAbsent
          ? const Value.absent()
          : Value(priceListId),
      price: Value(price),
      discount: Value(discount),
      isInclusive: isInclusive == null && nullToAbsent
          ? const Value.absent()
          : Value(isInclusive),
      updatedDate: updatedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedDate),
    );
  }

  factory ItemPrice.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemPrice(
      id: serializer.fromJson<int>(json['id']),
      orgId: serializer.fromJson<int?>(json['orgId']),
      itemNo: serializer.fromJson<String>(json['itemNo']),
      priceListId: serializer.fromJson<int?>(json['priceListId']),
      price: serializer.fromJson<double>(json['price']),
      discount: serializer.fromJson<double>(json['discount']),
      isInclusive: serializer.fromJson<String?>(json['isInclusive']),
      updatedDate: serializer.fromJson<String?>(json['updatedDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'orgId': serializer.toJson<int?>(orgId),
      'itemNo': serializer.toJson<String>(itemNo),
      'priceListId': serializer.toJson<int?>(priceListId),
      'price': serializer.toJson<double>(price),
      'discount': serializer.toJson<double>(discount),
      'isInclusive': serializer.toJson<String?>(isInclusive),
      'updatedDate': serializer.toJson<String?>(updatedDate),
    };
  }

  ItemPrice copyWith(
          {int? id,
          Value<int?> orgId = const Value.absent(),
          String? itemNo,
          Value<int?> priceListId = const Value.absent(),
          double? price,
          double? discount,
          Value<String?> isInclusive = const Value.absent(),
          Value<String?> updatedDate = const Value.absent()}) =>
      ItemPrice(
        id: id ?? this.id,
        orgId: orgId.present ? orgId.value : this.orgId,
        itemNo: itemNo ?? this.itemNo,
        priceListId: priceListId.present ? priceListId.value : this.priceListId,
        price: price ?? this.price,
        discount: discount ?? this.discount,
        isInclusive: isInclusive.present ? isInclusive.value : this.isInclusive,
        updatedDate: updatedDate.present ? updatedDate.value : this.updatedDate,
      );
  ItemPrice copyWithCompanion(ItemPricesCompanion data) {
    return ItemPrice(
      id: data.id.present ? data.id.value : this.id,
      orgId: data.orgId.present ? data.orgId.value : this.orgId,
      itemNo: data.itemNo.present ? data.itemNo.value : this.itemNo,
      priceListId:
          data.priceListId.present ? data.priceListId.value : this.priceListId,
      price: data.price.present ? data.price.value : this.price,
      discount: data.discount.present ? data.discount.value : this.discount,
      isInclusive:
          data.isInclusive.present ? data.isInclusive.value : this.isInclusive,
      updatedDate:
          data.updatedDate.present ? data.updatedDate.value : this.updatedDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItemPrice(')
          ..write('id: $id, ')
          ..write('orgId: $orgId, ')
          ..write('itemNo: $itemNo, ')
          ..write('priceListId: $priceListId, ')
          ..write('price: $price, ')
          ..write('discount: $discount, ')
          ..write('isInclusive: $isInclusive, ')
          ..write('updatedDate: $updatedDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, orgId, itemNo, priceListId, price,
      discount, isInclusive, updatedDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemPrice &&
          other.id == this.id &&
          other.orgId == this.orgId &&
          other.itemNo == this.itemNo &&
          other.priceListId == this.priceListId &&
          other.price == this.price &&
          other.discount == this.discount &&
          other.isInclusive == this.isInclusive &&
          other.updatedDate == this.updatedDate);
}

class ItemPricesCompanion extends UpdateCompanion<ItemPrice> {
  final Value<int> id;
  final Value<int?> orgId;
  final Value<String> itemNo;
  final Value<int?> priceListId;
  final Value<double> price;
  final Value<double> discount;
  final Value<String?> isInclusive;
  final Value<String?> updatedDate;
  const ItemPricesCompanion({
    this.id = const Value.absent(),
    this.orgId = const Value.absent(),
    this.itemNo = const Value.absent(),
    this.priceListId = const Value.absent(),
    this.price = const Value.absent(),
    this.discount = const Value.absent(),
    this.isInclusive = const Value.absent(),
    this.updatedDate = const Value.absent(),
  });
  ItemPricesCompanion.insert({
    this.id = const Value.absent(),
    this.orgId = const Value.absent(),
    required String itemNo,
    this.priceListId = const Value.absent(),
    this.price = const Value.absent(),
    this.discount = const Value.absent(),
    this.isInclusive = const Value.absent(),
    this.updatedDate = const Value.absent(),
  }) : itemNo = Value(itemNo);
  static Insertable<ItemPrice> custom({
    Expression<int>? id,
    Expression<int>? orgId,
    Expression<String>? itemNo,
    Expression<int>? priceListId,
    Expression<double>? price,
    Expression<double>? discount,
    Expression<String>? isInclusive,
    Expression<String>? updatedDate,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (orgId != null) 'org_id': orgId,
      if (itemNo != null) 'item_no': itemNo,
      if (priceListId != null) 'price_list_id': priceListId,
      if (price != null) 'price': price,
      if (discount != null) 'discount': discount,
      if (isInclusive != null) 'is_inclusive': isInclusive,
      if (updatedDate != null) 'updated_date': updatedDate,
    });
  }

  ItemPricesCompanion copyWith(
      {Value<int>? id,
      Value<int?>? orgId,
      Value<String>? itemNo,
      Value<int?>? priceListId,
      Value<double>? price,
      Value<double>? discount,
      Value<String?>? isInclusive,
      Value<String?>? updatedDate}) {
    return ItemPricesCompanion(
      id: id ?? this.id,
      orgId: orgId ?? this.orgId,
      itemNo: itemNo ?? this.itemNo,
      priceListId: priceListId ?? this.priceListId,
      price: price ?? this.price,
      discount: discount ?? this.discount,
      isInclusive: isInclusive ?? this.isInclusive,
      updatedDate: updatedDate ?? this.updatedDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (orgId.present) {
      map['org_id'] = Variable<int>(orgId.value);
    }
    if (itemNo.present) {
      map['item_no'] = Variable<String>(itemNo.value);
    }
    if (priceListId.present) {
      map['price_list_id'] = Variable<int>(priceListId.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (discount.present) {
      map['discount'] = Variable<double>(discount.value);
    }
    if (isInclusive.present) {
      map['is_inclusive'] = Variable<String>(isInclusive.value);
    }
    if (updatedDate.present) {
      map['updated_date'] = Variable<String>(updatedDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemPricesCompanion(')
          ..write('id: $id, ')
          ..write('orgId: $orgId, ')
          ..write('itemNo: $itemNo, ')
          ..write('priceListId: $priceListId, ')
          ..write('price: $price, ')
          ..write('discount: $discount, ')
          ..write('isInclusive: $isInclusive, ')
          ..write('updatedDate: $updatedDate')
          ..write(')'))
        .toString();
  }
}

class $AccountsTable extends Accounts with TableInfo<$AccountsTable, Account> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AccountsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _codeMeta = const VerificationMeta('code');
  @override
  late final GeneratedColumn<int> code = GeneratedColumn<int>(
      'code', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _orgIdMeta = const VerificationMeta('orgId');
  @override
  late final GeneratedColumn<int> orgId = GeneratedColumn<int>(
      'org_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _drawerMeta = const VerificationMeta('drawer');
  @override
  late final GeneratedColumn<String> drawer = GeneratedColumn<String>(
      'drawer', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _parentMeta = const VerificationMeta('parent');
  @override
  late final GeneratedColumn<int> parent = GeneratedColumn<int>(
      'parent', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _balanceMeta =
      const VerificationMeta('balance');
  @override
  late final GeneratedColumn<double> balance = GeneratedColumn<double>(
      'balance', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _cashAccountMeta =
      const VerificationMeta('cashAccount');
  @override
  late final GeneratedColumn<String> cashAccount = GeneratedColumn<String>(
      'cash_account', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _inactiveMeta =
      const VerificationMeta('inactive');
  @override
  late final GeneratedColumn<String> inactive = GeneratedColumn<String>(
      'inactive', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedDateMeta =
      const VerificationMeta('updatedDate');
  @override
  late final GeneratedColumn<String> updatedDate = GeneratedColumn<String>(
      'updated_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        code,
        orgId,
        name,
        drawer,
        parent,
        balance,
        cashAccount,
        inactive,
        updatedDate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'accounts';
  @override
  VerificationContext validateIntegrity(Insertable<Account> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('code')) {
      context.handle(
          _codeMeta, code.isAcceptableOrUnknown(data['code']!, _codeMeta));
    }
    if (data.containsKey('org_id')) {
      context.handle(
          _orgIdMeta, orgId.isAcceptableOrUnknown(data['org_id']!, _orgIdMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    } else if (isInserting) {
      context.missing(_nameMeta);
    }
    if (data.containsKey('drawer')) {
      context.handle(_drawerMeta,
          drawer.isAcceptableOrUnknown(data['drawer']!, _drawerMeta));
    }
    if (data.containsKey('parent')) {
      context.handle(_parentMeta,
          parent.isAcceptableOrUnknown(data['parent']!, _parentMeta));
    }
    if (data.containsKey('balance')) {
      context.handle(_balanceMeta,
          balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta));
    }
    if (data.containsKey('cash_account')) {
      context.handle(
          _cashAccountMeta,
          cashAccount.isAcceptableOrUnknown(
              data['cash_account']!, _cashAccountMeta));
    }
    if (data.containsKey('inactive')) {
      context.handle(_inactiveMeta,
          inactive.isAcceptableOrUnknown(data['inactive']!, _inactiveMeta));
    }
    if (data.containsKey('updated_date')) {
      context.handle(
          _updatedDateMeta,
          updatedDate.isAcceptableOrUnknown(
              data['updated_date']!, _updatedDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {code};
  @override
  Account map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Account(
      code: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}code'])!,
      orgId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}org_id']),
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name'])!,
      drawer: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}drawer']),
      parent: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}parent']),
      balance: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}balance'])!,
      cashAccount: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cash_account']),
      inactive: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}inactive']),
      updatedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_date']),
    );
  }

  @override
  $AccountsTable createAlias(String alias) {
    return $AccountsTable(attachedDatabase, alias);
  }
}

class Account extends DataClass implements Insertable<Account> {
  final int code;
  final int? orgId;
  final String name;
  final String? drawer;
  final int? parent;
  final double balance;
  final String? cashAccount;
  final String? inactive;
  final String? updatedDate;
  const Account(
      {required this.code,
      this.orgId,
      required this.name,
      this.drawer,
      this.parent,
      required this.balance,
      this.cashAccount,
      this.inactive,
      this.updatedDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['code'] = Variable<int>(code);
    if (!nullToAbsent || orgId != null) {
      map['org_id'] = Variable<int>(orgId);
    }
    map['name'] = Variable<String>(name);
    if (!nullToAbsent || drawer != null) {
      map['drawer'] = Variable<String>(drawer);
    }
    if (!nullToAbsent || parent != null) {
      map['parent'] = Variable<int>(parent);
    }
    map['balance'] = Variable<double>(balance);
    if (!nullToAbsent || cashAccount != null) {
      map['cash_account'] = Variable<String>(cashAccount);
    }
    if (!nullToAbsent || inactive != null) {
      map['inactive'] = Variable<String>(inactive);
    }
    if (!nullToAbsent || updatedDate != null) {
      map['updated_date'] = Variable<String>(updatedDate);
    }
    return map;
  }

  AccountsCompanion toCompanion(bool nullToAbsent) {
    return AccountsCompanion(
      code: Value(code),
      orgId:
          orgId == null && nullToAbsent ? const Value.absent() : Value(orgId),
      name: Value(name),
      drawer:
          drawer == null && nullToAbsent ? const Value.absent() : Value(drawer),
      parent:
          parent == null && nullToAbsent ? const Value.absent() : Value(parent),
      balance: Value(balance),
      cashAccount: cashAccount == null && nullToAbsent
          ? const Value.absent()
          : Value(cashAccount),
      inactive: inactive == null && nullToAbsent
          ? const Value.absent()
          : Value(inactive),
      updatedDate: updatedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedDate),
    );
  }

  factory Account.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Account(
      code: serializer.fromJson<int>(json['code']),
      orgId: serializer.fromJson<int?>(json['orgId']),
      name: serializer.fromJson<String>(json['name']),
      drawer: serializer.fromJson<String?>(json['drawer']),
      parent: serializer.fromJson<int?>(json['parent']),
      balance: serializer.fromJson<double>(json['balance']),
      cashAccount: serializer.fromJson<String?>(json['cashAccount']),
      inactive: serializer.fromJson<String?>(json['inactive']),
      updatedDate: serializer.fromJson<String?>(json['updatedDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'code': serializer.toJson<int>(code),
      'orgId': serializer.toJson<int?>(orgId),
      'name': serializer.toJson<String>(name),
      'drawer': serializer.toJson<String?>(drawer),
      'parent': serializer.toJson<int?>(parent),
      'balance': serializer.toJson<double>(balance),
      'cashAccount': serializer.toJson<String?>(cashAccount),
      'inactive': serializer.toJson<String?>(inactive),
      'updatedDate': serializer.toJson<String?>(updatedDate),
    };
  }

  Account copyWith(
          {int? code,
          Value<int?> orgId = const Value.absent(),
          String? name,
          Value<String?> drawer = const Value.absent(),
          Value<int?> parent = const Value.absent(),
          double? balance,
          Value<String?> cashAccount = const Value.absent(),
          Value<String?> inactive = const Value.absent(),
          Value<String?> updatedDate = const Value.absent()}) =>
      Account(
        code: code ?? this.code,
        orgId: orgId.present ? orgId.value : this.orgId,
        name: name ?? this.name,
        drawer: drawer.present ? drawer.value : this.drawer,
        parent: parent.present ? parent.value : this.parent,
        balance: balance ?? this.balance,
        cashAccount: cashAccount.present ? cashAccount.value : this.cashAccount,
        inactive: inactive.present ? inactive.value : this.inactive,
        updatedDate: updatedDate.present ? updatedDate.value : this.updatedDate,
      );
  Account copyWithCompanion(AccountsCompanion data) {
    return Account(
      code: data.code.present ? data.code.value : this.code,
      orgId: data.orgId.present ? data.orgId.value : this.orgId,
      name: data.name.present ? data.name.value : this.name,
      drawer: data.drawer.present ? data.drawer.value : this.drawer,
      parent: data.parent.present ? data.parent.value : this.parent,
      balance: data.balance.present ? data.balance.value : this.balance,
      cashAccount:
          data.cashAccount.present ? data.cashAccount.value : this.cashAccount,
      inactive: data.inactive.present ? data.inactive.value : this.inactive,
      updatedDate:
          data.updatedDate.present ? data.updatedDate.value : this.updatedDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Account(')
          ..write('code: $code, ')
          ..write('orgId: $orgId, ')
          ..write('name: $name, ')
          ..write('drawer: $drawer, ')
          ..write('parent: $parent, ')
          ..write('balance: $balance, ')
          ..write('cashAccount: $cashAccount, ')
          ..write('inactive: $inactive, ')
          ..write('updatedDate: $updatedDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(code, orgId, name, drawer, parent, balance,
      cashAccount, inactive, updatedDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Account &&
          other.code == this.code &&
          other.orgId == this.orgId &&
          other.name == this.name &&
          other.drawer == this.drawer &&
          other.parent == this.parent &&
          other.balance == this.balance &&
          other.cashAccount == this.cashAccount &&
          other.inactive == this.inactive &&
          other.updatedDate == this.updatedDate);
}

class AccountsCompanion extends UpdateCompanion<Account> {
  final Value<int> code;
  final Value<int?> orgId;
  final Value<String> name;
  final Value<String?> drawer;
  final Value<int?> parent;
  final Value<double> balance;
  final Value<String?> cashAccount;
  final Value<String?> inactive;
  final Value<String?> updatedDate;
  const AccountsCompanion({
    this.code = const Value.absent(),
    this.orgId = const Value.absent(),
    this.name = const Value.absent(),
    this.drawer = const Value.absent(),
    this.parent = const Value.absent(),
    this.balance = const Value.absent(),
    this.cashAccount = const Value.absent(),
    this.inactive = const Value.absent(),
    this.updatedDate = const Value.absent(),
  });
  AccountsCompanion.insert({
    this.code = const Value.absent(),
    this.orgId = const Value.absent(),
    required String name,
    this.drawer = const Value.absent(),
    this.parent = const Value.absent(),
    this.balance = const Value.absent(),
    this.cashAccount = const Value.absent(),
    this.inactive = const Value.absent(),
    this.updatedDate = const Value.absent(),
  }) : name = Value(name);
  static Insertable<Account> custom({
    Expression<int>? code,
    Expression<int>? orgId,
    Expression<String>? name,
    Expression<String>? drawer,
    Expression<int>? parent,
    Expression<double>? balance,
    Expression<String>? cashAccount,
    Expression<String>? inactive,
    Expression<String>? updatedDate,
  }) {
    return RawValuesInsertable({
      if (code != null) 'code': code,
      if (orgId != null) 'org_id': orgId,
      if (name != null) 'name': name,
      if (drawer != null) 'drawer': drawer,
      if (parent != null) 'parent': parent,
      if (balance != null) 'balance': balance,
      if (cashAccount != null) 'cash_account': cashAccount,
      if (inactive != null) 'inactive': inactive,
      if (updatedDate != null) 'updated_date': updatedDate,
    });
  }

  AccountsCompanion copyWith(
      {Value<int>? code,
      Value<int?>? orgId,
      Value<String>? name,
      Value<String?>? drawer,
      Value<int?>? parent,
      Value<double>? balance,
      Value<String?>? cashAccount,
      Value<String?>? inactive,
      Value<String?>? updatedDate}) {
    return AccountsCompanion(
      code: code ?? this.code,
      orgId: orgId ?? this.orgId,
      name: name ?? this.name,
      drawer: drawer ?? this.drawer,
      parent: parent ?? this.parent,
      balance: balance ?? this.balance,
      cashAccount: cashAccount ?? this.cashAccount,
      inactive: inactive ?? this.inactive,
      updatedDate: updatedDate ?? this.updatedDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (code.present) {
      map['code'] = Variable<int>(code.value);
    }
    if (orgId.present) {
      map['org_id'] = Variable<int>(orgId.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    if (drawer.present) {
      map['drawer'] = Variable<String>(drawer.value);
    }
    if (parent.present) {
      map['parent'] = Variable<int>(parent.value);
    }
    if (balance.present) {
      map['balance'] = Variable<double>(balance.value);
    }
    if (cashAccount.present) {
      map['cash_account'] = Variable<String>(cashAccount.value);
    }
    if (inactive.present) {
      map['inactive'] = Variable<String>(inactive.value);
    }
    if (updatedDate.present) {
      map['updated_date'] = Variable<String>(updatedDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AccountsCompanion(')
          ..write('code: $code, ')
          ..write('orgId: $orgId, ')
          ..write('name: $name, ')
          ..write('drawer: $drawer, ')
          ..write('parent: $parent, ')
          ..write('balance: $balance, ')
          ..write('cashAccount: $cashAccount, ')
          ..write('inactive: $inactive, ')
          ..write('updatedDate: $updatedDate')
          ..write(')'))
        .toString();
  }
}

class $VendorsTable extends Vendors with TableInfo<$VendorsTable, Vendor> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $VendorsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _cvCodeMeta = const VerificationMeta('cvCode');
  @override
  late final GeneratedColumn<String> cvCode = GeneratedColumn<String>(
      'cv_code', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orgIdMeta = const VerificationMeta('orgId');
  @override
  late final GeneratedColumn<int> orgId = GeneratedColumn<int>(
      'org_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _cvNameMeta = const VerificationMeta('cvName');
  @override
  late final GeneratedColumn<String> cvName = GeneratedColumn<String>(
      'cv_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<String> type = GeneratedColumn<String>(
      'type', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _tel1Meta = const VerificationMeta('tel1');
  @override
  late final GeneratedColumn<String> tel1 = GeneratedColumn<String>(
      'tel1', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _mobileNoMeta =
      const VerificationMeta('mobileNo');
  @override
  late final GeneratedColumn<String> mobileNo = GeneratedColumn<String>(
      'mobile_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _areaMeta = const VerificationMeta('area');
  @override
  late final GeneratedColumn<String> area = GeneratedColumn<String>(
      'area', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _balanceMeta =
      const VerificationMeta('balance');
  @override
  late final GeneratedColumn<double> balance = GeneratedColumn<double>(
      'balance', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _creditLimitMeta =
      const VerificationMeta('creditLimit');
  @override
  late final GeneratedColumn<int> creditLimit = GeneratedColumn<int>(
      'credit_limit', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _priceListMeta =
      const VerificationMeta('priceList');
  @override
  late final GeneratedColumn<int> priceList = GeneratedColumn<int>(
      'price_list', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _gstNoMeta = const VerificationMeta('gstNo');
  @override
  late final GeneratedColumn<String> gstNo = GeneratedColumn<String>(
      'gst_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _inactiveMeta =
      const VerificationMeta('inactive');
  @override
  late final GeneratedColumn<String> inactive = GeneratedColumn<String>(
      'inactive', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedDateMeta =
      const VerificationMeta('updatedDate');
  @override
  late final GeneratedColumn<String> updatedDate = GeneratedColumn<String>(
      'updated_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        cvCode,
        orgId,
        cvName,
        type,
        tel1,
        mobileNo,
        email,
        address,
        area,
        balance,
        creditLimit,
        priceList,
        gstNo,
        inactive,
        updatedDate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'vendors';
  @override
  VerificationContext validateIntegrity(Insertable<Vendor> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('cv_code')) {
      context.handle(_cvCodeMeta,
          cvCode.isAcceptableOrUnknown(data['cv_code']!, _cvCodeMeta));
    } else if (isInserting) {
      context.missing(_cvCodeMeta);
    }
    if (data.containsKey('org_id')) {
      context.handle(
          _orgIdMeta, orgId.isAcceptableOrUnknown(data['org_id']!, _orgIdMeta));
    }
    if (data.containsKey('cv_name')) {
      context.handle(_cvNameMeta,
          cvName.isAcceptableOrUnknown(data['cv_name']!, _cvNameMeta));
    } else if (isInserting) {
      context.missing(_cvNameMeta);
    }
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    }
    if (data.containsKey('tel1')) {
      context.handle(
          _tel1Meta, tel1.isAcceptableOrUnknown(data['tel1']!, _tel1Meta));
    }
    if (data.containsKey('mobile_no')) {
      context.handle(_mobileNoMeta,
          mobileNo.isAcceptableOrUnknown(data['mobile_no']!, _mobileNoMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('area')) {
      context.handle(
          _areaMeta, area.isAcceptableOrUnknown(data['area']!, _areaMeta));
    }
    if (data.containsKey('balance')) {
      context.handle(_balanceMeta,
          balance.isAcceptableOrUnknown(data['balance']!, _balanceMeta));
    }
    if (data.containsKey('credit_limit')) {
      context.handle(
          _creditLimitMeta,
          creditLimit.isAcceptableOrUnknown(
              data['credit_limit']!, _creditLimitMeta));
    }
    if (data.containsKey('price_list')) {
      context.handle(_priceListMeta,
          priceList.isAcceptableOrUnknown(data['price_list']!, _priceListMeta));
    }
    if (data.containsKey('gst_no')) {
      context.handle(
          _gstNoMeta, gstNo.isAcceptableOrUnknown(data['gst_no']!, _gstNoMeta));
    }
    if (data.containsKey('inactive')) {
      context.handle(_inactiveMeta,
          inactive.isAcceptableOrUnknown(data['inactive']!, _inactiveMeta));
    }
    if (data.containsKey('updated_date')) {
      context.handle(
          _updatedDateMeta,
          updatedDate.isAcceptableOrUnknown(
              data['updated_date']!, _updatedDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {cvCode};
  @override
  Vendor map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Vendor(
      cvCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cv_code'])!,
      orgId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}org_id']),
      cvName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}cv_name'])!,
      type: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}type']),
      tel1: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}tel1']),
      mobileNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mobile_no']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address']),
      area: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}area']),
      balance: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}balance'])!,
      creditLimit: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}credit_limit'])!,
      priceList: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}price_list']),
      gstNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gst_no']),
      inactive: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}inactive']),
      updatedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_date']),
    );
  }

  @override
  $VendorsTable createAlias(String alias) {
    return $VendorsTable(attachedDatabase, alias);
  }
}

class Vendor extends DataClass implements Insertable<Vendor> {
  final String cvCode;
  final int? orgId;
  final String cvName;
  final String? type;
  final String? tel1;
  final String? mobileNo;
  final String? email;
  final String? address;
  final String? area;
  final double balance;
  final int creditLimit;
  final int? priceList;
  final String? gstNo;
  final String? inactive;
  final String? updatedDate;
  const Vendor(
      {required this.cvCode,
      this.orgId,
      required this.cvName,
      this.type,
      this.tel1,
      this.mobileNo,
      this.email,
      this.address,
      this.area,
      required this.balance,
      required this.creditLimit,
      this.priceList,
      this.gstNo,
      this.inactive,
      this.updatedDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['cv_code'] = Variable<String>(cvCode);
    if (!nullToAbsent || orgId != null) {
      map['org_id'] = Variable<int>(orgId);
    }
    map['cv_name'] = Variable<String>(cvName);
    if (!nullToAbsent || type != null) {
      map['type'] = Variable<String>(type);
    }
    if (!nullToAbsent || tel1 != null) {
      map['tel1'] = Variable<String>(tel1);
    }
    if (!nullToAbsent || mobileNo != null) {
      map['mobile_no'] = Variable<String>(mobileNo);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || area != null) {
      map['area'] = Variable<String>(area);
    }
    map['balance'] = Variable<double>(balance);
    map['credit_limit'] = Variable<int>(creditLimit);
    if (!nullToAbsent || priceList != null) {
      map['price_list'] = Variable<int>(priceList);
    }
    if (!nullToAbsent || gstNo != null) {
      map['gst_no'] = Variable<String>(gstNo);
    }
    if (!nullToAbsent || inactive != null) {
      map['inactive'] = Variable<String>(inactive);
    }
    if (!nullToAbsent || updatedDate != null) {
      map['updated_date'] = Variable<String>(updatedDate);
    }
    return map;
  }

  VendorsCompanion toCompanion(bool nullToAbsent) {
    return VendorsCompanion(
      cvCode: Value(cvCode),
      orgId:
          orgId == null && nullToAbsent ? const Value.absent() : Value(orgId),
      cvName: Value(cvName),
      type: type == null && nullToAbsent ? const Value.absent() : Value(type),
      tel1: tel1 == null && nullToAbsent ? const Value.absent() : Value(tel1),
      mobileNo: mobileNo == null && nullToAbsent
          ? const Value.absent()
          : Value(mobileNo),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      area: area == null && nullToAbsent ? const Value.absent() : Value(area),
      balance: Value(balance),
      creditLimit: Value(creditLimit),
      priceList: priceList == null && nullToAbsent
          ? const Value.absent()
          : Value(priceList),
      gstNo:
          gstNo == null && nullToAbsent ? const Value.absent() : Value(gstNo),
      inactive: inactive == null && nullToAbsent
          ? const Value.absent()
          : Value(inactive),
      updatedDate: updatedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedDate),
    );
  }

  factory Vendor.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Vendor(
      cvCode: serializer.fromJson<String>(json['cvCode']),
      orgId: serializer.fromJson<int?>(json['orgId']),
      cvName: serializer.fromJson<String>(json['cvName']),
      type: serializer.fromJson<String?>(json['type']),
      tel1: serializer.fromJson<String?>(json['tel1']),
      mobileNo: serializer.fromJson<String?>(json['mobileNo']),
      email: serializer.fromJson<String?>(json['email']),
      address: serializer.fromJson<String?>(json['address']),
      area: serializer.fromJson<String?>(json['area']),
      balance: serializer.fromJson<double>(json['balance']),
      creditLimit: serializer.fromJson<int>(json['creditLimit']),
      priceList: serializer.fromJson<int?>(json['priceList']),
      gstNo: serializer.fromJson<String?>(json['gstNo']),
      inactive: serializer.fromJson<String?>(json['inactive']),
      updatedDate: serializer.fromJson<String?>(json['updatedDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'cvCode': serializer.toJson<String>(cvCode),
      'orgId': serializer.toJson<int?>(orgId),
      'cvName': serializer.toJson<String>(cvName),
      'type': serializer.toJson<String?>(type),
      'tel1': serializer.toJson<String?>(tel1),
      'mobileNo': serializer.toJson<String?>(mobileNo),
      'email': serializer.toJson<String?>(email),
      'address': serializer.toJson<String?>(address),
      'area': serializer.toJson<String?>(area),
      'balance': serializer.toJson<double>(balance),
      'creditLimit': serializer.toJson<int>(creditLimit),
      'priceList': serializer.toJson<int?>(priceList),
      'gstNo': serializer.toJson<String?>(gstNo),
      'inactive': serializer.toJson<String?>(inactive),
      'updatedDate': serializer.toJson<String?>(updatedDate),
    };
  }

  Vendor copyWith(
          {String? cvCode,
          Value<int?> orgId = const Value.absent(),
          String? cvName,
          Value<String?> type = const Value.absent(),
          Value<String?> tel1 = const Value.absent(),
          Value<String?> mobileNo = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> address = const Value.absent(),
          Value<String?> area = const Value.absent(),
          double? balance,
          int? creditLimit,
          Value<int?> priceList = const Value.absent(),
          Value<String?> gstNo = const Value.absent(),
          Value<String?> inactive = const Value.absent(),
          Value<String?> updatedDate = const Value.absent()}) =>
      Vendor(
        cvCode: cvCode ?? this.cvCode,
        orgId: orgId.present ? orgId.value : this.orgId,
        cvName: cvName ?? this.cvName,
        type: type.present ? type.value : this.type,
        tel1: tel1.present ? tel1.value : this.tel1,
        mobileNo: mobileNo.present ? mobileNo.value : this.mobileNo,
        email: email.present ? email.value : this.email,
        address: address.present ? address.value : this.address,
        area: area.present ? area.value : this.area,
        balance: balance ?? this.balance,
        creditLimit: creditLimit ?? this.creditLimit,
        priceList: priceList.present ? priceList.value : this.priceList,
        gstNo: gstNo.present ? gstNo.value : this.gstNo,
        inactive: inactive.present ? inactive.value : this.inactive,
        updatedDate: updatedDate.present ? updatedDate.value : this.updatedDate,
      );
  Vendor copyWithCompanion(VendorsCompanion data) {
    return Vendor(
      cvCode: data.cvCode.present ? data.cvCode.value : this.cvCode,
      orgId: data.orgId.present ? data.orgId.value : this.orgId,
      cvName: data.cvName.present ? data.cvName.value : this.cvName,
      type: data.type.present ? data.type.value : this.type,
      tel1: data.tel1.present ? data.tel1.value : this.tel1,
      mobileNo: data.mobileNo.present ? data.mobileNo.value : this.mobileNo,
      email: data.email.present ? data.email.value : this.email,
      address: data.address.present ? data.address.value : this.address,
      area: data.area.present ? data.area.value : this.area,
      balance: data.balance.present ? data.balance.value : this.balance,
      creditLimit:
          data.creditLimit.present ? data.creditLimit.value : this.creditLimit,
      priceList: data.priceList.present ? data.priceList.value : this.priceList,
      gstNo: data.gstNo.present ? data.gstNo.value : this.gstNo,
      inactive: data.inactive.present ? data.inactive.value : this.inactive,
      updatedDate:
          data.updatedDate.present ? data.updatedDate.value : this.updatedDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Vendor(')
          ..write('cvCode: $cvCode, ')
          ..write('orgId: $orgId, ')
          ..write('cvName: $cvName, ')
          ..write('type: $type, ')
          ..write('tel1: $tel1, ')
          ..write('mobileNo: $mobileNo, ')
          ..write('email: $email, ')
          ..write('address: $address, ')
          ..write('area: $area, ')
          ..write('balance: $balance, ')
          ..write('creditLimit: $creditLimit, ')
          ..write('priceList: $priceList, ')
          ..write('gstNo: $gstNo, ')
          ..write('inactive: $inactive, ')
          ..write('updatedDate: $updatedDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      cvCode,
      orgId,
      cvName,
      type,
      tel1,
      mobileNo,
      email,
      address,
      area,
      balance,
      creditLimit,
      priceList,
      gstNo,
      inactive,
      updatedDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Vendor &&
          other.cvCode == this.cvCode &&
          other.orgId == this.orgId &&
          other.cvName == this.cvName &&
          other.type == this.type &&
          other.tel1 == this.tel1 &&
          other.mobileNo == this.mobileNo &&
          other.email == this.email &&
          other.address == this.address &&
          other.area == this.area &&
          other.balance == this.balance &&
          other.creditLimit == this.creditLimit &&
          other.priceList == this.priceList &&
          other.gstNo == this.gstNo &&
          other.inactive == this.inactive &&
          other.updatedDate == this.updatedDate);
}

class VendorsCompanion extends UpdateCompanion<Vendor> {
  final Value<String> cvCode;
  final Value<int?> orgId;
  final Value<String> cvName;
  final Value<String?> type;
  final Value<String?> tel1;
  final Value<String?> mobileNo;
  final Value<String?> email;
  final Value<String?> address;
  final Value<String?> area;
  final Value<double> balance;
  final Value<int> creditLimit;
  final Value<int?> priceList;
  final Value<String?> gstNo;
  final Value<String?> inactive;
  final Value<String?> updatedDate;
  final Value<int> rowid;
  const VendorsCompanion({
    this.cvCode = const Value.absent(),
    this.orgId = const Value.absent(),
    this.cvName = const Value.absent(),
    this.type = const Value.absent(),
    this.tel1 = const Value.absent(),
    this.mobileNo = const Value.absent(),
    this.email = const Value.absent(),
    this.address = const Value.absent(),
    this.area = const Value.absent(),
    this.balance = const Value.absent(),
    this.creditLimit = const Value.absent(),
    this.priceList = const Value.absent(),
    this.gstNo = const Value.absent(),
    this.inactive = const Value.absent(),
    this.updatedDate = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  VendorsCompanion.insert({
    required String cvCode,
    this.orgId = const Value.absent(),
    required String cvName,
    this.type = const Value.absent(),
    this.tel1 = const Value.absent(),
    this.mobileNo = const Value.absent(),
    this.email = const Value.absent(),
    this.address = const Value.absent(),
    this.area = const Value.absent(),
    this.balance = const Value.absent(),
    this.creditLimit = const Value.absent(),
    this.priceList = const Value.absent(),
    this.gstNo = const Value.absent(),
    this.inactive = const Value.absent(),
    this.updatedDate = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : cvCode = Value(cvCode),
        cvName = Value(cvName);
  static Insertable<Vendor> custom({
    Expression<String>? cvCode,
    Expression<int>? orgId,
    Expression<String>? cvName,
    Expression<String>? type,
    Expression<String>? tel1,
    Expression<String>? mobileNo,
    Expression<String>? email,
    Expression<String>? address,
    Expression<String>? area,
    Expression<double>? balance,
    Expression<int>? creditLimit,
    Expression<int>? priceList,
    Expression<String>? gstNo,
    Expression<String>? inactive,
    Expression<String>? updatedDate,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (cvCode != null) 'cv_code': cvCode,
      if (orgId != null) 'org_id': orgId,
      if (cvName != null) 'cv_name': cvName,
      if (type != null) 'type': type,
      if (tel1 != null) 'tel1': tel1,
      if (mobileNo != null) 'mobile_no': mobileNo,
      if (email != null) 'email': email,
      if (address != null) 'address': address,
      if (area != null) 'area': area,
      if (balance != null) 'balance': balance,
      if (creditLimit != null) 'credit_limit': creditLimit,
      if (priceList != null) 'price_list': priceList,
      if (gstNo != null) 'gst_no': gstNo,
      if (inactive != null) 'inactive': inactive,
      if (updatedDate != null) 'updated_date': updatedDate,
      if (rowid != null) 'rowid': rowid,
    });
  }

  VendorsCompanion copyWith(
      {Value<String>? cvCode,
      Value<int?>? orgId,
      Value<String>? cvName,
      Value<String?>? type,
      Value<String?>? tel1,
      Value<String?>? mobileNo,
      Value<String?>? email,
      Value<String?>? address,
      Value<String?>? area,
      Value<double>? balance,
      Value<int>? creditLimit,
      Value<int?>? priceList,
      Value<String?>? gstNo,
      Value<String?>? inactive,
      Value<String?>? updatedDate,
      Value<int>? rowid}) {
    return VendorsCompanion(
      cvCode: cvCode ?? this.cvCode,
      orgId: orgId ?? this.orgId,
      cvName: cvName ?? this.cvName,
      type: type ?? this.type,
      tel1: tel1 ?? this.tel1,
      mobileNo: mobileNo ?? this.mobileNo,
      email: email ?? this.email,
      address: address ?? this.address,
      area: area ?? this.area,
      balance: balance ?? this.balance,
      creditLimit: creditLimit ?? this.creditLimit,
      priceList: priceList ?? this.priceList,
      gstNo: gstNo ?? this.gstNo,
      inactive: inactive ?? this.inactive,
      updatedDate: updatedDate ?? this.updatedDate,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (cvCode.present) {
      map['cv_code'] = Variable<String>(cvCode.value);
    }
    if (orgId.present) {
      map['org_id'] = Variable<int>(orgId.value);
    }
    if (cvName.present) {
      map['cv_name'] = Variable<String>(cvName.value);
    }
    if (type.present) {
      map['type'] = Variable<String>(type.value);
    }
    if (tel1.present) {
      map['tel1'] = Variable<String>(tel1.value);
    }
    if (mobileNo.present) {
      map['mobile_no'] = Variable<String>(mobileNo.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (area.present) {
      map['area'] = Variable<String>(area.value);
    }
    if (balance.present) {
      map['balance'] = Variable<double>(balance.value);
    }
    if (creditLimit.present) {
      map['credit_limit'] = Variable<int>(creditLimit.value);
    }
    if (priceList.present) {
      map['price_list'] = Variable<int>(priceList.value);
    }
    if (gstNo.present) {
      map['gst_no'] = Variable<String>(gstNo.value);
    }
    if (inactive.present) {
      map['inactive'] = Variable<String>(inactive.value);
    }
    if (updatedDate.present) {
      map['updated_date'] = Variable<String>(updatedDate.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('VendorsCompanion(')
          ..write('cvCode: $cvCode, ')
          ..write('orgId: $orgId, ')
          ..write('cvName: $cvName, ')
          ..write('type: $type, ')
          ..write('tel1: $tel1, ')
          ..write('mobileNo: $mobileNo, ')
          ..write('email: $email, ')
          ..write('address: $address, ')
          ..write('area: $area, ')
          ..write('balance: $balance, ')
          ..write('creditLimit: $creditLimit, ')
          ..write('priceList: $priceList, ')
          ..write('gstNo: $gstNo, ')
          ..write('inactive: $inactive, ')
          ..write('updatedDate: $updatedDate, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $EmployeeListsTable extends EmployeeLists
    with TableInfo<$EmployeeListsTable, EmployeeList> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $EmployeeListsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _empIdMeta = const VerificationMeta('empId');
  @override
  late final GeneratedColumn<int> empId = GeneratedColumn<int>(
      'emp_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _orgIdMeta = const VerificationMeta('orgId');
  @override
  late final GeneratedColumn<int> orgId = GeneratedColumn<int>(
      'org_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _empCodeMeta =
      const VerificationMeta('empCode');
  @override
  late final GeneratedColumn<String> empCode = GeneratedColumn<String>(
      'emp_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _empNameMeta =
      const VerificationMeta('empName');
  @override
  late final GeneratedColumn<String> empName = GeneratedColumn<String>(
      'emp_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _inactiveMeta =
      const VerificationMeta('inactive');
  @override
  late final GeneratedColumn<String> inactive = GeneratedColumn<String>(
      'inactive', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedDateMeta =
      const VerificationMeta('updatedDate');
  @override
  late final GeneratedColumn<String> updatedDate = GeneratedColumn<String>(
      'updated_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [empId, orgId, empCode, empName, inactive, updatedDate];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'employee_lists';
  @override
  VerificationContext validateIntegrity(Insertable<EmployeeList> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('emp_id')) {
      context.handle(
          _empIdMeta, empId.isAcceptableOrUnknown(data['emp_id']!, _empIdMeta));
    }
    if (data.containsKey('org_id')) {
      context.handle(
          _orgIdMeta, orgId.isAcceptableOrUnknown(data['org_id']!, _orgIdMeta));
    }
    if (data.containsKey('emp_code')) {
      context.handle(_empCodeMeta,
          empCode.isAcceptableOrUnknown(data['emp_code']!, _empCodeMeta));
    }
    if (data.containsKey('emp_name')) {
      context.handle(_empNameMeta,
          empName.isAcceptableOrUnknown(data['emp_name']!, _empNameMeta));
    }
    if (data.containsKey('inactive')) {
      context.handle(_inactiveMeta,
          inactive.isAcceptableOrUnknown(data['inactive']!, _inactiveMeta));
    }
    if (data.containsKey('updated_date')) {
      context.handle(
          _updatedDateMeta,
          updatedDate.isAcceptableOrUnknown(
              data['updated_date']!, _updatedDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {empId};
  @override
  EmployeeList map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EmployeeList(
      empId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}emp_id'])!,
      orgId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}org_id']),
      empCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}emp_code']),
      empName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}emp_name']),
      inactive: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}inactive']),
      updatedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_date']),
    );
  }

  @override
  $EmployeeListsTable createAlias(String alias) {
    return $EmployeeListsTable(attachedDatabase, alias);
  }
}

class EmployeeList extends DataClass implements Insertable<EmployeeList> {
  final int empId;
  final int? orgId;
  final String? empCode;
  final String? empName;
  final String? inactive;
  final String? updatedDate;
  const EmployeeList(
      {required this.empId,
      this.orgId,
      this.empCode,
      this.empName,
      this.inactive,
      this.updatedDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['emp_id'] = Variable<int>(empId);
    if (!nullToAbsent || orgId != null) {
      map['org_id'] = Variable<int>(orgId);
    }
    if (!nullToAbsent || empCode != null) {
      map['emp_code'] = Variable<String>(empCode);
    }
    if (!nullToAbsent || empName != null) {
      map['emp_name'] = Variable<String>(empName);
    }
    if (!nullToAbsent || inactive != null) {
      map['inactive'] = Variable<String>(inactive);
    }
    if (!nullToAbsent || updatedDate != null) {
      map['updated_date'] = Variable<String>(updatedDate);
    }
    return map;
  }

  EmployeeListsCompanion toCompanion(bool nullToAbsent) {
    return EmployeeListsCompanion(
      empId: Value(empId),
      orgId:
          orgId == null && nullToAbsent ? const Value.absent() : Value(orgId),
      empCode: empCode == null && nullToAbsent
          ? const Value.absent()
          : Value(empCode),
      empName: empName == null && nullToAbsent
          ? const Value.absent()
          : Value(empName),
      inactive: inactive == null && nullToAbsent
          ? const Value.absent()
          : Value(inactive),
      updatedDate: updatedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedDate),
    );
  }

  factory EmployeeList.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EmployeeList(
      empId: serializer.fromJson<int>(json['empId']),
      orgId: serializer.fromJson<int?>(json['orgId']),
      empCode: serializer.fromJson<String?>(json['empCode']),
      empName: serializer.fromJson<String?>(json['empName']),
      inactive: serializer.fromJson<String?>(json['inactive']),
      updatedDate: serializer.fromJson<String?>(json['updatedDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'empId': serializer.toJson<int>(empId),
      'orgId': serializer.toJson<int?>(orgId),
      'empCode': serializer.toJson<String?>(empCode),
      'empName': serializer.toJson<String?>(empName),
      'inactive': serializer.toJson<String?>(inactive),
      'updatedDate': serializer.toJson<String?>(updatedDate),
    };
  }

  EmployeeList copyWith(
          {int? empId,
          Value<int?> orgId = const Value.absent(),
          Value<String?> empCode = const Value.absent(),
          Value<String?> empName = const Value.absent(),
          Value<String?> inactive = const Value.absent(),
          Value<String?> updatedDate = const Value.absent()}) =>
      EmployeeList(
        empId: empId ?? this.empId,
        orgId: orgId.present ? orgId.value : this.orgId,
        empCode: empCode.present ? empCode.value : this.empCode,
        empName: empName.present ? empName.value : this.empName,
        inactive: inactive.present ? inactive.value : this.inactive,
        updatedDate: updatedDate.present ? updatedDate.value : this.updatedDate,
      );
  EmployeeList copyWithCompanion(EmployeeListsCompanion data) {
    return EmployeeList(
      empId: data.empId.present ? data.empId.value : this.empId,
      orgId: data.orgId.present ? data.orgId.value : this.orgId,
      empCode: data.empCode.present ? data.empCode.value : this.empCode,
      empName: data.empName.present ? data.empName.value : this.empName,
      inactive: data.inactive.present ? data.inactive.value : this.inactive,
      updatedDate:
          data.updatedDate.present ? data.updatedDate.value : this.updatedDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('EmployeeList(')
          ..write('empId: $empId, ')
          ..write('orgId: $orgId, ')
          ..write('empCode: $empCode, ')
          ..write('empName: $empName, ')
          ..write('inactive: $inactive, ')
          ..write('updatedDate: $updatedDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(empId, orgId, empCode, empName, inactive, updatedDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EmployeeList &&
          other.empId == this.empId &&
          other.orgId == this.orgId &&
          other.empCode == this.empCode &&
          other.empName == this.empName &&
          other.inactive == this.inactive &&
          other.updatedDate == this.updatedDate);
}

class EmployeeListsCompanion extends UpdateCompanion<EmployeeList> {
  final Value<int> empId;
  final Value<int?> orgId;
  final Value<String?> empCode;
  final Value<String?> empName;
  final Value<String?> inactive;
  final Value<String?> updatedDate;
  const EmployeeListsCompanion({
    this.empId = const Value.absent(),
    this.orgId = const Value.absent(),
    this.empCode = const Value.absent(),
    this.empName = const Value.absent(),
    this.inactive = const Value.absent(),
    this.updatedDate = const Value.absent(),
  });
  EmployeeListsCompanion.insert({
    this.empId = const Value.absent(),
    this.orgId = const Value.absent(),
    this.empCode = const Value.absent(),
    this.empName = const Value.absent(),
    this.inactive = const Value.absent(),
    this.updatedDate = const Value.absent(),
  });
  static Insertable<EmployeeList> custom({
    Expression<int>? empId,
    Expression<int>? orgId,
    Expression<String>? empCode,
    Expression<String>? empName,
    Expression<String>? inactive,
    Expression<String>? updatedDate,
  }) {
    return RawValuesInsertable({
      if (empId != null) 'emp_id': empId,
      if (orgId != null) 'org_id': orgId,
      if (empCode != null) 'emp_code': empCode,
      if (empName != null) 'emp_name': empName,
      if (inactive != null) 'inactive': inactive,
      if (updatedDate != null) 'updated_date': updatedDate,
    });
  }

  EmployeeListsCompanion copyWith(
      {Value<int>? empId,
      Value<int?>? orgId,
      Value<String?>? empCode,
      Value<String?>? empName,
      Value<String?>? inactive,
      Value<String?>? updatedDate}) {
    return EmployeeListsCompanion(
      empId: empId ?? this.empId,
      orgId: orgId ?? this.orgId,
      empCode: empCode ?? this.empCode,
      empName: empName ?? this.empName,
      inactive: inactive ?? this.inactive,
      updatedDate: updatedDate ?? this.updatedDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (empId.present) {
      map['emp_id'] = Variable<int>(empId.value);
    }
    if (orgId.present) {
      map['org_id'] = Variable<int>(orgId.value);
    }
    if (empCode.present) {
      map['emp_code'] = Variable<String>(empCode.value);
    }
    if (empName.present) {
      map['emp_name'] = Variable<String>(empName.value);
    }
    if (inactive.present) {
      map['inactive'] = Variable<String>(inactive.value);
    }
    if (updatedDate.present) {
      map['updated_date'] = Variable<String>(updatedDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EmployeeListsCompanion(')
          ..write('empId: $empId, ')
          ..write('orgId: $orgId, ')
          ..write('empCode: $empCode, ')
          ..write('empName: $empName, ')
          ..write('inactive: $inactive, ')
          ..write('updatedDate: $updatedDate')
          ..write(')'))
        .toString();
  }
}

class $GeneralSettingsTable extends GeneralSettings
    with TableInfo<$GeneralSettingsTable, GeneralSetting> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $GeneralSettingsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orgIdMeta = const VerificationMeta('orgId');
  @override
  late final GeneratedColumn<int> orgId = GeneratedColumn<int>(
      'org_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _dfltStoreMeta =
      const VerificationMeta('dfltStore');
  @override
  late final GeneratedColumn<String> dfltStore = GeneratedColumn<String>(
      'dflt_store', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _localCurrencyMeta =
      const VerificationMeta('localCurrency');
  @override
  late final GeneratedColumn<String> localCurrency = GeneratedColumn<String>(
      'local_currency', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _dfltPriceListCustomerMeta =
      const VerificationMeta('dfltPriceListCustomer');
  @override
  late final GeneratedColumn<int> dfltPriceListCustomer = GeneratedColumn<int>(
      'dflt_price_list_customer', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _allowNegativeInventoryMeta =
      const VerificationMeta('allowNegativeInventory');
  @override
  late final GeneratedColumn<String> allowNegativeInventory =
      GeneratedColumn<String>('allow_negative_inventory', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _batchMeta = const VerificationMeta('batch');
  @override
  late final GeneratedColumn<String> batch = GeneratedColumn<String>(
      'batch', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isRoundOffMeta =
      const VerificationMeta('isRoundOff');
  @override
  late final GeneratedColumn<String> isRoundOff = GeneratedColumn<String>(
      'is_round_off', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _allowPriceChangeMeta =
      const VerificationMeta('allowPriceChange');
  @override
  late final GeneratedColumn<String> allowPriceChange = GeneratedColumn<String>(
      'allow_price_change', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _allowDiscountChangeMeta =
      const VerificationMeta('allowDiscountChange');
  @override
  late final GeneratedColumn<String> allowDiscountChange =
      GeneratedColumn<String>('allow_discount_change', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _allowCustomerCreationOfflineMeta =
      const VerificationMeta('allowCustomerCreationOffline');
  @override
  late final GeneratedColumn<String> allowCustomerCreationOffline =
      GeneratedColumn<String>(
          'allow_customer_creation_offline', aliasedName, true,
          type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        orgId,
        dfltStore,
        localCurrency,
        dfltPriceListCustomer,
        allowNegativeInventory,
        batch,
        isRoundOff,
        allowPriceChange,
        allowDiscountChange,
        allowCustomerCreationOffline
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'general_settings';
  @override
  VerificationContext validateIntegrity(Insertable<GeneralSetting> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('org_id')) {
      context.handle(
          _orgIdMeta, orgId.isAcceptableOrUnknown(data['org_id']!, _orgIdMeta));
    }
    if (data.containsKey('dflt_store')) {
      context.handle(_dfltStoreMeta,
          dfltStore.isAcceptableOrUnknown(data['dflt_store']!, _dfltStoreMeta));
    }
    if (data.containsKey('local_currency')) {
      context.handle(
          _localCurrencyMeta,
          localCurrency.isAcceptableOrUnknown(
              data['local_currency']!, _localCurrencyMeta));
    }
    if (data.containsKey('dflt_price_list_customer')) {
      context.handle(
          _dfltPriceListCustomerMeta,
          dfltPriceListCustomer.isAcceptableOrUnknown(
              data['dflt_price_list_customer']!, _dfltPriceListCustomerMeta));
    }
    if (data.containsKey('allow_negative_inventory')) {
      context.handle(
          _allowNegativeInventoryMeta,
          allowNegativeInventory.isAcceptableOrUnknown(
              data['allow_negative_inventory']!, _allowNegativeInventoryMeta));
    }
    if (data.containsKey('batch')) {
      context.handle(
          _batchMeta, batch.isAcceptableOrUnknown(data['batch']!, _batchMeta));
    }
    if (data.containsKey('is_round_off')) {
      context.handle(
          _isRoundOffMeta,
          isRoundOff.isAcceptableOrUnknown(
              data['is_round_off']!, _isRoundOffMeta));
    }
    if (data.containsKey('allow_price_change')) {
      context.handle(
          _allowPriceChangeMeta,
          allowPriceChange.isAcceptableOrUnknown(
              data['allow_price_change']!, _allowPriceChangeMeta));
    }
    if (data.containsKey('allow_discount_change')) {
      context.handle(
          _allowDiscountChangeMeta,
          allowDiscountChange.isAcceptableOrUnknown(
              data['allow_discount_change']!, _allowDiscountChangeMeta));
    }
    if (data.containsKey('allow_customer_creation_offline')) {
      context.handle(
          _allowCustomerCreationOfflineMeta,
          allowCustomerCreationOffline.isAcceptableOrUnknown(
              data['allow_customer_creation_offline']!,
              _allowCustomerCreationOfflineMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orgId};
  @override
  GeneralSetting map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GeneralSetting(
      orgId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}org_id'])!,
      dfltStore: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}dflt_store']),
      localCurrency: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}local_currency']),
      dfltPriceListCustomer: attachedDatabase.typeMapping.read(
          DriftSqlType.int, data['${effectivePrefix}dflt_price_list_customer']),
      allowNegativeInventory: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}allow_negative_inventory']),
      batch: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}batch']),
      isRoundOff: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}is_round_off']),
      allowPriceChange: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}allow_price_change']),
      allowDiscountChange: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}allow_discount_change']),
      allowCustomerCreationOffline: attachedDatabase.typeMapping.read(
          DriftSqlType.string,
          data['${effectivePrefix}allow_customer_creation_offline']),
    );
  }

  @override
  $GeneralSettingsTable createAlias(String alias) {
    return $GeneralSettingsTable(attachedDatabase, alias);
  }
}

class GeneralSetting extends DataClass implements Insertable<GeneralSetting> {
  final int orgId;
  final String? dfltStore;
  final String? localCurrency;
  final int? dfltPriceListCustomer;
  final String? allowNegativeInventory;
  final String? batch;
  final String? isRoundOff;
  final String? allowPriceChange;
  final String? allowDiscountChange;
  final String? allowCustomerCreationOffline;
  const GeneralSetting(
      {required this.orgId,
      this.dfltStore,
      this.localCurrency,
      this.dfltPriceListCustomer,
      this.allowNegativeInventory,
      this.batch,
      this.isRoundOff,
      this.allowPriceChange,
      this.allowDiscountChange,
      this.allowCustomerCreationOffline});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['org_id'] = Variable<int>(orgId);
    if (!nullToAbsent || dfltStore != null) {
      map['dflt_store'] = Variable<String>(dfltStore);
    }
    if (!nullToAbsent || localCurrency != null) {
      map['local_currency'] = Variable<String>(localCurrency);
    }
    if (!nullToAbsent || dfltPriceListCustomer != null) {
      map['dflt_price_list_customer'] = Variable<int>(dfltPriceListCustomer);
    }
    if (!nullToAbsent || allowNegativeInventory != null) {
      map['allow_negative_inventory'] =
          Variable<String>(allowNegativeInventory);
    }
    if (!nullToAbsent || batch != null) {
      map['batch'] = Variable<String>(batch);
    }
    if (!nullToAbsent || isRoundOff != null) {
      map['is_round_off'] = Variable<String>(isRoundOff);
    }
    if (!nullToAbsent || allowPriceChange != null) {
      map['allow_price_change'] = Variable<String>(allowPriceChange);
    }
    if (!nullToAbsent || allowDiscountChange != null) {
      map['allow_discount_change'] = Variable<String>(allowDiscountChange);
    }
    if (!nullToAbsent || allowCustomerCreationOffline != null) {
      map['allow_customer_creation_offline'] =
          Variable<String>(allowCustomerCreationOffline);
    }
    return map;
  }

  GeneralSettingsCompanion toCompanion(bool nullToAbsent) {
    return GeneralSettingsCompanion(
      orgId: Value(orgId),
      dfltStore: dfltStore == null && nullToAbsent
          ? const Value.absent()
          : Value(dfltStore),
      localCurrency: localCurrency == null && nullToAbsent
          ? const Value.absent()
          : Value(localCurrency),
      dfltPriceListCustomer: dfltPriceListCustomer == null && nullToAbsent
          ? const Value.absent()
          : Value(dfltPriceListCustomer),
      allowNegativeInventory: allowNegativeInventory == null && nullToAbsent
          ? const Value.absent()
          : Value(allowNegativeInventory),
      batch:
          batch == null && nullToAbsent ? const Value.absent() : Value(batch),
      isRoundOff: isRoundOff == null && nullToAbsent
          ? const Value.absent()
          : Value(isRoundOff),
      allowPriceChange: allowPriceChange == null && nullToAbsent
          ? const Value.absent()
          : Value(allowPriceChange),
      allowDiscountChange: allowDiscountChange == null && nullToAbsent
          ? const Value.absent()
          : Value(allowDiscountChange),
      allowCustomerCreationOffline:
          allowCustomerCreationOffline == null && nullToAbsent
              ? const Value.absent()
              : Value(allowCustomerCreationOffline),
    );
  }

  factory GeneralSetting.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GeneralSetting(
      orgId: serializer.fromJson<int>(json['orgId']),
      dfltStore: serializer.fromJson<String?>(json['dfltStore']),
      localCurrency: serializer.fromJson<String?>(json['localCurrency']),
      dfltPriceListCustomer:
          serializer.fromJson<int?>(json['dfltPriceListCustomer']),
      allowNegativeInventory:
          serializer.fromJson<String?>(json['allowNegativeInventory']),
      batch: serializer.fromJson<String?>(json['batch']),
      isRoundOff: serializer.fromJson<String?>(json['isRoundOff']),
      allowPriceChange: serializer.fromJson<String?>(json['allowPriceChange']),
      allowDiscountChange:
          serializer.fromJson<String?>(json['allowDiscountChange']),
      allowCustomerCreationOffline:
          serializer.fromJson<String?>(json['allowCustomerCreationOffline']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orgId': serializer.toJson<int>(orgId),
      'dfltStore': serializer.toJson<String?>(dfltStore),
      'localCurrency': serializer.toJson<String?>(localCurrency),
      'dfltPriceListCustomer': serializer.toJson<int?>(dfltPriceListCustomer),
      'allowNegativeInventory':
          serializer.toJson<String?>(allowNegativeInventory),
      'batch': serializer.toJson<String?>(batch),
      'isRoundOff': serializer.toJson<String?>(isRoundOff),
      'allowPriceChange': serializer.toJson<String?>(allowPriceChange),
      'allowDiscountChange': serializer.toJson<String?>(allowDiscountChange),
      'allowCustomerCreationOffline':
          serializer.toJson<String?>(allowCustomerCreationOffline),
    };
  }

  GeneralSetting copyWith(
          {int? orgId,
          Value<String?> dfltStore = const Value.absent(),
          Value<String?> localCurrency = const Value.absent(),
          Value<int?> dfltPriceListCustomer = const Value.absent(),
          Value<String?> allowNegativeInventory = const Value.absent(),
          Value<String?> batch = const Value.absent(),
          Value<String?> isRoundOff = const Value.absent(),
          Value<String?> allowPriceChange = const Value.absent(),
          Value<String?> allowDiscountChange = const Value.absent(),
          Value<String?> allowCustomerCreationOffline =
              const Value.absent()}) =>
      GeneralSetting(
        orgId: orgId ?? this.orgId,
        dfltStore: dfltStore.present ? dfltStore.value : this.dfltStore,
        localCurrency:
            localCurrency.present ? localCurrency.value : this.localCurrency,
        dfltPriceListCustomer: dfltPriceListCustomer.present
            ? dfltPriceListCustomer.value
            : this.dfltPriceListCustomer,
        allowNegativeInventory: allowNegativeInventory.present
            ? allowNegativeInventory.value
            : this.allowNegativeInventory,
        batch: batch.present ? batch.value : this.batch,
        isRoundOff: isRoundOff.present ? isRoundOff.value : this.isRoundOff,
        allowPriceChange: allowPriceChange.present
            ? allowPriceChange.value
            : this.allowPriceChange,
        allowDiscountChange: allowDiscountChange.present
            ? allowDiscountChange.value
            : this.allowDiscountChange,
        allowCustomerCreationOffline: allowCustomerCreationOffline.present
            ? allowCustomerCreationOffline.value
            : this.allowCustomerCreationOffline,
      );
  GeneralSetting copyWithCompanion(GeneralSettingsCompanion data) {
    return GeneralSetting(
      orgId: data.orgId.present ? data.orgId.value : this.orgId,
      dfltStore: data.dfltStore.present ? data.dfltStore.value : this.dfltStore,
      localCurrency: data.localCurrency.present
          ? data.localCurrency.value
          : this.localCurrency,
      dfltPriceListCustomer: data.dfltPriceListCustomer.present
          ? data.dfltPriceListCustomer.value
          : this.dfltPriceListCustomer,
      allowNegativeInventory: data.allowNegativeInventory.present
          ? data.allowNegativeInventory.value
          : this.allowNegativeInventory,
      batch: data.batch.present ? data.batch.value : this.batch,
      isRoundOff:
          data.isRoundOff.present ? data.isRoundOff.value : this.isRoundOff,
      allowPriceChange: data.allowPriceChange.present
          ? data.allowPriceChange.value
          : this.allowPriceChange,
      allowDiscountChange: data.allowDiscountChange.present
          ? data.allowDiscountChange.value
          : this.allowDiscountChange,
      allowCustomerCreationOffline: data.allowCustomerCreationOffline.present
          ? data.allowCustomerCreationOffline.value
          : this.allowCustomerCreationOffline,
    );
  }

  @override
  String toString() {
    return (StringBuffer('GeneralSetting(')
          ..write('orgId: $orgId, ')
          ..write('dfltStore: $dfltStore, ')
          ..write('localCurrency: $localCurrency, ')
          ..write('dfltPriceListCustomer: $dfltPriceListCustomer, ')
          ..write('allowNegativeInventory: $allowNegativeInventory, ')
          ..write('batch: $batch, ')
          ..write('isRoundOff: $isRoundOff, ')
          ..write('allowPriceChange: $allowPriceChange, ')
          ..write('allowDiscountChange: $allowDiscountChange, ')
          ..write('allowCustomerCreationOffline: $allowCustomerCreationOffline')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      orgId,
      dfltStore,
      localCurrency,
      dfltPriceListCustomer,
      allowNegativeInventory,
      batch,
      isRoundOff,
      allowPriceChange,
      allowDiscountChange,
      allowCustomerCreationOffline);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GeneralSetting &&
          other.orgId == this.orgId &&
          other.dfltStore == this.dfltStore &&
          other.localCurrency == this.localCurrency &&
          other.dfltPriceListCustomer == this.dfltPriceListCustomer &&
          other.allowNegativeInventory == this.allowNegativeInventory &&
          other.batch == this.batch &&
          other.isRoundOff == this.isRoundOff &&
          other.allowPriceChange == this.allowPriceChange &&
          other.allowDiscountChange == this.allowDiscountChange &&
          other.allowCustomerCreationOffline ==
              this.allowCustomerCreationOffline);
}

class GeneralSettingsCompanion extends UpdateCompanion<GeneralSetting> {
  final Value<int> orgId;
  final Value<String?> dfltStore;
  final Value<String?> localCurrency;
  final Value<int?> dfltPriceListCustomer;
  final Value<String?> allowNegativeInventory;
  final Value<String?> batch;
  final Value<String?> isRoundOff;
  final Value<String?> allowPriceChange;
  final Value<String?> allowDiscountChange;
  final Value<String?> allowCustomerCreationOffline;
  const GeneralSettingsCompanion({
    this.orgId = const Value.absent(),
    this.dfltStore = const Value.absent(),
    this.localCurrency = const Value.absent(),
    this.dfltPriceListCustomer = const Value.absent(),
    this.allowNegativeInventory = const Value.absent(),
    this.batch = const Value.absent(),
    this.isRoundOff = const Value.absent(),
    this.allowPriceChange = const Value.absent(),
    this.allowDiscountChange = const Value.absent(),
    this.allowCustomerCreationOffline = const Value.absent(),
  });
  GeneralSettingsCompanion.insert({
    this.orgId = const Value.absent(),
    this.dfltStore = const Value.absent(),
    this.localCurrency = const Value.absent(),
    this.dfltPriceListCustomer = const Value.absent(),
    this.allowNegativeInventory = const Value.absent(),
    this.batch = const Value.absent(),
    this.isRoundOff = const Value.absent(),
    this.allowPriceChange = const Value.absent(),
    this.allowDiscountChange = const Value.absent(),
    this.allowCustomerCreationOffline = const Value.absent(),
  });
  static Insertable<GeneralSetting> custom({
    Expression<int>? orgId,
    Expression<String>? dfltStore,
    Expression<String>? localCurrency,
    Expression<int>? dfltPriceListCustomer,
    Expression<String>? allowNegativeInventory,
    Expression<String>? batch,
    Expression<String>? isRoundOff,
    Expression<String>? allowPriceChange,
    Expression<String>? allowDiscountChange,
    Expression<String>? allowCustomerCreationOffline,
  }) {
    return RawValuesInsertable({
      if (orgId != null) 'org_id': orgId,
      if (dfltStore != null) 'dflt_store': dfltStore,
      if (localCurrency != null) 'local_currency': localCurrency,
      if (dfltPriceListCustomer != null)
        'dflt_price_list_customer': dfltPriceListCustomer,
      if (allowNegativeInventory != null)
        'allow_negative_inventory': allowNegativeInventory,
      if (batch != null) 'batch': batch,
      if (isRoundOff != null) 'is_round_off': isRoundOff,
      if (allowPriceChange != null) 'allow_price_change': allowPriceChange,
      if (allowDiscountChange != null)
        'allow_discount_change': allowDiscountChange,
      if (allowCustomerCreationOffline != null)
        'allow_customer_creation_offline': allowCustomerCreationOffline,
    });
  }

  GeneralSettingsCompanion copyWith(
      {Value<int>? orgId,
      Value<String?>? dfltStore,
      Value<String?>? localCurrency,
      Value<int?>? dfltPriceListCustomer,
      Value<String?>? allowNegativeInventory,
      Value<String?>? batch,
      Value<String?>? isRoundOff,
      Value<String?>? allowPriceChange,
      Value<String?>? allowDiscountChange,
      Value<String?>? allowCustomerCreationOffline}) {
    return GeneralSettingsCompanion(
      orgId: orgId ?? this.orgId,
      dfltStore: dfltStore ?? this.dfltStore,
      localCurrency: localCurrency ?? this.localCurrency,
      dfltPriceListCustomer:
          dfltPriceListCustomer ?? this.dfltPriceListCustomer,
      allowNegativeInventory:
          allowNegativeInventory ?? this.allowNegativeInventory,
      batch: batch ?? this.batch,
      isRoundOff: isRoundOff ?? this.isRoundOff,
      allowPriceChange: allowPriceChange ?? this.allowPriceChange,
      allowDiscountChange: allowDiscountChange ?? this.allowDiscountChange,
      allowCustomerCreationOffline:
          allowCustomerCreationOffline ?? this.allowCustomerCreationOffline,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orgId.present) {
      map['org_id'] = Variable<int>(orgId.value);
    }
    if (dfltStore.present) {
      map['dflt_store'] = Variable<String>(dfltStore.value);
    }
    if (localCurrency.present) {
      map['local_currency'] = Variable<String>(localCurrency.value);
    }
    if (dfltPriceListCustomer.present) {
      map['dflt_price_list_customer'] =
          Variable<int>(dfltPriceListCustomer.value);
    }
    if (allowNegativeInventory.present) {
      map['allow_negative_inventory'] =
          Variable<String>(allowNegativeInventory.value);
    }
    if (batch.present) {
      map['batch'] = Variable<String>(batch.value);
    }
    if (isRoundOff.present) {
      map['is_round_off'] = Variable<String>(isRoundOff.value);
    }
    if (allowPriceChange.present) {
      map['allow_price_change'] = Variable<String>(allowPriceChange.value);
    }
    if (allowDiscountChange.present) {
      map['allow_discount_change'] =
          Variable<String>(allowDiscountChange.value);
    }
    if (allowCustomerCreationOffline.present) {
      map['allow_customer_creation_offline'] =
          Variable<String>(allowCustomerCreationOffline.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GeneralSettingsCompanion(')
          ..write('orgId: $orgId, ')
          ..write('dfltStore: $dfltStore, ')
          ..write('localCurrency: $localCurrency, ')
          ..write('dfltPriceListCustomer: $dfltPriceListCustomer, ')
          ..write('allowNegativeInventory: $allowNegativeInventory, ')
          ..write('batch: $batch, ')
          ..write('isRoundOff: $isRoundOff, ')
          ..write('allowPriceChange: $allowPriceChange, ')
          ..write('allowDiscountChange: $allowDiscountChange, ')
          ..write('allowCustomerCreationOffline: $allowCustomerCreationOffline')
          ..write(')'))
        .toString();
  }
}

class $SeriesForNextnumsTable extends SeriesForNextnums
    with TableInfo<$SeriesForNextnumsTable, SeriesForNextnum> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SeriesForNextnumsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _orgIdMeta = const VerificationMeta('orgId');
  @override
  late final GeneratedColumn<int> orgId = GeneratedColumn<int>(
      'org_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _seriesIdMeta =
      const VerificationMeta('seriesId');
  @override
  late final GeneratedColumn<int> seriesId = GeneratedColumn<int>(
      'series_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _formIdMeta = const VerificationMeta('formId');
  @override
  late final GeneratedColumn<int> formId = GeneratedColumn<int>(
      'form_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _fromNumMeta =
      const VerificationMeta('fromNum');
  @override
  late final GeneratedColumn<int> fromNum = GeneratedColumn<int>(
      'from_num', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nextNumMeta =
      const VerificationMeta('nextNum');
  @override
  late final GeneratedColumn<int> nextNum = GeneratedColumn<int>(
      'next_num', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _maxNumMeta = const VerificationMeta('maxNum');
  @override
  late final GeneratedColumn<int> maxNum = GeneratedColumn<int>(
      'max_num', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, orgId, seriesId, userId, formId, fromNum, nextNum, maxNum];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'series_for_nextnums';
  @override
  VerificationContext validateIntegrity(Insertable<SeriesForNextnum> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('org_id')) {
      context.handle(
          _orgIdMeta, orgId.isAcceptableOrUnknown(data['org_id']!, _orgIdMeta));
    }
    if (data.containsKey('series_id')) {
      context.handle(_seriesIdMeta,
          seriesId.isAcceptableOrUnknown(data['series_id']!, _seriesIdMeta));
    }
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    if (data.containsKey('form_id')) {
      context.handle(_formIdMeta,
          formId.isAcceptableOrUnknown(data['form_id']!, _formIdMeta));
    }
    if (data.containsKey('from_num')) {
      context.handle(_fromNumMeta,
          fromNum.isAcceptableOrUnknown(data['from_num']!, _fromNumMeta));
    }
    if (data.containsKey('next_num')) {
      context.handle(_nextNumMeta,
          nextNum.isAcceptableOrUnknown(data['next_num']!, _nextNumMeta));
    }
    if (data.containsKey('max_num')) {
      context.handle(_maxNumMeta,
          maxNum.isAcceptableOrUnknown(data['max_num']!, _maxNumMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SeriesForNextnum map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SeriesForNextnum(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      orgId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}org_id']),
      seriesId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}series_id']),
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id']),
      formId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}form_id']),
      fromNum: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}from_num']),
      nextNum: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}next_num']),
      maxNum: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}max_num']),
    );
  }

  @override
  $SeriesForNextnumsTable createAlias(String alias) {
    return $SeriesForNextnumsTable(attachedDatabase, alias);
  }
}

class SeriesForNextnum extends DataClass
    implements Insertable<SeriesForNextnum> {
  final int id;
  final int? orgId;
  final int? seriesId;
  final int? userId;
  final int? formId;
  final int? fromNum;
  final int? nextNum;
  final int? maxNum;
  const SeriesForNextnum(
      {required this.id,
      this.orgId,
      this.seriesId,
      this.userId,
      this.formId,
      this.fromNum,
      this.nextNum,
      this.maxNum});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || orgId != null) {
      map['org_id'] = Variable<int>(orgId);
    }
    if (!nullToAbsent || seriesId != null) {
      map['series_id'] = Variable<int>(seriesId);
    }
    if (!nullToAbsent || userId != null) {
      map['user_id'] = Variable<int>(userId);
    }
    if (!nullToAbsent || formId != null) {
      map['form_id'] = Variable<int>(formId);
    }
    if (!nullToAbsent || fromNum != null) {
      map['from_num'] = Variable<int>(fromNum);
    }
    if (!nullToAbsent || nextNum != null) {
      map['next_num'] = Variable<int>(nextNum);
    }
    if (!nullToAbsent || maxNum != null) {
      map['max_num'] = Variable<int>(maxNum);
    }
    return map;
  }

  SeriesForNextnumsCompanion toCompanion(bool nullToAbsent) {
    return SeriesForNextnumsCompanion(
      id: Value(id),
      orgId:
          orgId == null && nullToAbsent ? const Value.absent() : Value(orgId),
      seriesId: seriesId == null && nullToAbsent
          ? const Value.absent()
          : Value(seriesId),
      userId:
          userId == null && nullToAbsent ? const Value.absent() : Value(userId),
      formId:
          formId == null && nullToAbsent ? const Value.absent() : Value(formId),
      fromNum: fromNum == null && nullToAbsent
          ? const Value.absent()
          : Value(fromNum),
      nextNum: nextNum == null && nullToAbsent
          ? const Value.absent()
          : Value(nextNum),
      maxNum:
          maxNum == null && nullToAbsent ? const Value.absent() : Value(maxNum),
    );
  }

  factory SeriesForNextnum.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SeriesForNextnum(
      id: serializer.fromJson<int>(json['id']),
      orgId: serializer.fromJson<int?>(json['orgId']),
      seriesId: serializer.fromJson<int?>(json['seriesId']),
      userId: serializer.fromJson<int?>(json['userId']),
      formId: serializer.fromJson<int?>(json['formId']),
      fromNum: serializer.fromJson<int?>(json['fromNum']),
      nextNum: serializer.fromJson<int?>(json['nextNum']),
      maxNum: serializer.fromJson<int?>(json['maxNum']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'orgId': serializer.toJson<int?>(orgId),
      'seriesId': serializer.toJson<int?>(seriesId),
      'userId': serializer.toJson<int?>(userId),
      'formId': serializer.toJson<int?>(formId),
      'fromNum': serializer.toJson<int?>(fromNum),
      'nextNum': serializer.toJson<int?>(nextNum),
      'maxNum': serializer.toJson<int?>(maxNum),
    };
  }

  SeriesForNextnum copyWith(
          {int? id,
          Value<int?> orgId = const Value.absent(),
          Value<int?> seriesId = const Value.absent(),
          Value<int?> userId = const Value.absent(),
          Value<int?> formId = const Value.absent(),
          Value<int?> fromNum = const Value.absent(),
          Value<int?> nextNum = const Value.absent(),
          Value<int?> maxNum = const Value.absent()}) =>
      SeriesForNextnum(
        id: id ?? this.id,
        orgId: orgId.present ? orgId.value : this.orgId,
        seriesId: seriesId.present ? seriesId.value : this.seriesId,
        userId: userId.present ? userId.value : this.userId,
        formId: formId.present ? formId.value : this.formId,
        fromNum: fromNum.present ? fromNum.value : this.fromNum,
        nextNum: nextNum.present ? nextNum.value : this.nextNum,
        maxNum: maxNum.present ? maxNum.value : this.maxNum,
      );
  SeriesForNextnum copyWithCompanion(SeriesForNextnumsCompanion data) {
    return SeriesForNextnum(
      id: data.id.present ? data.id.value : this.id,
      orgId: data.orgId.present ? data.orgId.value : this.orgId,
      seriesId: data.seriesId.present ? data.seriesId.value : this.seriesId,
      userId: data.userId.present ? data.userId.value : this.userId,
      formId: data.formId.present ? data.formId.value : this.formId,
      fromNum: data.fromNum.present ? data.fromNum.value : this.fromNum,
      nextNum: data.nextNum.present ? data.nextNum.value : this.nextNum,
      maxNum: data.maxNum.present ? data.maxNum.value : this.maxNum,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SeriesForNextnum(')
          ..write('id: $id, ')
          ..write('orgId: $orgId, ')
          ..write('seriesId: $seriesId, ')
          ..write('userId: $userId, ')
          ..write('formId: $formId, ')
          ..write('fromNum: $fromNum, ')
          ..write('nextNum: $nextNum, ')
          ..write('maxNum: $maxNum')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, orgId, seriesId, userId, formId, fromNum, nextNum, maxNum);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SeriesForNextnum &&
          other.id == this.id &&
          other.orgId == this.orgId &&
          other.seriesId == this.seriesId &&
          other.userId == this.userId &&
          other.formId == this.formId &&
          other.fromNum == this.fromNum &&
          other.nextNum == this.nextNum &&
          other.maxNum == this.maxNum);
}

class SeriesForNextnumsCompanion extends UpdateCompanion<SeriesForNextnum> {
  final Value<int> id;
  final Value<int?> orgId;
  final Value<int?> seriesId;
  final Value<int?> userId;
  final Value<int?> formId;
  final Value<int?> fromNum;
  final Value<int?> nextNum;
  final Value<int?> maxNum;
  const SeriesForNextnumsCompanion({
    this.id = const Value.absent(),
    this.orgId = const Value.absent(),
    this.seriesId = const Value.absent(),
    this.userId = const Value.absent(),
    this.formId = const Value.absent(),
    this.fromNum = const Value.absent(),
    this.nextNum = const Value.absent(),
    this.maxNum = const Value.absent(),
  });
  SeriesForNextnumsCompanion.insert({
    this.id = const Value.absent(),
    this.orgId = const Value.absent(),
    this.seriesId = const Value.absent(),
    this.userId = const Value.absent(),
    this.formId = const Value.absent(),
    this.fromNum = const Value.absent(),
    this.nextNum = const Value.absent(),
    this.maxNum = const Value.absent(),
  });
  static Insertable<SeriesForNextnum> custom({
    Expression<int>? id,
    Expression<int>? orgId,
    Expression<int>? seriesId,
    Expression<int>? userId,
    Expression<int>? formId,
    Expression<int>? fromNum,
    Expression<int>? nextNum,
    Expression<int>? maxNum,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (orgId != null) 'org_id': orgId,
      if (seriesId != null) 'series_id': seriesId,
      if (userId != null) 'user_id': userId,
      if (formId != null) 'form_id': formId,
      if (fromNum != null) 'from_num': fromNum,
      if (nextNum != null) 'next_num': nextNum,
      if (maxNum != null) 'max_num': maxNum,
    });
  }

  SeriesForNextnumsCompanion copyWith(
      {Value<int>? id,
      Value<int?>? orgId,
      Value<int?>? seriesId,
      Value<int?>? userId,
      Value<int?>? formId,
      Value<int?>? fromNum,
      Value<int?>? nextNum,
      Value<int?>? maxNum}) {
    return SeriesForNextnumsCompanion(
      id: id ?? this.id,
      orgId: orgId ?? this.orgId,
      seriesId: seriesId ?? this.seriesId,
      userId: userId ?? this.userId,
      formId: formId ?? this.formId,
      fromNum: fromNum ?? this.fromNum,
      nextNum: nextNum ?? this.nextNum,
      maxNum: maxNum ?? this.maxNum,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (orgId.present) {
      map['org_id'] = Variable<int>(orgId.value);
    }
    if (seriesId.present) {
      map['series_id'] = Variable<int>(seriesId.value);
    }
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (formId.present) {
      map['form_id'] = Variable<int>(formId.value);
    }
    if (fromNum.present) {
      map['from_num'] = Variable<int>(fromNum.value);
    }
    if (nextNum.present) {
      map['next_num'] = Variable<int>(nextNum.value);
    }
    if (maxNum.present) {
      map['max_num'] = Variable<int>(maxNum.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SeriesForNextnumsCompanion(')
          ..write('id: $id, ')
          ..write('orgId: $orgId, ')
          ..write('seriesId: $seriesId, ')
          ..write('userId: $userId, ')
          ..write('formId: $formId, ')
          ..write('fromNum: $fromNum, ')
          ..write('nextNum: $nextNum, ')
          ..write('maxNum: $maxNum')
          ..write(')'))
        .toString();
  }
}

class $MasterUsersTable extends MasterUsers
    with TableInfo<$MasterUsersTable, MasterUser> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $MasterUsersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<int> userId = GeneratedColumn<int>(
      'user_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _orgIdMeta = const VerificationMeta('orgId');
  @override
  late final GeneratedColumn<int> orgId = GeneratedColumn<int>(
      'org_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _userCodeMeta =
      const VerificationMeta('userCode');
  @override
  late final GeneratedColumn<String> userCode = GeneratedColumn<String>(
      'user_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _userNameMeta =
      const VerificationMeta('userName');
  @override
  late final GeneratedColumn<String> userName = GeneratedColumn<String>(
      'user_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _mobileMeta = const VerificationMeta('mobile');
  @override
  late final GeneratedColumn<String> mobile = GeneratedColumn<String>(
      'mobile', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _storeIdMeta =
      const VerificationMeta('storeId');
  @override
  late final GeneratedColumn<int> storeId = GeneratedColumn<int>(
      'store_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _priceListMeta =
      const VerificationMeta('priceList');
  @override
  late final GeneratedColumn<int> priceList = GeneratedColumn<int>(
      'price_list', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _inactiveMeta =
      const VerificationMeta('inactive');
  @override
  late final GeneratedColumn<String> inactive = GeneratedColumn<String>(
      'inactive', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _imageUrlMeta =
      const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
      'image_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _updatedDateMeta =
      const VerificationMeta('updatedDate');
  @override
  late final GeneratedColumn<String> updatedDate = GeneratedColumn<String>(
      'updated_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        userId,
        orgId,
        userCode,
        userName,
        mobile,
        email,
        storeId,
        priceList,
        inactive,
        imageUrl,
        updatedDate
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'master_users';
  @override
  VerificationContext validateIntegrity(Insertable<MasterUser> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    }
    if (data.containsKey('org_id')) {
      context.handle(
          _orgIdMeta, orgId.isAcceptableOrUnknown(data['org_id']!, _orgIdMeta));
    }
    if (data.containsKey('user_code')) {
      context.handle(_userCodeMeta,
          userCode.isAcceptableOrUnknown(data['user_code']!, _userCodeMeta));
    }
    if (data.containsKey('user_name')) {
      context.handle(_userNameMeta,
          userName.isAcceptableOrUnknown(data['user_name']!, _userNameMeta));
    }
    if (data.containsKey('mobile')) {
      context.handle(_mobileMeta,
          mobile.isAcceptableOrUnknown(data['mobile']!, _mobileMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('store_id')) {
      context.handle(_storeIdMeta,
          storeId.isAcceptableOrUnknown(data['store_id']!, _storeIdMeta));
    }
    if (data.containsKey('price_list')) {
      context.handle(_priceListMeta,
          priceList.isAcceptableOrUnknown(data['price_list']!, _priceListMeta));
    }
    if (data.containsKey('inactive')) {
      context.handle(_inactiveMeta,
          inactive.isAcceptableOrUnknown(data['inactive']!, _inactiveMeta));
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    }
    if (data.containsKey('updated_date')) {
      context.handle(
          _updatedDateMeta,
          updatedDate.isAcceptableOrUnknown(
              data['updated_date']!, _updatedDateMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {userId};
  @override
  MasterUser map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return MasterUser(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}user_id'])!,
      orgId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}org_id']),
      userCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_code']),
      userName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_name']),
      mobile: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mobile']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      storeId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}store_id']),
      priceList: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}price_list']),
      inactive: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}inactive']),
      imageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url']),
      updatedDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}updated_date']),
    );
  }

  @override
  $MasterUsersTable createAlias(String alias) {
    return $MasterUsersTable(attachedDatabase, alias);
  }
}

class MasterUser extends DataClass implements Insertable<MasterUser> {
  final int userId;
  final int? orgId;
  final String? userCode;
  final String? userName;
  final String? mobile;
  final String? email;
  final int? storeId;
  final int? priceList;
  final String? inactive;
  final String? imageUrl;
  final String? updatedDate;
  const MasterUser(
      {required this.userId,
      this.orgId,
      this.userCode,
      this.userName,
      this.mobile,
      this.email,
      this.storeId,
      this.priceList,
      this.inactive,
      this.imageUrl,
      this.updatedDate});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['user_id'] = Variable<int>(userId);
    if (!nullToAbsent || orgId != null) {
      map['org_id'] = Variable<int>(orgId);
    }
    if (!nullToAbsent || userCode != null) {
      map['user_code'] = Variable<String>(userCode);
    }
    if (!nullToAbsent || userName != null) {
      map['user_name'] = Variable<String>(userName);
    }
    if (!nullToAbsent || mobile != null) {
      map['mobile'] = Variable<String>(mobile);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || storeId != null) {
      map['store_id'] = Variable<int>(storeId);
    }
    if (!nullToAbsent || priceList != null) {
      map['price_list'] = Variable<int>(priceList);
    }
    if (!nullToAbsent || inactive != null) {
      map['inactive'] = Variable<String>(inactive);
    }
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    if (!nullToAbsent || updatedDate != null) {
      map['updated_date'] = Variable<String>(updatedDate);
    }
    return map;
  }

  MasterUsersCompanion toCompanion(bool nullToAbsent) {
    return MasterUsersCompanion(
      userId: Value(userId),
      orgId:
          orgId == null && nullToAbsent ? const Value.absent() : Value(orgId),
      userCode: userCode == null && nullToAbsent
          ? const Value.absent()
          : Value(userCode),
      userName: userName == null && nullToAbsent
          ? const Value.absent()
          : Value(userName),
      mobile:
          mobile == null && nullToAbsent ? const Value.absent() : Value(mobile),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      storeId: storeId == null && nullToAbsent
          ? const Value.absent()
          : Value(storeId),
      priceList: priceList == null && nullToAbsent
          ? const Value.absent()
          : Value(priceList),
      inactive: inactive == null && nullToAbsent
          ? const Value.absent()
          : Value(inactive),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      updatedDate: updatedDate == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedDate),
    );
  }

  factory MasterUser.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return MasterUser(
      userId: serializer.fromJson<int>(json['userId']),
      orgId: serializer.fromJson<int?>(json['orgId']),
      userCode: serializer.fromJson<String?>(json['userCode']),
      userName: serializer.fromJson<String?>(json['userName']),
      mobile: serializer.fromJson<String?>(json['mobile']),
      email: serializer.fromJson<String?>(json['email']),
      storeId: serializer.fromJson<int?>(json['storeId']),
      priceList: serializer.fromJson<int?>(json['priceList']),
      inactive: serializer.fromJson<String?>(json['inactive']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      updatedDate: serializer.fromJson<String?>(json['updatedDate']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'userId': serializer.toJson<int>(userId),
      'orgId': serializer.toJson<int?>(orgId),
      'userCode': serializer.toJson<String?>(userCode),
      'userName': serializer.toJson<String?>(userName),
      'mobile': serializer.toJson<String?>(mobile),
      'email': serializer.toJson<String?>(email),
      'storeId': serializer.toJson<int?>(storeId),
      'priceList': serializer.toJson<int?>(priceList),
      'inactive': serializer.toJson<String?>(inactive),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'updatedDate': serializer.toJson<String?>(updatedDate),
    };
  }

  MasterUser copyWith(
          {int? userId,
          Value<int?> orgId = const Value.absent(),
          Value<String?> userCode = const Value.absent(),
          Value<String?> userName = const Value.absent(),
          Value<String?> mobile = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<int?> storeId = const Value.absent(),
          Value<int?> priceList = const Value.absent(),
          Value<String?> inactive = const Value.absent(),
          Value<String?> imageUrl = const Value.absent(),
          Value<String?> updatedDate = const Value.absent()}) =>
      MasterUser(
        userId: userId ?? this.userId,
        orgId: orgId.present ? orgId.value : this.orgId,
        userCode: userCode.present ? userCode.value : this.userCode,
        userName: userName.present ? userName.value : this.userName,
        mobile: mobile.present ? mobile.value : this.mobile,
        email: email.present ? email.value : this.email,
        storeId: storeId.present ? storeId.value : this.storeId,
        priceList: priceList.present ? priceList.value : this.priceList,
        inactive: inactive.present ? inactive.value : this.inactive,
        imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
        updatedDate: updatedDate.present ? updatedDate.value : this.updatedDate,
      );
  MasterUser copyWithCompanion(MasterUsersCompanion data) {
    return MasterUser(
      userId: data.userId.present ? data.userId.value : this.userId,
      orgId: data.orgId.present ? data.orgId.value : this.orgId,
      userCode: data.userCode.present ? data.userCode.value : this.userCode,
      userName: data.userName.present ? data.userName.value : this.userName,
      mobile: data.mobile.present ? data.mobile.value : this.mobile,
      email: data.email.present ? data.email.value : this.email,
      storeId: data.storeId.present ? data.storeId.value : this.storeId,
      priceList: data.priceList.present ? data.priceList.value : this.priceList,
      inactive: data.inactive.present ? data.inactive.value : this.inactive,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      updatedDate:
          data.updatedDate.present ? data.updatedDate.value : this.updatedDate,
    );
  }

  @override
  String toString() {
    return (StringBuffer('MasterUser(')
          ..write('userId: $userId, ')
          ..write('orgId: $orgId, ')
          ..write('userCode: $userCode, ')
          ..write('userName: $userName, ')
          ..write('mobile: $mobile, ')
          ..write('email: $email, ')
          ..write('storeId: $storeId, ')
          ..write('priceList: $priceList, ')
          ..write('inactive: $inactive, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('updatedDate: $updatedDate')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(userId, orgId, userCode, userName, mobile,
      email, storeId, priceList, inactive, imageUrl, updatedDate);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is MasterUser &&
          other.userId == this.userId &&
          other.orgId == this.orgId &&
          other.userCode == this.userCode &&
          other.userName == this.userName &&
          other.mobile == this.mobile &&
          other.email == this.email &&
          other.storeId == this.storeId &&
          other.priceList == this.priceList &&
          other.inactive == this.inactive &&
          other.imageUrl == this.imageUrl &&
          other.updatedDate == this.updatedDate);
}

class MasterUsersCompanion extends UpdateCompanion<MasterUser> {
  final Value<int> userId;
  final Value<int?> orgId;
  final Value<String?> userCode;
  final Value<String?> userName;
  final Value<String?> mobile;
  final Value<String?> email;
  final Value<int?> storeId;
  final Value<int?> priceList;
  final Value<String?> inactive;
  final Value<String?> imageUrl;
  final Value<String?> updatedDate;
  const MasterUsersCompanion({
    this.userId = const Value.absent(),
    this.orgId = const Value.absent(),
    this.userCode = const Value.absent(),
    this.userName = const Value.absent(),
    this.mobile = const Value.absent(),
    this.email = const Value.absent(),
    this.storeId = const Value.absent(),
    this.priceList = const Value.absent(),
    this.inactive = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.updatedDate = const Value.absent(),
  });
  MasterUsersCompanion.insert({
    this.userId = const Value.absent(),
    this.orgId = const Value.absent(),
    this.userCode = const Value.absent(),
    this.userName = const Value.absent(),
    this.mobile = const Value.absent(),
    this.email = const Value.absent(),
    this.storeId = const Value.absent(),
    this.priceList = const Value.absent(),
    this.inactive = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.updatedDate = const Value.absent(),
  });
  static Insertable<MasterUser> custom({
    Expression<int>? userId,
    Expression<int>? orgId,
    Expression<String>? userCode,
    Expression<String>? userName,
    Expression<String>? mobile,
    Expression<String>? email,
    Expression<int>? storeId,
    Expression<int>? priceList,
    Expression<String>? inactive,
    Expression<String>? imageUrl,
    Expression<String>? updatedDate,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (orgId != null) 'org_id': orgId,
      if (userCode != null) 'user_code': userCode,
      if (userName != null) 'user_name': userName,
      if (mobile != null) 'mobile': mobile,
      if (email != null) 'email': email,
      if (storeId != null) 'store_id': storeId,
      if (priceList != null) 'price_list': priceList,
      if (inactive != null) 'inactive': inactive,
      if (imageUrl != null) 'image_url': imageUrl,
      if (updatedDate != null) 'updated_date': updatedDate,
    });
  }

  MasterUsersCompanion copyWith(
      {Value<int>? userId,
      Value<int?>? orgId,
      Value<String?>? userCode,
      Value<String?>? userName,
      Value<String?>? mobile,
      Value<String?>? email,
      Value<int?>? storeId,
      Value<int?>? priceList,
      Value<String?>? inactive,
      Value<String?>? imageUrl,
      Value<String?>? updatedDate}) {
    return MasterUsersCompanion(
      userId: userId ?? this.userId,
      orgId: orgId ?? this.orgId,
      userCode: userCode ?? this.userCode,
      userName: userName ?? this.userName,
      mobile: mobile ?? this.mobile,
      email: email ?? this.email,
      storeId: storeId ?? this.storeId,
      priceList: priceList ?? this.priceList,
      inactive: inactive ?? this.inactive,
      imageUrl: imageUrl ?? this.imageUrl,
      updatedDate: updatedDate ?? this.updatedDate,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<int>(userId.value);
    }
    if (orgId.present) {
      map['org_id'] = Variable<int>(orgId.value);
    }
    if (userCode.present) {
      map['user_code'] = Variable<String>(userCode.value);
    }
    if (userName.present) {
      map['user_name'] = Variable<String>(userName.value);
    }
    if (mobile.present) {
      map['mobile'] = Variable<String>(mobile.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (storeId.present) {
      map['store_id'] = Variable<int>(storeId.value);
    }
    if (priceList.present) {
      map['price_list'] = Variable<int>(priceList.value);
    }
    if (inactive.present) {
      map['inactive'] = Variable<String>(inactive.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (updatedDate.present) {
      map['updated_date'] = Variable<String>(updatedDate.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('MasterUsersCompanion(')
          ..write('userId: $userId, ')
          ..write('orgId: $orgId, ')
          ..write('userCode: $userCode, ')
          ..write('userName: $userName, ')
          ..write('mobile: $mobile, ')
          ..write('email: $email, ')
          ..write('storeId: $storeId, ')
          ..write('priceList: $priceList, ')
          ..write('inactive: $inactive, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('updatedDate: $updatedDate')
          ..write(')'))
        .toString();
  }
}

class $OrganisationDetailsTable extends OrganisationDetails
    with TableInfo<$OrganisationDetailsTable, OrganisationDetail> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrganisationDetailsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _orgIdMeta = const VerificationMeta('orgId');
  @override
  late final GeneratedColumn<int> orgId = GeneratedColumn<int>(
      'org_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _organisationMeta =
      const VerificationMeta('organisation');
  @override
  late final GeneratedColumn<String> organisation = GeneratedColumn<String>(
      'organisation', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _mobileMeta = const VerificationMeta('mobile');
  @override
  late final GeneratedColumn<String> mobile = GeneratedColumn<String>(
      'mobile', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _eMailMeta = const VerificationMeta('eMail');
  @override
  late final GeneratedColumn<String> eMail = GeneratedColumn<String>(
      'e_mail', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _gstNoMeta = const VerificationMeta('gstNo');
  @override
  late final GeneratedColumn<String> gstNo = GeneratedColumn<String>(
      'gst_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _panNoMeta = const VerificationMeta('panNo');
  @override
  late final GeneratedColumn<String> panNo = GeneratedColumn<String>(
      'pan_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _imageUrlMeta =
      const VerificationMeta('imageUrl');
  @override
  late final GeneratedColumn<String> imageUrl = GeneratedColumn<String>(
      'image_url', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _stateMeta = const VerificationMeta('state');
  @override
  late final GeneratedColumn<String> state = GeneratedColumn<String>(
      'state', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _countryMeta =
      const VerificationMeta('country');
  @override
  late final GeneratedColumn<String> country = GeneratedColumn<String>(
      'country', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _zipCodeMeta =
      const VerificationMeta('zipCode');
  @override
  late final GeneratedColumn<String> zipCode = GeneratedColumn<String>(
      'zip_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        orgId,
        organisation,
        address,
        mobile,
        eMail,
        gstNo,
        panNo,
        imageUrl,
        state,
        country,
        zipCode
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'organisation_details';
  @override
  VerificationContext validateIntegrity(Insertable<OrganisationDetail> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('org_id')) {
      context.handle(
          _orgIdMeta, orgId.isAcceptableOrUnknown(data['org_id']!, _orgIdMeta));
    }
    if (data.containsKey('organisation')) {
      context.handle(
          _organisationMeta,
          organisation.isAcceptableOrUnknown(
              data['organisation']!, _organisationMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('mobile')) {
      context.handle(_mobileMeta,
          mobile.isAcceptableOrUnknown(data['mobile']!, _mobileMeta));
    }
    if (data.containsKey('e_mail')) {
      context.handle(
          _eMailMeta, eMail.isAcceptableOrUnknown(data['e_mail']!, _eMailMeta));
    }
    if (data.containsKey('gst_no')) {
      context.handle(
          _gstNoMeta, gstNo.isAcceptableOrUnknown(data['gst_no']!, _gstNoMeta));
    }
    if (data.containsKey('pan_no')) {
      context.handle(
          _panNoMeta, panNo.isAcceptableOrUnknown(data['pan_no']!, _panNoMeta));
    }
    if (data.containsKey('image_url')) {
      context.handle(_imageUrlMeta,
          imageUrl.isAcceptableOrUnknown(data['image_url']!, _imageUrlMeta));
    }
    if (data.containsKey('state')) {
      context.handle(
          _stateMeta, state.isAcceptableOrUnknown(data['state']!, _stateMeta));
    }
    if (data.containsKey('country')) {
      context.handle(_countryMeta,
          country.isAcceptableOrUnknown(data['country']!, _countryMeta));
    }
    if (data.containsKey('zip_code')) {
      context.handle(_zipCodeMeta,
          zipCode.isAcceptableOrUnknown(data['zip_code']!, _zipCodeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {orgId};
  @override
  OrganisationDetail map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrganisationDetail(
      orgId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}org_id'])!,
      organisation: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}organisation']),
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address']),
      mobile: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mobile']),
      eMail: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}e_mail']),
      gstNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gst_no']),
      panNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}pan_no']),
      imageUrl: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}image_url']),
      state: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}state']),
      country: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}country']),
      zipCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}zip_code']),
    );
  }

  @override
  $OrganisationDetailsTable createAlias(String alias) {
    return $OrganisationDetailsTable(attachedDatabase, alias);
  }
}

class OrganisationDetail extends DataClass
    implements Insertable<OrganisationDetail> {
  final int orgId;
  final String? organisation;
  final String? address;
  final String? mobile;
  final String? eMail;
  final String? gstNo;
  final String? panNo;
  final String? imageUrl;
  final String? state;
  final String? country;
  final String? zipCode;
  const OrganisationDetail(
      {required this.orgId,
      this.organisation,
      this.address,
      this.mobile,
      this.eMail,
      this.gstNo,
      this.panNo,
      this.imageUrl,
      this.state,
      this.country,
      this.zipCode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['org_id'] = Variable<int>(orgId);
    if (!nullToAbsent || organisation != null) {
      map['organisation'] = Variable<String>(organisation);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || mobile != null) {
      map['mobile'] = Variable<String>(mobile);
    }
    if (!nullToAbsent || eMail != null) {
      map['e_mail'] = Variable<String>(eMail);
    }
    if (!nullToAbsent || gstNo != null) {
      map['gst_no'] = Variable<String>(gstNo);
    }
    if (!nullToAbsent || panNo != null) {
      map['pan_no'] = Variable<String>(panNo);
    }
    if (!nullToAbsent || imageUrl != null) {
      map['image_url'] = Variable<String>(imageUrl);
    }
    if (!nullToAbsent || state != null) {
      map['state'] = Variable<String>(state);
    }
    if (!nullToAbsent || country != null) {
      map['country'] = Variable<String>(country);
    }
    if (!nullToAbsent || zipCode != null) {
      map['zip_code'] = Variable<String>(zipCode);
    }
    return map;
  }

  OrganisationDetailsCompanion toCompanion(bool nullToAbsent) {
    return OrganisationDetailsCompanion(
      orgId: Value(orgId),
      organisation: organisation == null && nullToAbsent
          ? const Value.absent()
          : Value(organisation),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      mobile:
          mobile == null && nullToAbsent ? const Value.absent() : Value(mobile),
      eMail:
          eMail == null && nullToAbsent ? const Value.absent() : Value(eMail),
      gstNo:
          gstNo == null && nullToAbsent ? const Value.absent() : Value(gstNo),
      panNo:
          panNo == null && nullToAbsent ? const Value.absent() : Value(panNo),
      imageUrl: imageUrl == null && nullToAbsent
          ? const Value.absent()
          : Value(imageUrl),
      state:
          state == null && nullToAbsent ? const Value.absent() : Value(state),
      country: country == null && nullToAbsent
          ? const Value.absent()
          : Value(country),
      zipCode: zipCode == null && nullToAbsent
          ? const Value.absent()
          : Value(zipCode),
    );
  }

  factory OrganisationDetail.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrganisationDetail(
      orgId: serializer.fromJson<int>(json['orgId']),
      organisation: serializer.fromJson<String?>(json['organisation']),
      address: serializer.fromJson<String?>(json['address']),
      mobile: serializer.fromJson<String?>(json['mobile']),
      eMail: serializer.fromJson<String?>(json['eMail']),
      gstNo: serializer.fromJson<String?>(json['gstNo']),
      panNo: serializer.fromJson<String?>(json['panNo']),
      imageUrl: serializer.fromJson<String?>(json['imageUrl']),
      state: serializer.fromJson<String?>(json['state']),
      country: serializer.fromJson<String?>(json['country']),
      zipCode: serializer.fromJson<String?>(json['zipCode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'orgId': serializer.toJson<int>(orgId),
      'organisation': serializer.toJson<String?>(organisation),
      'address': serializer.toJson<String?>(address),
      'mobile': serializer.toJson<String?>(mobile),
      'eMail': serializer.toJson<String?>(eMail),
      'gstNo': serializer.toJson<String?>(gstNo),
      'panNo': serializer.toJson<String?>(panNo),
      'imageUrl': serializer.toJson<String?>(imageUrl),
      'state': serializer.toJson<String?>(state),
      'country': serializer.toJson<String?>(country),
      'zipCode': serializer.toJson<String?>(zipCode),
    };
  }

  OrganisationDetail copyWith(
          {int? orgId,
          Value<String?> organisation = const Value.absent(),
          Value<String?> address = const Value.absent(),
          Value<String?> mobile = const Value.absent(),
          Value<String?> eMail = const Value.absent(),
          Value<String?> gstNo = const Value.absent(),
          Value<String?> panNo = const Value.absent(),
          Value<String?> imageUrl = const Value.absent(),
          Value<String?> state = const Value.absent(),
          Value<String?> country = const Value.absent(),
          Value<String?> zipCode = const Value.absent()}) =>
      OrganisationDetail(
        orgId: orgId ?? this.orgId,
        organisation:
            organisation.present ? organisation.value : this.organisation,
        address: address.present ? address.value : this.address,
        mobile: mobile.present ? mobile.value : this.mobile,
        eMail: eMail.present ? eMail.value : this.eMail,
        gstNo: gstNo.present ? gstNo.value : this.gstNo,
        panNo: panNo.present ? panNo.value : this.panNo,
        imageUrl: imageUrl.present ? imageUrl.value : this.imageUrl,
        state: state.present ? state.value : this.state,
        country: country.present ? country.value : this.country,
        zipCode: zipCode.present ? zipCode.value : this.zipCode,
      );
  OrganisationDetail copyWithCompanion(OrganisationDetailsCompanion data) {
    return OrganisationDetail(
      orgId: data.orgId.present ? data.orgId.value : this.orgId,
      organisation: data.organisation.present
          ? data.organisation.value
          : this.organisation,
      address: data.address.present ? data.address.value : this.address,
      mobile: data.mobile.present ? data.mobile.value : this.mobile,
      eMail: data.eMail.present ? data.eMail.value : this.eMail,
      gstNo: data.gstNo.present ? data.gstNo.value : this.gstNo,
      panNo: data.panNo.present ? data.panNo.value : this.panNo,
      imageUrl: data.imageUrl.present ? data.imageUrl.value : this.imageUrl,
      state: data.state.present ? data.state.value : this.state,
      country: data.country.present ? data.country.value : this.country,
      zipCode: data.zipCode.present ? data.zipCode.value : this.zipCode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OrganisationDetail(')
          ..write('orgId: $orgId, ')
          ..write('organisation: $organisation, ')
          ..write('address: $address, ')
          ..write('mobile: $mobile, ')
          ..write('eMail: $eMail, ')
          ..write('gstNo: $gstNo, ')
          ..write('panNo: $panNo, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('zipCode: $zipCode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(orgId, organisation, address, mobile, eMail,
      gstNo, panNo, imageUrl, state, country, zipCode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrganisationDetail &&
          other.orgId == this.orgId &&
          other.organisation == this.organisation &&
          other.address == this.address &&
          other.mobile == this.mobile &&
          other.eMail == this.eMail &&
          other.gstNo == this.gstNo &&
          other.panNo == this.panNo &&
          other.imageUrl == this.imageUrl &&
          other.state == this.state &&
          other.country == this.country &&
          other.zipCode == this.zipCode);
}

class OrganisationDetailsCompanion extends UpdateCompanion<OrganisationDetail> {
  final Value<int> orgId;
  final Value<String?> organisation;
  final Value<String?> address;
  final Value<String?> mobile;
  final Value<String?> eMail;
  final Value<String?> gstNo;
  final Value<String?> panNo;
  final Value<String?> imageUrl;
  final Value<String?> state;
  final Value<String?> country;
  final Value<String?> zipCode;
  const OrganisationDetailsCompanion({
    this.orgId = const Value.absent(),
    this.organisation = const Value.absent(),
    this.address = const Value.absent(),
    this.mobile = const Value.absent(),
    this.eMail = const Value.absent(),
    this.gstNo = const Value.absent(),
    this.panNo = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.state = const Value.absent(),
    this.country = const Value.absent(),
    this.zipCode = const Value.absent(),
  });
  OrganisationDetailsCompanion.insert({
    this.orgId = const Value.absent(),
    this.organisation = const Value.absent(),
    this.address = const Value.absent(),
    this.mobile = const Value.absent(),
    this.eMail = const Value.absent(),
    this.gstNo = const Value.absent(),
    this.panNo = const Value.absent(),
    this.imageUrl = const Value.absent(),
    this.state = const Value.absent(),
    this.country = const Value.absent(),
    this.zipCode = const Value.absent(),
  });
  static Insertable<OrganisationDetail> custom({
    Expression<int>? orgId,
    Expression<String>? organisation,
    Expression<String>? address,
    Expression<String>? mobile,
    Expression<String>? eMail,
    Expression<String>? gstNo,
    Expression<String>? panNo,
    Expression<String>? imageUrl,
    Expression<String>? state,
    Expression<String>? country,
    Expression<String>? zipCode,
  }) {
    return RawValuesInsertable({
      if (orgId != null) 'org_id': orgId,
      if (organisation != null) 'organisation': organisation,
      if (address != null) 'address': address,
      if (mobile != null) 'mobile': mobile,
      if (eMail != null) 'e_mail': eMail,
      if (gstNo != null) 'gst_no': gstNo,
      if (panNo != null) 'pan_no': panNo,
      if (imageUrl != null) 'image_url': imageUrl,
      if (state != null) 'state': state,
      if (country != null) 'country': country,
      if (zipCode != null) 'zip_code': zipCode,
    });
  }

  OrganisationDetailsCompanion copyWith(
      {Value<int>? orgId,
      Value<String?>? organisation,
      Value<String?>? address,
      Value<String?>? mobile,
      Value<String?>? eMail,
      Value<String?>? gstNo,
      Value<String?>? panNo,
      Value<String?>? imageUrl,
      Value<String?>? state,
      Value<String?>? country,
      Value<String?>? zipCode}) {
    return OrganisationDetailsCompanion(
      orgId: orgId ?? this.orgId,
      organisation: organisation ?? this.organisation,
      address: address ?? this.address,
      mobile: mobile ?? this.mobile,
      eMail: eMail ?? this.eMail,
      gstNo: gstNo ?? this.gstNo,
      panNo: panNo ?? this.panNo,
      imageUrl: imageUrl ?? this.imageUrl,
      state: state ?? this.state,
      country: country ?? this.country,
      zipCode: zipCode ?? this.zipCode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (orgId.present) {
      map['org_id'] = Variable<int>(orgId.value);
    }
    if (organisation.present) {
      map['organisation'] = Variable<String>(organisation.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (mobile.present) {
      map['mobile'] = Variable<String>(mobile.value);
    }
    if (eMail.present) {
      map['e_mail'] = Variable<String>(eMail.value);
    }
    if (gstNo.present) {
      map['gst_no'] = Variable<String>(gstNo.value);
    }
    if (panNo.present) {
      map['pan_no'] = Variable<String>(panNo.value);
    }
    if (imageUrl.present) {
      map['image_url'] = Variable<String>(imageUrl.value);
    }
    if (state.present) {
      map['state'] = Variable<String>(state.value);
    }
    if (country.present) {
      map['country'] = Variable<String>(country.value);
    }
    if (zipCode.present) {
      map['zip_code'] = Variable<String>(zipCode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrganisationDetailsCompanion(')
          ..write('orgId: $orgId, ')
          ..write('organisation: $organisation, ')
          ..write('address: $address, ')
          ..write('mobile: $mobile, ')
          ..write('eMail: $eMail, ')
          ..write('gstNo: $gstNo, ')
          ..write('panNo: $panNo, ')
          ..write('imageUrl: $imageUrl, ')
          ..write('state: $state, ')
          ..write('country: $country, ')
          ..write('zipCode: $zipCode')
          ..write(')'))
        .toString();
  }
}

class $SeriesListsTable extends SeriesLists
    with TableInfo<$SeriesListsTable, SeriesList> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SeriesListsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _seriesIdMeta =
      const VerificationMeta('seriesId');
  @override
  late final GeneratedColumn<int> seriesId = GeneratedColumn<int>(
      'series_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _orgIdMeta = const VerificationMeta('orgId');
  @override
  late final GeneratedColumn<int> orgId = GeneratedColumn<int>(
      'org_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _seriesNameMeta =
      const VerificationMeta('seriesName');
  @override
  late final GeneratedColumn<String> seriesName = GeneratedColumn<String>(
      'series_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _printHeaderMeta =
      const VerificationMeta('printHeader');
  @override
  late final GeneratedColumn<String> printHeader = GeneratedColumn<String>(
      'print_header', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _mobileNoMeta =
      const VerificationMeta('mobileNo');
  @override
  late final GeneratedColumn<String> mobileNo = GeneratedColumn<String>(
      'mobile_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _gstNoMeta = const VerificationMeta('gstNo');
  @override
  late final GeneratedColumn<String> gstNo = GeneratedColumn<String>(
      'gst_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [seriesId, orgId, seriesName, printHeader, mobileNo, address, gstNo];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'series_lists';
  @override
  VerificationContext validateIntegrity(Insertable<SeriesList> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('series_id')) {
      context.handle(_seriesIdMeta,
          seriesId.isAcceptableOrUnknown(data['series_id']!, _seriesIdMeta));
    }
    if (data.containsKey('org_id')) {
      context.handle(
          _orgIdMeta, orgId.isAcceptableOrUnknown(data['org_id']!, _orgIdMeta));
    }
    if (data.containsKey('series_name')) {
      context.handle(
          _seriesNameMeta,
          seriesName.isAcceptableOrUnknown(
              data['series_name']!, _seriesNameMeta));
    }
    if (data.containsKey('print_header')) {
      context.handle(
          _printHeaderMeta,
          printHeader.isAcceptableOrUnknown(
              data['print_header']!, _printHeaderMeta));
    }
    if (data.containsKey('mobile_no')) {
      context.handle(_mobileNoMeta,
          mobileNo.isAcceptableOrUnknown(data['mobile_no']!, _mobileNoMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('gst_no')) {
      context.handle(
          _gstNoMeta, gstNo.isAcceptableOrUnknown(data['gst_no']!, _gstNoMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {seriesId};
  @override
  SeriesList map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SeriesList(
      seriesId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}series_id'])!,
      orgId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}org_id']),
      seriesName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}series_name']),
      printHeader: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}print_header']),
      mobileNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mobile_no']),
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address']),
      gstNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gst_no']),
    );
  }

  @override
  $SeriesListsTable createAlias(String alias) {
    return $SeriesListsTable(attachedDatabase, alias);
  }
}

class SeriesList extends DataClass implements Insertable<SeriesList> {
  final int seriesId;
  final int? orgId;
  final String? seriesName;
  final String? printHeader;
  final String? mobileNo;
  final String? address;
  final String? gstNo;
  const SeriesList(
      {required this.seriesId,
      this.orgId,
      this.seriesName,
      this.printHeader,
      this.mobileNo,
      this.address,
      this.gstNo});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['series_id'] = Variable<int>(seriesId);
    if (!nullToAbsent || orgId != null) {
      map['org_id'] = Variable<int>(orgId);
    }
    if (!nullToAbsent || seriesName != null) {
      map['series_name'] = Variable<String>(seriesName);
    }
    if (!nullToAbsent || printHeader != null) {
      map['print_header'] = Variable<String>(printHeader);
    }
    if (!nullToAbsent || mobileNo != null) {
      map['mobile_no'] = Variable<String>(mobileNo);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || gstNo != null) {
      map['gst_no'] = Variable<String>(gstNo);
    }
    return map;
  }

  SeriesListsCompanion toCompanion(bool nullToAbsent) {
    return SeriesListsCompanion(
      seriesId: Value(seriesId),
      orgId:
          orgId == null && nullToAbsent ? const Value.absent() : Value(orgId),
      seriesName: seriesName == null && nullToAbsent
          ? const Value.absent()
          : Value(seriesName),
      printHeader: printHeader == null && nullToAbsent
          ? const Value.absent()
          : Value(printHeader),
      mobileNo: mobileNo == null && nullToAbsent
          ? const Value.absent()
          : Value(mobileNo),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      gstNo:
          gstNo == null && nullToAbsent ? const Value.absent() : Value(gstNo),
    );
  }

  factory SeriesList.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SeriesList(
      seriesId: serializer.fromJson<int>(json['seriesId']),
      orgId: serializer.fromJson<int?>(json['orgId']),
      seriesName: serializer.fromJson<String?>(json['seriesName']),
      printHeader: serializer.fromJson<String?>(json['printHeader']),
      mobileNo: serializer.fromJson<String?>(json['mobileNo']),
      address: serializer.fromJson<String?>(json['address']),
      gstNo: serializer.fromJson<String?>(json['gstNo']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'seriesId': serializer.toJson<int>(seriesId),
      'orgId': serializer.toJson<int?>(orgId),
      'seriesName': serializer.toJson<String?>(seriesName),
      'printHeader': serializer.toJson<String?>(printHeader),
      'mobileNo': serializer.toJson<String?>(mobileNo),
      'address': serializer.toJson<String?>(address),
      'gstNo': serializer.toJson<String?>(gstNo),
    };
  }

  SeriesList copyWith(
          {int? seriesId,
          Value<int?> orgId = const Value.absent(),
          Value<String?> seriesName = const Value.absent(),
          Value<String?> printHeader = const Value.absent(),
          Value<String?> mobileNo = const Value.absent(),
          Value<String?> address = const Value.absent(),
          Value<String?> gstNo = const Value.absent()}) =>
      SeriesList(
        seriesId: seriesId ?? this.seriesId,
        orgId: orgId.present ? orgId.value : this.orgId,
        seriesName: seriesName.present ? seriesName.value : this.seriesName,
        printHeader: printHeader.present ? printHeader.value : this.printHeader,
        mobileNo: mobileNo.present ? mobileNo.value : this.mobileNo,
        address: address.present ? address.value : this.address,
        gstNo: gstNo.present ? gstNo.value : this.gstNo,
      );
  SeriesList copyWithCompanion(SeriesListsCompanion data) {
    return SeriesList(
      seriesId: data.seriesId.present ? data.seriesId.value : this.seriesId,
      orgId: data.orgId.present ? data.orgId.value : this.orgId,
      seriesName:
          data.seriesName.present ? data.seriesName.value : this.seriesName,
      printHeader:
          data.printHeader.present ? data.printHeader.value : this.printHeader,
      mobileNo: data.mobileNo.present ? data.mobileNo.value : this.mobileNo,
      address: data.address.present ? data.address.value : this.address,
      gstNo: data.gstNo.present ? data.gstNo.value : this.gstNo,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SeriesList(')
          ..write('seriesId: $seriesId, ')
          ..write('orgId: $orgId, ')
          ..write('seriesName: $seriesName, ')
          ..write('printHeader: $printHeader, ')
          ..write('mobileNo: $mobileNo, ')
          ..write('address: $address, ')
          ..write('gstNo: $gstNo')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      seriesId, orgId, seriesName, printHeader, mobileNo, address, gstNo);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SeriesList &&
          other.seriesId == this.seriesId &&
          other.orgId == this.orgId &&
          other.seriesName == this.seriesName &&
          other.printHeader == this.printHeader &&
          other.mobileNo == this.mobileNo &&
          other.address == this.address &&
          other.gstNo == this.gstNo);
}

class SeriesListsCompanion extends UpdateCompanion<SeriesList> {
  final Value<int> seriesId;
  final Value<int?> orgId;
  final Value<String?> seriesName;
  final Value<String?> printHeader;
  final Value<String?> mobileNo;
  final Value<String?> address;
  final Value<String?> gstNo;
  const SeriesListsCompanion({
    this.seriesId = const Value.absent(),
    this.orgId = const Value.absent(),
    this.seriesName = const Value.absent(),
    this.printHeader = const Value.absent(),
    this.mobileNo = const Value.absent(),
    this.address = const Value.absent(),
    this.gstNo = const Value.absent(),
  });
  SeriesListsCompanion.insert({
    this.seriesId = const Value.absent(),
    this.orgId = const Value.absent(),
    this.seriesName = const Value.absent(),
    this.printHeader = const Value.absent(),
    this.mobileNo = const Value.absent(),
    this.address = const Value.absent(),
    this.gstNo = const Value.absent(),
  });
  static Insertable<SeriesList> custom({
    Expression<int>? seriesId,
    Expression<int>? orgId,
    Expression<String>? seriesName,
    Expression<String>? printHeader,
    Expression<String>? mobileNo,
    Expression<String>? address,
    Expression<String>? gstNo,
  }) {
    return RawValuesInsertable({
      if (seriesId != null) 'series_id': seriesId,
      if (orgId != null) 'org_id': orgId,
      if (seriesName != null) 'series_name': seriesName,
      if (printHeader != null) 'print_header': printHeader,
      if (mobileNo != null) 'mobile_no': mobileNo,
      if (address != null) 'address': address,
      if (gstNo != null) 'gst_no': gstNo,
    });
  }

  SeriesListsCompanion copyWith(
      {Value<int>? seriesId,
      Value<int?>? orgId,
      Value<String?>? seriesName,
      Value<String?>? printHeader,
      Value<String?>? mobileNo,
      Value<String?>? address,
      Value<String?>? gstNo}) {
    return SeriesListsCompanion(
      seriesId: seriesId ?? this.seriesId,
      orgId: orgId ?? this.orgId,
      seriesName: seriesName ?? this.seriesName,
      printHeader: printHeader ?? this.printHeader,
      mobileNo: mobileNo ?? this.mobileNo,
      address: address ?? this.address,
      gstNo: gstNo ?? this.gstNo,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (seriesId.present) {
      map['series_id'] = Variable<int>(seriesId.value);
    }
    if (orgId.present) {
      map['org_id'] = Variable<int>(orgId.value);
    }
    if (seriesName.present) {
      map['series_name'] = Variable<String>(seriesName.value);
    }
    if (printHeader.present) {
      map['print_header'] = Variable<String>(printHeader.value);
    }
    if (mobileNo.present) {
      map['mobile_no'] = Variable<String>(mobileNo.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (gstNo.present) {
      map['gst_no'] = Variable<String>(gstNo.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SeriesListsCompanion(')
          ..write('seriesId: $seriesId, ')
          ..write('orgId: $orgId, ')
          ..write('seriesName: $seriesName, ')
          ..write('printHeader: $printHeader, ')
          ..write('mobileNo: $mobileNo, ')
          ..write('address: $address, ')
          ..write('gstNo: $gstNo')
          ..write(')'))
        .toString();
  }
}

class $StoresTable extends Stores with TableInfo<$StoresTable, Store> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $StoresTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _strIdMeta = const VerificationMeta('strId');
  @override
  late final GeneratedColumn<int> strId = GeneratedColumn<int>(
      'str_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _orgIdMeta = const VerificationMeta('orgId');
  @override
  late final GeneratedColumn<int> orgId = GeneratedColumn<int>(
      'org_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _strNameMeta =
      const VerificationMeta('strName');
  @override
  late final GeneratedColumn<String> strName = GeneratedColumn<String>(
      'str_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _inactiveMeta =
      const VerificationMeta('inactive');
  @override
  late final GeneratedColumn<String> inactive = GeneratedColumn<String>(
      'inactive', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [strId, orgId, strName, inactive];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'stores';
  @override
  VerificationContext validateIntegrity(Insertable<Store> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('str_id')) {
      context.handle(
          _strIdMeta, strId.isAcceptableOrUnknown(data['str_id']!, _strIdMeta));
    }
    if (data.containsKey('org_id')) {
      context.handle(
          _orgIdMeta, orgId.isAcceptableOrUnknown(data['org_id']!, _orgIdMeta));
    }
    if (data.containsKey('str_name')) {
      context.handle(_strNameMeta,
          strName.isAcceptableOrUnknown(data['str_name']!, _strNameMeta));
    }
    if (data.containsKey('inactive')) {
      context.handle(_inactiveMeta,
          inactive.isAcceptableOrUnknown(data['inactive']!, _inactiveMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {strId};
  @override
  Store map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Store(
      strId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}str_id'])!,
      orgId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}org_id']),
      strName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}str_name']),
      inactive: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}inactive']),
    );
  }

  @override
  $StoresTable createAlias(String alias) {
    return $StoresTable(attachedDatabase, alias);
  }
}

class Store extends DataClass implements Insertable<Store> {
  final int strId;
  final int? orgId;
  final String? strName;
  final String? inactive;
  const Store({required this.strId, this.orgId, this.strName, this.inactive});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['str_id'] = Variable<int>(strId);
    if (!nullToAbsent || orgId != null) {
      map['org_id'] = Variable<int>(orgId);
    }
    if (!nullToAbsent || strName != null) {
      map['str_name'] = Variable<String>(strName);
    }
    if (!nullToAbsent || inactive != null) {
      map['inactive'] = Variable<String>(inactive);
    }
    return map;
  }

  StoresCompanion toCompanion(bool nullToAbsent) {
    return StoresCompanion(
      strId: Value(strId),
      orgId:
          orgId == null && nullToAbsent ? const Value.absent() : Value(orgId),
      strName: strName == null && nullToAbsent
          ? const Value.absent()
          : Value(strName),
      inactive: inactive == null && nullToAbsent
          ? const Value.absent()
          : Value(inactive),
    );
  }

  factory Store.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Store(
      strId: serializer.fromJson<int>(json['strId']),
      orgId: serializer.fromJson<int?>(json['orgId']),
      strName: serializer.fromJson<String?>(json['strName']),
      inactive: serializer.fromJson<String?>(json['inactive']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'strId': serializer.toJson<int>(strId),
      'orgId': serializer.toJson<int?>(orgId),
      'strName': serializer.toJson<String?>(strName),
      'inactive': serializer.toJson<String?>(inactive),
    };
  }

  Store copyWith(
          {int? strId,
          Value<int?> orgId = const Value.absent(),
          Value<String?> strName = const Value.absent(),
          Value<String?> inactive = const Value.absent()}) =>
      Store(
        strId: strId ?? this.strId,
        orgId: orgId.present ? orgId.value : this.orgId,
        strName: strName.present ? strName.value : this.strName,
        inactive: inactive.present ? inactive.value : this.inactive,
      );
  Store copyWithCompanion(StoresCompanion data) {
    return Store(
      strId: data.strId.present ? data.strId.value : this.strId,
      orgId: data.orgId.present ? data.orgId.value : this.orgId,
      strName: data.strName.present ? data.strName.value : this.strName,
      inactive: data.inactive.present ? data.inactive.value : this.inactive,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Store(')
          ..write('strId: $strId, ')
          ..write('orgId: $orgId, ')
          ..write('strName: $strName, ')
          ..write('inactive: $inactive')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(strId, orgId, strName, inactive);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Store &&
          other.strId == this.strId &&
          other.orgId == this.orgId &&
          other.strName == this.strName &&
          other.inactive == this.inactive);
}

class StoresCompanion extends UpdateCompanion<Store> {
  final Value<int> strId;
  final Value<int?> orgId;
  final Value<String?> strName;
  final Value<String?> inactive;
  const StoresCompanion({
    this.strId = const Value.absent(),
    this.orgId = const Value.absent(),
    this.strName = const Value.absent(),
    this.inactive = const Value.absent(),
  });
  StoresCompanion.insert({
    this.strId = const Value.absent(),
    this.orgId = const Value.absent(),
    this.strName = const Value.absent(),
    this.inactive = const Value.absent(),
  });
  static Insertable<Store> custom({
    Expression<int>? strId,
    Expression<int>? orgId,
    Expression<String>? strName,
    Expression<String>? inactive,
  }) {
    return RawValuesInsertable({
      if (strId != null) 'str_id': strId,
      if (orgId != null) 'org_id': orgId,
      if (strName != null) 'str_name': strName,
      if (inactive != null) 'inactive': inactive,
    });
  }

  StoresCompanion copyWith(
      {Value<int>? strId,
      Value<int?>? orgId,
      Value<String?>? strName,
      Value<String?>? inactive}) {
    return StoresCompanion(
      strId: strId ?? this.strId,
      orgId: orgId ?? this.orgId,
      strName: strName ?? this.strName,
      inactive: inactive ?? this.inactive,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (strId.present) {
      map['str_id'] = Variable<int>(strId.value);
    }
    if (orgId.present) {
      map['org_id'] = Variable<int>(orgId.value);
    }
    if (strName.present) {
      map['str_name'] = Variable<String>(strName.value);
    }
    if (inactive.present) {
      map['inactive'] = Variable<String>(inactive.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('StoresCompanion(')
          ..write('strId: $strId, ')
          ..write('orgId: $orgId, ')
          ..write('strName: $strName, ')
          ..write('inactive: $inactive')
          ..write(')'))
        .toString();
  }
}

class $FrieghtsTable extends Frieghts with TableInfo<$FrieghtsTable, Frieght> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FrieghtsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _accountCodeMeta =
      const VerificationMeta('accountCode');
  @override
  late final GeneratedColumn<int> accountCode = GeneratedColumn<int>(
      'account_code', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _orgIdMeta = const VerificationMeta('orgId');
  @override
  late final GeneratedColumn<int> orgId = GeneratedColumn<int>(
      'org_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _accountNameMeta =
      const VerificationMeta('accountName');
  @override
  late final GeneratedColumn<String> accountName = GeneratedColumn<String>(
      'account_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [accountCode, orgId, accountName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'frieghts';
  @override
  VerificationContext validateIntegrity(Insertable<Frieght> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('account_code')) {
      context.handle(
          _accountCodeMeta,
          accountCode.isAcceptableOrUnknown(
              data['account_code']!, _accountCodeMeta));
    }
    if (data.containsKey('org_id')) {
      context.handle(
          _orgIdMeta, orgId.isAcceptableOrUnknown(data['org_id']!, _orgIdMeta));
    }
    if (data.containsKey('account_name')) {
      context.handle(
          _accountNameMeta,
          accountName.isAcceptableOrUnknown(
              data['account_name']!, _accountNameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {accountCode};
  @override
  Frieght map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Frieght(
      accountCode: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}account_code'])!,
      orgId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}org_id']),
      accountName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}account_name']),
    );
  }

  @override
  $FrieghtsTable createAlias(String alias) {
    return $FrieghtsTable(attachedDatabase, alias);
  }
}

class Frieght extends DataClass implements Insertable<Frieght> {
  final int accountCode;
  final int? orgId;
  final String? accountName;
  const Frieght({required this.accountCode, this.orgId, this.accountName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['account_code'] = Variable<int>(accountCode);
    if (!nullToAbsent || orgId != null) {
      map['org_id'] = Variable<int>(orgId);
    }
    if (!nullToAbsent || accountName != null) {
      map['account_name'] = Variable<String>(accountName);
    }
    return map;
  }

  FrieghtsCompanion toCompanion(bool nullToAbsent) {
    return FrieghtsCompanion(
      accountCode: Value(accountCode),
      orgId:
          orgId == null && nullToAbsent ? const Value.absent() : Value(orgId),
      accountName: accountName == null && nullToAbsent
          ? const Value.absent()
          : Value(accountName),
    );
  }

  factory Frieght.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Frieght(
      accountCode: serializer.fromJson<int>(json['accountCode']),
      orgId: serializer.fromJson<int?>(json['orgId']),
      accountName: serializer.fromJson<String?>(json['accountName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'accountCode': serializer.toJson<int>(accountCode),
      'orgId': serializer.toJson<int?>(orgId),
      'accountName': serializer.toJson<String?>(accountName),
    };
  }

  Frieght copyWith(
          {int? accountCode,
          Value<int?> orgId = const Value.absent(),
          Value<String?> accountName = const Value.absent()}) =>
      Frieght(
        accountCode: accountCode ?? this.accountCode,
        orgId: orgId.present ? orgId.value : this.orgId,
        accountName: accountName.present ? accountName.value : this.accountName,
      );
  Frieght copyWithCompanion(FrieghtsCompanion data) {
    return Frieght(
      accountCode:
          data.accountCode.present ? data.accountCode.value : this.accountCode,
      orgId: data.orgId.present ? data.orgId.value : this.orgId,
      accountName:
          data.accountName.present ? data.accountName.value : this.accountName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Frieght(')
          ..write('accountCode: $accountCode, ')
          ..write('orgId: $orgId, ')
          ..write('accountName: $accountName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(accountCode, orgId, accountName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Frieght &&
          other.accountCode == this.accountCode &&
          other.orgId == this.orgId &&
          other.accountName == this.accountName);
}

class FrieghtsCompanion extends UpdateCompanion<Frieght> {
  final Value<int> accountCode;
  final Value<int?> orgId;
  final Value<String?> accountName;
  const FrieghtsCompanion({
    this.accountCode = const Value.absent(),
    this.orgId = const Value.absent(),
    this.accountName = const Value.absent(),
  });
  FrieghtsCompanion.insert({
    this.accountCode = const Value.absent(),
    this.orgId = const Value.absent(),
    this.accountName = const Value.absent(),
  });
  static Insertable<Frieght> custom({
    Expression<int>? accountCode,
    Expression<int>? orgId,
    Expression<String>? accountName,
  }) {
    return RawValuesInsertable({
      if (accountCode != null) 'account_code': accountCode,
      if (orgId != null) 'org_id': orgId,
      if (accountName != null) 'account_name': accountName,
    });
  }

  FrieghtsCompanion copyWith(
      {Value<int>? accountCode,
      Value<int?>? orgId,
      Value<String?>? accountName}) {
    return FrieghtsCompanion(
      accountCode: accountCode ?? this.accountCode,
      orgId: orgId ?? this.orgId,
      accountName: accountName ?? this.accountName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (accountCode.present) {
      map['account_code'] = Variable<int>(accountCode.value);
    }
    if (orgId.present) {
      map['org_id'] = Variable<int>(orgId.value);
    }
    if (accountName.present) {
      map['account_name'] = Variable<String>(accountName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FrieghtsCompanion(')
          ..write('accountCode: $accountCode, ')
          ..write('orgId: $orgId, ')
          ..write('accountName: $accountName')
          ..write(')'))
        .toString();
  }
}

class $PaymentTermsTable extends PaymentTerms
    with TableInfo<$PaymentTermsTable, PaymentTerm> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PaymentTermsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _paymentIdMeta =
      const VerificationMeta('paymentId');
  @override
  late final GeneratedColumn<int> paymentId = GeneratedColumn<int>(
      'payment_id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _orgIdMeta = const VerificationMeta('orgId');
  @override
  late final GeneratedColumn<int> orgId = GeneratedColumn<int>(
      'org_id', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _paymentCodeMeta =
      const VerificationMeta('paymentCode');
  @override
  late final GeneratedColumn<String> paymentCode = GeneratedColumn<String>(
      'payment_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _daysMeta = const VerificationMeta('days');
  @override
  late final GeneratedColumn<int> days = GeneratedColumn<int>(
      'days', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _maximumCreditMeta =
      const VerificationMeta('maximumCredit');
  @override
  late final GeneratedColumn<int> maximumCredit = GeneratedColumn<int>(
      'maximum_credit', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _discountPercentMeta =
      const VerificationMeta('discountPercent');
  @override
  late final GeneratedColumn<int> discountPercent = GeneratedColumn<int>(
      'discount_percent', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _priceListMeta =
      const VerificationMeta('priceList');
  @override
  late final GeneratedColumn<int> priceList = GeneratedColumn<int>(
      'price_list', aliasedName, true,
      type: DriftSqlType.int, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        paymentId,
        orgId,
        paymentCode,
        days,
        maximumCredit,
        discountPercent,
        priceList
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'payment_terms';
  @override
  VerificationContext validateIntegrity(Insertable<PaymentTerm> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('payment_id')) {
      context.handle(_paymentIdMeta,
          paymentId.isAcceptableOrUnknown(data['payment_id']!, _paymentIdMeta));
    }
    if (data.containsKey('org_id')) {
      context.handle(
          _orgIdMeta, orgId.isAcceptableOrUnknown(data['org_id']!, _orgIdMeta));
    }
    if (data.containsKey('payment_code')) {
      context.handle(
          _paymentCodeMeta,
          paymentCode.isAcceptableOrUnknown(
              data['payment_code']!, _paymentCodeMeta));
    }
    if (data.containsKey('days')) {
      context.handle(
          _daysMeta, days.isAcceptableOrUnknown(data['days']!, _daysMeta));
    }
    if (data.containsKey('maximum_credit')) {
      context.handle(
          _maximumCreditMeta,
          maximumCredit.isAcceptableOrUnknown(
              data['maximum_credit']!, _maximumCreditMeta));
    }
    if (data.containsKey('discount_percent')) {
      context.handle(
          _discountPercentMeta,
          discountPercent.isAcceptableOrUnknown(
              data['discount_percent']!, _discountPercentMeta));
    }
    if (data.containsKey('price_list')) {
      context.handle(_priceListMeta,
          priceList.isAcceptableOrUnknown(data['price_list']!, _priceListMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {paymentId};
  @override
  PaymentTerm map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PaymentTerm(
      paymentId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}payment_id'])!,
      orgId: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}org_id']),
      paymentCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payment_code']),
      days: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}days']),
      maximumCredit: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}maximum_credit']),
      discountPercent: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}discount_percent']),
      priceList: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}price_list']),
    );
  }

  @override
  $PaymentTermsTable createAlias(String alias) {
    return $PaymentTermsTable(attachedDatabase, alias);
  }
}

class PaymentTerm extends DataClass implements Insertable<PaymentTerm> {
  final int paymentId;
  final int? orgId;
  final String? paymentCode;
  final int? days;
  final int? maximumCredit;
  final int? discountPercent;
  final int? priceList;
  const PaymentTerm(
      {required this.paymentId,
      this.orgId,
      this.paymentCode,
      this.days,
      this.maximumCredit,
      this.discountPercent,
      this.priceList});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['payment_id'] = Variable<int>(paymentId);
    if (!nullToAbsent || orgId != null) {
      map['org_id'] = Variable<int>(orgId);
    }
    if (!nullToAbsent || paymentCode != null) {
      map['payment_code'] = Variable<String>(paymentCode);
    }
    if (!nullToAbsent || days != null) {
      map['days'] = Variable<int>(days);
    }
    if (!nullToAbsent || maximumCredit != null) {
      map['maximum_credit'] = Variable<int>(maximumCredit);
    }
    if (!nullToAbsent || discountPercent != null) {
      map['discount_percent'] = Variable<int>(discountPercent);
    }
    if (!nullToAbsent || priceList != null) {
      map['price_list'] = Variable<int>(priceList);
    }
    return map;
  }

  PaymentTermsCompanion toCompanion(bool nullToAbsent) {
    return PaymentTermsCompanion(
      paymentId: Value(paymentId),
      orgId:
          orgId == null && nullToAbsent ? const Value.absent() : Value(orgId),
      paymentCode: paymentCode == null && nullToAbsent
          ? const Value.absent()
          : Value(paymentCode),
      days: days == null && nullToAbsent ? const Value.absent() : Value(days),
      maximumCredit: maximumCredit == null && nullToAbsent
          ? const Value.absent()
          : Value(maximumCredit),
      discountPercent: discountPercent == null && nullToAbsent
          ? const Value.absent()
          : Value(discountPercent),
      priceList: priceList == null && nullToAbsent
          ? const Value.absent()
          : Value(priceList),
    );
  }

  factory PaymentTerm.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PaymentTerm(
      paymentId: serializer.fromJson<int>(json['paymentId']),
      orgId: serializer.fromJson<int?>(json['orgId']),
      paymentCode: serializer.fromJson<String?>(json['paymentCode']),
      days: serializer.fromJson<int?>(json['days']),
      maximumCredit: serializer.fromJson<int?>(json['maximumCredit']),
      discountPercent: serializer.fromJson<int?>(json['discountPercent']),
      priceList: serializer.fromJson<int?>(json['priceList']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'paymentId': serializer.toJson<int>(paymentId),
      'orgId': serializer.toJson<int?>(orgId),
      'paymentCode': serializer.toJson<String?>(paymentCode),
      'days': serializer.toJson<int?>(days),
      'maximumCredit': serializer.toJson<int?>(maximumCredit),
      'discountPercent': serializer.toJson<int?>(discountPercent),
      'priceList': serializer.toJson<int?>(priceList),
    };
  }

  PaymentTerm copyWith(
          {int? paymentId,
          Value<int?> orgId = const Value.absent(),
          Value<String?> paymentCode = const Value.absent(),
          Value<int?> days = const Value.absent(),
          Value<int?> maximumCredit = const Value.absent(),
          Value<int?> discountPercent = const Value.absent(),
          Value<int?> priceList = const Value.absent()}) =>
      PaymentTerm(
        paymentId: paymentId ?? this.paymentId,
        orgId: orgId.present ? orgId.value : this.orgId,
        paymentCode: paymentCode.present ? paymentCode.value : this.paymentCode,
        days: days.present ? days.value : this.days,
        maximumCredit:
            maximumCredit.present ? maximumCredit.value : this.maximumCredit,
        discountPercent: discountPercent.present
            ? discountPercent.value
            : this.discountPercent,
        priceList: priceList.present ? priceList.value : this.priceList,
      );
  PaymentTerm copyWithCompanion(PaymentTermsCompanion data) {
    return PaymentTerm(
      paymentId: data.paymentId.present ? data.paymentId.value : this.paymentId,
      orgId: data.orgId.present ? data.orgId.value : this.orgId,
      paymentCode:
          data.paymentCode.present ? data.paymentCode.value : this.paymentCode,
      days: data.days.present ? data.days.value : this.days,
      maximumCredit: data.maximumCredit.present
          ? data.maximumCredit.value
          : this.maximumCredit,
      discountPercent: data.discountPercent.present
          ? data.discountPercent.value
          : this.discountPercent,
      priceList: data.priceList.present ? data.priceList.value : this.priceList,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PaymentTerm(')
          ..write('paymentId: $paymentId, ')
          ..write('orgId: $orgId, ')
          ..write('paymentCode: $paymentCode, ')
          ..write('days: $days, ')
          ..write('maximumCredit: $maximumCredit, ')
          ..write('discountPercent: $discountPercent, ')
          ..write('priceList: $priceList')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(paymentId, orgId, paymentCode, days,
      maximumCredit, discountPercent, priceList);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PaymentTerm &&
          other.paymentId == this.paymentId &&
          other.orgId == this.orgId &&
          other.paymentCode == this.paymentCode &&
          other.days == this.days &&
          other.maximumCredit == this.maximumCredit &&
          other.discountPercent == this.discountPercent &&
          other.priceList == this.priceList);
}

class PaymentTermsCompanion extends UpdateCompanion<PaymentTerm> {
  final Value<int> paymentId;
  final Value<int?> orgId;
  final Value<String?> paymentCode;
  final Value<int?> days;
  final Value<int?> maximumCredit;
  final Value<int?> discountPercent;
  final Value<int?> priceList;
  const PaymentTermsCompanion({
    this.paymentId = const Value.absent(),
    this.orgId = const Value.absent(),
    this.paymentCode = const Value.absent(),
    this.days = const Value.absent(),
    this.maximumCredit = const Value.absent(),
    this.discountPercent = const Value.absent(),
    this.priceList = const Value.absent(),
  });
  PaymentTermsCompanion.insert({
    this.paymentId = const Value.absent(),
    this.orgId = const Value.absent(),
    this.paymentCode = const Value.absent(),
    this.days = const Value.absent(),
    this.maximumCredit = const Value.absent(),
    this.discountPercent = const Value.absent(),
    this.priceList = const Value.absent(),
  });
  static Insertable<PaymentTerm> custom({
    Expression<int>? paymentId,
    Expression<int>? orgId,
    Expression<String>? paymentCode,
    Expression<int>? days,
    Expression<int>? maximumCredit,
    Expression<int>? discountPercent,
    Expression<int>? priceList,
  }) {
    return RawValuesInsertable({
      if (paymentId != null) 'payment_id': paymentId,
      if (orgId != null) 'org_id': orgId,
      if (paymentCode != null) 'payment_code': paymentCode,
      if (days != null) 'days': days,
      if (maximumCredit != null) 'maximum_credit': maximumCredit,
      if (discountPercent != null) 'discount_percent': discountPercent,
      if (priceList != null) 'price_list': priceList,
    });
  }

  PaymentTermsCompanion copyWith(
      {Value<int>? paymentId,
      Value<int?>? orgId,
      Value<String?>? paymentCode,
      Value<int?>? days,
      Value<int?>? maximumCredit,
      Value<int?>? discountPercent,
      Value<int?>? priceList}) {
    return PaymentTermsCompanion(
      paymentId: paymentId ?? this.paymentId,
      orgId: orgId ?? this.orgId,
      paymentCode: paymentCode ?? this.paymentCode,
      days: days ?? this.days,
      maximumCredit: maximumCredit ?? this.maximumCredit,
      discountPercent: discountPercent ?? this.discountPercent,
      priceList: priceList ?? this.priceList,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (paymentId.present) {
      map['payment_id'] = Variable<int>(paymentId.value);
    }
    if (orgId.present) {
      map['org_id'] = Variable<int>(orgId.value);
    }
    if (paymentCode.present) {
      map['payment_code'] = Variable<String>(paymentCode.value);
    }
    if (days.present) {
      map['days'] = Variable<int>(days.value);
    }
    if (maximumCredit.present) {
      map['maximum_credit'] = Variable<int>(maximumCredit.value);
    }
    if (discountPercent.present) {
      map['discount_percent'] = Variable<int>(discountPercent.value);
    }
    if (priceList.present) {
      map['price_list'] = Variable<int>(priceList.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PaymentTermsCompanion(')
          ..write('paymentId: $paymentId, ')
          ..write('orgId: $orgId, ')
          ..write('paymentCode: $paymentCode, ')
          ..write('days: $days, ')
          ..write('maximumCredit: $maximumCredit, ')
          ..write('discountPercent: $discountPercent, ')
          ..write('priceList: $priceList')
          ..write(')'))
        .toString();
  }
}

class $ModeOfDispatchesTable extends ModeOfDispatches
    with TableInfo<$ModeOfDispatchesTable, ModeOfDispatche> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ModeOfDispatchesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _nameMeta = const VerificationMeta('name');
  @override
  late final GeneratedColumn<String> name = GeneratedColumn<String>(
      'name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [id, name];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'mode_of_dispatches';
  @override
  VerificationContext validateIntegrity(Insertable<ModeOfDispatche> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('name')) {
      context.handle(
          _nameMeta, name.isAcceptableOrUnknown(data['name']!, _nameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ModeOfDispatche map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ModeOfDispatche(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      name: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}name']),
    );
  }

  @override
  $ModeOfDispatchesTable createAlias(String alias) {
    return $ModeOfDispatchesTable(attachedDatabase, alias);
  }
}

class ModeOfDispatche extends DataClass implements Insertable<ModeOfDispatche> {
  final int id;
  final String? name;
  const ModeOfDispatche({required this.id, this.name});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || name != null) {
      map['name'] = Variable<String>(name);
    }
    return map;
  }

  ModeOfDispatchesCompanion toCompanion(bool nullToAbsent) {
    return ModeOfDispatchesCompanion(
      id: Value(id),
      name: name == null && nullToAbsent ? const Value.absent() : Value(name),
    );
  }

  factory ModeOfDispatche.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ModeOfDispatche(
      id: serializer.fromJson<int>(json['id']),
      name: serializer.fromJson<String?>(json['name']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'name': serializer.toJson<String?>(name),
    };
  }

  ModeOfDispatche copyWith(
          {int? id, Value<String?> name = const Value.absent()}) =>
      ModeOfDispatche(
        id: id ?? this.id,
        name: name.present ? name.value : this.name,
      );
  ModeOfDispatche copyWithCompanion(ModeOfDispatchesCompanion data) {
    return ModeOfDispatche(
      id: data.id.present ? data.id.value : this.id,
      name: data.name.present ? data.name.value : this.name,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ModeOfDispatche(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, name);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ModeOfDispatche &&
          other.id == this.id &&
          other.name == this.name);
}

class ModeOfDispatchesCompanion extends UpdateCompanion<ModeOfDispatche> {
  final Value<int> id;
  final Value<String?> name;
  const ModeOfDispatchesCompanion({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  ModeOfDispatchesCompanion.insert({
    this.id = const Value.absent(),
    this.name = const Value.absent(),
  });
  static Insertable<ModeOfDispatche> custom({
    Expression<int>? id,
    Expression<String>? name,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (name != null) 'name': name,
    });
  }

  ModeOfDispatchesCompanion copyWith({Value<int>? id, Value<String?>? name}) {
    return ModeOfDispatchesCompanion(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (name.present) {
      map['name'] = Variable<String>(name.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ModeOfDispatchesCompanion(')
          ..write('id: $id, ')
          ..write('name: $name')
          ..write(')'))
        .toString();
  }
}

class $PriceListsTable extends PriceLists
    with TableInfo<$PriceListsTable, PriceList> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PriceListsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _priceListMeta =
      const VerificationMeta('priceList');
  @override
  late final GeneratedColumn<int> priceList = GeneratedColumn<int>(
      'price_list', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _priceListNameMeta =
      const VerificationMeta('priceListName');
  @override
  late final GeneratedColumn<String> priceListName = GeneratedColumn<String>(
      'price_list_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [priceList, priceListName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'price_lists';
  @override
  VerificationContext validateIntegrity(Insertable<PriceList> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('price_list')) {
      context.handle(_priceListMeta,
          priceList.isAcceptableOrUnknown(data['price_list']!, _priceListMeta));
    }
    if (data.containsKey('price_list_name')) {
      context.handle(
          _priceListNameMeta,
          priceListName.isAcceptableOrUnknown(
              data['price_list_name']!, _priceListNameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {priceList};
  @override
  PriceList map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PriceList(
      priceList: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}price_list'])!,
      priceListName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}price_list_name']),
    );
  }

  @override
  $PriceListsTable createAlias(String alias) {
    return $PriceListsTable(attachedDatabase, alias);
  }
}

class PriceList extends DataClass implements Insertable<PriceList> {
  final int priceList;
  final String? priceListName;
  const PriceList({required this.priceList, this.priceListName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['price_list'] = Variable<int>(priceList);
    if (!nullToAbsent || priceListName != null) {
      map['price_list_name'] = Variable<String>(priceListName);
    }
    return map;
  }

  PriceListsCompanion toCompanion(bool nullToAbsent) {
    return PriceListsCompanion(
      priceList: Value(priceList),
      priceListName: priceListName == null && nullToAbsent
          ? const Value.absent()
          : Value(priceListName),
    );
  }

  factory PriceList.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PriceList(
      priceList: serializer.fromJson<int>(json['priceList']),
      priceListName: serializer.fromJson<String?>(json['priceListName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'priceList': serializer.toJson<int>(priceList),
      'priceListName': serializer.toJson<String?>(priceListName),
    };
  }

  PriceList copyWith(
          {int? priceList,
          Value<String?> priceListName = const Value.absent()}) =>
      PriceList(
        priceList: priceList ?? this.priceList,
        priceListName:
            priceListName.present ? priceListName.value : this.priceListName,
      );
  PriceList copyWithCompanion(PriceListsCompanion data) {
    return PriceList(
      priceList: data.priceList.present ? data.priceList.value : this.priceList,
      priceListName: data.priceListName.present
          ? data.priceListName.value
          : this.priceListName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PriceList(')
          ..write('priceList: $priceList, ')
          ..write('priceListName: $priceListName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(priceList, priceListName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PriceList &&
          other.priceList == this.priceList &&
          other.priceListName == this.priceListName);
}

class PriceListsCompanion extends UpdateCompanion<PriceList> {
  final Value<int> priceList;
  final Value<String?> priceListName;
  const PriceListsCompanion({
    this.priceList = const Value.absent(),
    this.priceListName = const Value.absent(),
  });
  PriceListsCompanion.insert({
    this.priceList = const Value.absent(),
    this.priceListName = const Value.absent(),
  });
  static Insertable<PriceList> custom({
    Expression<int>? priceList,
    Expression<String>? priceListName,
  }) {
    return RawValuesInsertable({
      if (priceList != null) 'price_list': priceList,
      if (priceListName != null) 'price_list_name': priceListName,
    });
  }

  PriceListsCompanion copyWith(
      {Value<int>? priceList, Value<String?>? priceListName}) {
    return PriceListsCompanion(
      priceList: priceList ?? this.priceList,
      priceListName: priceListName ?? this.priceListName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (priceList.present) {
      map['price_list'] = Variable<int>(priceList.value);
    }
    if (priceListName.present) {
      map['price_list_name'] = Variable<String>(priceListName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PriceListsCompanion(')
          ..write('priceList: $priceList, ')
          ..write('priceListName: $priceListName')
          ..write(')'))
        .toString();
  }
}

class $SalesPersonsTable extends SalesPersons
    with TableInfo<$SalesPersonsTable, SalesPerson> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SalesPersonsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _salesPersonMeta =
      const VerificationMeta('salesPerson');
  @override
  late final GeneratedColumn<int> salesPerson = GeneratedColumn<int>(
      'sales_person', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: false);
  static const VerificationMeta _salesPersonNameMeta =
      const VerificationMeta('salesPersonName');
  @override
  late final GeneratedColumn<String> salesPersonName = GeneratedColumn<String>(
      'sales_person_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [salesPerson, salesPersonName];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sales_persons';
  @override
  VerificationContext validateIntegrity(Insertable<SalesPerson> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('sales_person')) {
      context.handle(
          _salesPersonMeta,
          salesPerson.isAcceptableOrUnknown(
              data['sales_person']!, _salesPersonMeta));
    }
    if (data.containsKey('sales_person_name')) {
      context.handle(
          _salesPersonNameMeta,
          salesPersonName.isAcceptableOrUnknown(
              data['sales_person_name']!, _salesPersonNameMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {salesPerson};
  @override
  SalesPerson map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SalesPerson(
      salesPerson: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}sales_person'])!,
      salesPersonName: attachedDatabase.typeMapping.read(
          DriftSqlType.string, data['${effectivePrefix}sales_person_name']),
    );
  }

  @override
  $SalesPersonsTable createAlias(String alias) {
    return $SalesPersonsTable(attachedDatabase, alias);
  }
}

class SalesPerson extends DataClass implements Insertable<SalesPerson> {
  final int salesPerson;
  final String? salesPersonName;
  const SalesPerson({required this.salesPerson, this.salesPersonName});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['sales_person'] = Variable<int>(salesPerson);
    if (!nullToAbsent || salesPersonName != null) {
      map['sales_person_name'] = Variable<String>(salesPersonName);
    }
    return map;
  }

  SalesPersonsCompanion toCompanion(bool nullToAbsent) {
    return SalesPersonsCompanion(
      salesPerson: Value(salesPerson),
      salesPersonName: salesPersonName == null && nullToAbsent
          ? const Value.absent()
          : Value(salesPersonName),
    );
  }

  factory SalesPerson.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SalesPerson(
      salesPerson: serializer.fromJson<int>(json['salesPerson']),
      salesPersonName: serializer.fromJson<String?>(json['salesPersonName']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'salesPerson': serializer.toJson<int>(salesPerson),
      'salesPersonName': serializer.toJson<String?>(salesPersonName),
    };
  }

  SalesPerson copyWith(
          {int? salesPerson,
          Value<String?> salesPersonName = const Value.absent()}) =>
      SalesPerson(
        salesPerson: salesPerson ?? this.salesPerson,
        salesPersonName: salesPersonName.present
            ? salesPersonName.value
            : this.salesPersonName,
      );
  SalesPerson copyWithCompanion(SalesPersonsCompanion data) {
    return SalesPerson(
      salesPerson:
          data.salesPerson.present ? data.salesPerson.value : this.salesPerson,
      salesPersonName: data.salesPersonName.present
          ? data.salesPersonName.value
          : this.salesPersonName,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SalesPerson(')
          ..write('salesPerson: $salesPerson, ')
          ..write('salesPersonName: $salesPersonName')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(salesPerson, salesPersonName);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SalesPerson &&
          other.salesPerson == this.salesPerson &&
          other.salesPersonName == this.salesPersonName);
}

class SalesPersonsCompanion extends UpdateCompanion<SalesPerson> {
  final Value<int> salesPerson;
  final Value<String?> salesPersonName;
  const SalesPersonsCompanion({
    this.salesPerson = const Value.absent(),
    this.salesPersonName = const Value.absent(),
  });
  SalesPersonsCompanion.insert({
    this.salesPerson = const Value.absent(),
    this.salesPersonName = const Value.absent(),
  });
  static Insertable<SalesPerson> custom({
    Expression<int>? salesPerson,
    Expression<String>? salesPersonName,
  }) {
    return RawValuesInsertable({
      if (salesPerson != null) 'sales_person': salesPerson,
      if (salesPersonName != null) 'sales_person_name': salesPersonName,
    });
  }

  SalesPersonsCompanion copyWith(
      {Value<int>? salesPerson, Value<String?>? salesPersonName}) {
    return SalesPersonsCompanion(
      salesPerson: salesPerson ?? this.salesPerson,
      salesPersonName: salesPersonName ?? this.salesPersonName,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (salesPerson.present) {
      map['sales_person'] = Variable<int>(salesPerson.value);
    }
    if (salesPersonName.present) {
      map['sales_person_name'] = Variable<String>(salesPersonName.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SalesPersonsCompanion(')
          ..write('salesPerson: $salesPerson, ')
          ..write('salesPersonName: $salesPersonName')
          ..write(')'))
        .toString();
  }
}

class $ItemUomsTable extends ItemUoms with TableInfo<$ItemUomsTable, ItemUom> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemUomsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _itemNoMeta = const VerificationMeta('itemNo');
  @override
  late final GeneratedColumn<String> itemNo = GeneratedColumn<String>(
      'item_no', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _uomMeta = const VerificationMeta('uom');
  @override
  late final GeneratedColumn<String> uom = GeneratedColumn<String>(
      'uom', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _discountMeta =
      const VerificationMeta('discount');
  @override
  late final GeneratedColumn<int> discount = GeneratedColumn<int>(
      'discount', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _quantityMeta =
      const VerificationMeta('quantity');
  @override
  late final GeneratedColumn<double> quantity = GeneratedColumn<double>(
      'quantity', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(1));
  @override
  List<GeneratedColumn> get $columns =>
      [id, itemNo, uom, price, discount, quantity];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_uoms';
  @override
  VerificationContext validateIntegrity(Insertable<ItemUom> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('item_no')) {
      context.handle(_itemNoMeta,
          itemNo.isAcceptableOrUnknown(data['item_no']!, _itemNoMeta));
    } else if (isInserting) {
      context.missing(_itemNoMeta);
    }
    if (data.containsKey('uom')) {
      context.handle(
          _uomMeta, uom.isAcceptableOrUnknown(data['uom']!, _uomMeta));
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    }
    if (data.containsKey('discount')) {
      context.handle(_discountMeta,
          discount.isAcceptableOrUnknown(data['discount']!, _discountMeta));
    }
    if (data.containsKey('quantity')) {
      context.handle(_quantityMeta,
          quantity.isAcceptableOrUnknown(data['quantity']!, _quantityMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemUom map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemUom(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      itemNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_no'])!,
      uom: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}uom']),
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      discount: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}discount'])!,
      quantity: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}quantity'])!,
    );
  }

  @override
  $ItemUomsTable createAlias(String alias) {
    return $ItemUomsTable(attachedDatabase, alias);
  }
}

class ItemUom extends DataClass implements Insertable<ItemUom> {
  final int id;
  final String itemNo;
  final String? uom;
  final double price;
  final int discount;
  final double quantity;
  const ItemUom(
      {required this.id,
      required this.itemNo,
      this.uom,
      required this.price,
      required this.discount,
      required this.quantity});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['item_no'] = Variable<String>(itemNo);
    if (!nullToAbsent || uom != null) {
      map['uom'] = Variable<String>(uom);
    }
    map['price'] = Variable<double>(price);
    map['discount'] = Variable<int>(discount);
    map['quantity'] = Variable<double>(quantity);
    return map;
  }

  ItemUomsCompanion toCompanion(bool nullToAbsent) {
    return ItemUomsCompanion(
      id: Value(id),
      itemNo: Value(itemNo),
      uom: uom == null && nullToAbsent ? const Value.absent() : Value(uom),
      price: Value(price),
      discount: Value(discount),
      quantity: Value(quantity),
    );
  }

  factory ItemUom.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemUom(
      id: serializer.fromJson<int>(json['id']),
      itemNo: serializer.fromJson<String>(json['itemNo']),
      uom: serializer.fromJson<String?>(json['uom']),
      price: serializer.fromJson<double>(json['price']),
      discount: serializer.fromJson<int>(json['discount']),
      quantity: serializer.fromJson<double>(json['quantity']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'itemNo': serializer.toJson<String>(itemNo),
      'uom': serializer.toJson<String?>(uom),
      'price': serializer.toJson<double>(price),
      'discount': serializer.toJson<int>(discount),
      'quantity': serializer.toJson<double>(quantity),
    };
  }

  ItemUom copyWith(
          {int? id,
          String? itemNo,
          Value<String?> uom = const Value.absent(),
          double? price,
          int? discount,
          double? quantity}) =>
      ItemUom(
        id: id ?? this.id,
        itemNo: itemNo ?? this.itemNo,
        uom: uom.present ? uom.value : this.uom,
        price: price ?? this.price,
        discount: discount ?? this.discount,
        quantity: quantity ?? this.quantity,
      );
  ItemUom copyWithCompanion(ItemUomsCompanion data) {
    return ItemUom(
      id: data.id.present ? data.id.value : this.id,
      itemNo: data.itemNo.present ? data.itemNo.value : this.itemNo,
      uom: data.uom.present ? data.uom.value : this.uom,
      price: data.price.present ? data.price.value : this.price,
      discount: data.discount.present ? data.discount.value : this.discount,
      quantity: data.quantity.present ? data.quantity.value : this.quantity,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItemUom(')
          ..write('id: $id, ')
          ..write('itemNo: $itemNo, ')
          ..write('uom: $uom, ')
          ..write('price: $price, ')
          ..write('discount: $discount, ')
          ..write('quantity: $quantity')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, itemNo, uom, price, discount, quantity);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemUom &&
          other.id == this.id &&
          other.itemNo == this.itemNo &&
          other.uom == this.uom &&
          other.price == this.price &&
          other.discount == this.discount &&
          other.quantity == this.quantity);
}

class ItemUomsCompanion extends UpdateCompanion<ItemUom> {
  final Value<int> id;
  final Value<String> itemNo;
  final Value<String?> uom;
  final Value<double> price;
  final Value<int> discount;
  final Value<double> quantity;
  const ItemUomsCompanion({
    this.id = const Value.absent(),
    this.itemNo = const Value.absent(),
    this.uom = const Value.absent(),
    this.price = const Value.absent(),
    this.discount = const Value.absent(),
    this.quantity = const Value.absent(),
  });
  ItemUomsCompanion.insert({
    this.id = const Value.absent(),
    required String itemNo,
    this.uom = const Value.absent(),
    this.price = const Value.absent(),
    this.discount = const Value.absent(),
    this.quantity = const Value.absent(),
  }) : itemNo = Value(itemNo);
  static Insertable<ItemUom> custom({
    Expression<int>? id,
    Expression<String>? itemNo,
    Expression<String>? uom,
    Expression<double>? price,
    Expression<int>? discount,
    Expression<double>? quantity,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemNo != null) 'item_no': itemNo,
      if (uom != null) 'uom': uom,
      if (price != null) 'price': price,
      if (discount != null) 'discount': discount,
      if (quantity != null) 'quantity': quantity,
    });
  }

  ItemUomsCompanion copyWith(
      {Value<int>? id,
      Value<String>? itemNo,
      Value<String?>? uom,
      Value<double>? price,
      Value<int>? discount,
      Value<double>? quantity}) {
    return ItemUomsCompanion(
      id: id ?? this.id,
      itemNo: itemNo ?? this.itemNo,
      uom: uom ?? this.uom,
      price: price ?? this.price,
      discount: discount ?? this.discount,
      quantity: quantity ?? this.quantity,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemNo.present) {
      map['item_no'] = Variable<String>(itemNo.value);
    }
    if (uom.present) {
      map['uom'] = Variable<String>(uom.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (discount.present) {
      map['discount'] = Variable<int>(discount.value);
    }
    if (quantity.present) {
      map['quantity'] = Variable<double>(quantity.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemUomsCompanion(')
          ..write('id: $id, ')
          ..write('itemNo: $itemNo, ')
          ..write('uom: $uom, ')
          ..write('price: $price, ')
          ..write('discount: $discount, ')
          ..write('quantity: $quantity')
          ..write(')'))
        .toString();
  }
}

class $ItemBatchesTable extends ItemBatches
    with TableInfo<$ItemBatchesTable, ItemBatche> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ItemBatchesTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _itemNoMeta = const VerificationMeta('itemNo');
  @override
  late final GeneratedColumn<String> itemNo = GeneratedColumn<String>(
      'item_no', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _batchCodeMeta =
      const VerificationMeta('batchCode');
  @override
  late final GeneratedColumn<String> batchCode = GeneratedColumn<String>(
      'batch_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _stockMeta = const VerificationMeta('stock');
  @override
  late final GeneratedColumn<double> stock = GeneratedColumn<double>(
      'stock', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _expDateMeta =
      const VerificationMeta('expDate');
  @override
  late final GeneratedColumn<String> expDate = GeneratedColumn<String>(
      'exp_date', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _barcodeMeta =
      const VerificationMeta('barcode');
  @override
  late final GeneratedColumn<String> barcode = GeneratedColumn<String>(
      'barcode', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns =>
      [id, itemNo, batchCode, stock, expDate, barcode];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'item_batches';
  @override
  VerificationContext validateIntegrity(Insertable<ItemBatche> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('item_no')) {
      context.handle(_itemNoMeta,
          itemNo.isAcceptableOrUnknown(data['item_no']!, _itemNoMeta));
    } else if (isInserting) {
      context.missing(_itemNoMeta);
    }
    if (data.containsKey('batch_code')) {
      context.handle(_batchCodeMeta,
          batchCode.isAcceptableOrUnknown(data['batch_code']!, _batchCodeMeta));
    }
    if (data.containsKey('stock')) {
      context.handle(
          _stockMeta, stock.isAcceptableOrUnknown(data['stock']!, _stockMeta));
    }
    if (data.containsKey('exp_date')) {
      context.handle(_expDateMeta,
          expDate.isAcceptableOrUnknown(data['exp_date']!, _expDateMeta));
    }
    if (data.containsKey('barcode')) {
      context.handle(_barcodeMeta,
          barcode.isAcceptableOrUnknown(data['barcode']!, _barcodeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  ItemBatche map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return ItemBatche(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      itemNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}item_no'])!,
      batchCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}batch_code']),
      stock: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}stock'])!,
      expDate: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}exp_date']),
      barcode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}barcode']),
    );
  }

  @override
  $ItemBatchesTable createAlias(String alias) {
    return $ItemBatchesTable(attachedDatabase, alias);
  }
}

class ItemBatche extends DataClass implements Insertable<ItemBatche> {
  final int id;
  final String itemNo;
  final String? batchCode;
  final double stock;
  final String? expDate;
  final String? barcode;
  const ItemBatche(
      {required this.id,
      required this.itemNo,
      this.batchCode,
      required this.stock,
      this.expDate,
      this.barcode});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['item_no'] = Variable<String>(itemNo);
    if (!nullToAbsent || batchCode != null) {
      map['batch_code'] = Variable<String>(batchCode);
    }
    map['stock'] = Variable<double>(stock);
    if (!nullToAbsent || expDate != null) {
      map['exp_date'] = Variable<String>(expDate);
    }
    if (!nullToAbsent || barcode != null) {
      map['barcode'] = Variable<String>(barcode);
    }
    return map;
  }

  ItemBatchesCompanion toCompanion(bool nullToAbsent) {
    return ItemBatchesCompanion(
      id: Value(id),
      itemNo: Value(itemNo),
      batchCode: batchCode == null && nullToAbsent
          ? const Value.absent()
          : Value(batchCode),
      stock: Value(stock),
      expDate: expDate == null && nullToAbsent
          ? const Value.absent()
          : Value(expDate),
      barcode: barcode == null && nullToAbsent
          ? const Value.absent()
          : Value(barcode),
    );
  }

  factory ItemBatche.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return ItemBatche(
      id: serializer.fromJson<int>(json['id']),
      itemNo: serializer.fromJson<String>(json['itemNo']),
      batchCode: serializer.fromJson<String?>(json['batchCode']),
      stock: serializer.fromJson<double>(json['stock']),
      expDate: serializer.fromJson<String?>(json['expDate']),
      barcode: serializer.fromJson<String?>(json['barcode']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'itemNo': serializer.toJson<String>(itemNo),
      'batchCode': serializer.toJson<String?>(batchCode),
      'stock': serializer.toJson<double>(stock),
      'expDate': serializer.toJson<String?>(expDate),
      'barcode': serializer.toJson<String?>(barcode),
    };
  }

  ItemBatche copyWith(
          {int? id,
          String? itemNo,
          Value<String?> batchCode = const Value.absent(),
          double? stock,
          Value<String?> expDate = const Value.absent(),
          Value<String?> barcode = const Value.absent()}) =>
      ItemBatche(
        id: id ?? this.id,
        itemNo: itemNo ?? this.itemNo,
        batchCode: batchCode.present ? batchCode.value : this.batchCode,
        stock: stock ?? this.stock,
        expDate: expDate.present ? expDate.value : this.expDate,
        barcode: barcode.present ? barcode.value : this.barcode,
      );
  ItemBatche copyWithCompanion(ItemBatchesCompanion data) {
    return ItemBatche(
      id: data.id.present ? data.id.value : this.id,
      itemNo: data.itemNo.present ? data.itemNo.value : this.itemNo,
      batchCode: data.batchCode.present ? data.batchCode.value : this.batchCode,
      stock: data.stock.present ? data.stock.value : this.stock,
      expDate: data.expDate.present ? data.expDate.value : this.expDate,
      barcode: data.barcode.present ? data.barcode.value : this.barcode,
    );
  }

  @override
  String toString() {
    return (StringBuffer('ItemBatche(')
          ..write('id: $id, ')
          ..write('itemNo: $itemNo, ')
          ..write('batchCode: $batchCode, ')
          ..write('stock: $stock, ')
          ..write('expDate: $expDate, ')
          ..write('barcode: $barcode')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, itemNo, batchCode, stock, expDate, barcode);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is ItemBatche &&
          other.id == this.id &&
          other.itemNo == this.itemNo &&
          other.batchCode == this.batchCode &&
          other.stock == this.stock &&
          other.expDate == this.expDate &&
          other.barcode == this.barcode);
}

class ItemBatchesCompanion extends UpdateCompanion<ItemBatche> {
  final Value<int> id;
  final Value<String> itemNo;
  final Value<String?> batchCode;
  final Value<double> stock;
  final Value<String?> expDate;
  final Value<String?> barcode;
  const ItemBatchesCompanion({
    this.id = const Value.absent(),
    this.itemNo = const Value.absent(),
    this.batchCode = const Value.absent(),
    this.stock = const Value.absent(),
    this.expDate = const Value.absent(),
    this.barcode = const Value.absent(),
  });
  ItemBatchesCompanion.insert({
    this.id = const Value.absent(),
    required String itemNo,
    this.batchCode = const Value.absent(),
    this.stock = const Value.absent(),
    this.expDate = const Value.absent(),
    this.barcode = const Value.absent(),
  }) : itemNo = Value(itemNo);
  static Insertable<ItemBatche> custom({
    Expression<int>? id,
    Expression<String>? itemNo,
    Expression<String>? batchCode,
    Expression<double>? stock,
    Expression<String>? expDate,
    Expression<String>? barcode,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (itemNo != null) 'item_no': itemNo,
      if (batchCode != null) 'batch_code': batchCode,
      if (stock != null) 'stock': stock,
      if (expDate != null) 'exp_date': expDate,
      if (barcode != null) 'barcode': barcode,
    });
  }

  ItemBatchesCompanion copyWith(
      {Value<int>? id,
      Value<String>? itemNo,
      Value<String?>? batchCode,
      Value<double>? stock,
      Value<String?>? expDate,
      Value<String?>? barcode}) {
    return ItemBatchesCompanion(
      id: id ?? this.id,
      itemNo: itemNo ?? this.itemNo,
      batchCode: batchCode ?? this.batchCode,
      stock: stock ?? this.stock,
      expDate: expDate ?? this.expDate,
      barcode: barcode ?? this.barcode,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (itemNo.present) {
      map['item_no'] = Variable<String>(itemNo.value);
    }
    if (batchCode.present) {
      map['batch_code'] = Variable<String>(batchCode.value);
    }
    if (stock.present) {
      map['stock'] = Variable<double>(stock.value);
    }
    if (expDate.present) {
      map['exp_date'] = Variable<String>(expDate.value);
    }
    if (barcode.present) {
      map['barcode'] = Variable<String>(barcode.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ItemBatchesCompanion(')
          ..write('id: $id, ')
          ..write('itemNo: $itemNo, ')
          ..write('batchCode: $batchCode, ')
          ..write('stock: $stock, ')
          ..write('expDate: $expDate, ')
          ..write('barcode: $barcode')
          ..write(')'))
        .toString();
  }
}

class $PrintDetailsTable extends PrintDetails
    with TableInfo<$PrintDetailsTable, PrintDetail> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $PrintDetailsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _printHeaderMeta =
      const VerificationMeta('printHeader');
  @override
  late final GeneratedColumn<String> printHeader = GeneratedColumn<String>(
      'print_header', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _addressMeta =
      const VerificationMeta('address');
  @override
  late final GeneratedColumn<String> address = GeneratedColumn<String>(
      'address', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _gstNoMeta = const VerificationMeta('gstNo');
  @override
  late final GeneratedColumn<String> gstNo = GeneratedColumn<String>(
      'gst_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _stateNameMeta =
      const VerificationMeta('stateName');
  @override
  late final GeneratedColumn<String> stateName = GeneratedColumn<String>(
      'state_name', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _stateCodeMeta =
      const VerificationMeta('stateCode');
  @override
  late final GeneratedColumn<String> stateCode = GeneratedColumn<String>(
      'state_code', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _mobileNoMeta =
      const VerificationMeta('mobileNo');
  @override
  late final GeneratedColumn<String> mobileNo = GeneratedColumn<String>(
      'mobile_no', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _printerSizeMeta =
      const VerificationMeta('printerSize');
  @override
  late final GeneratedColumn<String> printerSize = GeneratedColumn<String>(
      'printer_size', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        printHeader,
        address,
        gstNo,
        stateName,
        stateCode,
        email,
        mobileNo,
        printerSize
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'print_details';
  @override
  VerificationContext validateIntegrity(Insertable<PrintDetail> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('print_header')) {
      context.handle(
          _printHeaderMeta,
          printHeader.isAcceptableOrUnknown(
              data['print_header']!, _printHeaderMeta));
    }
    if (data.containsKey('address')) {
      context.handle(_addressMeta,
          address.isAcceptableOrUnknown(data['address']!, _addressMeta));
    }
    if (data.containsKey('gst_no')) {
      context.handle(
          _gstNoMeta, gstNo.isAcceptableOrUnknown(data['gst_no']!, _gstNoMeta));
    }
    if (data.containsKey('state_name')) {
      context.handle(_stateNameMeta,
          stateName.isAcceptableOrUnknown(data['state_name']!, _stateNameMeta));
    }
    if (data.containsKey('state_code')) {
      context.handle(_stateCodeMeta,
          stateCode.isAcceptableOrUnknown(data['state_code']!, _stateCodeMeta));
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    }
    if (data.containsKey('mobile_no')) {
      context.handle(_mobileNoMeta,
          mobileNo.isAcceptableOrUnknown(data['mobile_no']!, _mobileNoMeta));
    }
    if (data.containsKey('printer_size')) {
      context.handle(
          _printerSizeMeta,
          printerSize.isAcceptableOrUnknown(
              data['printer_size']!, _printerSizeMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  PrintDetail map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return PrintDetail(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      printHeader: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}print_header']),
      address: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}address']),
      gstNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}gst_no']),
      stateName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}state_name']),
      stateCode: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}state_code']),
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email']),
      mobileNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}mobile_no']),
      printerSize: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}printer_size']),
    );
  }

  @override
  $PrintDetailsTable createAlias(String alias) {
    return $PrintDetailsTable(attachedDatabase, alias);
  }
}

class PrintDetail extends DataClass implements Insertable<PrintDetail> {
  final int id;
  final String? printHeader;
  final String? address;
  final String? gstNo;
  final String? stateName;
  final String? stateCode;
  final String? email;
  final String? mobileNo;
  final String? printerSize;
  const PrintDetail(
      {required this.id,
      this.printHeader,
      this.address,
      this.gstNo,
      this.stateName,
      this.stateCode,
      this.email,
      this.mobileNo,
      this.printerSize});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    if (!nullToAbsent || printHeader != null) {
      map['print_header'] = Variable<String>(printHeader);
    }
    if (!nullToAbsent || address != null) {
      map['address'] = Variable<String>(address);
    }
    if (!nullToAbsent || gstNo != null) {
      map['gst_no'] = Variable<String>(gstNo);
    }
    if (!nullToAbsent || stateName != null) {
      map['state_name'] = Variable<String>(stateName);
    }
    if (!nullToAbsent || stateCode != null) {
      map['state_code'] = Variable<String>(stateCode);
    }
    if (!nullToAbsent || email != null) {
      map['email'] = Variable<String>(email);
    }
    if (!nullToAbsent || mobileNo != null) {
      map['mobile_no'] = Variable<String>(mobileNo);
    }
    if (!nullToAbsent || printerSize != null) {
      map['printer_size'] = Variable<String>(printerSize);
    }
    return map;
  }

  PrintDetailsCompanion toCompanion(bool nullToAbsent) {
    return PrintDetailsCompanion(
      id: Value(id),
      printHeader: printHeader == null && nullToAbsent
          ? const Value.absent()
          : Value(printHeader),
      address: address == null && nullToAbsent
          ? const Value.absent()
          : Value(address),
      gstNo:
          gstNo == null && nullToAbsent ? const Value.absent() : Value(gstNo),
      stateName: stateName == null && nullToAbsent
          ? const Value.absent()
          : Value(stateName),
      stateCode: stateCode == null && nullToAbsent
          ? const Value.absent()
          : Value(stateCode),
      email:
          email == null && nullToAbsent ? const Value.absent() : Value(email),
      mobileNo: mobileNo == null && nullToAbsent
          ? const Value.absent()
          : Value(mobileNo),
      printerSize: printerSize == null && nullToAbsent
          ? const Value.absent()
          : Value(printerSize),
    );
  }

  factory PrintDetail.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return PrintDetail(
      id: serializer.fromJson<int>(json['id']),
      printHeader: serializer.fromJson<String?>(json['printHeader']),
      address: serializer.fromJson<String?>(json['address']),
      gstNo: serializer.fromJson<String?>(json['gstNo']),
      stateName: serializer.fromJson<String?>(json['stateName']),
      stateCode: serializer.fromJson<String?>(json['stateCode']),
      email: serializer.fromJson<String?>(json['email']),
      mobileNo: serializer.fromJson<String?>(json['mobileNo']),
      printerSize: serializer.fromJson<String?>(json['printerSize']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'printHeader': serializer.toJson<String?>(printHeader),
      'address': serializer.toJson<String?>(address),
      'gstNo': serializer.toJson<String?>(gstNo),
      'stateName': serializer.toJson<String?>(stateName),
      'stateCode': serializer.toJson<String?>(stateCode),
      'email': serializer.toJson<String?>(email),
      'mobileNo': serializer.toJson<String?>(mobileNo),
      'printerSize': serializer.toJson<String?>(printerSize),
    };
  }

  PrintDetail copyWith(
          {int? id,
          Value<String?> printHeader = const Value.absent(),
          Value<String?> address = const Value.absent(),
          Value<String?> gstNo = const Value.absent(),
          Value<String?> stateName = const Value.absent(),
          Value<String?> stateCode = const Value.absent(),
          Value<String?> email = const Value.absent(),
          Value<String?> mobileNo = const Value.absent(),
          Value<String?> printerSize = const Value.absent()}) =>
      PrintDetail(
        id: id ?? this.id,
        printHeader: printHeader.present ? printHeader.value : this.printHeader,
        address: address.present ? address.value : this.address,
        gstNo: gstNo.present ? gstNo.value : this.gstNo,
        stateName: stateName.present ? stateName.value : this.stateName,
        stateCode: stateCode.present ? stateCode.value : this.stateCode,
        email: email.present ? email.value : this.email,
        mobileNo: mobileNo.present ? mobileNo.value : this.mobileNo,
        printerSize: printerSize.present ? printerSize.value : this.printerSize,
      );
  PrintDetail copyWithCompanion(PrintDetailsCompanion data) {
    return PrintDetail(
      id: data.id.present ? data.id.value : this.id,
      printHeader:
          data.printHeader.present ? data.printHeader.value : this.printHeader,
      address: data.address.present ? data.address.value : this.address,
      gstNo: data.gstNo.present ? data.gstNo.value : this.gstNo,
      stateName: data.stateName.present ? data.stateName.value : this.stateName,
      stateCode: data.stateCode.present ? data.stateCode.value : this.stateCode,
      email: data.email.present ? data.email.value : this.email,
      mobileNo: data.mobileNo.present ? data.mobileNo.value : this.mobileNo,
      printerSize:
          data.printerSize.present ? data.printerSize.value : this.printerSize,
    );
  }

  @override
  String toString() {
    return (StringBuffer('PrintDetail(')
          ..write('id: $id, ')
          ..write('printHeader: $printHeader, ')
          ..write('address: $address, ')
          ..write('gstNo: $gstNo, ')
          ..write('stateName: $stateName, ')
          ..write('stateCode: $stateCode, ')
          ..write('email: $email, ')
          ..write('mobileNo: $mobileNo, ')
          ..write('printerSize: $printerSize')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, printHeader, address, gstNo, stateName,
      stateCode, email, mobileNo, printerSize);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is PrintDetail &&
          other.id == this.id &&
          other.printHeader == this.printHeader &&
          other.address == this.address &&
          other.gstNo == this.gstNo &&
          other.stateName == this.stateName &&
          other.stateCode == this.stateCode &&
          other.email == this.email &&
          other.mobileNo == this.mobileNo &&
          other.printerSize == this.printerSize);
}

class PrintDetailsCompanion extends UpdateCompanion<PrintDetail> {
  final Value<int> id;
  final Value<String?> printHeader;
  final Value<String?> address;
  final Value<String?> gstNo;
  final Value<String?> stateName;
  final Value<String?> stateCode;
  final Value<String?> email;
  final Value<String?> mobileNo;
  final Value<String?> printerSize;
  const PrintDetailsCompanion({
    this.id = const Value.absent(),
    this.printHeader = const Value.absent(),
    this.address = const Value.absent(),
    this.gstNo = const Value.absent(),
    this.stateName = const Value.absent(),
    this.stateCode = const Value.absent(),
    this.email = const Value.absent(),
    this.mobileNo = const Value.absent(),
    this.printerSize = const Value.absent(),
  });
  PrintDetailsCompanion.insert({
    this.id = const Value.absent(),
    this.printHeader = const Value.absent(),
    this.address = const Value.absent(),
    this.gstNo = const Value.absent(),
    this.stateName = const Value.absent(),
    this.stateCode = const Value.absent(),
    this.email = const Value.absent(),
    this.mobileNo = const Value.absent(),
    this.printerSize = const Value.absent(),
  });
  static Insertable<PrintDetail> custom({
    Expression<int>? id,
    Expression<String>? printHeader,
    Expression<String>? address,
    Expression<String>? gstNo,
    Expression<String>? stateName,
    Expression<String>? stateCode,
    Expression<String>? email,
    Expression<String>? mobileNo,
    Expression<String>? printerSize,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (printHeader != null) 'print_header': printHeader,
      if (address != null) 'address': address,
      if (gstNo != null) 'gst_no': gstNo,
      if (stateName != null) 'state_name': stateName,
      if (stateCode != null) 'state_code': stateCode,
      if (email != null) 'email': email,
      if (mobileNo != null) 'mobile_no': mobileNo,
      if (printerSize != null) 'printer_size': printerSize,
    });
  }

  PrintDetailsCompanion copyWith(
      {Value<int>? id,
      Value<String?>? printHeader,
      Value<String?>? address,
      Value<String?>? gstNo,
      Value<String?>? stateName,
      Value<String?>? stateCode,
      Value<String?>? email,
      Value<String?>? mobileNo,
      Value<String?>? printerSize}) {
    return PrintDetailsCompanion(
      id: id ?? this.id,
      printHeader: printHeader ?? this.printHeader,
      address: address ?? this.address,
      gstNo: gstNo ?? this.gstNo,
      stateName: stateName ?? this.stateName,
      stateCode: stateCode ?? this.stateCode,
      email: email ?? this.email,
      mobileNo: mobileNo ?? this.mobileNo,
      printerSize: printerSize ?? this.printerSize,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (printHeader.present) {
      map['print_header'] = Variable<String>(printHeader.value);
    }
    if (address.present) {
      map['address'] = Variable<String>(address.value);
    }
    if (gstNo.present) {
      map['gst_no'] = Variable<String>(gstNo.value);
    }
    if (stateName.present) {
      map['state_name'] = Variable<String>(stateName.value);
    }
    if (stateCode.present) {
      map['state_code'] = Variable<String>(stateCode.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (mobileNo.present) {
      map['mobile_no'] = Variable<String>(mobileNo.value);
    }
    if (printerSize.present) {
      map['printer_size'] = Variable<String>(printerSize.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('PrintDetailsCompanion(')
          ..write('id: $id, ')
          ..write('printHeader: $printHeader, ')
          ..write('address: $address, ')
          ..write('gstNo: $gstNo, ')
          ..write('stateName: $stateName, ')
          ..write('stateCode: $stateCode, ')
          ..write('email: $email, ')
          ..write('mobileNo: $mobileNo, ')
          ..write('printerSize: $printerSize')
          ..write(')'))
        .toString();
  }
}

class $OrdersTable extends Orders with TableInfo<$OrdersTable, Order> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrdersTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderNoMeta =
      const VerificationMeta('orderNo');
  @override
  late final GeneratedColumn<String> orderNo = GeneratedColumn<String>(
      'order_no', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _customerIdMeta =
      const VerificationMeta('customerId');
  @override
  late final GeneratedColumn<String> customerId = GeneratedColumn<String>(
      'customer_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _customerNameMeta =
      const VerificationMeta('customerName');
  @override
  late final GeneratedColumn<String> customerName = GeneratedColumn<String>(
      'customer_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _subtotalMeta =
      const VerificationMeta('subtotal');
  @override
  late final GeneratedColumn<double> subtotal = GeneratedColumn<double>(
      'subtotal', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _discountMeta =
      const VerificationMeta('discount');
  @override
  late final GeneratedColumn<double> discount = GeneratedColumn<double>(
      'discount', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _taxMeta = const VerificationMeta('tax');
  @override
  late final GeneratedColumn<double> tax = GeneratedColumn<double>(
      'tax', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _totalMeta = const VerificationMeta('total');
  @override
  late final GeneratedColumn<double> total = GeneratedColumn<double>(
      'total', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('draft'));
  static const VerificationMeta _paymentMethodMeta =
      const VerificationMeta('paymentMethod');
  @override
  late final GeneratedColumn<String> paymentMethod = GeneratedColumn<String>(
      'payment_method', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('cash'));
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _isSyncedMeta =
      const VerificationMeta('isSynced');
  @override
  late final GeneratedColumn<bool> isSynced = GeneratedColumn<bool>(
      'is_synced', aliasedName, false,
      type: DriftSqlType.bool,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('CHECK ("is_synced" IN (0, 1))'),
      defaultValue: const Constant(false));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        orderNo,
        customerId,
        customerName,
        subtotal,
        discount,
        tax,
        total,
        status,
        paymentMethod,
        notes,
        isSynced,
        createdAt,
        updatedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'orders';
  @override
  VerificationContext validateIntegrity(Insertable<Order> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('order_no')) {
      context.handle(_orderNoMeta,
          orderNo.isAcceptableOrUnknown(data['order_no']!, _orderNoMeta));
    } else if (isInserting) {
      context.missing(_orderNoMeta);
    }
    if (data.containsKey('customer_id')) {
      context.handle(
          _customerIdMeta,
          customerId.isAcceptableOrUnknown(
              data['customer_id']!, _customerIdMeta));
    } else if (isInserting) {
      context.missing(_customerIdMeta);
    }
    if (data.containsKey('customer_name')) {
      context.handle(
          _customerNameMeta,
          customerName.isAcceptableOrUnknown(
              data['customer_name']!, _customerNameMeta));
    } else if (isInserting) {
      context.missing(_customerNameMeta);
    }
    if (data.containsKey('subtotal')) {
      context.handle(_subtotalMeta,
          subtotal.isAcceptableOrUnknown(data['subtotal']!, _subtotalMeta));
    }
    if (data.containsKey('discount')) {
      context.handle(_discountMeta,
          discount.isAcceptableOrUnknown(data['discount']!, _discountMeta));
    }
    if (data.containsKey('tax')) {
      context.handle(
          _taxMeta, tax.isAcceptableOrUnknown(data['tax']!, _taxMeta));
    }
    if (data.containsKey('total')) {
      context.handle(
          _totalMeta, total.isAcceptableOrUnknown(data['total']!, _totalMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('payment_method')) {
      context.handle(
          _paymentMethodMeta,
          paymentMethod.isAcceptableOrUnknown(
              data['payment_method']!, _paymentMethodMeta));
    }
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('is_synced')) {
      context.handle(_isSyncedMeta,
          isSynced.isAcceptableOrUnknown(data['is_synced']!, _isSyncedMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Order map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Order(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      orderNo: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_no'])!,
      customerId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}customer_id'])!,
      customerName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}customer_name'])!,
      subtotal: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}subtotal'])!,
      discount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount'])!,
      tax: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}tax'])!,
      total: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      paymentMethod: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payment_method'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      isSynced: attachedDatabase.typeMapping
          .read(DriftSqlType.bool, data['${effectivePrefix}is_synced'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at'])!,
    );
  }

  @override
  $OrdersTable createAlias(String alias) {
    return $OrdersTable(attachedDatabase, alias);
  }
}

class Order extends DataClass implements Insertable<Order> {
  final String id;
  final String orderNo;
  final String customerId;
  final String customerName;
  final double subtotal;
  final double discount;
  final double tax;
  final double total;
  final String status;
  final String paymentMethod;
  final String? notes;
  final bool isSynced;
  final DateTime createdAt;
  final DateTime updatedAt;
  const Order(
      {required this.id,
      required this.orderNo,
      required this.customerId,
      required this.customerName,
      required this.subtotal,
      required this.discount,
      required this.tax,
      required this.total,
      required this.status,
      required this.paymentMethod,
      this.notes,
      required this.isSynced,
      required this.createdAt,
      required this.updatedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['order_no'] = Variable<String>(orderNo);
    map['customer_id'] = Variable<String>(customerId);
    map['customer_name'] = Variable<String>(customerName);
    map['subtotal'] = Variable<double>(subtotal);
    map['discount'] = Variable<double>(discount);
    map['tax'] = Variable<double>(tax);
    map['total'] = Variable<double>(total);
    map['status'] = Variable<String>(status);
    map['payment_method'] = Variable<String>(paymentMethod);
    if (!nullToAbsent || notes != null) {
      map['notes'] = Variable<String>(notes);
    }
    map['is_synced'] = Variable<bool>(isSynced);
    map['created_at'] = Variable<DateTime>(createdAt);
    map['updated_at'] = Variable<DateTime>(updatedAt);
    return map;
  }

  OrdersCompanion toCompanion(bool nullToAbsent) {
    return OrdersCompanion(
      id: Value(id),
      orderNo: Value(orderNo),
      customerId: Value(customerId),
      customerName: Value(customerName),
      subtotal: Value(subtotal),
      discount: Value(discount),
      tax: Value(tax),
      total: Value(total),
      status: Value(status),
      paymentMethod: Value(paymentMethod),
      notes:
          notes == null && nullToAbsent ? const Value.absent() : Value(notes),
      isSynced: Value(isSynced),
      createdAt: Value(createdAt),
      updatedAt: Value(updatedAt),
    );
  }

  factory Order.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Order(
      id: serializer.fromJson<String>(json['id']),
      orderNo: serializer.fromJson<String>(json['orderNo']),
      customerId: serializer.fromJson<String>(json['customerId']),
      customerName: serializer.fromJson<String>(json['customerName']),
      subtotal: serializer.fromJson<double>(json['subtotal']),
      discount: serializer.fromJson<double>(json['discount']),
      tax: serializer.fromJson<double>(json['tax']),
      total: serializer.fromJson<double>(json['total']),
      status: serializer.fromJson<String>(json['status']),
      paymentMethod: serializer.fromJson<String>(json['paymentMethod']),
      notes: serializer.fromJson<String?>(json['notes']),
      isSynced: serializer.fromJson<bool>(json['isSynced']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime>(json['updatedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'orderNo': serializer.toJson<String>(orderNo),
      'customerId': serializer.toJson<String>(customerId),
      'customerName': serializer.toJson<String>(customerName),
      'subtotal': serializer.toJson<double>(subtotal),
      'discount': serializer.toJson<double>(discount),
      'tax': serializer.toJson<double>(tax),
      'total': serializer.toJson<double>(total),
      'status': serializer.toJson<String>(status),
      'paymentMethod': serializer.toJson<String>(paymentMethod),
      'notes': serializer.toJson<String?>(notes),
      'isSynced': serializer.toJson<bool>(isSynced),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime>(updatedAt),
    };
  }

  Order copyWith(
          {String? id,
          String? orderNo,
          String? customerId,
          String? customerName,
          double? subtotal,
          double? discount,
          double? tax,
          double? total,
          String? status,
          String? paymentMethod,
          Value<String?> notes = const Value.absent(),
          bool? isSynced,
          DateTime? createdAt,
          DateTime? updatedAt}) =>
      Order(
        id: id ?? this.id,
        orderNo: orderNo ?? this.orderNo,
        customerId: customerId ?? this.customerId,
        customerName: customerName ?? this.customerName,
        subtotal: subtotal ?? this.subtotal,
        discount: discount ?? this.discount,
        tax: tax ?? this.tax,
        total: total ?? this.total,
        status: status ?? this.status,
        paymentMethod: paymentMethod ?? this.paymentMethod,
        notes: notes.present ? notes.value : this.notes,
        isSynced: isSynced ?? this.isSynced,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
      );
  Order copyWithCompanion(OrdersCompanion data) {
    return Order(
      id: data.id.present ? data.id.value : this.id,
      orderNo: data.orderNo.present ? data.orderNo.value : this.orderNo,
      customerId:
          data.customerId.present ? data.customerId.value : this.customerId,
      customerName: data.customerName.present
          ? data.customerName.value
          : this.customerName,
      subtotal: data.subtotal.present ? data.subtotal.value : this.subtotal,
      discount: data.discount.present ? data.discount.value : this.discount,
      tax: data.tax.present ? data.tax.value : this.tax,
      total: data.total.present ? data.total.value : this.total,
      status: data.status.present ? data.status.value : this.status,
      paymentMethod: data.paymentMethod.present
          ? data.paymentMethod.value
          : this.paymentMethod,
      notes: data.notes.present ? data.notes.value : this.notes,
      isSynced: data.isSynced.present ? data.isSynced.value : this.isSynced,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('Order(')
          ..write('id: $id, ')
          ..write('orderNo: $orderNo, ')
          ..write('customerId: $customerId, ')
          ..write('customerName: $customerName, ')
          ..write('subtotal: $subtotal, ')
          ..write('discount: $discount, ')
          ..write('tax: $tax, ')
          ..write('total: $total, ')
          ..write('status: $status, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('notes: $notes, ')
          ..write('isSynced: $isSynced, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id,
      orderNo,
      customerId,
      customerName,
      subtotal,
      discount,
      tax,
      total,
      status,
      paymentMethod,
      notes,
      isSynced,
      createdAt,
      updatedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Order &&
          other.id == this.id &&
          other.orderNo == this.orderNo &&
          other.customerId == this.customerId &&
          other.customerName == this.customerName &&
          other.subtotal == this.subtotal &&
          other.discount == this.discount &&
          other.tax == this.tax &&
          other.total == this.total &&
          other.status == this.status &&
          other.paymentMethod == this.paymentMethod &&
          other.notes == this.notes &&
          other.isSynced == this.isSynced &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt);
}

class OrdersCompanion extends UpdateCompanion<Order> {
  final Value<String> id;
  final Value<String> orderNo;
  final Value<String> customerId;
  final Value<String> customerName;
  final Value<double> subtotal;
  final Value<double> discount;
  final Value<double> tax;
  final Value<double> total;
  final Value<String> status;
  final Value<String> paymentMethod;
  final Value<String?> notes;
  final Value<bool> isSynced;
  final Value<DateTime> createdAt;
  final Value<DateTime> updatedAt;
  final Value<int> rowid;
  const OrdersCompanion({
    this.id = const Value.absent(),
    this.orderNo = const Value.absent(),
    this.customerId = const Value.absent(),
    this.customerName = const Value.absent(),
    this.subtotal = const Value.absent(),
    this.discount = const Value.absent(),
    this.tax = const Value.absent(),
    this.total = const Value.absent(),
    this.status = const Value.absent(),
    this.paymentMethod = const Value.absent(),
    this.notes = const Value.absent(),
    this.isSynced = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrdersCompanion.insert({
    required String id,
    required String orderNo,
    required String customerId,
    required String customerName,
    this.subtotal = const Value.absent(),
    this.discount = const Value.absent(),
    this.tax = const Value.absent(),
    this.total = const Value.absent(),
    this.status = const Value.absent(),
    this.paymentMethod = const Value.absent(),
    this.notes = const Value.absent(),
    this.isSynced = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        orderNo = Value(orderNo),
        customerId = Value(customerId),
        customerName = Value(customerName);
  static Insertable<Order> custom({
    Expression<String>? id,
    Expression<String>? orderNo,
    Expression<String>? customerId,
    Expression<String>? customerName,
    Expression<double>? subtotal,
    Expression<double>? discount,
    Expression<double>? tax,
    Expression<double>? total,
    Expression<String>? status,
    Expression<String>? paymentMethod,
    Expression<String>? notes,
    Expression<bool>? isSynced,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (orderNo != null) 'order_no': orderNo,
      if (customerId != null) 'customer_id': customerId,
      if (customerName != null) 'customer_name': customerName,
      if (subtotal != null) 'subtotal': subtotal,
      if (discount != null) 'discount': discount,
      if (tax != null) 'tax': tax,
      if (total != null) 'total': total,
      if (status != null) 'status': status,
      if (paymentMethod != null) 'payment_method': paymentMethod,
      if (notes != null) 'notes': notes,
      if (isSynced != null) 'is_synced': isSynced,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrdersCompanion copyWith(
      {Value<String>? id,
      Value<String>? orderNo,
      Value<String>? customerId,
      Value<String>? customerName,
      Value<double>? subtotal,
      Value<double>? discount,
      Value<double>? tax,
      Value<double>? total,
      Value<String>? status,
      Value<String>? paymentMethod,
      Value<String?>? notes,
      Value<bool>? isSynced,
      Value<DateTime>? createdAt,
      Value<DateTime>? updatedAt,
      Value<int>? rowid}) {
    return OrdersCompanion(
      id: id ?? this.id,
      orderNo: orderNo ?? this.orderNo,
      customerId: customerId ?? this.customerId,
      customerName: customerName ?? this.customerName,
      subtotal: subtotal ?? this.subtotal,
      discount: discount ?? this.discount,
      tax: tax ?? this.tax,
      total: total ?? this.total,
      status: status ?? this.status,
      paymentMethod: paymentMethod ?? this.paymentMethod,
      notes: notes ?? this.notes,
      isSynced: isSynced ?? this.isSynced,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (orderNo.present) {
      map['order_no'] = Variable<String>(orderNo.value);
    }
    if (customerId.present) {
      map['customer_id'] = Variable<String>(customerId.value);
    }
    if (customerName.present) {
      map['customer_name'] = Variable<String>(customerName.value);
    }
    if (subtotal.present) {
      map['subtotal'] = Variable<double>(subtotal.value);
    }
    if (discount.present) {
      map['discount'] = Variable<double>(discount.value);
    }
    if (tax.present) {
      map['tax'] = Variable<double>(tax.value);
    }
    if (total.present) {
      map['total'] = Variable<double>(total.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (paymentMethod.present) {
      map['payment_method'] = Variable<String>(paymentMethod.value);
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (isSynced.present) {
      map['is_synced'] = Variable<bool>(isSynced.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrdersCompanion(')
          ..write('id: $id, ')
          ..write('orderNo: $orderNo, ')
          ..write('customerId: $customerId, ')
          ..write('customerName: $customerName, ')
          ..write('subtotal: $subtotal, ')
          ..write('discount: $discount, ')
          ..write('tax: $tax, ')
          ..write('total: $total, ')
          ..write('status: $status, ')
          ..write('paymentMethod: $paymentMethod, ')
          ..write('notes: $notes, ')
          ..write('isSynced: $isSynced, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $OrderItemsTable extends OrderItems
    with TableInfo<$OrderItemsTable, OrderItem> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $OrderItemsTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _orderIdMeta =
      const VerificationMeta('orderId');
  @override
  late final GeneratedColumn<String> orderId = GeneratedColumn<String>(
      'order_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _productIdMeta =
      const VerificationMeta('productId');
  @override
  late final GeneratedColumn<String> productId = GeneratedColumn<String>(
      'product_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _productNameMeta =
      const VerificationMeta('productName');
  @override
  late final GeneratedColumn<String> productName = GeneratedColumn<String>(
      'product_name', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _priceMeta = const VerificationMeta('price');
  @override
  late final GeneratedColumn<double> price = GeneratedColumn<double>(
      'price', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _qtyMeta = const VerificationMeta('qty');
  @override
  late final GeneratedColumn<int> qty = GeneratedColumn<int>(
      'qty', aliasedName, false,
      type: DriftSqlType.int, requiredDuringInsert: true);
  static const VerificationMeta _discountMeta =
      const VerificationMeta('discount');
  @override
  late final GeneratedColumn<double> discount = GeneratedColumn<double>(
      'discount', aliasedName, false,
      type: DriftSqlType.double,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _totalMeta = const VerificationMeta('total');
  @override
  late final GeneratedColumn<double> total = GeneratedColumn<double>(
      'total', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, orderId, productId, productName, price, qty, discount, total];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'order_items';
  @override
  VerificationContext validateIntegrity(Insertable<OrderItem> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (data.containsKey('order_id')) {
      context.handle(_orderIdMeta,
          orderId.isAcceptableOrUnknown(data['order_id']!, _orderIdMeta));
    } else if (isInserting) {
      context.missing(_orderIdMeta);
    }
    if (data.containsKey('product_id')) {
      context.handle(_productIdMeta,
          productId.isAcceptableOrUnknown(data['product_id']!, _productIdMeta));
    } else if (isInserting) {
      context.missing(_productIdMeta);
    }
    if (data.containsKey('product_name')) {
      context.handle(
          _productNameMeta,
          productName.isAcceptableOrUnknown(
              data['product_name']!, _productNameMeta));
    } else if (isInserting) {
      context.missing(_productNameMeta);
    }
    if (data.containsKey('price')) {
      context.handle(
          _priceMeta, price.isAcceptableOrUnknown(data['price']!, _priceMeta));
    } else if (isInserting) {
      context.missing(_priceMeta);
    }
    if (data.containsKey('qty')) {
      context.handle(
          _qtyMeta, qty.isAcceptableOrUnknown(data['qty']!, _qtyMeta));
    } else if (isInserting) {
      context.missing(_qtyMeta);
    }
    if (data.containsKey('discount')) {
      context.handle(_discountMeta,
          discount.isAcceptableOrUnknown(data['discount']!, _discountMeta));
    }
    if (data.containsKey('total')) {
      context.handle(
          _totalMeta, total.isAcceptableOrUnknown(data['total']!, _totalMeta));
    } else if (isInserting) {
      context.missing(_totalMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  OrderItem map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return OrderItem(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      orderId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}order_id'])!,
      productId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_id'])!,
      productName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}product_name'])!,
      price: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}price'])!,
      qty: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}qty'])!,
      discount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}discount'])!,
      total: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}total'])!,
    );
  }

  @override
  $OrderItemsTable createAlias(String alias) {
    return $OrderItemsTable(attachedDatabase, alias);
  }
}

class OrderItem extends DataClass implements Insertable<OrderItem> {
  final String id;
  final String orderId;
  final String productId;
  final String productName;
  final double price;
  final int qty;
  final double discount;
  final double total;
  const OrderItem(
      {required this.id,
      required this.orderId,
      required this.productId,
      required this.productName,
      required this.price,
      required this.qty,
      required this.discount,
      required this.total});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['order_id'] = Variable<String>(orderId);
    map['product_id'] = Variable<String>(productId);
    map['product_name'] = Variable<String>(productName);
    map['price'] = Variable<double>(price);
    map['qty'] = Variable<int>(qty);
    map['discount'] = Variable<double>(discount);
    map['total'] = Variable<double>(total);
    return map;
  }

  OrderItemsCompanion toCompanion(bool nullToAbsent) {
    return OrderItemsCompanion(
      id: Value(id),
      orderId: Value(orderId),
      productId: Value(productId),
      productName: Value(productName),
      price: Value(price),
      qty: Value(qty),
      discount: Value(discount),
      total: Value(total),
    );
  }

  factory OrderItem.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return OrderItem(
      id: serializer.fromJson<String>(json['id']),
      orderId: serializer.fromJson<String>(json['orderId']),
      productId: serializer.fromJson<String>(json['productId']),
      productName: serializer.fromJson<String>(json['productName']),
      price: serializer.fromJson<double>(json['price']),
      qty: serializer.fromJson<int>(json['qty']),
      discount: serializer.fromJson<double>(json['discount']),
      total: serializer.fromJson<double>(json['total']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'orderId': serializer.toJson<String>(orderId),
      'productId': serializer.toJson<String>(productId),
      'productName': serializer.toJson<String>(productName),
      'price': serializer.toJson<double>(price),
      'qty': serializer.toJson<int>(qty),
      'discount': serializer.toJson<double>(discount),
      'total': serializer.toJson<double>(total),
    };
  }

  OrderItem copyWith(
          {String? id,
          String? orderId,
          String? productId,
          String? productName,
          double? price,
          int? qty,
          double? discount,
          double? total}) =>
      OrderItem(
        id: id ?? this.id,
        orderId: orderId ?? this.orderId,
        productId: productId ?? this.productId,
        productName: productName ?? this.productName,
        price: price ?? this.price,
        qty: qty ?? this.qty,
        discount: discount ?? this.discount,
        total: total ?? this.total,
      );
  OrderItem copyWithCompanion(OrderItemsCompanion data) {
    return OrderItem(
      id: data.id.present ? data.id.value : this.id,
      orderId: data.orderId.present ? data.orderId.value : this.orderId,
      productId: data.productId.present ? data.productId.value : this.productId,
      productName:
          data.productName.present ? data.productName.value : this.productName,
      price: data.price.present ? data.price.value : this.price,
      qty: data.qty.present ? data.qty.value : this.qty,
      discount: data.discount.present ? data.discount.value : this.discount,
      total: data.total.present ? data.total.value : this.total,
    );
  }

  @override
  String toString() {
    return (StringBuffer('OrderItem(')
          ..write('id: $id, ')
          ..write('orderId: $orderId, ')
          ..write('productId: $productId, ')
          ..write('productName: $productName, ')
          ..write('price: $price, ')
          ..write('qty: $qty, ')
          ..write('discount: $discount, ')
          ..write('total: $total')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, orderId, productId, productName, price, qty, discount, total);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is OrderItem &&
          other.id == this.id &&
          other.orderId == this.orderId &&
          other.productId == this.productId &&
          other.productName == this.productName &&
          other.price == this.price &&
          other.qty == this.qty &&
          other.discount == this.discount &&
          other.total == this.total);
}

class OrderItemsCompanion extends UpdateCompanion<OrderItem> {
  final Value<String> id;
  final Value<String> orderId;
  final Value<String> productId;
  final Value<String> productName;
  final Value<double> price;
  final Value<int> qty;
  final Value<double> discount;
  final Value<double> total;
  final Value<int> rowid;
  const OrderItemsCompanion({
    this.id = const Value.absent(),
    this.orderId = const Value.absent(),
    this.productId = const Value.absent(),
    this.productName = const Value.absent(),
    this.price = const Value.absent(),
    this.qty = const Value.absent(),
    this.discount = const Value.absent(),
    this.total = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  OrderItemsCompanion.insert({
    required String id,
    required String orderId,
    required String productId,
    required String productName,
    required double price,
    required int qty,
    this.discount = const Value.absent(),
    required double total,
    this.rowid = const Value.absent(),
  })  : id = Value(id),
        orderId = Value(orderId),
        productId = Value(productId),
        productName = Value(productName),
        price = Value(price),
        qty = Value(qty),
        total = Value(total);
  static Insertable<OrderItem> custom({
    Expression<String>? id,
    Expression<String>? orderId,
    Expression<String>? productId,
    Expression<String>? productName,
    Expression<double>? price,
    Expression<int>? qty,
    Expression<double>? discount,
    Expression<double>? total,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (orderId != null) 'order_id': orderId,
      if (productId != null) 'product_id': productId,
      if (productName != null) 'product_name': productName,
      if (price != null) 'price': price,
      if (qty != null) 'qty': qty,
      if (discount != null) 'discount': discount,
      if (total != null) 'total': total,
      if (rowid != null) 'rowid': rowid,
    });
  }

  OrderItemsCompanion copyWith(
      {Value<String>? id,
      Value<String>? orderId,
      Value<String>? productId,
      Value<String>? productName,
      Value<double>? price,
      Value<int>? qty,
      Value<double>? discount,
      Value<double>? total,
      Value<int>? rowid}) {
    return OrderItemsCompanion(
      id: id ?? this.id,
      orderId: orderId ?? this.orderId,
      productId: productId ?? this.productId,
      productName: productName ?? this.productName,
      price: price ?? this.price,
      qty: qty ?? this.qty,
      discount: discount ?? this.discount,
      total: total ?? this.total,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (orderId.present) {
      map['order_id'] = Variable<String>(orderId.value);
    }
    if (productId.present) {
      map['product_id'] = Variable<String>(productId.value);
    }
    if (productName.present) {
      map['product_name'] = Variable<String>(productName.value);
    }
    if (price.present) {
      map['price'] = Variable<double>(price.value);
    }
    if (qty.present) {
      map['qty'] = Variable<int>(qty.value);
    }
    if (discount.present) {
      map['discount'] = Variable<double>(discount.value);
    }
    if (total.present) {
      map['total'] = Variable<double>(total.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('OrderItemsCompanion(')
          ..write('id: $id, ')
          ..write('orderId: $orderId, ')
          ..write('productId: $productId, ')
          ..write('productName: $productName, ')
          ..write('price: $price, ')
          ..write('qty: $qty, ')
          ..write('discount: $discount, ')
          ..write('total: $total, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $SyncQueueTable extends SyncQueue
    with TableInfo<$SyncQueueTable, SyncQueueData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $SyncQueueTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int> id = GeneratedColumn<int>(
      'id', aliasedName, false,
      hasAutoIncrement: true,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('PRIMARY KEY AUTOINCREMENT'));
  static const VerificationMeta _entityMeta = const VerificationMeta('entity');
  @override
  late final GeneratedColumn<String> entity = GeneratedColumn<String>(
      'entity', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _entityIdMeta =
      const VerificationMeta('entityId');
  @override
  late final GeneratedColumn<String> entityId = GeneratedColumn<String>(
      'entity_id', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _actionMeta = const VerificationMeta('action');
  @override
  late final GeneratedColumn<String> action = GeneratedColumn<String>(
      'action', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _payloadMeta =
      const VerificationMeta('payload');
  @override
  late final GeneratedColumn<String> payload = GeneratedColumn<String>(
      'payload', aliasedName, false,
      type: DriftSqlType.string, requiredDuringInsert: true);
  static const VerificationMeta _retriesMeta =
      const VerificationMeta('retries');
  @override
  late final GeneratedColumn<int> retries = GeneratedColumn<int>(
      'retries', aliasedName, false,
      type: DriftSqlType.int,
      requiredDuringInsert: false,
      defaultValue: const Constant(0));
  static const VerificationMeta _statusMeta = const VerificationMeta('status');
  @override
  late final GeneratedColumn<String> status = GeneratedColumn<String>(
      'status', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant('pending'));
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  @override
  List<GeneratedColumn> get $columns =>
      [id, entity, entityId, action, payload, retries, status, createdAt];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'sync_queue';
  @override
  VerificationContext validateIntegrity(Insertable<SyncQueueData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('entity')) {
      context.handle(_entityMeta,
          entity.isAcceptableOrUnknown(data['entity']!, _entityMeta));
    } else if (isInserting) {
      context.missing(_entityMeta);
    }
    if (data.containsKey('entity_id')) {
      context.handle(_entityIdMeta,
          entityId.isAcceptableOrUnknown(data['entity_id']!, _entityIdMeta));
    } else if (isInserting) {
      context.missing(_entityIdMeta);
    }
    if (data.containsKey('action')) {
      context.handle(_actionMeta,
          action.isAcceptableOrUnknown(data['action']!, _actionMeta));
    } else if (isInserting) {
      context.missing(_actionMeta);
    }
    if (data.containsKey('payload')) {
      context.handle(_payloadMeta,
          payload.isAcceptableOrUnknown(data['payload']!, _payloadMeta));
    } else if (isInserting) {
      context.missing(_payloadMeta);
    }
    if (data.containsKey('retries')) {
      context.handle(_retriesMeta,
          retries.isAcceptableOrUnknown(data['retries']!, _retriesMeta));
    }
    if (data.containsKey('status')) {
      context.handle(_statusMeta,
          status.isAcceptableOrUnknown(data['status']!, _statusMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  SyncQueueData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return SyncQueueData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}id'])!,
      entity: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}entity'])!,
      entityId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}entity_id'])!,
      action: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}action'])!,
      payload: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}payload'])!,
      retries: attachedDatabase.typeMapping
          .read(DriftSqlType.int, data['${effectivePrefix}retries'])!,
      status: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}status'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
    );
  }

  @override
  $SyncQueueTable createAlias(String alias) {
    return $SyncQueueTable(attachedDatabase, alias);
  }
}

class SyncQueueData extends DataClass implements Insertable<SyncQueueData> {
  final int id;
  final String entity;
  final String entityId;
  final String action;
  final String payload;
  final int retries;
  final String status;
  final DateTime createdAt;
  const SyncQueueData(
      {required this.id,
      required this.entity,
      required this.entityId,
      required this.action,
      required this.payload,
      required this.retries,
      required this.status,
      required this.createdAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['entity'] = Variable<String>(entity);
    map['entity_id'] = Variable<String>(entityId);
    map['action'] = Variable<String>(action);
    map['payload'] = Variable<String>(payload);
    map['retries'] = Variable<int>(retries);
    map['status'] = Variable<String>(status);
    map['created_at'] = Variable<DateTime>(createdAt);
    return map;
  }

  SyncQueueCompanion toCompanion(bool nullToAbsent) {
    return SyncQueueCompanion(
      id: Value(id),
      entity: Value(entity),
      entityId: Value(entityId),
      action: Value(action),
      payload: Value(payload),
      retries: Value(retries),
      status: Value(status),
      createdAt: Value(createdAt),
    );
  }

  factory SyncQueueData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return SyncQueueData(
      id: serializer.fromJson<int>(json['id']),
      entity: serializer.fromJson<String>(json['entity']),
      entityId: serializer.fromJson<String>(json['entityId']),
      action: serializer.fromJson<String>(json['action']),
      payload: serializer.fromJson<String>(json['payload']),
      retries: serializer.fromJson<int>(json['retries']),
      status: serializer.fromJson<String>(json['status']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'entity': serializer.toJson<String>(entity),
      'entityId': serializer.toJson<String>(entityId),
      'action': serializer.toJson<String>(action),
      'payload': serializer.toJson<String>(payload),
      'retries': serializer.toJson<int>(retries),
      'status': serializer.toJson<String>(status),
      'createdAt': serializer.toJson<DateTime>(createdAt),
    };
  }

  SyncQueueData copyWith(
          {int? id,
          String? entity,
          String? entityId,
          String? action,
          String? payload,
          int? retries,
          String? status,
          DateTime? createdAt}) =>
      SyncQueueData(
        id: id ?? this.id,
        entity: entity ?? this.entity,
        entityId: entityId ?? this.entityId,
        action: action ?? this.action,
        payload: payload ?? this.payload,
        retries: retries ?? this.retries,
        status: status ?? this.status,
        createdAt: createdAt ?? this.createdAt,
      );
  SyncQueueData copyWithCompanion(SyncQueueCompanion data) {
    return SyncQueueData(
      id: data.id.present ? data.id.value : this.id,
      entity: data.entity.present ? data.entity.value : this.entity,
      entityId: data.entityId.present ? data.entityId.value : this.entityId,
      action: data.action.present ? data.action.value : this.action,
      payload: data.payload.present ? data.payload.value : this.payload,
      retries: data.retries.present ? data.retries.value : this.retries,
      status: data.status.present ? data.status.value : this.status,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('SyncQueueData(')
          ..write('id: $id, ')
          ..write('entity: $entity, ')
          ..write('entityId: $entityId, ')
          ..write('action: $action, ')
          ..write('payload: $payload, ')
          ..write('retries: $retries, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(
      id, entity, entityId, action, payload, retries, status, createdAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is SyncQueueData &&
          other.id == this.id &&
          other.entity == this.entity &&
          other.entityId == this.entityId &&
          other.action == this.action &&
          other.payload == this.payload &&
          other.retries == this.retries &&
          other.status == this.status &&
          other.createdAt == this.createdAt);
}

class SyncQueueCompanion extends UpdateCompanion<SyncQueueData> {
  final Value<int> id;
  final Value<String> entity;
  final Value<String> entityId;
  final Value<String> action;
  final Value<String> payload;
  final Value<int> retries;
  final Value<String> status;
  final Value<DateTime> createdAt;
  const SyncQueueCompanion({
    this.id = const Value.absent(),
    this.entity = const Value.absent(),
    this.entityId = const Value.absent(),
    this.action = const Value.absent(),
    this.payload = const Value.absent(),
    this.retries = const Value.absent(),
    this.status = const Value.absent(),
    this.createdAt = const Value.absent(),
  });
  SyncQueueCompanion.insert({
    this.id = const Value.absent(),
    required String entity,
    required String entityId,
    required String action,
    required String payload,
    this.retries = const Value.absent(),
    this.status = const Value.absent(),
    this.createdAt = const Value.absent(),
  })  : entity = Value(entity),
        entityId = Value(entityId),
        action = Value(action),
        payload = Value(payload);
  static Insertable<SyncQueueData> custom({
    Expression<int>? id,
    Expression<String>? entity,
    Expression<String>? entityId,
    Expression<String>? action,
    Expression<String>? payload,
    Expression<int>? retries,
    Expression<String>? status,
    Expression<DateTime>? createdAt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (entity != null) 'entity': entity,
      if (entityId != null) 'entity_id': entityId,
      if (action != null) 'action': action,
      if (payload != null) 'payload': payload,
      if (retries != null) 'retries': retries,
      if (status != null) 'status': status,
      if (createdAt != null) 'created_at': createdAt,
    });
  }

  SyncQueueCompanion copyWith(
      {Value<int>? id,
      Value<String>? entity,
      Value<String>? entityId,
      Value<String>? action,
      Value<String>? payload,
      Value<int>? retries,
      Value<String>? status,
      Value<DateTime>? createdAt}) {
    return SyncQueueCompanion(
      id: id ?? this.id,
      entity: entity ?? this.entity,
      entityId: entityId ?? this.entityId,
      action: action ?? this.action,
      payload: payload ?? this.payload,
      retries: retries ?? this.retries,
      status: status ?? this.status,
      createdAt: createdAt ?? this.createdAt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (entity.present) {
      map['entity'] = Variable<String>(entity.value);
    }
    if (entityId.present) {
      map['entity_id'] = Variable<String>(entityId.value);
    }
    if (action.present) {
      map['action'] = Variable<String>(action.value);
    }
    if (payload.present) {
      map['payload'] = Variable<String>(payload.value);
    }
    if (retries.present) {
      map['retries'] = Variable<int>(retries.value);
    }
    if (status.present) {
      map['status'] = Variable<String>(status.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('SyncQueueCompanion(')
          ..write('id: $id, ')
          ..write('entity: $entity, ')
          ..write('entityId: $entityId, ')
          ..write('action: $action, ')
          ..write('payload: $payload, ')
          ..write('retries: $retries, ')
          ..write('status: $status, ')
          ..write('createdAt: $createdAt')
          ..write(')'))
        .toString();
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(e);
  $AppDatabaseManager get managers => $AppDatabaseManager(this);
  late final $CustomersTable customers = $CustomersTable(this);
  late final $ItemHeadersTable itemHeaders = $ItemHeadersTable(this);
  late final $ItemPricesTable itemPrices = $ItemPricesTable(this);
  late final $AccountsTable accounts = $AccountsTable(this);
  late final $VendorsTable vendors = $VendorsTable(this);
  late final $EmployeeListsTable employeeLists = $EmployeeListsTable(this);
  late final $GeneralSettingsTable generalSettings =
      $GeneralSettingsTable(this);
  late final $SeriesForNextnumsTable seriesForNextnums =
      $SeriesForNextnumsTable(this);
  late final $MasterUsersTable masterUsers = $MasterUsersTable(this);
  late final $OrganisationDetailsTable organisationDetails =
      $OrganisationDetailsTable(this);
  late final $SeriesListsTable seriesLists = $SeriesListsTable(this);
  late final $StoresTable stores = $StoresTable(this);
  late final $FrieghtsTable frieghts = $FrieghtsTable(this);
  late final $PaymentTermsTable paymentTerms = $PaymentTermsTable(this);
  late final $ModeOfDispatchesTable modeOfDispatches =
      $ModeOfDispatchesTable(this);
  late final $PriceListsTable priceLists = $PriceListsTable(this);
  late final $SalesPersonsTable salesPersons = $SalesPersonsTable(this);
  late final $ItemUomsTable itemUoms = $ItemUomsTable(this);
  late final $ItemBatchesTable itemBatches = $ItemBatchesTable(this);
  late final $PrintDetailsTable printDetails = $PrintDetailsTable(this);
  late final $OrdersTable orders = $OrdersTable(this);
  late final $OrderItemsTable orderItems = $OrderItemsTable(this);
  late final $SyncQueueTable syncQueue = $SyncQueueTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [
        customers,
        itemHeaders,
        itemPrices,
        accounts,
        vendors,
        employeeLists,
        generalSettings,
        seriesForNextnums,
        masterUsers,
        organisationDetails,
        seriesLists,
        stores,
        frieghts,
        paymentTerms,
        modeOfDispatches,
        priceLists,
        salesPersons,
        itemUoms,
        itemBatches,
        printDetails,
        orders,
        orderItems,
        syncQueue
      ];
}

typedef $$CustomersTableCreateCompanionBuilder = CustomersCompanion Function({
  required String cvCode,
  Value<int?> orgId,
  required String cvName,
  Value<String?> type,
  Value<String?> tel1,
  Value<String?> mobileNo,
  Value<String?> email,
  Value<String?> address,
  Value<String?> area,
  Value<String?> place,
  Value<String?> district,
  Value<int?> pinCode,
  Value<double> balance,
  Value<int> creditLimit,
  Value<int?> priceList,
  Value<int?> paymentTerms,
  Value<String?> gstNo,
  Value<String?> panNo,
  Value<String?> inactive,
  Value<String?> updatedDate,
  Value<String?> paymentTermsName,
  Value<int> rowid,
});
typedef $$CustomersTableUpdateCompanionBuilder = CustomersCompanion Function({
  Value<String> cvCode,
  Value<int?> orgId,
  Value<String> cvName,
  Value<String?> type,
  Value<String?> tel1,
  Value<String?> mobileNo,
  Value<String?> email,
  Value<String?> address,
  Value<String?> area,
  Value<String?> place,
  Value<String?> district,
  Value<int?> pinCode,
  Value<double> balance,
  Value<int> creditLimit,
  Value<int?> priceList,
  Value<int?> paymentTerms,
  Value<String?> gstNo,
  Value<String?> panNo,
  Value<String?> inactive,
  Value<String?> updatedDate,
  Value<String?> paymentTermsName,
  Value<int> rowid,
});

class $$CustomersTableFilterComposer
    extends Composer<_$AppDatabase, $CustomersTable> {
  $$CustomersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get cvCode => $composableBuilder(
      column: $table.cvCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cvName => $composableBuilder(
      column: $table.cvName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tel1 => $composableBuilder(
      column: $table.tel1, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mobileNo => $composableBuilder(
      column: $table.mobileNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get area => $composableBuilder(
      column: $table.area, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get place => $composableBuilder(
      column: $table.place, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get district => $composableBuilder(
      column: $table.district, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get pinCode => $composableBuilder(
      column: $table.pinCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get balance => $composableBuilder(
      column: $table.balance, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get creditLimit => $composableBuilder(
      column: $table.creditLimit, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get priceList => $composableBuilder(
      column: $table.priceList, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get paymentTerms => $composableBuilder(
      column: $table.paymentTerms, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gstNo => $composableBuilder(
      column: $table.gstNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get panNo => $composableBuilder(
      column: $table.panNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get inactive => $composableBuilder(
      column: $table.inactive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get paymentTermsName => $composableBuilder(
      column: $table.paymentTermsName,
      builder: (column) => ColumnFilters(column));
}

class $$CustomersTableOrderingComposer
    extends Composer<_$AppDatabase, $CustomersTable> {
  $$CustomersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get cvCode => $composableBuilder(
      column: $table.cvCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cvName => $composableBuilder(
      column: $table.cvName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tel1 => $composableBuilder(
      column: $table.tel1, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mobileNo => $composableBuilder(
      column: $table.mobileNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get area => $composableBuilder(
      column: $table.area, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get place => $composableBuilder(
      column: $table.place, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get district => $composableBuilder(
      column: $table.district, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get pinCode => $composableBuilder(
      column: $table.pinCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get balance => $composableBuilder(
      column: $table.balance, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get creditLimit => $composableBuilder(
      column: $table.creditLimit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get priceList => $composableBuilder(
      column: $table.priceList, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get paymentTerms => $composableBuilder(
      column: $table.paymentTerms,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gstNo => $composableBuilder(
      column: $table.gstNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get panNo => $composableBuilder(
      column: $table.panNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get inactive => $composableBuilder(
      column: $table.inactive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get paymentTermsName => $composableBuilder(
      column: $table.paymentTermsName,
      builder: (column) => ColumnOrderings(column));
}

class $$CustomersTableAnnotationComposer
    extends Composer<_$AppDatabase, $CustomersTable> {
  $$CustomersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get cvCode =>
      $composableBuilder(column: $table.cvCode, builder: (column) => column);

  GeneratedColumn<int> get orgId =>
      $composableBuilder(column: $table.orgId, builder: (column) => column);

  GeneratedColumn<String> get cvName =>
      $composableBuilder(column: $table.cvName, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get tel1 =>
      $composableBuilder(column: $table.tel1, builder: (column) => column);

  GeneratedColumn<String> get mobileNo =>
      $composableBuilder(column: $table.mobileNo, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get area =>
      $composableBuilder(column: $table.area, builder: (column) => column);

  GeneratedColumn<String> get place =>
      $composableBuilder(column: $table.place, builder: (column) => column);

  GeneratedColumn<String> get district =>
      $composableBuilder(column: $table.district, builder: (column) => column);

  GeneratedColumn<int> get pinCode =>
      $composableBuilder(column: $table.pinCode, builder: (column) => column);

  GeneratedColumn<double> get balance =>
      $composableBuilder(column: $table.balance, builder: (column) => column);

  GeneratedColumn<int> get creditLimit => $composableBuilder(
      column: $table.creditLimit, builder: (column) => column);

  GeneratedColumn<int> get priceList =>
      $composableBuilder(column: $table.priceList, builder: (column) => column);

  GeneratedColumn<int> get paymentTerms => $composableBuilder(
      column: $table.paymentTerms, builder: (column) => column);

  GeneratedColumn<String> get gstNo =>
      $composableBuilder(column: $table.gstNo, builder: (column) => column);

  GeneratedColumn<String> get panNo =>
      $composableBuilder(column: $table.panNo, builder: (column) => column);

  GeneratedColumn<String> get inactive =>
      $composableBuilder(column: $table.inactive, builder: (column) => column);

  GeneratedColumn<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => column);

  GeneratedColumn<String> get paymentTermsName => $composableBuilder(
      column: $table.paymentTermsName, builder: (column) => column);
}

class $$CustomersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $CustomersTable,
    Customer,
    $$CustomersTableFilterComposer,
    $$CustomersTableOrderingComposer,
    $$CustomersTableAnnotationComposer,
    $$CustomersTableCreateCompanionBuilder,
    $$CustomersTableUpdateCompanionBuilder,
    (Customer, BaseReferences<_$AppDatabase, $CustomersTable, Customer>),
    Customer,
    PrefetchHooks Function()> {
  $$CustomersTableTableManager(_$AppDatabase db, $CustomersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$CustomersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$CustomersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$CustomersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> cvCode = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String> cvName = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<String?> tel1 = const Value.absent(),
            Value<String?> mobileNo = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> area = const Value.absent(),
            Value<String?> place = const Value.absent(),
            Value<String?> district = const Value.absent(),
            Value<int?> pinCode = const Value.absent(),
            Value<double> balance = const Value.absent(),
            Value<int> creditLimit = const Value.absent(),
            Value<int?> priceList = const Value.absent(),
            Value<int?> paymentTerms = const Value.absent(),
            Value<String?> gstNo = const Value.absent(),
            Value<String?> panNo = const Value.absent(),
            Value<String?> inactive = const Value.absent(),
            Value<String?> updatedDate = const Value.absent(),
            Value<String?> paymentTermsName = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CustomersCompanion(
            cvCode: cvCode,
            orgId: orgId,
            cvName: cvName,
            type: type,
            tel1: tel1,
            mobileNo: mobileNo,
            email: email,
            address: address,
            area: area,
            place: place,
            district: district,
            pinCode: pinCode,
            balance: balance,
            creditLimit: creditLimit,
            priceList: priceList,
            paymentTerms: paymentTerms,
            gstNo: gstNo,
            panNo: panNo,
            inactive: inactive,
            updatedDate: updatedDate,
            paymentTermsName: paymentTermsName,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String cvCode,
            Value<int?> orgId = const Value.absent(),
            required String cvName,
            Value<String?> type = const Value.absent(),
            Value<String?> tel1 = const Value.absent(),
            Value<String?> mobileNo = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> area = const Value.absent(),
            Value<String?> place = const Value.absent(),
            Value<String?> district = const Value.absent(),
            Value<int?> pinCode = const Value.absent(),
            Value<double> balance = const Value.absent(),
            Value<int> creditLimit = const Value.absent(),
            Value<int?> priceList = const Value.absent(),
            Value<int?> paymentTerms = const Value.absent(),
            Value<String?> gstNo = const Value.absent(),
            Value<String?> panNo = const Value.absent(),
            Value<String?> inactive = const Value.absent(),
            Value<String?> updatedDate = const Value.absent(),
            Value<String?> paymentTermsName = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              CustomersCompanion.insert(
            cvCode: cvCode,
            orgId: orgId,
            cvName: cvName,
            type: type,
            tel1: tel1,
            mobileNo: mobileNo,
            email: email,
            address: address,
            area: area,
            place: place,
            district: district,
            pinCode: pinCode,
            balance: balance,
            creditLimit: creditLimit,
            priceList: priceList,
            paymentTerms: paymentTerms,
            gstNo: gstNo,
            panNo: panNo,
            inactive: inactive,
            updatedDate: updatedDate,
            paymentTermsName: paymentTermsName,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$CustomersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $CustomersTable,
    Customer,
    $$CustomersTableFilterComposer,
    $$CustomersTableOrderingComposer,
    $$CustomersTableAnnotationComposer,
    $$CustomersTableCreateCompanionBuilder,
    $$CustomersTableUpdateCompanionBuilder,
    (Customer, BaseReferences<_$AppDatabase, $CustomersTable, Customer>),
    Customer,
    PrefetchHooks Function()>;
typedef $$ItemHeadersTableCreateCompanionBuilder = ItemHeadersCompanion
    Function({
  required String itemNo,
  Value<int?> orgId,
  required String itemName,
  Value<String?> description,
  Value<String?> barcode,
  Value<String?> hsnCode,
  Value<String?> taxcode,
  Value<String?> uom,
  Value<double> onHand,
  Value<double> cost,
  Value<double> mrp,
  Value<String?> image,
  Value<String?> inactive,
  Value<String?> updatedDate,
  Value<String?> isInclusive,
  Value<String?> type,
  Value<int?> taxRate,
  Value<double?> cessPerc,
  Value<int> rowid,
});
typedef $$ItemHeadersTableUpdateCompanionBuilder = ItemHeadersCompanion
    Function({
  Value<String> itemNo,
  Value<int?> orgId,
  Value<String> itemName,
  Value<String?> description,
  Value<String?> barcode,
  Value<String?> hsnCode,
  Value<String?> taxcode,
  Value<String?> uom,
  Value<double> onHand,
  Value<double> cost,
  Value<double> mrp,
  Value<String?> image,
  Value<String?> inactive,
  Value<String?> updatedDate,
  Value<String?> isInclusive,
  Value<String?> type,
  Value<int?> taxRate,
  Value<double?> cessPerc,
  Value<int> rowid,
});

class $$ItemHeadersTableFilterComposer
    extends Composer<_$AppDatabase, $ItemHeadersTable> {
  $$ItemHeadersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get itemNo => $composableBuilder(
      column: $table.itemNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemName => $composableBuilder(
      column: $table.itemName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get barcode => $composableBuilder(
      column: $table.barcode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get hsnCode => $composableBuilder(
      column: $table.hsnCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get taxcode => $composableBuilder(
      column: $table.taxcode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get uom => $composableBuilder(
      column: $table.uom, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get onHand => $composableBuilder(
      column: $table.onHand, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get cost => $composableBuilder(
      column: $table.cost, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get mrp => $composableBuilder(
      column: $table.mrp, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get inactive => $composableBuilder(
      column: $table.inactive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get isInclusive => $composableBuilder(
      column: $table.isInclusive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get taxRate => $composableBuilder(
      column: $table.taxRate, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get cessPerc => $composableBuilder(
      column: $table.cessPerc, builder: (column) => ColumnFilters(column));
}

class $$ItemHeadersTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemHeadersTable> {
  $$ItemHeadersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get itemNo => $composableBuilder(
      column: $table.itemNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemName => $composableBuilder(
      column: $table.itemName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get barcode => $composableBuilder(
      column: $table.barcode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get hsnCode => $composableBuilder(
      column: $table.hsnCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get taxcode => $composableBuilder(
      column: $table.taxcode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get uom => $composableBuilder(
      column: $table.uom, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get onHand => $composableBuilder(
      column: $table.onHand, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get cost => $composableBuilder(
      column: $table.cost, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get mrp => $composableBuilder(
      column: $table.mrp, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get image => $composableBuilder(
      column: $table.image, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get inactive => $composableBuilder(
      column: $table.inactive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get isInclusive => $composableBuilder(
      column: $table.isInclusive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get taxRate => $composableBuilder(
      column: $table.taxRate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get cessPerc => $composableBuilder(
      column: $table.cessPerc, builder: (column) => ColumnOrderings(column));
}

class $$ItemHeadersTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemHeadersTable> {
  $$ItemHeadersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get itemNo =>
      $composableBuilder(column: $table.itemNo, builder: (column) => column);

  GeneratedColumn<int> get orgId =>
      $composableBuilder(column: $table.orgId, builder: (column) => column);

  GeneratedColumn<String> get itemName =>
      $composableBuilder(column: $table.itemName, builder: (column) => column);

  GeneratedColumn<String> get description => $composableBuilder(
      column: $table.description, builder: (column) => column);

  GeneratedColumn<String> get barcode =>
      $composableBuilder(column: $table.barcode, builder: (column) => column);

  GeneratedColumn<String> get hsnCode =>
      $composableBuilder(column: $table.hsnCode, builder: (column) => column);

  GeneratedColumn<String> get taxcode =>
      $composableBuilder(column: $table.taxcode, builder: (column) => column);

  GeneratedColumn<String> get uom =>
      $composableBuilder(column: $table.uom, builder: (column) => column);

  GeneratedColumn<double> get onHand =>
      $composableBuilder(column: $table.onHand, builder: (column) => column);

  GeneratedColumn<double> get cost =>
      $composableBuilder(column: $table.cost, builder: (column) => column);

  GeneratedColumn<double> get mrp =>
      $composableBuilder(column: $table.mrp, builder: (column) => column);

  GeneratedColumn<String> get image =>
      $composableBuilder(column: $table.image, builder: (column) => column);

  GeneratedColumn<String> get inactive =>
      $composableBuilder(column: $table.inactive, builder: (column) => column);

  GeneratedColumn<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => column);

  GeneratedColumn<String> get isInclusive => $composableBuilder(
      column: $table.isInclusive, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<int> get taxRate =>
      $composableBuilder(column: $table.taxRate, builder: (column) => column);

  GeneratedColumn<double> get cessPerc =>
      $composableBuilder(column: $table.cessPerc, builder: (column) => column);
}

class $$ItemHeadersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemHeadersTable,
    ItemHeader,
    $$ItemHeadersTableFilterComposer,
    $$ItemHeadersTableOrderingComposer,
    $$ItemHeadersTableAnnotationComposer,
    $$ItemHeadersTableCreateCompanionBuilder,
    $$ItemHeadersTableUpdateCompanionBuilder,
    (ItemHeader, BaseReferences<_$AppDatabase, $ItemHeadersTable, ItemHeader>),
    ItemHeader,
    PrefetchHooks Function()> {
  $$ItemHeadersTableTableManager(_$AppDatabase db, $ItemHeadersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemHeadersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemHeadersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemHeadersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> itemNo = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String> itemName = const Value.absent(),
            Value<String?> description = const Value.absent(),
            Value<String?> barcode = const Value.absent(),
            Value<String?> hsnCode = const Value.absent(),
            Value<String?> taxcode = const Value.absent(),
            Value<String?> uom = const Value.absent(),
            Value<double> onHand = const Value.absent(),
            Value<double> cost = const Value.absent(),
            Value<double> mrp = const Value.absent(),
            Value<String?> image = const Value.absent(),
            Value<String?> inactive = const Value.absent(),
            Value<String?> updatedDate = const Value.absent(),
            Value<String?> isInclusive = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<int?> taxRate = const Value.absent(),
            Value<double?> cessPerc = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ItemHeadersCompanion(
            itemNo: itemNo,
            orgId: orgId,
            itemName: itemName,
            description: description,
            barcode: barcode,
            hsnCode: hsnCode,
            taxcode: taxcode,
            uom: uom,
            onHand: onHand,
            cost: cost,
            mrp: mrp,
            image: image,
            inactive: inactive,
            updatedDate: updatedDate,
            isInclusive: isInclusive,
            type: type,
            taxRate: taxRate,
            cessPerc: cessPerc,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String itemNo,
            Value<int?> orgId = const Value.absent(),
            required String itemName,
            Value<String?> description = const Value.absent(),
            Value<String?> barcode = const Value.absent(),
            Value<String?> hsnCode = const Value.absent(),
            Value<String?> taxcode = const Value.absent(),
            Value<String?> uom = const Value.absent(),
            Value<double> onHand = const Value.absent(),
            Value<double> cost = const Value.absent(),
            Value<double> mrp = const Value.absent(),
            Value<String?> image = const Value.absent(),
            Value<String?> inactive = const Value.absent(),
            Value<String?> updatedDate = const Value.absent(),
            Value<String?> isInclusive = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<int?> taxRate = const Value.absent(),
            Value<double?> cessPerc = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              ItemHeadersCompanion.insert(
            itemNo: itemNo,
            orgId: orgId,
            itemName: itemName,
            description: description,
            barcode: barcode,
            hsnCode: hsnCode,
            taxcode: taxcode,
            uom: uom,
            onHand: onHand,
            cost: cost,
            mrp: mrp,
            image: image,
            inactive: inactive,
            updatedDate: updatedDate,
            isInclusive: isInclusive,
            type: type,
            taxRate: taxRate,
            cessPerc: cessPerc,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ItemHeadersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ItemHeadersTable,
    ItemHeader,
    $$ItemHeadersTableFilterComposer,
    $$ItemHeadersTableOrderingComposer,
    $$ItemHeadersTableAnnotationComposer,
    $$ItemHeadersTableCreateCompanionBuilder,
    $$ItemHeadersTableUpdateCompanionBuilder,
    (ItemHeader, BaseReferences<_$AppDatabase, $ItemHeadersTable, ItemHeader>),
    ItemHeader,
    PrefetchHooks Function()>;
typedef $$ItemPricesTableCreateCompanionBuilder = ItemPricesCompanion Function({
  Value<int> id,
  Value<int?> orgId,
  required String itemNo,
  Value<int?> priceListId,
  Value<double> price,
  Value<double> discount,
  Value<String?> isInclusive,
  Value<String?> updatedDate,
});
typedef $$ItemPricesTableUpdateCompanionBuilder = ItemPricesCompanion Function({
  Value<int> id,
  Value<int?> orgId,
  Value<String> itemNo,
  Value<int?> priceListId,
  Value<double> price,
  Value<double> discount,
  Value<String?> isInclusive,
  Value<String?> updatedDate,
});

class $$ItemPricesTableFilterComposer
    extends Composer<_$AppDatabase, $ItemPricesTable> {
  $$ItemPricesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemNo => $composableBuilder(
      column: $table.itemNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get priceListId => $composableBuilder(
      column: $table.priceListId, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get discount => $composableBuilder(
      column: $table.discount, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get isInclusive => $composableBuilder(
      column: $table.isInclusive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => ColumnFilters(column));
}

class $$ItemPricesTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemPricesTable> {
  $$ItemPricesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemNo => $composableBuilder(
      column: $table.itemNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get priceListId => $composableBuilder(
      column: $table.priceListId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get discount => $composableBuilder(
      column: $table.discount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get isInclusive => $composableBuilder(
      column: $table.isInclusive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => ColumnOrderings(column));
}

class $$ItemPricesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemPricesTable> {
  $$ItemPricesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get orgId =>
      $composableBuilder(column: $table.orgId, builder: (column) => column);

  GeneratedColumn<String> get itemNo =>
      $composableBuilder(column: $table.itemNo, builder: (column) => column);

  GeneratedColumn<int> get priceListId => $composableBuilder(
      column: $table.priceListId, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<double> get discount =>
      $composableBuilder(column: $table.discount, builder: (column) => column);

  GeneratedColumn<String> get isInclusive => $composableBuilder(
      column: $table.isInclusive, builder: (column) => column);

  GeneratedColumn<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => column);
}

class $$ItemPricesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemPricesTable,
    ItemPrice,
    $$ItemPricesTableFilterComposer,
    $$ItemPricesTableOrderingComposer,
    $$ItemPricesTableAnnotationComposer,
    $$ItemPricesTableCreateCompanionBuilder,
    $$ItemPricesTableUpdateCompanionBuilder,
    (ItemPrice, BaseReferences<_$AppDatabase, $ItemPricesTable, ItemPrice>),
    ItemPrice,
    PrefetchHooks Function()> {
  $$ItemPricesTableTableManager(_$AppDatabase db, $ItemPricesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemPricesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemPricesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemPricesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String> itemNo = const Value.absent(),
            Value<int?> priceListId = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<double> discount = const Value.absent(),
            Value<String?> isInclusive = const Value.absent(),
            Value<String?> updatedDate = const Value.absent(),
          }) =>
              ItemPricesCompanion(
            id: id,
            orgId: orgId,
            itemNo: itemNo,
            priceListId: priceListId,
            price: price,
            discount: discount,
            isInclusive: isInclusive,
            updatedDate: updatedDate,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            required String itemNo,
            Value<int?> priceListId = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<double> discount = const Value.absent(),
            Value<String?> isInclusive = const Value.absent(),
            Value<String?> updatedDate = const Value.absent(),
          }) =>
              ItemPricesCompanion.insert(
            id: id,
            orgId: orgId,
            itemNo: itemNo,
            priceListId: priceListId,
            price: price,
            discount: discount,
            isInclusive: isInclusive,
            updatedDate: updatedDate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ItemPricesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ItemPricesTable,
    ItemPrice,
    $$ItemPricesTableFilterComposer,
    $$ItemPricesTableOrderingComposer,
    $$ItemPricesTableAnnotationComposer,
    $$ItemPricesTableCreateCompanionBuilder,
    $$ItemPricesTableUpdateCompanionBuilder,
    (ItemPrice, BaseReferences<_$AppDatabase, $ItemPricesTable, ItemPrice>),
    ItemPrice,
    PrefetchHooks Function()>;
typedef $$AccountsTableCreateCompanionBuilder = AccountsCompanion Function({
  Value<int> code,
  Value<int?> orgId,
  required String name,
  Value<String?> drawer,
  Value<int?> parent,
  Value<double> balance,
  Value<String?> cashAccount,
  Value<String?> inactive,
  Value<String?> updatedDate,
});
typedef $$AccountsTableUpdateCompanionBuilder = AccountsCompanion Function({
  Value<int> code,
  Value<int?> orgId,
  Value<String> name,
  Value<String?> drawer,
  Value<int?> parent,
  Value<double> balance,
  Value<String?> cashAccount,
  Value<String?> inactive,
  Value<String?> updatedDate,
});

class $$AccountsTableFilterComposer
    extends Composer<_$AppDatabase, $AccountsTable> {
  $$AccountsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get drawer => $composableBuilder(
      column: $table.drawer, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get parent => $composableBuilder(
      column: $table.parent, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get balance => $composableBuilder(
      column: $table.balance, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cashAccount => $composableBuilder(
      column: $table.cashAccount, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get inactive => $composableBuilder(
      column: $table.inactive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => ColumnFilters(column));
}

class $$AccountsTableOrderingComposer
    extends Composer<_$AppDatabase, $AccountsTable> {
  $$AccountsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get code => $composableBuilder(
      column: $table.code, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get drawer => $composableBuilder(
      column: $table.drawer, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get parent => $composableBuilder(
      column: $table.parent, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get balance => $composableBuilder(
      column: $table.balance, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cashAccount => $composableBuilder(
      column: $table.cashAccount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get inactive => $composableBuilder(
      column: $table.inactive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => ColumnOrderings(column));
}

class $$AccountsTableAnnotationComposer
    extends Composer<_$AppDatabase, $AccountsTable> {
  $$AccountsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get code =>
      $composableBuilder(column: $table.code, builder: (column) => column);

  GeneratedColumn<int> get orgId =>
      $composableBuilder(column: $table.orgId, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);

  GeneratedColumn<String> get drawer =>
      $composableBuilder(column: $table.drawer, builder: (column) => column);

  GeneratedColumn<int> get parent =>
      $composableBuilder(column: $table.parent, builder: (column) => column);

  GeneratedColumn<double> get balance =>
      $composableBuilder(column: $table.balance, builder: (column) => column);

  GeneratedColumn<String> get cashAccount => $composableBuilder(
      column: $table.cashAccount, builder: (column) => column);

  GeneratedColumn<String> get inactive =>
      $composableBuilder(column: $table.inactive, builder: (column) => column);

  GeneratedColumn<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => column);
}

class $$AccountsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $AccountsTable,
    Account,
    $$AccountsTableFilterComposer,
    $$AccountsTableOrderingComposer,
    $$AccountsTableAnnotationComposer,
    $$AccountsTableCreateCompanionBuilder,
    $$AccountsTableUpdateCompanionBuilder,
    (Account, BaseReferences<_$AppDatabase, $AccountsTable, Account>),
    Account,
    PrefetchHooks Function()> {
  $$AccountsTableTableManager(_$AppDatabase db, $AccountsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$AccountsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$AccountsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$AccountsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> code = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String> name = const Value.absent(),
            Value<String?> drawer = const Value.absent(),
            Value<int?> parent = const Value.absent(),
            Value<double> balance = const Value.absent(),
            Value<String?> cashAccount = const Value.absent(),
            Value<String?> inactive = const Value.absent(),
            Value<String?> updatedDate = const Value.absent(),
          }) =>
              AccountsCompanion(
            code: code,
            orgId: orgId,
            name: name,
            drawer: drawer,
            parent: parent,
            balance: balance,
            cashAccount: cashAccount,
            inactive: inactive,
            updatedDate: updatedDate,
          ),
          createCompanionCallback: ({
            Value<int> code = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            required String name,
            Value<String?> drawer = const Value.absent(),
            Value<int?> parent = const Value.absent(),
            Value<double> balance = const Value.absent(),
            Value<String?> cashAccount = const Value.absent(),
            Value<String?> inactive = const Value.absent(),
            Value<String?> updatedDate = const Value.absent(),
          }) =>
              AccountsCompanion.insert(
            code: code,
            orgId: orgId,
            name: name,
            drawer: drawer,
            parent: parent,
            balance: balance,
            cashAccount: cashAccount,
            inactive: inactive,
            updatedDate: updatedDate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$AccountsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $AccountsTable,
    Account,
    $$AccountsTableFilterComposer,
    $$AccountsTableOrderingComposer,
    $$AccountsTableAnnotationComposer,
    $$AccountsTableCreateCompanionBuilder,
    $$AccountsTableUpdateCompanionBuilder,
    (Account, BaseReferences<_$AppDatabase, $AccountsTable, Account>),
    Account,
    PrefetchHooks Function()>;
typedef $$VendorsTableCreateCompanionBuilder = VendorsCompanion Function({
  required String cvCode,
  Value<int?> orgId,
  required String cvName,
  Value<String?> type,
  Value<String?> tel1,
  Value<String?> mobileNo,
  Value<String?> email,
  Value<String?> address,
  Value<String?> area,
  Value<double> balance,
  Value<int> creditLimit,
  Value<int?> priceList,
  Value<String?> gstNo,
  Value<String?> inactive,
  Value<String?> updatedDate,
  Value<int> rowid,
});
typedef $$VendorsTableUpdateCompanionBuilder = VendorsCompanion Function({
  Value<String> cvCode,
  Value<int?> orgId,
  Value<String> cvName,
  Value<String?> type,
  Value<String?> tel1,
  Value<String?> mobileNo,
  Value<String?> email,
  Value<String?> address,
  Value<String?> area,
  Value<double> balance,
  Value<int> creditLimit,
  Value<int?> priceList,
  Value<String?> gstNo,
  Value<String?> inactive,
  Value<String?> updatedDate,
  Value<int> rowid,
});

class $$VendorsTableFilterComposer
    extends Composer<_$AppDatabase, $VendorsTable> {
  $$VendorsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get cvCode => $composableBuilder(
      column: $table.cvCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get cvName => $composableBuilder(
      column: $table.cvName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get tel1 => $composableBuilder(
      column: $table.tel1, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mobileNo => $composableBuilder(
      column: $table.mobileNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get area => $composableBuilder(
      column: $table.area, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get balance => $composableBuilder(
      column: $table.balance, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get creditLimit => $composableBuilder(
      column: $table.creditLimit, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get priceList => $composableBuilder(
      column: $table.priceList, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gstNo => $composableBuilder(
      column: $table.gstNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get inactive => $composableBuilder(
      column: $table.inactive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => ColumnFilters(column));
}

class $$VendorsTableOrderingComposer
    extends Composer<_$AppDatabase, $VendorsTable> {
  $$VendorsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get cvCode => $composableBuilder(
      column: $table.cvCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get cvName => $composableBuilder(
      column: $table.cvName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get type => $composableBuilder(
      column: $table.type, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get tel1 => $composableBuilder(
      column: $table.tel1, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mobileNo => $composableBuilder(
      column: $table.mobileNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get area => $composableBuilder(
      column: $table.area, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get balance => $composableBuilder(
      column: $table.balance, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get creditLimit => $composableBuilder(
      column: $table.creditLimit, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get priceList => $composableBuilder(
      column: $table.priceList, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gstNo => $composableBuilder(
      column: $table.gstNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get inactive => $composableBuilder(
      column: $table.inactive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => ColumnOrderings(column));
}

class $$VendorsTableAnnotationComposer
    extends Composer<_$AppDatabase, $VendorsTable> {
  $$VendorsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get cvCode =>
      $composableBuilder(column: $table.cvCode, builder: (column) => column);

  GeneratedColumn<int> get orgId =>
      $composableBuilder(column: $table.orgId, builder: (column) => column);

  GeneratedColumn<String> get cvName =>
      $composableBuilder(column: $table.cvName, builder: (column) => column);

  GeneratedColumn<String> get type =>
      $composableBuilder(column: $table.type, builder: (column) => column);

  GeneratedColumn<String> get tel1 =>
      $composableBuilder(column: $table.tel1, builder: (column) => column);

  GeneratedColumn<String> get mobileNo =>
      $composableBuilder(column: $table.mobileNo, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get area =>
      $composableBuilder(column: $table.area, builder: (column) => column);

  GeneratedColumn<double> get balance =>
      $composableBuilder(column: $table.balance, builder: (column) => column);

  GeneratedColumn<int> get creditLimit => $composableBuilder(
      column: $table.creditLimit, builder: (column) => column);

  GeneratedColumn<int> get priceList =>
      $composableBuilder(column: $table.priceList, builder: (column) => column);

  GeneratedColumn<String> get gstNo =>
      $composableBuilder(column: $table.gstNo, builder: (column) => column);

  GeneratedColumn<String> get inactive =>
      $composableBuilder(column: $table.inactive, builder: (column) => column);

  GeneratedColumn<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => column);
}

class $$VendorsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $VendorsTable,
    Vendor,
    $$VendorsTableFilterComposer,
    $$VendorsTableOrderingComposer,
    $$VendorsTableAnnotationComposer,
    $$VendorsTableCreateCompanionBuilder,
    $$VendorsTableUpdateCompanionBuilder,
    (Vendor, BaseReferences<_$AppDatabase, $VendorsTable, Vendor>),
    Vendor,
    PrefetchHooks Function()> {
  $$VendorsTableTableManager(_$AppDatabase db, $VendorsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$VendorsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$VendorsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$VendorsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> cvCode = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String> cvName = const Value.absent(),
            Value<String?> type = const Value.absent(),
            Value<String?> tel1 = const Value.absent(),
            Value<String?> mobileNo = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> area = const Value.absent(),
            Value<double> balance = const Value.absent(),
            Value<int> creditLimit = const Value.absent(),
            Value<int?> priceList = const Value.absent(),
            Value<String?> gstNo = const Value.absent(),
            Value<String?> inactive = const Value.absent(),
            Value<String?> updatedDate = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              VendorsCompanion(
            cvCode: cvCode,
            orgId: orgId,
            cvName: cvName,
            type: type,
            tel1: tel1,
            mobileNo: mobileNo,
            email: email,
            address: address,
            area: area,
            balance: balance,
            creditLimit: creditLimit,
            priceList: priceList,
            gstNo: gstNo,
            inactive: inactive,
            updatedDate: updatedDate,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String cvCode,
            Value<int?> orgId = const Value.absent(),
            required String cvName,
            Value<String?> type = const Value.absent(),
            Value<String?> tel1 = const Value.absent(),
            Value<String?> mobileNo = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> area = const Value.absent(),
            Value<double> balance = const Value.absent(),
            Value<int> creditLimit = const Value.absent(),
            Value<int?> priceList = const Value.absent(),
            Value<String?> gstNo = const Value.absent(),
            Value<String?> inactive = const Value.absent(),
            Value<String?> updatedDate = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              VendorsCompanion.insert(
            cvCode: cvCode,
            orgId: orgId,
            cvName: cvName,
            type: type,
            tel1: tel1,
            mobileNo: mobileNo,
            email: email,
            address: address,
            area: area,
            balance: balance,
            creditLimit: creditLimit,
            priceList: priceList,
            gstNo: gstNo,
            inactive: inactive,
            updatedDate: updatedDate,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$VendorsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $VendorsTable,
    Vendor,
    $$VendorsTableFilterComposer,
    $$VendorsTableOrderingComposer,
    $$VendorsTableAnnotationComposer,
    $$VendorsTableCreateCompanionBuilder,
    $$VendorsTableUpdateCompanionBuilder,
    (Vendor, BaseReferences<_$AppDatabase, $VendorsTable, Vendor>),
    Vendor,
    PrefetchHooks Function()>;
typedef $$EmployeeListsTableCreateCompanionBuilder = EmployeeListsCompanion
    Function({
  Value<int> empId,
  Value<int?> orgId,
  Value<String?> empCode,
  Value<String?> empName,
  Value<String?> inactive,
  Value<String?> updatedDate,
});
typedef $$EmployeeListsTableUpdateCompanionBuilder = EmployeeListsCompanion
    Function({
  Value<int> empId,
  Value<int?> orgId,
  Value<String?> empCode,
  Value<String?> empName,
  Value<String?> inactive,
  Value<String?> updatedDate,
});

class $$EmployeeListsTableFilterComposer
    extends Composer<_$AppDatabase, $EmployeeListsTable> {
  $$EmployeeListsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get empId => $composableBuilder(
      column: $table.empId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get empCode => $composableBuilder(
      column: $table.empCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get empName => $composableBuilder(
      column: $table.empName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get inactive => $composableBuilder(
      column: $table.inactive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => ColumnFilters(column));
}

class $$EmployeeListsTableOrderingComposer
    extends Composer<_$AppDatabase, $EmployeeListsTable> {
  $$EmployeeListsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get empId => $composableBuilder(
      column: $table.empId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get empCode => $composableBuilder(
      column: $table.empCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get empName => $composableBuilder(
      column: $table.empName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get inactive => $composableBuilder(
      column: $table.inactive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => ColumnOrderings(column));
}

class $$EmployeeListsTableAnnotationComposer
    extends Composer<_$AppDatabase, $EmployeeListsTable> {
  $$EmployeeListsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get empId =>
      $composableBuilder(column: $table.empId, builder: (column) => column);

  GeneratedColumn<int> get orgId =>
      $composableBuilder(column: $table.orgId, builder: (column) => column);

  GeneratedColumn<String> get empCode =>
      $composableBuilder(column: $table.empCode, builder: (column) => column);

  GeneratedColumn<String> get empName =>
      $composableBuilder(column: $table.empName, builder: (column) => column);

  GeneratedColumn<String> get inactive =>
      $composableBuilder(column: $table.inactive, builder: (column) => column);

  GeneratedColumn<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => column);
}

class $$EmployeeListsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $EmployeeListsTable,
    EmployeeList,
    $$EmployeeListsTableFilterComposer,
    $$EmployeeListsTableOrderingComposer,
    $$EmployeeListsTableAnnotationComposer,
    $$EmployeeListsTableCreateCompanionBuilder,
    $$EmployeeListsTableUpdateCompanionBuilder,
    (
      EmployeeList,
      BaseReferences<_$AppDatabase, $EmployeeListsTable, EmployeeList>
    ),
    EmployeeList,
    PrefetchHooks Function()> {
  $$EmployeeListsTableTableManager(_$AppDatabase db, $EmployeeListsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$EmployeeListsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$EmployeeListsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$EmployeeListsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> empId = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String?> empCode = const Value.absent(),
            Value<String?> empName = const Value.absent(),
            Value<String?> inactive = const Value.absent(),
            Value<String?> updatedDate = const Value.absent(),
          }) =>
              EmployeeListsCompanion(
            empId: empId,
            orgId: orgId,
            empCode: empCode,
            empName: empName,
            inactive: inactive,
            updatedDate: updatedDate,
          ),
          createCompanionCallback: ({
            Value<int> empId = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String?> empCode = const Value.absent(),
            Value<String?> empName = const Value.absent(),
            Value<String?> inactive = const Value.absent(),
            Value<String?> updatedDate = const Value.absent(),
          }) =>
              EmployeeListsCompanion.insert(
            empId: empId,
            orgId: orgId,
            empCode: empCode,
            empName: empName,
            inactive: inactive,
            updatedDate: updatedDate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$EmployeeListsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $EmployeeListsTable,
    EmployeeList,
    $$EmployeeListsTableFilterComposer,
    $$EmployeeListsTableOrderingComposer,
    $$EmployeeListsTableAnnotationComposer,
    $$EmployeeListsTableCreateCompanionBuilder,
    $$EmployeeListsTableUpdateCompanionBuilder,
    (
      EmployeeList,
      BaseReferences<_$AppDatabase, $EmployeeListsTable, EmployeeList>
    ),
    EmployeeList,
    PrefetchHooks Function()>;
typedef $$GeneralSettingsTableCreateCompanionBuilder = GeneralSettingsCompanion
    Function({
  Value<int> orgId,
  Value<String?> dfltStore,
  Value<String?> localCurrency,
  Value<int?> dfltPriceListCustomer,
  Value<String?> allowNegativeInventory,
  Value<String?> batch,
  Value<String?> isRoundOff,
  Value<String?> allowPriceChange,
  Value<String?> allowDiscountChange,
  Value<String?> allowCustomerCreationOffline,
});
typedef $$GeneralSettingsTableUpdateCompanionBuilder = GeneralSettingsCompanion
    Function({
  Value<int> orgId,
  Value<String?> dfltStore,
  Value<String?> localCurrency,
  Value<int?> dfltPriceListCustomer,
  Value<String?> allowNegativeInventory,
  Value<String?> batch,
  Value<String?> isRoundOff,
  Value<String?> allowPriceChange,
  Value<String?> allowDiscountChange,
  Value<String?> allowCustomerCreationOffline,
});

class $$GeneralSettingsTableFilterComposer
    extends Composer<_$AppDatabase, $GeneralSettingsTable> {
  $$GeneralSettingsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get dfltStore => $composableBuilder(
      column: $table.dfltStore, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get localCurrency => $composableBuilder(
      column: $table.localCurrency, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get dfltPriceListCustomer => $composableBuilder(
      column: $table.dfltPriceListCustomer,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get allowNegativeInventory => $composableBuilder(
      column: $table.allowNegativeInventory,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get batch => $composableBuilder(
      column: $table.batch, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get isRoundOff => $composableBuilder(
      column: $table.isRoundOff, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get allowPriceChange => $composableBuilder(
      column: $table.allowPriceChange,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get allowDiscountChange => $composableBuilder(
      column: $table.allowDiscountChange,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get allowCustomerCreationOffline => $composableBuilder(
      column: $table.allowCustomerCreationOffline,
      builder: (column) => ColumnFilters(column));
}

class $$GeneralSettingsTableOrderingComposer
    extends Composer<_$AppDatabase, $GeneralSettingsTable> {
  $$GeneralSettingsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get dfltStore => $composableBuilder(
      column: $table.dfltStore, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get localCurrency => $composableBuilder(
      column: $table.localCurrency,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get dfltPriceListCustomer => $composableBuilder(
      column: $table.dfltPriceListCustomer,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get allowNegativeInventory => $composableBuilder(
      column: $table.allowNegativeInventory,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get batch => $composableBuilder(
      column: $table.batch, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get isRoundOff => $composableBuilder(
      column: $table.isRoundOff, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get allowPriceChange => $composableBuilder(
      column: $table.allowPriceChange,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get allowDiscountChange => $composableBuilder(
      column: $table.allowDiscountChange,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get allowCustomerCreationOffline =>
      $composableBuilder(
          column: $table.allowCustomerCreationOffline,
          builder: (column) => ColumnOrderings(column));
}

class $$GeneralSettingsTableAnnotationComposer
    extends Composer<_$AppDatabase, $GeneralSettingsTable> {
  $$GeneralSettingsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get orgId =>
      $composableBuilder(column: $table.orgId, builder: (column) => column);

  GeneratedColumn<String> get dfltStore =>
      $composableBuilder(column: $table.dfltStore, builder: (column) => column);

  GeneratedColumn<String> get localCurrency => $composableBuilder(
      column: $table.localCurrency, builder: (column) => column);

  GeneratedColumn<int> get dfltPriceListCustomer => $composableBuilder(
      column: $table.dfltPriceListCustomer, builder: (column) => column);

  GeneratedColumn<String> get allowNegativeInventory => $composableBuilder(
      column: $table.allowNegativeInventory, builder: (column) => column);

  GeneratedColumn<String> get batch =>
      $composableBuilder(column: $table.batch, builder: (column) => column);

  GeneratedColumn<String> get isRoundOff => $composableBuilder(
      column: $table.isRoundOff, builder: (column) => column);

  GeneratedColumn<String> get allowPriceChange => $composableBuilder(
      column: $table.allowPriceChange, builder: (column) => column);

  GeneratedColumn<String> get allowDiscountChange => $composableBuilder(
      column: $table.allowDiscountChange, builder: (column) => column);

  GeneratedColumn<String> get allowCustomerCreationOffline =>
      $composableBuilder(
          column: $table.allowCustomerCreationOffline,
          builder: (column) => column);
}

class $$GeneralSettingsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $GeneralSettingsTable,
    GeneralSetting,
    $$GeneralSettingsTableFilterComposer,
    $$GeneralSettingsTableOrderingComposer,
    $$GeneralSettingsTableAnnotationComposer,
    $$GeneralSettingsTableCreateCompanionBuilder,
    $$GeneralSettingsTableUpdateCompanionBuilder,
    (
      GeneralSetting,
      BaseReferences<_$AppDatabase, $GeneralSettingsTable, GeneralSetting>
    ),
    GeneralSetting,
    PrefetchHooks Function()> {
  $$GeneralSettingsTableTableManager(
      _$AppDatabase db, $GeneralSettingsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$GeneralSettingsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$GeneralSettingsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$GeneralSettingsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> orgId = const Value.absent(),
            Value<String?> dfltStore = const Value.absent(),
            Value<String?> localCurrency = const Value.absent(),
            Value<int?> dfltPriceListCustomer = const Value.absent(),
            Value<String?> allowNegativeInventory = const Value.absent(),
            Value<String?> batch = const Value.absent(),
            Value<String?> isRoundOff = const Value.absent(),
            Value<String?> allowPriceChange = const Value.absent(),
            Value<String?> allowDiscountChange = const Value.absent(),
            Value<String?> allowCustomerCreationOffline = const Value.absent(),
          }) =>
              GeneralSettingsCompanion(
            orgId: orgId,
            dfltStore: dfltStore,
            localCurrency: localCurrency,
            dfltPriceListCustomer: dfltPriceListCustomer,
            allowNegativeInventory: allowNegativeInventory,
            batch: batch,
            isRoundOff: isRoundOff,
            allowPriceChange: allowPriceChange,
            allowDiscountChange: allowDiscountChange,
            allowCustomerCreationOffline: allowCustomerCreationOffline,
          ),
          createCompanionCallback: ({
            Value<int> orgId = const Value.absent(),
            Value<String?> dfltStore = const Value.absent(),
            Value<String?> localCurrency = const Value.absent(),
            Value<int?> dfltPriceListCustomer = const Value.absent(),
            Value<String?> allowNegativeInventory = const Value.absent(),
            Value<String?> batch = const Value.absent(),
            Value<String?> isRoundOff = const Value.absent(),
            Value<String?> allowPriceChange = const Value.absent(),
            Value<String?> allowDiscountChange = const Value.absent(),
            Value<String?> allowCustomerCreationOffline = const Value.absent(),
          }) =>
              GeneralSettingsCompanion.insert(
            orgId: orgId,
            dfltStore: dfltStore,
            localCurrency: localCurrency,
            dfltPriceListCustomer: dfltPriceListCustomer,
            allowNegativeInventory: allowNegativeInventory,
            batch: batch,
            isRoundOff: isRoundOff,
            allowPriceChange: allowPriceChange,
            allowDiscountChange: allowDiscountChange,
            allowCustomerCreationOffline: allowCustomerCreationOffline,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$GeneralSettingsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $GeneralSettingsTable,
    GeneralSetting,
    $$GeneralSettingsTableFilterComposer,
    $$GeneralSettingsTableOrderingComposer,
    $$GeneralSettingsTableAnnotationComposer,
    $$GeneralSettingsTableCreateCompanionBuilder,
    $$GeneralSettingsTableUpdateCompanionBuilder,
    (
      GeneralSetting,
      BaseReferences<_$AppDatabase, $GeneralSettingsTable, GeneralSetting>
    ),
    GeneralSetting,
    PrefetchHooks Function()>;
typedef $$SeriesForNextnumsTableCreateCompanionBuilder
    = SeriesForNextnumsCompanion Function({
  Value<int> id,
  Value<int?> orgId,
  Value<int?> seriesId,
  Value<int?> userId,
  Value<int?> formId,
  Value<int?> fromNum,
  Value<int?> nextNum,
  Value<int?> maxNum,
});
typedef $$SeriesForNextnumsTableUpdateCompanionBuilder
    = SeriesForNextnumsCompanion Function({
  Value<int> id,
  Value<int?> orgId,
  Value<int?> seriesId,
  Value<int?> userId,
  Value<int?> formId,
  Value<int?> fromNum,
  Value<int?> nextNum,
  Value<int?> maxNum,
});

class $$SeriesForNextnumsTableFilterComposer
    extends Composer<_$AppDatabase, $SeriesForNextnumsTable> {
  $$SeriesForNextnumsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get seriesId => $composableBuilder(
      column: $table.seriesId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get formId => $composableBuilder(
      column: $table.formId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get fromNum => $composableBuilder(
      column: $table.fromNum, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get nextNum => $composableBuilder(
      column: $table.nextNum, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get maxNum => $composableBuilder(
      column: $table.maxNum, builder: (column) => ColumnFilters(column));
}

class $$SeriesForNextnumsTableOrderingComposer
    extends Composer<_$AppDatabase, $SeriesForNextnumsTable> {
  $$SeriesForNextnumsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get seriesId => $composableBuilder(
      column: $table.seriesId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get formId => $composableBuilder(
      column: $table.formId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get fromNum => $composableBuilder(
      column: $table.fromNum, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get nextNum => $composableBuilder(
      column: $table.nextNum, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get maxNum => $composableBuilder(
      column: $table.maxNum, builder: (column) => ColumnOrderings(column));
}

class $$SeriesForNextnumsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SeriesForNextnumsTable> {
  $$SeriesForNextnumsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<int> get orgId =>
      $composableBuilder(column: $table.orgId, builder: (column) => column);

  GeneratedColumn<int> get seriesId =>
      $composableBuilder(column: $table.seriesId, builder: (column) => column);

  GeneratedColumn<int> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<int> get formId =>
      $composableBuilder(column: $table.formId, builder: (column) => column);

  GeneratedColumn<int> get fromNum =>
      $composableBuilder(column: $table.fromNum, builder: (column) => column);

  GeneratedColumn<int> get nextNum =>
      $composableBuilder(column: $table.nextNum, builder: (column) => column);

  GeneratedColumn<int> get maxNum =>
      $composableBuilder(column: $table.maxNum, builder: (column) => column);
}

class $$SeriesForNextnumsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SeriesForNextnumsTable,
    SeriesForNextnum,
    $$SeriesForNextnumsTableFilterComposer,
    $$SeriesForNextnumsTableOrderingComposer,
    $$SeriesForNextnumsTableAnnotationComposer,
    $$SeriesForNextnumsTableCreateCompanionBuilder,
    $$SeriesForNextnumsTableUpdateCompanionBuilder,
    (
      SeriesForNextnum,
      BaseReferences<_$AppDatabase, $SeriesForNextnumsTable, SeriesForNextnum>
    ),
    SeriesForNextnum,
    PrefetchHooks Function()> {
  $$SeriesForNextnumsTableTableManager(
      _$AppDatabase db, $SeriesForNextnumsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SeriesForNextnumsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SeriesForNextnumsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SeriesForNextnumsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<int?> seriesId = const Value.absent(),
            Value<int?> userId = const Value.absent(),
            Value<int?> formId = const Value.absent(),
            Value<int?> fromNum = const Value.absent(),
            Value<int?> nextNum = const Value.absent(),
            Value<int?> maxNum = const Value.absent(),
          }) =>
              SeriesForNextnumsCompanion(
            id: id,
            orgId: orgId,
            seriesId: seriesId,
            userId: userId,
            formId: formId,
            fromNum: fromNum,
            nextNum: nextNum,
            maxNum: maxNum,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<int?> seriesId = const Value.absent(),
            Value<int?> userId = const Value.absent(),
            Value<int?> formId = const Value.absent(),
            Value<int?> fromNum = const Value.absent(),
            Value<int?> nextNum = const Value.absent(),
            Value<int?> maxNum = const Value.absent(),
          }) =>
              SeriesForNextnumsCompanion.insert(
            id: id,
            orgId: orgId,
            seriesId: seriesId,
            userId: userId,
            formId: formId,
            fromNum: fromNum,
            nextNum: nextNum,
            maxNum: maxNum,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SeriesForNextnumsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SeriesForNextnumsTable,
    SeriesForNextnum,
    $$SeriesForNextnumsTableFilterComposer,
    $$SeriesForNextnumsTableOrderingComposer,
    $$SeriesForNextnumsTableAnnotationComposer,
    $$SeriesForNextnumsTableCreateCompanionBuilder,
    $$SeriesForNextnumsTableUpdateCompanionBuilder,
    (
      SeriesForNextnum,
      BaseReferences<_$AppDatabase, $SeriesForNextnumsTable, SeriesForNextnum>
    ),
    SeriesForNextnum,
    PrefetchHooks Function()>;
typedef $$MasterUsersTableCreateCompanionBuilder = MasterUsersCompanion
    Function({
  Value<int> userId,
  Value<int?> orgId,
  Value<String?> userCode,
  Value<String?> userName,
  Value<String?> mobile,
  Value<String?> email,
  Value<int?> storeId,
  Value<int?> priceList,
  Value<String?> inactive,
  Value<String?> imageUrl,
  Value<String?> updatedDate,
});
typedef $$MasterUsersTableUpdateCompanionBuilder = MasterUsersCompanion
    Function({
  Value<int> userId,
  Value<int?> orgId,
  Value<String?> userCode,
  Value<String?> userName,
  Value<String?> mobile,
  Value<String?> email,
  Value<int?> storeId,
  Value<int?> priceList,
  Value<String?> inactive,
  Value<String?> imageUrl,
  Value<String?> updatedDate,
});

class $$MasterUsersTableFilterComposer
    extends Composer<_$AppDatabase, $MasterUsersTable> {
  $$MasterUsersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userCode => $composableBuilder(
      column: $table.userCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get userName => $composableBuilder(
      column: $table.userName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mobile => $composableBuilder(
      column: $table.mobile, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get storeId => $composableBuilder(
      column: $table.storeId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get priceList => $composableBuilder(
      column: $table.priceList, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get inactive => $composableBuilder(
      column: $table.inactive, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => ColumnFilters(column));
}

class $$MasterUsersTableOrderingComposer
    extends Composer<_$AppDatabase, $MasterUsersTable> {
  $$MasterUsersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get userId => $composableBuilder(
      column: $table.userId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userCode => $composableBuilder(
      column: $table.userCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get userName => $composableBuilder(
      column: $table.userName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mobile => $composableBuilder(
      column: $table.mobile, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get storeId => $composableBuilder(
      column: $table.storeId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get priceList => $composableBuilder(
      column: $table.priceList, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get inactive => $composableBuilder(
      column: $table.inactive, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => ColumnOrderings(column));
}

class $$MasterUsersTableAnnotationComposer
    extends Composer<_$AppDatabase, $MasterUsersTable> {
  $$MasterUsersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get userId =>
      $composableBuilder(column: $table.userId, builder: (column) => column);

  GeneratedColumn<int> get orgId =>
      $composableBuilder(column: $table.orgId, builder: (column) => column);

  GeneratedColumn<String> get userCode =>
      $composableBuilder(column: $table.userCode, builder: (column) => column);

  GeneratedColumn<String> get userName =>
      $composableBuilder(column: $table.userName, builder: (column) => column);

  GeneratedColumn<String> get mobile =>
      $composableBuilder(column: $table.mobile, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<int> get storeId =>
      $composableBuilder(column: $table.storeId, builder: (column) => column);

  GeneratedColumn<int> get priceList =>
      $composableBuilder(column: $table.priceList, builder: (column) => column);

  GeneratedColumn<String> get inactive =>
      $composableBuilder(column: $table.inactive, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get updatedDate => $composableBuilder(
      column: $table.updatedDate, builder: (column) => column);
}

class $$MasterUsersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $MasterUsersTable,
    MasterUser,
    $$MasterUsersTableFilterComposer,
    $$MasterUsersTableOrderingComposer,
    $$MasterUsersTableAnnotationComposer,
    $$MasterUsersTableCreateCompanionBuilder,
    $$MasterUsersTableUpdateCompanionBuilder,
    (MasterUser, BaseReferences<_$AppDatabase, $MasterUsersTable, MasterUser>),
    MasterUser,
    PrefetchHooks Function()> {
  $$MasterUsersTableTableManager(_$AppDatabase db, $MasterUsersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$MasterUsersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$MasterUsersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$MasterUsersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> userId = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String?> userCode = const Value.absent(),
            Value<String?> userName = const Value.absent(),
            Value<String?> mobile = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<int?> storeId = const Value.absent(),
            Value<int?> priceList = const Value.absent(),
            Value<String?> inactive = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            Value<String?> updatedDate = const Value.absent(),
          }) =>
              MasterUsersCompanion(
            userId: userId,
            orgId: orgId,
            userCode: userCode,
            userName: userName,
            mobile: mobile,
            email: email,
            storeId: storeId,
            priceList: priceList,
            inactive: inactive,
            imageUrl: imageUrl,
            updatedDate: updatedDate,
          ),
          createCompanionCallback: ({
            Value<int> userId = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String?> userCode = const Value.absent(),
            Value<String?> userName = const Value.absent(),
            Value<String?> mobile = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<int?> storeId = const Value.absent(),
            Value<int?> priceList = const Value.absent(),
            Value<String?> inactive = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            Value<String?> updatedDate = const Value.absent(),
          }) =>
              MasterUsersCompanion.insert(
            userId: userId,
            orgId: orgId,
            userCode: userCode,
            userName: userName,
            mobile: mobile,
            email: email,
            storeId: storeId,
            priceList: priceList,
            inactive: inactive,
            imageUrl: imageUrl,
            updatedDate: updatedDate,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$MasterUsersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $MasterUsersTable,
    MasterUser,
    $$MasterUsersTableFilterComposer,
    $$MasterUsersTableOrderingComposer,
    $$MasterUsersTableAnnotationComposer,
    $$MasterUsersTableCreateCompanionBuilder,
    $$MasterUsersTableUpdateCompanionBuilder,
    (MasterUser, BaseReferences<_$AppDatabase, $MasterUsersTable, MasterUser>),
    MasterUser,
    PrefetchHooks Function()>;
typedef $$OrganisationDetailsTableCreateCompanionBuilder
    = OrganisationDetailsCompanion Function({
  Value<int> orgId,
  Value<String?> organisation,
  Value<String?> address,
  Value<String?> mobile,
  Value<String?> eMail,
  Value<String?> gstNo,
  Value<String?> panNo,
  Value<String?> imageUrl,
  Value<String?> state,
  Value<String?> country,
  Value<String?> zipCode,
});
typedef $$OrganisationDetailsTableUpdateCompanionBuilder
    = OrganisationDetailsCompanion Function({
  Value<int> orgId,
  Value<String?> organisation,
  Value<String?> address,
  Value<String?> mobile,
  Value<String?> eMail,
  Value<String?> gstNo,
  Value<String?> panNo,
  Value<String?> imageUrl,
  Value<String?> state,
  Value<String?> country,
  Value<String?> zipCode,
});

class $$OrganisationDetailsTableFilterComposer
    extends Composer<_$AppDatabase, $OrganisationDetailsTable> {
  $$OrganisationDetailsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get organisation => $composableBuilder(
      column: $table.organisation, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mobile => $composableBuilder(
      column: $table.mobile, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get eMail => $composableBuilder(
      column: $table.eMail, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gstNo => $composableBuilder(
      column: $table.gstNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get panNo => $composableBuilder(
      column: $table.panNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get state => $composableBuilder(
      column: $table.state, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get zipCode => $composableBuilder(
      column: $table.zipCode, builder: (column) => ColumnFilters(column));
}

class $$OrganisationDetailsTableOrderingComposer
    extends Composer<_$AppDatabase, $OrganisationDetailsTable> {
  $$OrganisationDetailsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get organisation => $composableBuilder(
      column: $table.organisation,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mobile => $composableBuilder(
      column: $table.mobile, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get eMail => $composableBuilder(
      column: $table.eMail, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gstNo => $composableBuilder(
      column: $table.gstNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get panNo => $composableBuilder(
      column: $table.panNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get imageUrl => $composableBuilder(
      column: $table.imageUrl, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get state => $composableBuilder(
      column: $table.state, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get country => $composableBuilder(
      column: $table.country, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get zipCode => $composableBuilder(
      column: $table.zipCode, builder: (column) => ColumnOrderings(column));
}

class $$OrganisationDetailsTableAnnotationComposer
    extends Composer<_$AppDatabase, $OrganisationDetailsTable> {
  $$OrganisationDetailsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get orgId =>
      $composableBuilder(column: $table.orgId, builder: (column) => column);

  GeneratedColumn<String> get organisation => $composableBuilder(
      column: $table.organisation, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get mobile =>
      $composableBuilder(column: $table.mobile, builder: (column) => column);

  GeneratedColumn<String> get eMail =>
      $composableBuilder(column: $table.eMail, builder: (column) => column);

  GeneratedColumn<String> get gstNo =>
      $composableBuilder(column: $table.gstNo, builder: (column) => column);

  GeneratedColumn<String> get panNo =>
      $composableBuilder(column: $table.panNo, builder: (column) => column);

  GeneratedColumn<String> get imageUrl =>
      $composableBuilder(column: $table.imageUrl, builder: (column) => column);

  GeneratedColumn<String> get state =>
      $composableBuilder(column: $table.state, builder: (column) => column);

  GeneratedColumn<String> get country =>
      $composableBuilder(column: $table.country, builder: (column) => column);

  GeneratedColumn<String> get zipCode =>
      $composableBuilder(column: $table.zipCode, builder: (column) => column);
}

class $$OrganisationDetailsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $OrganisationDetailsTable,
    OrganisationDetail,
    $$OrganisationDetailsTableFilterComposer,
    $$OrganisationDetailsTableOrderingComposer,
    $$OrganisationDetailsTableAnnotationComposer,
    $$OrganisationDetailsTableCreateCompanionBuilder,
    $$OrganisationDetailsTableUpdateCompanionBuilder,
    (
      OrganisationDetail,
      BaseReferences<_$AppDatabase, $OrganisationDetailsTable,
          OrganisationDetail>
    ),
    OrganisationDetail,
    PrefetchHooks Function()> {
  $$OrganisationDetailsTableTableManager(
      _$AppDatabase db, $OrganisationDetailsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OrganisationDetailsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OrganisationDetailsTableOrderingComposer(
                  $db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OrganisationDetailsTableAnnotationComposer(
                  $db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> orgId = const Value.absent(),
            Value<String?> organisation = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> mobile = const Value.absent(),
            Value<String?> eMail = const Value.absent(),
            Value<String?> gstNo = const Value.absent(),
            Value<String?> panNo = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            Value<String?> state = const Value.absent(),
            Value<String?> country = const Value.absent(),
            Value<String?> zipCode = const Value.absent(),
          }) =>
              OrganisationDetailsCompanion(
            orgId: orgId,
            organisation: organisation,
            address: address,
            mobile: mobile,
            eMail: eMail,
            gstNo: gstNo,
            panNo: panNo,
            imageUrl: imageUrl,
            state: state,
            country: country,
            zipCode: zipCode,
          ),
          createCompanionCallback: ({
            Value<int> orgId = const Value.absent(),
            Value<String?> organisation = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> mobile = const Value.absent(),
            Value<String?> eMail = const Value.absent(),
            Value<String?> gstNo = const Value.absent(),
            Value<String?> panNo = const Value.absent(),
            Value<String?> imageUrl = const Value.absent(),
            Value<String?> state = const Value.absent(),
            Value<String?> country = const Value.absent(),
            Value<String?> zipCode = const Value.absent(),
          }) =>
              OrganisationDetailsCompanion.insert(
            orgId: orgId,
            organisation: organisation,
            address: address,
            mobile: mobile,
            eMail: eMail,
            gstNo: gstNo,
            panNo: panNo,
            imageUrl: imageUrl,
            state: state,
            country: country,
            zipCode: zipCode,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$OrganisationDetailsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $OrganisationDetailsTable,
    OrganisationDetail,
    $$OrganisationDetailsTableFilterComposer,
    $$OrganisationDetailsTableOrderingComposer,
    $$OrganisationDetailsTableAnnotationComposer,
    $$OrganisationDetailsTableCreateCompanionBuilder,
    $$OrganisationDetailsTableUpdateCompanionBuilder,
    (
      OrganisationDetail,
      BaseReferences<_$AppDatabase, $OrganisationDetailsTable,
          OrganisationDetail>
    ),
    OrganisationDetail,
    PrefetchHooks Function()>;
typedef $$SeriesListsTableCreateCompanionBuilder = SeriesListsCompanion
    Function({
  Value<int> seriesId,
  Value<int?> orgId,
  Value<String?> seriesName,
  Value<String?> printHeader,
  Value<String?> mobileNo,
  Value<String?> address,
  Value<String?> gstNo,
});
typedef $$SeriesListsTableUpdateCompanionBuilder = SeriesListsCompanion
    Function({
  Value<int> seriesId,
  Value<int?> orgId,
  Value<String?> seriesName,
  Value<String?> printHeader,
  Value<String?> mobileNo,
  Value<String?> address,
  Value<String?> gstNo,
});

class $$SeriesListsTableFilterComposer
    extends Composer<_$AppDatabase, $SeriesListsTable> {
  $$SeriesListsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get seriesId => $composableBuilder(
      column: $table.seriesId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get seriesName => $composableBuilder(
      column: $table.seriesName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get printHeader => $composableBuilder(
      column: $table.printHeader, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mobileNo => $composableBuilder(
      column: $table.mobileNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gstNo => $composableBuilder(
      column: $table.gstNo, builder: (column) => ColumnFilters(column));
}

class $$SeriesListsTableOrderingComposer
    extends Composer<_$AppDatabase, $SeriesListsTable> {
  $$SeriesListsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get seriesId => $composableBuilder(
      column: $table.seriesId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get seriesName => $composableBuilder(
      column: $table.seriesName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get printHeader => $composableBuilder(
      column: $table.printHeader, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mobileNo => $composableBuilder(
      column: $table.mobileNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gstNo => $composableBuilder(
      column: $table.gstNo, builder: (column) => ColumnOrderings(column));
}

class $$SeriesListsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SeriesListsTable> {
  $$SeriesListsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get seriesId =>
      $composableBuilder(column: $table.seriesId, builder: (column) => column);

  GeneratedColumn<int> get orgId =>
      $composableBuilder(column: $table.orgId, builder: (column) => column);

  GeneratedColumn<String> get seriesName => $composableBuilder(
      column: $table.seriesName, builder: (column) => column);

  GeneratedColumn<String> get printHeader => $composableBuilder(
      column: $table.printHeader, builder: (column) => column);

  GeneratedColumn<String> get mobileNo =>
      $composableBuilder(column: $table.mobileNo, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get gstNo =>
      $composableBuilder(column: $table.gstNo, builder: (column) => column);
}

class $$SeriesListsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SeriesListsTable,
    SeriesList,
    $$SeriesListsTableFilterComposer,
    $$SeriesListsTableOrderingComposer,
    $$SeriesListsTableAnnotationComposer,
    $$SeriesListsTableCreateCompanionBuilder,
    $$SeriesListsTableUpdateCompanionBuilder,
    (SeriesList, BaseReferences<_$AppDatabase, $SeriesListsTable, SeriesList>),
    SeriesList,
    PrefetchHooks Function()> {
  $$SeriesListsTableTableManager(_$AppDatabase db, $SeriesListsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SeriesListsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SeriesListsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SeriesListsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> seriesId = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String?> seriesName = const Value.absent(),
            Value<String?> printHeader = const Value.absent(),
            Value<String?> mobileNo = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> gstNo = const Value.absent(),
          }) =>
              SeriesListsCompanion(
            seriesId: seriesId,
            orgId: orgId,
            seriesName: seriesName,
            printHeader: printHeader,
            mobileNo: mobileNo,
            address: address,
            gstNo: gstNo,
          ),
          createCompanionCallback: ({
            Value<int> seriesId = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String?> seriesName = const Value.absent(),
            Value<String?> printHeader = const Value.absent(),
            Value<String?> mobileNo = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> gstNo = const Value.absent(),
          }) =>
              SeriesListsCompanion.insert(
            seriesId: seriesId,
            orgId: orgId,
            seriesName: seriesName,
            printHeader: printHeader,
            mobileNo: mobileNo,
            address: address,
            gstNo: gstNo,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SeriesListsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SeriesListsTable,
    SeriesList,
    $$SeriesListsTableFilterComposer,
    $$SeriesListsTableOrderingComposer,
    $$SeriesListsTableAnnotationComposer,
    $$SeriesListsTableCreateCompanionBuilder,
    $$SeriesListsTableUpdateCompanionBuilder,
    (SeriesList, BaseReferences<_$AppDatabase, $SeriesListsTable, SeriesList>),
    SeriesList,
    PrefetchHooks Function()>;
typedef $$StoresTableCreateCompanionBuilder = StoresCompanion Function({
  Value<int> strId,
  Value<int?> orgId,
  Value<String?> strName,
  Value<String?> inactive,
});
typedef $$StoresTableUpdateCompanionBuilder = StoresCompanion Function({
  Value<int> strId,
  Value<int?> orgId,
  Value<String?> strName,
  Value<String?> inactive,
});

class $$StoresTableFilterComposer
    extends Composer<_$AppDatabase, $StoresTable> {
  $$StoresTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get strId => $composableBuilder(
      column: $table.strId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get strName => $composableBuilder(
      column: $table.strName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get inactive => $composableBuilder(
      column: $table.inactive, builder: (column) => ColumnFilters(column));
}

class $$StoresTableOrderingComposer
    extends Composer<_$AppDatabase, $StoresTable> {
  $$StoresTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get strId => $composableBuilder(
      column: $table.strId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get strName => $composableBuilder(
      column: $table.strName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get inactive => $composableBuilder(
      column: $table.inactive, builder: (column) => ColumnOrderings(column));
}

class $$StoresTableAnnotationComposer
    extends Composer<_$AppDatabase, $StoresTable> {
  $$StoresTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get strId =>
      $composableBuilder(column: $table.strId, builder: (column) => column);

  GeneratedColumn<int> get orgId =>
      $composableBuilder(column: $table.orgId, builder: (column) => column);

  GeneratedColumn<String> get strName =>
      $composableBuilder(column: $table.strName, builder: (column) => column);

  GeneratedColumn<String> get inactive =>
      $composableBuilder(column: $table.inactive, builder: (column) => column);
}

class $$StoresTableTableManager extends RootTableManager<
    _$AppDatabase,
    $StoresTable,
    Store,
    $$StoresTableFilterComposer,
    $$StoresTableOrderingComposer,
    $$StoresTableAnnotationComposer,
    $$StoresTableCreateCompanionBuilder,
    $$StoresTableUpdateCompanionBuilder,
    (Store, BaseReferences<_$AppDatabase, $StoresTable, Store>),
    Store,
    PrefetchHooks Function()> {
  $$StoresTableTableManager(_$AppDatabase db, $StoresTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$StoresTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$StoresTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$StoresTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> strId = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String?> strName = const Value.absent(),
            Value<String?> inactive = const Value.absent(),
          }) =>
              StoresCompanion(
            strId: strId,
            orgId: orgId,
            strName: strName,
            inactive: inactive,
          ),
          createCompanionCallback: ({
            Value<int> strId = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String?> strName = const Value.absent(),
            Value<String?> inactive = const Value.absent(),
          }) =>
              StoresCompanion.insert(
            strId: strId,
            orgId: orgId,
            strName: strName,
            inactive: inactive,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$StoresTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $StoresTable,
    Store,
    $$StoresTableFilterComposer,
    $$StoresTableOrderingComposer,
    $$StoresTableAnnotationComposer,
    $$StoresTableCreateCompanionBuilder,
    $$StoresTableUpdateCompanionBuilder,
    (Store, BaseReferences<_$AppDatabase, $StoresTable, Store>),
    Store,
    PrefetchHooks Function()>;
typedef $$FrieghtsTableCreateCompanionBuilder = FrieghtsCompanion Function({
  Value<int> accountCode,
  Value<int?> orgId,
  Value<String?> accountName,
});
typedef $$FrieghtsTableUpdateCompanionBuilder = FrieghtsCompanion Function({
  Value<int> accountCode,
  Value<int?> orgId,
  Value<String?> accountName,
});

class $$FrieghtsTableFilterComposer
    extends Composer<_$AppDatabase, $FrieghtsTable> {
  $$FrieghtsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get accountCode => $composableBuilder(
      column: $table.accountCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get accountName => $composableBuilder(
      column: $table.accountName, builder: (column) => ColumnFilters(column));
}

class $$FrieghtsTableOrderingComposer
    extends Composer<_$AppDatabase, $FrieghtsTable> {
  $$FrieghtsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get accountCode => $composableBuilder(
      column: $table.accountCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get accountName => $composableBuilder(
      column: $table.accountName, builder: (column) => ColumnOrderings(column));
}

class $$FrieghtsTableAnnotationComposer
    extends Composer<_$AppDatabase, $FrieghtsTable> {
  $$FrieghtsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get accountCode => $composableBuilder(
      column: $table.accountCode, builder: (column) => column);

  GeneratedColumn<int> get orgId =>
      $composableBuilder(column: $table.orgId, builder: (column) => column);

  GeneratedColumn<String> get accountName => $composableBuilder(
      column: $table.accountName, builder: (column) => column);
}

class $$FrieghtsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $FrieghtsTable,
    Frieght,
    $$FrieghtsTableFilterComposer,
    $$FrieghtsTableOrderingComposer,
    $$FrieghtsTableAnnotationComposer,
    $$FrieghtsTableCreateCompanionBuilder,
    $$FrieghtsTableUpdateCompanionBuilder,
    (Frieght, BaseReferences<_$AppDatabase, $FrieghtsTable, Frieght>),
    Frieght,
    PrefetchHooks Function()> {
  $$FrieghtsTableTableManager(_$AppDatabase db, $FrieghtsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$FrieghtsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$FrieghtsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$FrieghtsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> accountCode = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String?> accountName = const Value.absent(),
          }) =>
              FrieghtsCompanion(
            accountCode: accountCode,
            orgId: orgId,
            accountName: accountName,
          ),
          createCompanionCallback: ({
            Value<int> accountCode = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String?> accountName = const Value.absent(),
          }) =>
              FrieghtsCompanion.insert(
            accountCode: accountCode,
            orgId: orgId,
            accountName: accountName,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$FrieghtsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $FrieghtsTable,
    Frieght,
    $$FrieghtsTableFilterComposer,
    $$FrieghtsTableOrderingComposer,
    $$FrieghtsTableAnnotationComposer,
    $$FrieghtsTableCreateCompanionBuilder,
    $$FrieghtsTableUpdateCompanionBuilder,
    (Frieght, BaseReferences<_$AppDatabase, $FrieghtsTable, Frieght>),
    Frieght,
    PrefetchHooks Function()>;
typedef $$PaymentTermsTableCreateCompanionBuilder = PaymentTermsCompanion
    Function({
  Value<int> paymentId,
  Value<int?> orgId,
  Value<String?> paymentCode,
  Value<int?> days,
  Value<int?> maximumCredit,
  Value<int?> discountPercent,
  Value<int?> priceList,
});
typedef $$PaymentTermsTableUpdateCompanionBuilder = PaymentTermsCompanion
    Function({
  Value<int> paymentId,
  Value<int?> orgId,
  Value<String?> paymentCode,
  Value<int?> days,
  Value<int?> maximumCredit,
  Value<int?> discountPercent,
  Value<int?> priceList,
});

class $$PaymentTermsTableFilterComposer
    extends Composer<_$AppDatabase, $PaymentTermsTable> {
  $$PaymentTermsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get paymentId => $composableBuilder(
      column: $table.paymentId, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get paymentCode => $composableBuilder(
      column: $table.paymentCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get days => $composableBuilder(
      column: $table.days, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get maximumCredit => $composableBuilder(
      column: $table.maximumCredit, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get discountPercent => $composableBuilder(
      column: $table.discountPercent,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get priceList => $composableBuilder(
      column: $table.priceList, builder: (column) => ColumnFilters(column));
}

class $$PaymentTermsTableOrderingComposer
    extends Composer<_$AppDatabase, $PaymentTermsTable> {
  $$PaymentTermsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get paymentId => $composableBuilder(
      column: $table.paymentId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get orgId => $composableBuilder(
      column: $table.orgId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get paymentCode => $composableBuilder(
      column: $table.paymentCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get days => $composableBuilder(
      column: $table.days, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get maximumCredit => $composableBuilder(
      column: $table.maximumCredit,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get discountPercent => $composableBuilder(
      column: $table.discountPercent,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get priceList => $composableBuilder(
      column: $table.priceList, builder: (column) => ColumnOrderings(column));
}

class $$PaymentTermsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PaymentTermsTable> {
  $$PaymentTermsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get paymentId =>
      $composableBuilder(column: $table.paymentId, builder: (column) => column);

  GeneratedColumn<int> get orgId =>
      $composableBuilder(column: $table.orgId, builder: (column) => column);

  GeneratedColumn<String> get paymentCode => $composableBuilder(
      column: $table.paymentCode, builder: (column) => column);

  GeneratedColumn<int> get days =>
      $composableBuilder(column: $table.days, builder: (column) => column);

  GeneratedColumn<int> get maximumCredit => $composableBuilder(
      column: $table.maximumCredit, builder: (column) => column);

  GeneratedColumn<int> get discountPercent => $composableBuilder(
      column: $table.discountPercent, builder: (column) => column);

  GeneratedColumn<int> get priceList =>
      $composableBuilder(column: $table.priceList, builder: (column) => column);
}

class $$PaymentTermsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PaymentTermsTable,
    PaymentTerm,
    $$PaymentTermsTableFilterComposer,
    $$PaymentTermsTableOrderingComposer,
    $$PaymentTermsTableAnnotationComposer,
    $$PaymentTermsTableCreateCompanionBuilder,
    $$PaymentTermsTableUpdateCompanionBuilder,
    (
      PaymentTerm,
      BaseReferences<_$AppDatabase, $PaymentTermsTable, PaymentTerm>
    ),
    PaymentTerm,
    PrefetchHooks Function()> {
  $$PaymentTermsTableTableManager(_$AppDatabase db, $PaymentTermsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PaymentTermsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PaymentTermsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PaymentTermsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> paymentId = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String?> paymentCode = const Value.absent(),
            Value<int?> days = const Value.absent(),
            Value<int?> maximumCredit = const Value.absent(),
            Value<int?> discountPercent = const Value.absent(),
            Value<int?> priceList = const Value.absent(),
          }) =>
              PaymentTermsCompanion(
            paymentId: paymentId,
            orgId: orgId,
            paymentCode: paymentCode,
            days: days,
            maximumCredit: maximumCredit,
            discountPercent: discountPercent,
            priceList: priceList,
          ),
          createCompanionCallback: ({
            Value<int> paymentId = const Value.absent(),
            Value<int?> orgId = const Value.absent(),
            Value<String?> paymentCode = const Value.absent(),
            Value<int?> days = const Value.absent(),
            Value<int?> maximumCredit = const Value.absent(),
            Value<int?> discountPercent = const Value.absent(),
            Value<int?> priceList = const Value.absent(),
          }) =>
              PaymentTermsCompanion.insert(
            paymentId: paymentId,
            orgId: orgId,
            paymentCode: paymentCode,
            days: days,
            maximumCredit: maximumCredit,
            discountPercent: discountPercent,
            priceList: priceList,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PaymentTermsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PaymentTermsTable,
    PaymentTerm,
    $$PaymentTermsTableFilterComposer,
    $$PaymentTermsTableOrderingComposer,
    $$PaymentTermsTableAnnotationComposer,
    $$PaymentTermsTableCreateCompanionBuilder,
    $$PaymentTermsTableUpdateCompanionBuilder,
    (
      PaymentTerm,
      BaseReferences<_$AppDatabase, $PaymentTermsTable, PaymentTerm>
    ),
    PaymentTerm,
    PrefetchHooks Function()>;
typedef $$ModeOfDispatchesTableCreateCompanionBuilder
    = ModeOfDispatchesCompanion Function({
  Value<int> id,
  Value<String?> name,
});
typedef $$ModeOfDispatchesTableUpdateCompanionBuilder
    = ModeOfDispatchesCompanion Function({
  Value<int> id,
  Value<String?> name,
});

class $$ModeOfDispatchesTableFilterComposer
    extends Composer<_$AppDatabase, $ModeOfDispatchesTable> {
  $$ModeOfDispatchesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnFilters(column));
}

class $$ModeOfDispatchesTableOrderingComposer
    extends Composer<_$AppDatabase, $ModeOfDispatchesTable> {
  $$ModeOfDispatchesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get name => $composableBuilder(
      column: $table.name, builder: (column) => ColumnOrderings(column));
}

class $$ModeOfDispatchesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ModeOfDispatchesTable> {
  $$ModeOfDispatchesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get name =>
      $composableBuilder(column: $table.name, builder: (column) => column);
}

class $$ModeOfDispatchesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ModeOfDispatchesTable,
    ModeOfDispatche,
    $$ModeOfDispatchesTableFilterComposer,
    $$ModeOfDispatchesTableOrderingComposer,
    $$ModeOfDispatchesTableAnnotationComposer,
    $$ModeOfDispatchesTableCreateCompanionBuilder,
    $$ModeOfDispatchesTableUpdateCompanionBuilder,
    (
      ModeOfDispatche,
      BaseReferences<_$AppDatabase, $ModeOfDispatchesTable, ModeOfDispatche>
    ),
    ModeOfDispatche,
    PrefetchHooks Function()> {
  $$ModeOfDispatchesTableTableManager(
      _$AppDatabase db, $ModeOfDispatchesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ModeOfDispatchesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ModeOfDispatchesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ModeOfDispatchesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
          }) =>
              ModeOfDispatchesCompanion(
            id: id,
            name: name,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> name = const Value.absent(),
          }) =>
              ModeOfDispatchesCompanion.insert(
            id: id,
            name: name,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ModeOfDispatchesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ModeOfDispatchesTable,
    ModeOfDispatche,
    $$ModeOfDispatchesTableFilterComposer,
    $$ModeOfDispatchesTableOrderingComposer,
    $$ModeOfDispatchesTableAnnotationComposer,
    $$ModeOfDispatchesTableCreateCompanionBuilder,
    $$ModeOfDispatchesTableUpdateCompanionBuilder,
    (
      ModeOfDispatche,
      BaseReferences<_$AppDatabase, $ModeOfDispatchesTable, ModeOfDispatche>
    ),
    ModeOfDispatche,
    PrefetchHooks Function()>;
typedef $$PriceListsTableCreateCompanionBuilder = PriceListsCompanion Function({
  Value<int> priceList,
  Value<String?> priceListName,
});
typedef $$PriceListsTableUpdateCompanionBuilder = PriceListsCompanion Function({
  Value<int> priceList,
  Value<String?> priceListName,
});

class $$PriceListsTableFilterComposer
    extends Composer<_$AppDatabase, $PriceListsTable> {
  $$PriceListsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get priceList => $composableBuilder(
      column: $table.priceList, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get priceListName => $composableBuilder(
      column: $table.priceListName, builder: (column) => ColumnFilters(column));
}

class $$PriceListsTableOrderingComposer
    extends Composer<_$AppDatabase, $PriceListsTable> {
  $$PriceListsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get priceList => $composableBuilder(
      column: $table.priceList, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get priceListName => $composableBuilder(
      column: $table.priceListName,
      builder: (column) => ColumnOrderings(column));
}

class $$PriceListsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PriceListsTable> {
  $$PriceListsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get priceList =>
      $composableBuilder(column: $table.priceList, builder: (column) => column);

  GeneratedColumn<String> get priceListName => $composableBuilder(
      column: $table.priceListName, builder: (column) => column);
}

class $$PriceListsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PriceListsTable,
    PriceList,
    $$PriceListsTableFilterComposer,
    $$PriceListsTableOrderingComposer,
    $$PriceListsTableAnnotationComposer,
    $$PriceListsTableCreateCompanionBuilder,
    $$PriceListsTableUpdateCompanionBuilder,
    (PriceList, BaseReferences<_$AppDatabase, $PriceListsTable, PriceList>),
    PriceList,
    PrefetchHooks Function()> {
  $$PriceListsTableTableManager(_$AppDatabase db, $PriceListsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PriceListsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PriceListsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PriceListsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> priceList = const Value.absent(),
            Value<String?> priceListName = const Value.absent(),
          }) =>
              PriceListsCompanion(
            priceList: priceList,
            priceListName: priceListName,
          ),
          createCompanionCallback: ({
            Value<int> priceList = const Value.absent(),
            Value<String?> priceListName = const Value.absent(),
          }) =>
              PriceListsCompanion.insert(
            priceList: priceList,
            priceListName: priceListName,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PriceListsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PriceListsTable,
    PriceList,
    $$PriceListsTableFilterComposer,
    $$PriceListsTableOrderingComposer,
    $$PriceListsTableAnnotationComposer,
    $$PriceListsTableCreateCompanionBuilder,
    $$PriceListsTableUpdateCompanionBuilder,
    (PriceList, BaseReferences<_$AppDatabase, $PriceListsTable, PriceList>),
    PriceList,
    PrefetchHooks Function()>;
typedef $$SalesPersonsTableCreateCompanionBuilder = SalesPersonsCompanion
    Function({
  Value<int> salesPerson,
  Value<String?> salesPersonName,
});
typedef $$SalesPersonsTableUpdateCompanionBuilder = SalesPersonsCompanion
    Function({
  Value<int> salesPerson,
  Value<String?> salesPersonName,
});

class $$SalesPersonsTableFilterComposer
    extends Composer<_$AppDatabase, $SalesPersonsTable> {
  $$SalesPersonsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get salesPerson => $composableBuilder(
      column: $table.salesPerson, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get salesPersonName => $composableBuilder(
      column: $table.salesPersonName,
      builder: (column) => ColumnFilters(column));
}

class $$SalesPersonsTableOrderingComposer
    extends Composer<_$AppDatabase, $SalesPersonsTable> {
  $$SalesPersonsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get salesPerson => $composableBuilder(
      column: $table.salesPerson, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get salesPersonName => $composableBuilder(
      column: $table.salesPersonName,
      builder: (column) => ColumnOrderings(column));
}

class $$SalesPersonsTableAnnotationComposer
    extends Composer<_$AppDatabase, $SalesPersonsTable> {
  $$SalesPersonsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get salesPerson => $composableBuilder(
      column: $table.salesPerson, builder: (column) => column);

  GeneratedColumn<String> get salesPersonName => $composableBuilder(
      column: $table.salesPersonName, builder: (column) => column);
}

class $$SalesPersonsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SalesPersonsTable,
    SalesPerson,
    $$SalesPersonsTableFilterComposer,
    $$SalesPersonsTableOrderingComposer,
    $$SalesPersonsTableAnnotationComposer,
    $$SalesPersonsTableCreateCompanionBuilder,
    $$SalesPersonsTableUpdateCompanionBuilder,
    (
      SalesPerson,
      BaseReferences<_$AppDatabase, $SalesPersonsTable, SalesPerson>
    ),
    SalesPerson,
    PrefetchHooks Function()> {
  $$SalesPersonsTableTableManager(_$AppDatabase db, $SalesPersonsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SalesPersonsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SalesPersonsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SalesPersonsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> salesPerson = const Value.absent(),
            Value<String?> salesPersonName = const Value.absent(),
          }) =>
              SalesPersonsCompanion(
            salesPerson: salesPerson,
            salesPersonName: salesPersonName,
          ),
          createCompanionCallback: ({
            Value<int> salesPerson = const Value.absent(),
            Value<String?> salesPersonName = const Value.absent(),
          }) =>
              SalesPersonsCompanion.insert(
            salesPerson: salesPerson,
            salesPersonName: salesPersonName,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SalesPersonsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SalesPersonsTable,
    SalesPerson,
    $$SalesPersonsTableFilterComposer,
    $$SalesPersonsTableOrderingComposer,
    $$SalesPersonsTableAnnotationComposer,
    $$SalesPersonsTableCreateCompanionBuilder,
    $$SalesPersonsTableUpdateCompanionBuilder,
    (
      SalesPerson,
      BaseReferences<_$AppDatabase, $SalesPersonsTable, SalesPerson>
    ),
    SalesPerson,
    PrefetchHooks Function()>;
typedef $$ItemUomsTableCreateCompanionBuilder = ItemUomsCompanion Function({
  Value<int> id,
  required String itemNo,
  Value<String?> uom,
  Value<double> price,
  Value<int> discount,
  Value<double> quantity,
});
typedef $$ItemUomsTableUpdateCompanionBuilder = ItemUomsCompanion Function({
  Value<int> id,
  Value<String> itemNo,
  Value<String?> uom,
  Value<double> price,
  Value<int> discount,
  Value<double> quantity,
});

class $$ItemUomsTableFilterComposer
    extends Composer<_$AppDatabase, $ItemUomsTable> {
  $$ItemUomsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemNo => $composableBuilder(
      column: $table.itemNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get uom => $composableBuilder(
      column: $table.uom, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get discount => $composableBuilder(
      column: $table.discount, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get quantity => $composableBuilder(
      column: $table.quantity, builder: (column) => ColumnFilters(column));
}

class $$ItemUomsTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemUomsTable> {
  $$ItemUomsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemNo => $composableBuilder(
      column: $table.itemNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get uom => $composableBuilder(
      column: $table.uom, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get discount => $composableBuilder(
      column: $table.discount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get quantity => $composableBuilder(
      column: $table.quantity, builder: (column) => ColumnOrderings(column));
}

class $$ItemUomsTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemUomsTable> {
  $$ItemUomsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get itemNo =>
      $composableBuilder(column: $table.itemNo, builder: (column) => column);

  GeneratedColumn<String> get uom =>
      $composableBuilder(column: $table.uom, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<int> get discount =>
      $composableBuilder(column: $table.discount, builder: (column) => column);

  GeneratedColumn<double> get quantity =>
      $composableBuilder(column: $table.quantity, builder: (column) => column);
}

class $$ItemUomsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemUomsTable,
    ItemUom,
    $$ItemUomsTableFilterComposer,
    $$ItemUomsTableOrderingComposer,
    $$ItemUomsTableAnnotationComposer,
    $$ItemUomsTableCreateCompanionBuilder,
    $$ItemUomsTableUpdateCompanionBuilder,
    (ItemUom, BaseReferences<_$AppDatabase, $ItemUomsTable, ItemUom>),
    ItemUom,
    PrefetchHooks Function()> {
  $$ItemUomsTableTableManager(_$AppDatabase db, $ItemUomsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemUomsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemUomsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemUomsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> itemNo = const Value.absent(),
            Value<String?> uom = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<int> discount = const Value.absent(),
            Value<double> quantity = const Value.absent(),
          }) =>
              ItemUomsCompanion(
            id: id,
            itemNo: itemNo,
            uom: uom,
            price: price,
            discount: discount,
            quantity: quantity,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String itemNo,
            Value<String?> uom = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<int> discount = const Value.absent(),
            Value<double> quantity = const Value.absent(),
          }) =>
              ItemUomsCompanion.insert(
            id: id,
            itemNo: itemNo,
            uom: uom,
            price: price,
            discount: discount,
            quantity: quantity,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ItemUomsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ItemUomsTable,
    ItemUom,
    $$ItemUomsTableFilterComposer,
    $$ItemUomsTableOrderingComposer,
    $$ItemUomsTableAnnotationComposer,
    $$ItemUomsTableCreateCompanionBuilder,
    $$ItemUomsTableUpdateCompanionBuilder,
    (ItemUom, BaseReferences<_$AppDatabase, $ItemUomsTable, ItemUom>),
    ItemUom,
    PrefetchHooks Function()>;
typedef $$ItemBatchesTableCreateCompanionBuilder = ItemBatchesCompanion
    Function({
  Value<int> id,
  required String itemNo,
  Value<String?> batchCode,
  Value<double> stock,
  Value<String?> expDate,
  Value<String?> barcode,
});
typedef $$ItemBatchesTableUpdateCompanionBuilder = ItemBatchesCompanion
    Function({
  Value<int> id,
  Value<String> itemNo,
  Value<String?> batchCode,
  Value<double> stock,
  Value<String?> expDate,
  Value<String?> barcode,
});

class $$ItemBatchesTableFilterComposer
    extends Composer<_$AppDatabase, $ItemBatchesTable> {
  $$ItemBatchesTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get itemNo => $composableBuilder(
      column: $table.itemNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get batchCode => $composableBuilder(
      column: $table.batchCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get stock => $composableBuilder(
      column: $table.stock, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get expDate => $composableBuilder(
      column: $table.expDate, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get barcode => $composableBuilder(
      column: $table.barcode, builder: (column) => ColumnFilters(column));
}

class $$ItemBatchesTableOrderingComposer
    extends Composer<_$AppDatabase, $ItemBatchesTable> {
  $$ItemBatchesTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get itemNo => $composableBuilder(
      column: $table.itemNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get batchCode => $composableBuilder(
      column: $table.batchCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get stock => $composableBuilder(
      column: $table.stock, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get expDate => $composableBuilder(
      column: $table.expDate, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get barcode => $composableBuilder(
      column: $table.barcode, builder: (column) => ColumnOrderings(column));
}

class $$ItemBatchesTableAnnotationComposer
    extends Composer<_$AppDatabase, $ItemBatchesTable> {
  $$ItemBatchesTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get itemNo =>
      $composableBuilder(column: $table.itemNo, builder: (column) => column);

  GeneratedColumn<String> get batchCode =>
      $composableBuilder(column: $table.batchCode, builder: (column) => column);

  GeneratedColumn<double> get stock =>
      $composableBuilder(column: $table.stock, builder: (column) => column);

  GeneratedColumn<String> get expDate =>
      $composableBuilder(column: $table.expDate, builder: (column) => column);

  GeneratedColumn<String> get barcode =>
      $composableBuilder(column: $table.barcode, builder: (column) => column);
}

class $$ItemBatchesTableTableManager extends RootTableManager<
    _$AppDatabase,
    $ItemBatchesTable,
    ItemBatche,
    $$ItemBatchesTableFilterComposer,
    $$ItemBatchesTableOrderingComposer,
    $$ItemBatchesTableAnnotationComposer,
    $$ItemBatchesTableCreateCompanionBuilder,
    $$ItemBatchesTableUpdateCompanionBuilder,
    (ItemBatche, BaseReferences<_$AppDatabase, $ItemBatchesTable, ItemBatche>),
    ItemBatche,
    PrefetchHooks Function()> {
  $$ItemBatchesTableTableManager(_$AppDatabase db, $ItemBatchesTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$ItemBatchesTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$ItemBatchesTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$ItemBatchesTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> itemNo = const Value.absent(),
            Value<String?> batchCode = const Value.absent(),
            Value<double> stock = const Value.absent(),
            Value<String?> expDate = const Value.absent(),
            Value<String?> barcode = const Value.absent(),
          }) =>
              ItemBatchesCompanion(
            id: id,
            itemNo: itemNo,
            batchCode: batchCode,
            stock: stock,
            expDate: expDate,
            barcode: barcode,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String itemNo,
            Value<String?> batchCode = const Value.absent(),
            Value<double> stock = const Value.absent(),
            Value<String?> expDate = const Value.absent(),
            Value<String?> barcode = const Value.absent(),
          }) =>
              ItemBatchesCompanion.insert(
            id: id,
            itemNo: itemNo,
            batchCode: batchCode,
            stock: stock,
            expDate: expDate,
            barcode: barcode,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$ItemBatchesTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $ItemBatchesTable,
    ItemBatche,
    $$ItemBatchesTableFilterComposer,
    $$ItemBatchesTableOrderingComposer,
    $$ItemBatchesTableAnnotationComposer,
    $$ItemBatchesTableCreateCompanionBuilder,
    $$ItemBatchesTableUpdateCompanionBuilder,
    (ItemBatche, BaseReferences<_$AppDatabase, $ItemBatchesTable, ItemBatche>),
    ItemBatche,
    PrefetchHooks Function()>;
typedef $$PrintDetailsTableCreateCompanionBuilder = PrintDetailsCompanion
    Function({
  Value<int> id,
  Value<String?> printHeader,
  Value<String?> address,
  Value<String?> gstNo,
  Value<String?> stateName,
  Value<String?> stateCode,
  Value<String?> email,
  Value<String?> mobileNo,
  Value<String?> printerSize,
});
typedef $$PrintDetailsTableUpdateCompanionBuilder = PrintDetailsCompanion
    Function({
  Value<int> id,
  Value<String?> printHeader,
  Value<String?> address,
  Value<String?> gstNo,
  Value<String?> stateName,
  Value<String?> stateCode,
  Value<String?> email,
  Value<String?> mobileNo,
  Value<String?> printerSize,
});

class $$PrintDetailsTableFilterComposer
    extends Composer<_$AppDatabase, $PrintDetailsTable> {
  $$PrintDetailsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get printHeader => $composableBuilder(
      column: $table.printHeader, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get gstNo => $composableBuilder(
      column: $table.gstNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get stateName => $composableBuilder(
      column: $table.stateName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get stateCode => $composableBuilder(
      column: $table.stateCode, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get mobileNo => $composableBuilder(
      column: $table.mobileNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get printerSize => $composableBuilder(
      column: $table.printerSize, builder: (column) => ColumnFilters(column));
}

class $$PrintDetailsTableOrderingComposer
    extends Composer<_$AppDatabase, $PrintDetailsTable> {
  $$PrintDetailsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get printHeader => $composableBuilder(
      column: $table.printHeader, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get address => $composableBuilder(
      column: $table.address, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get gstNo => $composableBuilder(
      column: $table.gstNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get stateName => $composableBuilder(
      column: $table.stateName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get stateCode => $composableBuilder(
      column: $table.stateCode, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get mobileNo => $composableBuilder(
      column: $table.mobileNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get printerSize => $composableBuilder(
      column: $table.printerSize, builder: (column) => ColumnOrderings(column));
}

class $$PrintDetailsTableAnnotationComposer
    extends Composer<_$AppDatabase, $PrintDetailsTable> {
  $$PrintDetailsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get printHeader => $composableBuilder(
      column: $table.printHeader, builder: (column) => column);

  GeneratedColumn<String> get address =>
      $composableBuilder(column: $table.address, builder: (column) => column);

  GeneratedColumn<String> get gstNo =>
      $composableBuilder(column: $table.gstNo, builder: (column) => column);

  GeneratedColumn<String> get stateName =>
      $composableBuilder(column: $table.stateName, builder: (column) => column);

  GeneratedColumn<String> get stateCode =>
      $composableBuilder(column: $table.stateCode, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get mobileNo =>
      $composableBuilder(column: $table.mobileNo, builder: (column) => column);

  GeneratedColumn<String> get printerSize => $composableBuilder(
      column: $table.printerSize, builder: (column) => column);
}

class $$PrintDetailsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $PrintDetailsTable,
    PrintDetail,
    $$PrintDetailsTableFilterComposer,
    $$PrintDetailsTableOrderingComposer,
    $$PrintDetailsTableAnnotationComposer,
    $$PrintDetailsTableCreateCompanionBuilder,
    $$PrintDetailsTableUpdateCompanionBuilder,
    (
      PrintDetail,
      BaseReferences<_$AppDatabase, $PrintDetailsTable, PrintDetail>
    ),
    PrintDetail,
    PrefetchHooks Function()> {
  $$PrintDetailsTableTableManager(_$AppDatabase db, $PrintDetailsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$PrintDetailsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$PrintDetailsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$PrintDetailsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> printHeader = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> gstNo = const Value.absent(),
            Value<String?> stateName = const Value.absent(),
            Value<String?> stateCode = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> mobileNo = const Value.absent(),
            Value<String?> printerSize = const Value.absent(),
          }) =>
              PrintDetailsCompanion(
            id: id,
            printHeader: printHeader,
            address: address,
            gstNo: gstNo,
            stateName: stateName,
            stateCode: stateCode,
            email: email,
            mobileNo: mobileNo,
            printerSize: printerSize,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String?> printHeader = const Value.absent(),
            Value<String?> address = const Value.absent(),
            Value<String?> gstNo = const Value.absent(),
            Value<String?> stateName = const Value.absent(),
            Value<String?> stateCode = const Value.absent(),
            Value<String?> email = const Value.absent(),
            Value<String?> mobileNo = const Value.absent(),
            Value<String?> printerSize = const Value.absent(),
          }) =>
              PrintDetailsCompanion.insert(
            id: id,
            printHeader: printHeader,
            address: address,
            gstNo: gstNo,
            stateName: stateName,
            stateCode: stateCode,
            email: email,
            mobileNo: mobileNo,
            printerSize: printerSize,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$PrintDetailsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $PrintDetailsTable,
    PrintDetail,
    $$PrintDetailsTableFilterComposer,
    $$PrintDetailsTableOrderingComposer,
    $$PrintDetailsTableAnnotationComposer,
    $$PrintDetailsTableCreateCompanionBuilder,
    $$PrintDetailsTableUpdateCompanionBuilder,
    (
      PrintDetail,
      BaseReferences<_$AppDatabase, $PrintDetailsTable, PrintDetail>
    ),
    PrintDetail,
    PrefetchHooks Function()>;
typedef $$OrdersTableCreateCompanionBuilder = OrdersCompanion Function({
  required String id,
  required String orderNo,
  required String customerId,
  required String customerName,
  Value<double> subtotal,
  Value<double> discount,
  Value<double> tax,
  Value<double> total,
  Value<String> status,
  Value<String> paymentMethod,
  Value<String?> notes,
  Value<bool> isSynced,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});
typedef $$OrdersTableUpdateCompanionBuilder = OrdersCompanion Function({
  Value<String> id,
  Value<String> orderNo,
  Value<String> customerId,
  Value<String> customerName,
  Value<double> subtotal,
  Value<double> discount,
  Value<double> tax,
  Value<double> total,
  Value<String> status,
  Value<String> paymentMethod,
  Value<String?> notes,
  Value<bool> isSynced,
  Value<DateTime> createdAt,
  Value<DateTime> updatedAt,
  Value<int> rowid,
});

class $$OrdersTableFilterComposer
    extends Composer<_$AppDatabase, $OrdersTable> {
  $$OrdersTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get orderNo => $composableBuilder(
      column: $table.orderNo, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get customerId => $composableBuilder(
      column: $table.customerId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get customerName => $composableBuilder(
      column: $table.customerName, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get subtotal => $composableBuilder(
      column: $table.subtotal, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get discount => $composableBuilder(
      column: $table.discount, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get tax => $composableBuilder(
      column: $table.tax, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get total => $composableBuilder(
      column: $table.total, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnFilters<bool> get isSynced => $composableBuilder(
      column: $table.isSynced, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));
}

class $$OrdersTableOrderingComposer
    extends Composer<_$AppDatabase, $OrdersTable> {
  $$OrdersTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get orderNo => $composableBuilder(
      column: $table.orderNo, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customerId => $composableBuilder(
      column: $table.customerId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get customerName => $composableBuilder(
      column: $table.customerName,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get subtotal => $composableBuilder(
      column: $table.subtotal, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get discount => $composableBuilder(
      column: $table.discount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get tax => $composableBuilder(
      column: $table.tax, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get total => $composableBuilder(
      column: $table.total, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<bool> get isSynced => $composableBuilder(
      column: $table.isSynced, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));
}

class $$OrdersTableAnnotationComposer
    extends Composer<_$AppDatabase, $OrdersTable> {
  $$OrdersTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get orderNo =>
      $composableBuilder(column: $table.orderNo, builder: (column) => column);

  GeneratedColumn<String> get customerId => $composableBuilder(
      column: $table.customerId, builder: (column) => column);

  GeneratedColumn<String> get customerName => $composableBuilder(
      column: $table.customerName, builder: (column) => column);

  GeneratedColumn<double> get subtotal =>
      $composableBuilder(column: $table.subtotal, builder: (column) => column);

  GeneratedColumn<double> get discount =>
      $composableBuilder(column: $table.discount, builder: (column) => column);

  GeneratedColumn<double> get tax =>
      $composableBuilder(column: $table.tax, builder: (column) => column);

  GeneratedColumn<double> get total =>
      $composableBuilder(column: $table.total, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<String> get paymentMethod => $composableBuilder(
      column: $table.paymentMethod, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumn<bool> get isSynced =>
      $composableBuilder(column: $table.isSynced, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);
}

class $$OrdersTableTableManager extends RootTableManager<
    _$AppDatabase,
    $OrdersTable,
    Order,
    $$OrdersTableFilterComposer,
    $$OrdersTableOrderingComposer,
    $$OrdersTableAnnotationComposer,
    $$OrdersTableCreateCompanionBuilder,
    $$OrdersTableUpdateCompanionBuilder,
    (Order, BaseReferences<_$AppDatabase, $OrdersTable, Order>),
    Order,
    PrefetchHooks Function()> {
  $$OrdersTableTableManager(_$AppDatabase db, $OrdersTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OrdersTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OrdersTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OrdersTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> orderNo = const Value.absent(),
            Value<String> customerId = const Value.absent(),
            Value<String> customerName = const Value.absent(),
            Value<double> subtotal = const Value.absent(),
            Value<double> discount = const Value.absent(),
            Value<double> tax = const Value.absent(),
            Value<double> total = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String> paymentMethod = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<bool> isSynced = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              OrdersCompanion(
            id: id,
            orderNo: orderNo,
            customerId: customerId,
            customerName: customerName,
            subtotal: subtotal,
            discount: discount,
            tax: tax,
            total: total,
            status: status,
            paymentMethod: paymentMethod,
            notes: notes,
            isSynced: isSynced,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String orderNo,
            required String customerId,
            required String customerName,
            Value<double> subtotal = const Value.absent(),
            Value<double> discount = const Value.absent(),
            Value<double> tax = const Value.absent(),
            Value<double> total = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<String> paymentMethod = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<bool> isSynced = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime> updatedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              OrdersCompanion.insert(
            id: id,
            orderNo: orderNo,
            customerId: customerId,
            customerName: customerName,
            subtotal: subtotal,
            discount: discount,
            tax: tax,
            total: total,
            status: status,
            paymentMethod: paymentMethod,
            notes: notes,
            isSynced: isSynced,
            createdAt: createdAt,
            updatedAt: updatedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$OrdersTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $OrdersTable,
    Order,
    $$OrdersTableFilterComposer,
    $$OrdersTableOrderingComposer,
    $$OrdersTableAnnotationComposer,
    $$OrdersTableCreateCompanionBuilder,
    $$OrdersTableUpdateCompanionBuilder,
    (Order, BaseReferences<_$AppDatabase, $OrdersTable, Order>),
    Order,
    PrefetchHooks Function()>;
typedef $$OrderItemsTableCreateCompanionBuilder = OrderItemsCompanion Function({
  required String id,
  required String orderId,
  required String productId,
  required String productName,
  required double price,
  required int qty,
  Value<double> discount,
  required double total,
  Value<int> rowid,
});
typedef $$OrderItemsTableUpdateCompanionBuilder = OrderItemsCompanion Function({
  Value<String> id,
  Value<String> orderId,
  Value<String> productId,
  Value<String> productName,
  Value<double> price,
  Value<int> qty,
  Value<double> discount,
  Value<double> total,
  Value<int> rowid,
});

class $$OrderItemsTableFilterComposer
    extends Composer<_$AppDatabase, $OrderItemsTable> {
  $$OrderItemsTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get orderId => $composableBuilder(
      column: $table.orderId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get productId => $composableBuilder(
      column: $table.productId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get productName => $composableBuilder(
      column: $table.productName, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get qty => $composableBuilder(
      column: $table.qty, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get discount => $composableBuilder(
      column: $table.discount, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get total => $composableBuilder(
      column: $table.total, builder: (column) => ColumnFilters(column));
}

class $$OrderItemsTableOrderingComposer
    extends Composer<_$AppDatabase, $OrderItemsTable> {
  $$OrderItemsTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get orderId => $composableBuilder(
      column: $table.orderId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get productId => $composableBuilder(
      column: $table.productId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get productName => $composableBuilder(
      column: $table.productName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get price => $composableBuilder(
      column: $table.price, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get qty => $composableBuilder(
      column: $table.qty, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get discount => $composableBuilder(
      column: $table.discount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get total => $composableBuilder(
      column: $table.total, builder: (column) => ColumnOrderings(column));
}

class $$OrderItemsTableAnnotationComposer
    extends Composer<_$AppDatabase, $OrderItemsTable> {
  $$OrderItemsTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get orderId =>
      $composableBuilder(column: $table.orderId, builder: (column) => column);

  GeneratedColumn<String> get productId =>
      $composableBuilder(column: $table.productId, builder: (column) => column);

  GeneratedColumn<String> get productName => $composableBuilder(
      column: $table.productName, builder: (column) => column);

  GeneratedColumn<double> get price =>
      $composableBuilder(column: $table.price, builder: (column) => column);

  GeneratedColumn<int> get qty =>
      $composableBuilder(column: $table.qty, builder: (column) => column);

  GeneratedColumn<double> get discount =>
      $composableBuilder(column: $table.discount, builder: (column) => column);

  GeneratedColumn<double> get total =>
      $composableBuilder(column: $table.total, builder: (column) => column);
}

class $$OrderItemsTableTableManager extends RootTableManager<
    _$AppDatabase,
    $OrderItemsTable,
    OrderItem,
    $$OrderItemsTableFilterComposer,
    $$OrderItemsTableOrderingComposer,
    $$OrderItemsTableAnnotationComposer,
    $$OrderItemsTableCreateCompanionBuilder,
    $$OrderItemsTableUpdateCompanionBuilder,
    (OrderItem, BaseReferences<_$AppDatabase, $OrderItemsTable, OrderItem>),
    OrderItem,
    PrefetchHooks Function()> {
  $$OrderItemsTableTableManager(_$AppDatabase db, $OrderItemsTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$OrderItemsTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$OrderItemsTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$OrderItemsTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> orderId = const Value.absent(),
            Value<String> productId = const Value.absent(),
            Value<String> productName = const Value.absent(),
            Value<double> price = const Value.absent(),
            Value<int> qty = const Value.absent(),
            Value<double> discount = const Value.absent(),
            Value<double> total = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              OrderItemsCompanion(
            id: id,
            orderId: orderId,
            productId: productId,
            productName: productName,
            price: price,
            qty: qty,
            discount: discount,
            total: total,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String id,
            required String orderId,
            required String productId,
            required String productName,
            required double price,
            required int qty,
            Value<double> discount = const Value.absent(),
            required double total,
            Value<int> rowid = const Value.absent(),
          }) =>
              OrderItemsCompanion.insert(
            id: id,
            orderId: orderId,
            productId: productId,
            productName: productName,
            price: price,
            qty: qty,
            discount: discount,
            total: total,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$OrderItemsTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $OrderItemsTable,
    OrderItem,
    $$OrderItemsTableFilterComposer,
    $$OrderItemsTableOrderingComposer,
    $$OrderItemsTableAnnotationComposer,
    $$OrderItemsTableCreateCompanionBuilder,
    $$OrderItemsTableUpdateCompanionBuilder,
    (OrderItem, BaseReferences<_$AppDatabase, $OrderItemsTable, OrderItem>),
    OrderItem,
    PrefetchHooks Function()>;
typedef $$SyncQueueTableCreateCompanionBuilder = SyncQueueCompanion Function({
  Value<int> id,
  required String entity,
  required String entityId,
  required String action,
  required String payload,
  Value<int> retries,
  Value<String> status,
  Value<DateTime> createdAt,
});
typedef $$SyncQueueTableUpdateCompanionBuilder = SyncQueueCompanion Function({
  Value<int> id,
  Value<String> entity,
  Value<String> entityId,
  Value<String> action,
  Value<String> payload,
  Value<int> retries,
  Value<String> status,
  Value<DateTime> createdAt,
});

class $$SyncQueueTableFilterComposer
    extends Composer<_$AppDatabase, $SyncQueueTable> {
  $$SyncQueueTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get entity => $composableBuilder(
      column: $table.entity, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get entityId => $composableBuilder(
      column: $table.entityId, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get action => $composableBuilder(
      column: $table.action, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get payload => $composableBuilder(
      column: $table.payload, builder: (column) => ColumnFilters(column));

  ColumnFilters<int> get retries => $composableBuilder(
      column: $table.retries, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));
}

class $$SyncQueueTableOrderingComposer
    extends Composer<_$AppDatabase, $SyncQueueTable> {
  $$SyncQueueTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<int> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get entity => $composableBuilder(
      column: $table.entity, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get entityId => $composableBuilder(
      column: $table.entityId, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get action => $composableBuilder(
      column: $table.action, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get payload => $composableBuilder(
      column: $table.payload, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<int> get retries => $composableBuilder(
      column: $table.retries, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get status => $composableBuilder(
      column: $table.status, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));
}

class $$SyncQueueTableAnnotationComposer
    extends Composer<_$AppDatabase, $SyncQueueTable> {
  $$SyncQueueTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<int> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get entity =>
      $composableBuilder(column: $table.entity, builder: (column) => column);

  GeneratedColumn<String> get entityId =>
      $composableBuilder(column: $table.entityId, builder: (column) => column);

  GeneratedColumn<String> get action =>
      $composableBuilder(column: $table.action, builder: (column) => column);

  GeneratedColumn<String> get payload =>
      $composableBuilder(column: $table.payload, builder: (column) => column);

  GeneratedColumn<int> get retries =>
      $composableBuilder(column: $table.retries, builder: (column) => column);

  GeneratedColumn<String> get status =>
      $composableBuilder(column: $table.status, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);
}

class $$SyncQueueTableTableManager extends RootTableManager<
    _$AppDatabase,
    $SyncQueueTable,
    SyncQueueData,
    $$SyncQueueTableFilterComposer,
    $$SyncQueueTableOrderingComposer,
    $$SyncQueueTableAnnotationComposer,
    $$SyncQueueTableCreateCompanionBuilder,
    $$SyncQueueTableUpdateCompanionBuilder,
    (
      SyncQueueData,
      BaseReferences<_$AppDatabase, $SyncQueueTable, SyncQueueData>
    ),
    SyncQueueData,
    PrefetchHooks Function()> {
  $$SyncQueueTableTableManager(_$AppDatabase db, $SyncQueueTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$SyncQueueTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$SyncQueueTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$SyncQueueTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<int> id = const Value.absent(),
            Value<String> entity = const Value.absent(),
            Value<String> entityId = const Value.absent(),
            Value<String> action = const Value.absent(),
            Value<String> payload = const Value.absent(),
            Value<int> retries = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              SyncQueueCompanion(
            id: id,
            entity: entity,
            entityId: entityId,
            action: action,
            payload: payload,
            retries: retries,
            status: status,
            createdAt: createdAt,
          ),
          createCompanionCallback: ({
            Value<int> id = const Value.absent(),
            required String entity,
            required String entityId,
            required String action,
            required String payload,
            Value<int> retries = const Value.absent(),
            Value<String> status = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
          }) =>
              SyncQueueCompanion.insert(
            id: id,
            entity: entity,
            entityId: entityId,
            action: action,
            payload: payload,
            retries: retries,
            status: status,
            createdAt: createdAt,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (e.readTable(table), BaseReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: null,
        ));
}

typedef $$SyncQueueTableProcessedTableManager = ProcessedTableManager<
    _$AppDatabase,
    $SyncQueueTable,
    SyncQueueData,
    $$SyncQueueTableFilterComposer,
    $$SyncQueueTableOrderingComposer,
    $$SyncQueueTableAnnotationComposer,
    $$SyncQueueTableCreateCompanionBuilder,
    $$SyncQueueTableUpdateCompanionBuilder,
    (
      SyncQueueData,
      BaseReferences<_$AppDatabase, $SyncQueueTable, SyncQueueData>
    ),
    SyncQueueData,
    PrefetchHooks Function()>;

class $AppDatabaseManager {
  final _$AppDatabase _db;
  $AppDatabaseManager(this._db);
  $$CustomersTableTableManager get customers =>
      $$CustomersTableTableManager(_db, _db.customers);
  $$ItemHeadersTableTableManager get itemHeaders =>
      $$ItemHeadersTableTableManager(_db, _db.itemHeaders);
  $$ItemPricesTableTableManager get itemPrices =>
      $$ItemPricesTableTableManager(_db, _db.itemPrices);
  $$AccountsTableTableManager get accounts =>
      $$AccountsTableTableManager(_db, _db.accounts);
  $$VendorsTableTableManager get vendors =>
      $$VendorsTableTableManager(_db, _db.vendors);
  $$EmployeeListsTableTableManager get employeeLists =>
      $$EmployeeListsTableTableManager(_db, _db.employeeLists);
  $$GeneralSettingsTableTableManager get generalSettings =>
      $$GeneralSettingsTableTableManager(_db, _db.generalSettings);
  $$SeriesForNextnumsTableTableManager get seriesForNextnums =>
      $$SeriesForNextnumsTableTableManager(_db, _db.seriesForNextnums);
  $$MasterUsersTableTableManager get masterUsers =>
      $$MasterUsersTableTableManager(_db, _db.masterUsers);
  $$OrganisationDetailsTableTableManager get organisationDetails =>
      $$OrganisationDetailsTableTableManager(_db, _db.organisationDetails);
  $$SeriesListsTableTableManager get seriesLists =>
      $$SeriesListsTableTableManager(_db, _db.seriesLists);
  $$StoresTableTableManager get stores =>
      $$StoresTableTableManager(_db, _db.stores);
  $$FrieghtsTableTableManager get frieghts =>
      $$FrieghtsTableTableManager(_db, _db.frieghts);
  $$PaymentTermsTableTableManager get paymentTerms =>
      $$PaymentTermsTableTableManager(_db, _db.paymentTerms);
  $$ModeOfDispatchesTableTableManager get modeOfDispatches =>
      $$ModeOfDispatchesTableTableManager(_db, _db.modeOfDispatches);
  $$PriceListsTableTableManager get priceLists =>
      $$PriceListsTableTableManager(_db, _db.priceLists);
  $$SalesPersonsTableTableManager get salesPersons =>
      $$SalesPersonsTableTableManager(_db, _db.salesPersons);
  $$ItemUomsTableTableManager get itemUoms =>
      $$ItemUomsTableTableManager(_db, _db.itemUoms);
  $$ItemBatchesTableTableManager get itemBatches =>
      $$ItemBatchesTableTableManager(_db, _db.itemBatches);
  $$PrintDetailsTableTableManager get printDetails =>
      $$PrintDetailsTableTableManager(_db, _db.printDetails);
  $$OrdersTableTableManager get orders =>
      $$OrdersTableTableManager(_db, _db.orders);
  $$OrderItemsTableTableManager get orderItems =>
      $$OrderItemsTableTableManager(_db, _db.orderItems);
  $$SyncQueueTableTableManager get syncQueue =>
      $$SyncQueueTableTableManager(_db, _db.syncQueue);
}
