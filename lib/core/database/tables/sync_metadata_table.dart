import 'dart:ffi';

import 'package:drift/drift.dart';


class  SyncMetadataTable   extends Table{

   TextColumn get resourceKey => text() ();
   DateTimeColumn get lastSuccessAt => dateTime().nullable()();
   TextColumn get status => text()();
   IntColumn get offset => integer().withDefault(const Constant(0))();



   @override
  Set<Column> get primaryKey => {resourceKey};



}