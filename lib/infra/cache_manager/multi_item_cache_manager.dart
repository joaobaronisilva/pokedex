import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

abstract class IMultiItemCacheManager<TCachedEntity extends Object> {
  int get maxCacheLenght;
  Map toJson(TCachedEntity entity);
  TCachedEntity fromJson(Map json);
  Future<void> save(TCachedEntity entity);
  Future<void> update(TCachedEntity entity);
  Future<void> delete(TCachedEntity entity);
  Future<List<TCachedEntity>> query({bool Function(TCachedEntity)? filter});
}

class MultiItemCacheManager<TCachedEntity extends Object> implements IMultiItemCacheManager<TCachedEntity> {
  final HiveInterface hive;

  String hiveBoxName;

  MultiItemCacheManager(this.hive, this.hiveBoxName);

  @override
  int get maxCacheLenght => 25;

  @nonVirtual
  @override
  Future<List<TCachedEntity>> query({bool Function(TCachedEntity)? filter}) async {
    try {
      late final List<Map> result;
      final Box<Map> handler = await hive.openBox(hiveBoxName);
      result = handler.values.toList();
      await handler.close();
      final parsedValues = List<TCachedEntity>.from((result).map((json) => fromJson(json)));
      if (filter != null) parsedValues.retainWhere(filter);
      return parsedValues;
    } catch (exception, stacktrace) {
      /// Handle do Crashanalytics seria aqui
      throw Exception(stacktrace);
    }
  }

  @nonVirtual
  @override
  Future<void> delete(TCachedEntity entity) async {
    try {
      final Map json = toJson(entity);
      final Box<Map> handler = await hive.openBox(hiveBoxName);
      if (!handler.containsKey(cacheKeyIdentifier(json))) return handler.close();
      await handler.delete(cacheKeyIdentifier(json));
      await handler.close();
    } catch (exception, stacktrace) {
      /// Handle do Crashanalytics seria aqui
      throw Exception(stacktrace);
    }
  }

  @nonVirtual
  @override
  Future<void> save(TCachedEntity entity) async {
    try {
      final Map json = toJson(entity);
      final Box<Map> handler = await hive.openBox(hiveBoxName);
      if (handler.containsKey(cacheKeyIdentifier(json))) {
        await handler.delete(cacheKeyIdentifier(json));
        await handler.put(cacheKeyIdentifier(json), json);
        await handler.close();
      } else {
        final List<dynamic> result = handler.values.toList();
        if (result.length >= maxCacheLenght) await handler.deleteAt(result.length);
        await handler.put(cacheKeyIdentifier(json), json);
        await handler.close();
      }
    } catch (exception, stacktrace) {
      /// Handle do Crashanalytics seria aqui
      throw Exception(stacktrace);
    }
  }

  @nonVirtual
  @override
  Future<void> update(TCachedEntity entity) async {
    try {
      final Map json = toJson(entity);
      final Box<Map> handler = await hive.openBox(hiveBoxName);
      if (!handler.containsKey(cacheKeyIdentifier(json))) return await handler.close();
      await handler.put(cacheKeyIdentifier(json), json);
      await handler.close();
    } catch (exception, stacktrace) {
      /// Handle do Crashanalytics seria aqui
      throw Exception(stacktrace);
    }
  }

  @override
  Map toJson(TCachedEntity entity) => throw UnimplementedError();

  @override
  TCachedEntity fromJson(Map json) => throw UnimplementedError();

  String cacheKeyIdentifier(Map json) => throw UnimplementedError();
}
