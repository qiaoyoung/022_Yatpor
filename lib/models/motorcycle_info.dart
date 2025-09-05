class MotorcycleInfo {
  final String id;
  final String filename;
  final BasicInfo basicInfo;
  final TechnicalSpecs technicalSpecs;
  final DesignFeatures designFeatures;
  final PerformanceFeatures performanceFeatures;
  final Setting setting;
  final String description;

  MotorcycleInfo({
    required this.id,
    required this.filename,
    required this.basicInfo,
    required this.technicalSpecs,
    required this.designFeatures,
    required this.performanceFeatures,
    required this.setting,
    required this.description,
  });

  factory MotorcycleInfo.fromJson(Map<String, dynamic> json) {
    return MotorcycleInfo(
      id: json['id'] ?? '',
      filename: json['filename'] ?? '',
      basicInfo: BasicInfo.fromJson(json['basic_info'] ?? {}),
      technicalSpecs: TechnicalSpecs.fromJson(json['technical_specs'] ?? {}),
      designFeatures: DesignFeatures.fromJson(json['design_features'] ?? {}),
      performanceFeatures: PerformanceFeatures.fromJson(json['performance_features'] ?? {}),
      setting: Setting.fromJson(json['setting'] ?? {}),
      description: json['description'] ?? '',
    );
  }
}

class BasicInfo {
  final String brand;
  final String model;
  final String category;
  final String yearRange;
  final String estimatedPrice;

  BasicInfo({
    required this.brand,
    required this.model,
    required this.category,
    required this.yearRange,
    required this.estimatedPrice,
  });

  factory BasicInfo.fromJson(Map<String, dynamic> json) {
    return BasicInfo(
      brand: json['brand'] ?? '',
      model: json['model'] ?? '',
      category: json['category'] ?? '',
      yearRange: json['year_range'] ?? '',
      estimatedPrice: json['estimated_price'] ?? '',
    );
  }
}

class TechnicalSpecs {
  final Engine engine;
  final String transmission;
  final Suspension suspension;
  final Brakes brakes;
  final Wheels wheels;

  TechnicalSpecs({
    required this.engine,
    required this.transmission,
    required this.suspension,
    required this.brakes,
    required this.wheels,
  });

  factory TechnicalSpecs.fromJson(Map<String, dynamic> json) {
    return TechnicalSpecs(
      engine: Engine.fromJson(json['engine'] ?? {}),
      transmission: json['transmission'] ?? '',
      suspension: Suspension.fromJson(json['suspension'] ?? {}),
      brakes: Brakes.fromJson(json['brakes'] ?? {}),
      wheels: Wheels.fromJson(json['wheels'] ?? {}),
    );
  }
}

class Engine {
  final String type;
  final String displacement;
  final String power;
  final String torque;

  Engine({
    required this.type,
    required this.displacement,
    required this.power,
    required this.torque,
  });

  factory Engine.fromJson(Map<String, dynamic> json) {
    return Engine(
      type: json['type'] ?? '',
      displacement: json['displacement'] ?? '',
      power: json['power'] ?? '',
      torque: json['torque'] ?? '',
    );
  }
}

class Suspension {
  final String front;
  final String rear;

  Suspension({
    required this.front,
    required this.rear,
  });

  factory Suspension.fromJson(Map<String, dynamic> json) {
    return Suspension(
      front: json['front'] ?? '',
      rear: json['rear'] ?? '',
    );
  }
}

class Brakes {
  final String front;
  final String rear;

  Brakes({
    required this.front,
    required this.rear,
  });

  factory Brakes.fromJson(Map<String, dynamic> json) {
    return Brakes(
      front: json['front'] ?? '',
      rear: json['rear'] ?? '',
    );
  }
}

class Wheels {
  final String front;
  final String rear;
  final String tires;

  Wheels({
    required this.front,
    required this.rear,
    required this.tires,
  });

  factory Wheels.fromJson(Map<String, dynamic> json) {
    return Wheels(
      front: json['front'] ?? '',
      rear: json['rear'] ?? '',
      tires: json['tires'] ?? '',
    );
  }
}

class DesignFeatures {
  final ColorScheme colorScheme;

  DesignFeatures({
    required this.colorScheme,
  });

  factory DesignFeatures.fromJson(Map<String, dynamic> json) {
    return DesignFeatures(
      colorScheme: ColorScheme.fromJson(json['color_scheme'] ?? {}),
    );
  }
}

class ColorScheme {
  final String primary;
  final String secondary;
  final String? tertiary;
  final String wheels;
  final String? accents;

  ColorScheme({
    required this.primary,
    required this.secondary,
    this.tertiary,
    required this.wheels,
    this.accents,
  });

  factory ColorScheme.fromJson(Map<String, dynamic> json) {
    return ColorScheme(
      primary: json['primary'] ?? '',
      secondary: json['secondary'] ?? '',
      tertiary: json['tertiary'],
      wheels: json['wheels'] ?? '',
      accents: json['accents'],
    );
  }
}

class Seat {
  final String type;
  final String? material;
  final String? color;

  Seat({
    required this.type,
    this.material,
    this.color,
  });

  factory Seat.fromJson(Map<String, dynamic> json) {
    return Seat(
      type: json['type'] ?? '',
      material: json['material'],
      color: json['color'],
    );
  }
}

class PerformanceFeatures {
  final String topSpeed;
  final String acceleration;
  final String weight;
  final String fuelCapacity;

  PerformanceFeatures({
    required this.topSpeed,
    required this.acceleration,
    required this.weight,
    required this.fuelCapacity,
  });

  factory PerformanceFeatures.fromJson(Map<String, dynamic> json) {
    return PerformanceFeatures(
      topSpeed: json['top_speed'] ?? '',
      acceleration: json['acceleration'] ?? '',
      weight: json['weight'] ?? '',
      fuelCapacity: json['fuel_capacity'] ?? '',
    );
  }
}

class Setting {
  final String location;
  final String? background;
  final String? environment;

  Setting({
    required this.location,
    this.background,
    this.environment,
  });

  factory Setting.fromJson(Map<String, dynamic> json) {
    return Setting(
      location: json['location'] ?? '',
      background: json['background'],
      environment: json['environment'],
    );
  }
}

class Exhaust {
  final String type;
  final String? material;
  final String? brand;
  final String? features;
  final String? location;

  Exhaust({
    required this.type,
    this.material,
    this.brand,
    this.features,
    this.location,
  });

  factory Exhaust.fromJson(Map<String, dynamic> json) {
    return Exhaust(
      type: json['type'] ?? '',
      material: json['material'],
      brand: json['brand'],
      features: json['features'],
      location: json['location'],
    );
  }
}

class Lighting {
  final String? main;
  final String? headlight;
  final String? tailLight;

  Lighting({
    this.main,
    this.headlight,
    this.tailLight,
  });

  factory Lighting.fromJson(Map<String, dynamic> json) {
    return Lighting(
      main: json['main'],
      headlight: json['headlight'],
      tailLight: json['tail_light'],
    );
  }
}

class Helmet {
  final String type;
  final String? location;
  final String? color;
  final String? brand;

  Helmet({
    required this.type,
    this.location,
    this.color,
    this.brand,
  });

  factory Helmet.fromJson(Map<String, dynamic> json) {
    return Helmet(
      type: json['type'] ?? '',
      location: json['location'],
      color: json['color'],
      brand: json['brand'],
    );
  }
}

class Handlebars {
  final String type;
  final String? grips;
  final String? mirror;

  Handlebars({
    required this.type,
    this.grips,
    this.mirror,
  });

  factory Handlebars.fromJson(Map<String, dynamic> json) {
    return Handlebars(
      type: json['type'] ?? '',
      grips: json['grips'],
      mirror: json['mirror'],
    );
  }
}

class FuelTank {
  final String? color;
  final String? shape;
  final String? details;
  final String? accessories;

  FuelTank({
    this.color,
    this.shape,
    this.details,
    this.accessories,
  });

  factory FuelTank.fromJson(Map<String, dynamic> json) {
    return FuelTank(
      color: json['color'],
      shape: json['shape'],
      details: json['details'],
      accessories: json['accessories'],
    );
  }
}

class Dashboard {
  final String type;
  final String? face;
  final String? bezel;

  Dashboard({
    required this.type,
    this.face,
    this.bezel,
  });

  factory Dashboard.fromJson(Map<String, dynamic> json) {
    return Dashboard(
      type: json['type'] ?? '',
      face: json['face'],
      bezel: json['bezel'],
    );
  }
}

class Fairing {
  final String? design;
  final String? coverage;
  final String? type;

  Fairing({
    this.design,
    this.coverage,
    this.type,
  });

  factory Fairing.fromJson(Map<String, dynamic> json) {
    return Fairing(
      design: json['design'],
      coverage: json['coverage'],
      type: json['type'],
    );
  }
}

class Tires {
  final String? front;
  final String? rear;

  Tires({
    this.front,
    this.rear,
  });

  factory Tires.fromJson(Map<String, dynamic> json) {
    return Tires(
      front: json['front'],
      rear: json['rear'],
    );
  }
}
