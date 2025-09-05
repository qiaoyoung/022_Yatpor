import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';
import '../models/motorcycle_info.dart';

class MotorcycleInfoService {
  static final MotorcycleInfoService _instance = MotorcycleInfoService._internal();
  factory MotorcycleInfoService() => _instance;
  MotorcycleInfoService._internal();

  List<MotorcycleInfo> _motorcycles = [];
  bool _isLoaded = false;

  Future<void> loadData() async {
    if (_isLoaded) return;

    try {
      final String jsonString = await rootBundle.loadString('assets/Motorcycle/motorcycle_detailed_info.json');
      final Map<String, dynamic> jsonData = json.decode(jsonString);
      
      final List<dynamic> motorcyclesData = jsonData['motorcycle_collection']['motorcycles'];
      _motorcycles = motorcyclesData.map((data) => MotorcycleInfo.fromJson(data)).toList();
      _isLoaded = true;
    } catch (e) {
      debugPrint('Error loading motorcycle data: $e');
      _motorcycles = [];
      _isLoaded = false;
    }
  }

  List<MotorcycleInfo> get motorcycles => _motorcycles;
  
  int get totalCount => _motorcycles.length;
  
  bool get isLoaded => _isLoaded;

  MotorcycleInfo? getMotorcycleById(String id) {
    try {
      return _motorcycles.firstWhere((moto) => moto.id == id);
    } catch (e) {
      return null;
    }
  }

  MotorcycleInfo? getMotorcycleByIndex(int index) {
    if (index >= 0 && index < _motorcycles.length) {
      return _motorcycles[index];
    }
    return null;
  }

  List<MotorcycleInfo> getMotorcyclesByBrand(String brand) {
    return _motorcycles.where((moto) => 
      moto.basicInfo.brand.toLowerCase().contains(brand.toLowerCase())
    ).toList();
  }

  List<MotorcycleInfo> getMotorcyclesByCategory(String category) {
    return _motorcycles.where((moto) => 
      moto.basicInfo.category.toLowerCase().contains(category.toLowerCase())
    ).toList();
  }
}
