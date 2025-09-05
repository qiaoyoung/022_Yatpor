import 'package:flutter/material.dart';
import 'package:flutter_tts/flutter_tts.dart';
import '../theme/app_theme.dart';
import '../models/motorcycle_info.dart';
import '../services/motorcycle_info_service.dart';

class Tab3Screen extends StatefulWidget {
  const Tab3Screen({super.key});

  @override
  State<Tab3Screen> createState() => _Tab3ScreenState();
}

class _Tab3ScreenState extends State<Tab3Screen> {
  final MotorcycleInfoService _motorcycleService = MotorcycleInfoService();
  final FlutterTts _flutterTts = FlutterTts();
  
  int _currentIndex = 0;
  bool _isLoading = true;
  bool _isPlaying = false;
  String _currentText = '';

  @override
  void initState() {
    super.initState();
    _initializeTts();
    _loadMotorcycleData();
  }

  Future<void> _initializeTts() async {
    await _flutterTts.setLanguage("en-US");
    await _flutterTts.setSpeechRate(0.5);
    await _flutterTts.setVolume(1.0);
    await _flutterTts.setPitch(1.0);
    
    _flutterTts.setStartHandler(() {
      setState(() {
        _isPlaying = true;
      });
    });
    
    _flutterTts.setCompletionHandler(() {
      setState(() {
        _isPlaying = false;
      });
    });
    
    _flutterTts.setErrorHandler((msg) {
      setState(() {
        _isPlaying = false;
      });
    });
  }

  Future<void> _loadMotorcycleData() async {
    await _motorcycleService.loadData();
    setState(() {
      _isLoading = false;
    });
  }

  void _nextMotorcycle() {
    if (_motorcycleService.totalCount > 0) {
      setState(() {
        _currentIndex = (_currentIndex + 1) % _motorcycleService.totalCount;
      });
      _stopSpeech();
    }
  }

  void _previousMotorcycle() {
    if (_motorcycleService.totalCount > 0) {
      setState(() {
        _currentIndex = (_currentIndex - 1 + _motorcycleService.totalCount) % _motorcycleService.totalCount;
      });
      _stopSpeech();
    }
  }

  Future<void> _playMotorcycleInfo() async {
    final motorcycle = _motorcycleService.getMotorcycleByIndex(_currentIndex);
    if (motorcycle == null) return;

    _currentText = _buildSpeechText(motorcycle);
    
    if (_isPlaying) {
      await _stopSpeech();
    } else {
      await _flutterTts.speak(_currentText);
    }
  }

  Future<void> _stopSpeech() async {
    await _flutterTts.stop();
    setState(() {
      _isPlaying = false;
    });
  }

  String _buildSpeechText(MotorcycleInfo motorcycle) {
    return '''
      ${motorcycle.basicInfo.brand} ${motorcycle.basicInfo.model}.
      Category: ${motorcycle.basicInfo.category}.
      Year range: ${motorcycle.basicInfo.yearRange}.
      Estimated price: ${motorcycle.basicInfo.estimatedPrice}.
      
      Engine: ${motorcycle.technicalSpecs.engine.type} ${motorcycle.technicalSpecs.engine.displacement}.
      Power: ${motorcycle.technicalSpecs.engine.power}.
      Torque: ${motorcycle.technicalSpecs.engine.torque}.
      Transmission: ${motorcycle.technicalSpecs.transmission}.
      
      Top speed: ${motorcycle.performanceFeatures.topSpeed}.
      Acceleration: ${motorcycle.performanceFeatures.acceleration}.
      Weight: ${motorcycle.performanceFeatures.weight}.
      Fuel capacity: ${motorcycle.performanceFeatures.fuelCapacity}.
      
      ${motorcycle.description}
    ''';
  }

  @override
  void dispose() {
    _flutterTts.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const Scaffold(
        backgroundColor: AppTheme.backgroundColor,
        body: Center(
          child: CircularProgressIndicator(
            color: AppTheme.primaryColor,
          ),
        ),
      );
    }

    final motorcycle = _motorcycleService.getMotorcycleByIndex(_currentIndex);
    if (motorcycle == null) {
      return const Scaffold(
        backgroundColor: AppTheme.backgroundColor,
        body: Center(
          child: Text(
            'No motorcycle data available',
            style: TextStyle(
              color: AppTheme.textPrimaryColor,
              fontSize: 18,
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          // Background Image
          Positioned.fill(
            child: Image.asset(
              motorcycle.filename,
              fit: BoxFit.cover,
            ),
          ),
          
          // Gradient overlay for better text readability
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.black.withValues(alpha: 0.3),
                    Colors.transparent,
                    Colors.black.withValues(alpha: 0.4),
                  ],
                  stops: const [0.0, 0.2, 1.0],
                ),
              ),
            ),
          ),
          
          // Content
          SafeArea(
            child: Column(
              children: [
                // App Bar
                _buildAppBar(),
                
                // Motorcycle Info
                Expanded(
                  child: _buildMotorcycleInfo(motorcycle),
                ),
                
                // Navigation and Control Buttons
                _buildBottomControls(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildAppBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              '${_currentIndex + 1} / ${_motorcycleService.totalCount}',
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Spacer(),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Colors.black.withValues(alpha: 0.6),
              borderRadius: BorderRadius.circular(20),
            ),
            child: const Text(
              'Motorcycle Gallery',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMotorcycleInfo(MotorcycleInfo motorcycle) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.5),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppTheme.primaryColor.withValues(alpha: 0.3),
          width: 1,
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Basic Info
            _buildInfoSection(
              'Basic Information',
              [
                _buildInfoRow('Brand', motorcycle.basicInfo.brand),
                _buildInfoRow('Model', motorcycle.basicInfo.model),
                _buildInfoRow('Category', motorcycle.basicInfo.category),
                _buildInfoRow('Year Range', motorcycle.basicInfo.yearRange),
                _buildInfoRow('Price', motorcycle.basicInfo.estimatedPrice),
              ],
            ),
            
            const SizedBox(height: 12),
            
            // Technical Specs
            _buildInfoSection(
              'Technical Specifications',
              [
                _buildInfoRow('Engine', '${motorcycle.technicalSpecs.engine.type} ${motorcycle.technicalSpecs.engine.displacement}'),
                _buildInfoRow('Power', motorcycle.technicalSpecs.engine.power),
                _buildInfoRow('Torque', motorcycle.technicalSpecs.engine.torque),
                _buildInfoRow('Transmission', motorcycle.technicalSpecs.transmission),
                _buildInfoRow('Suspension', '${motorcycle.technicalSpecs.suspension.front} / ${motorcycle.technicalSpecs.suspension.rear}'),
                _buildInfoRow('Brakes', '${motorcycle.technicalSpecs.brakes.front} / ${motorcycle.technicalSpecs.brakes.rear}'),
                _buildInfoRow('Wheels', '${motorcycle.technicalSpecs.wheels.front} / ${motorcycle.technicalSpecs.wheels.rear}'),
                _buildInfoRow('Tires', motorcycle.technicalSpecs.wheels.tires),
              ],
            ),
            
            const SizedBox(height: 12),
            
            // Performance Features
            _buildInfoSection(
              'Performance Features',
              [
                _buildInfoRow('Top Speed', motorcycle.performanceFeatures.topSpeed),
                _buildInfoRow('Acceleration', motorcycle.performanceFeatures.acceleration),
                _buildInfoRow('Weight', motorcycle.performanceFeatures.weight),
                _buildInfoRow('Fuel Capacity', motorcycle.performanceFeatures.fuelCapacity),
              ],
            ),
            
            const SizedBox(height: 12),
            
            // Design Features
            _buildInfoSection(
              'Design Features',
              [
                _buildInfoRow('Primary Color', motorcycle.designFeatures.colorScheme.primary),
                _buildInfoRow('Secondary Color', motorcycle.designFeatures.colorScheme.secondary),
                if (motorcycle.designFeatures.colorScheme.tertiary != null)
                  _buildInfoRow('Tertiary Color', motorcycle.designFeatures.colorScheme.tertiary!),
                _buildInfoRow('Wheels', motorcycle.designFeatures.colorScheme.wheels),
                if (motorcycle.designFeatures.colorScheme.accents != null)
                  _buildInfoRow('Accents', motorcycle.designFeatures.colorScheme.accents!),
              ],
            ),
            
            const SizedBox(height: 12),
            
            // Description
            _buildInfoSection(
              'Description',
              [
                _buildInfoRow('', motorcycle.description, isDescription: true),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInfoSection(String title, List<Widget> children) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: AppTheme.primaryColor,
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        ...children,
      ],
    );
  }

  Widget _buildInfoRow(String label, String value, {bool isDescription = false}) {
    if (isDescription) {
      return Container(
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white.withValues(alpha: 0.1),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Text(
          value,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 14,
            height: 1.3,
          ),
        ),
      );
    }

    return Container(
      margin: const EdgeInsets.only(bottom: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              label,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildBottomControls() {
    return Container(
      padding: const EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          // Previous Button
          _buildControlButton(
            icon: Icons.arrow_back_ios,
            onPressed: _previousMotorcycle,
            color: Colors.blue,
          ),
          
          // Play/Stop Button
          _buildControlButton(
            icon: _isPlaying ? Icons.stop : Icons.play_arrow,
            onPressed: _playMotorcycleInfo,
            color: _isPlaying ? Colors.red : Colors.green,
            size: 32,
          ),
          
          // Next Button
          _buildControlButton(
            icon: Icons.arrow_forward_ios,
            onPressed: _nextMotorcycle,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }

  Widget _buildControlButton({
    required IconData icon,
    required VoidCallback onPressed,
    required Color color,
    double size = 24,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.6),
        borderRadius: BorderRadius.circular(50),
        border: Border.all(
          color: color.withValues(alpha: 0.5),
          width: 2,
        ),
      ),
      child: IconButton(
        onPressed: onPressed,
        icon: Icon(
          icon,
          color: color,
          size: size,
        ),
        iconSize: size,
        padding: const EdgeInsets.all(16),
      ),
    );
  }
}
