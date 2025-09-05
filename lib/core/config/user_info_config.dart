/// ============================================
/// 🔧 USER INFORMATION CONFIGURATION
/// ============================================
///
/// ⚠️ IMPORTANT: This is the MAIN file to customize your portfolio!
///
library;
/// 📝 Instructions:
/// 1. Replace all the information below with your own details
/// 2. Make sure to update your profile image in assets/images/my_pic.jpg
/// 3. Update your projects in projects_config.dart
/// 4. Update your social links in social_links_config.dart
/// ============================================

class UserInfoConfig {
  // ============================================
  // 👤 PERSONAL INFORMATION
  // ============================================

  /// Your full name (displayed in header, footer, and drawer)
  static const String fullName = 'Saurabh';

  /// Your first name for greeting (displayed in home section)
  static const String firstName = 'Saurabh';

  /// Your professional title/role
  static const String jobTitle = 'Flutter Developer';

  /// Your email address (displayed in contact section)
  static const String email = 'saurabhishere23@gmail.com';

  /// Your phone number (for WhatsApp contact)
  static const String phone = '+919354022176';

  /// Copyright year (displayed in footer)
  static const String copyrightYear = '2025';

  // ============================================
  // 💼 PROFESSIONAL INFORMATION
  // ============================================

  /// Your professional bio/description (displayed in home section)
  static const String professionalBio = '''
I am a Flutter Developer with 4 years of experience, having built and delivered 22+ mobile applications across various industries. Skilled in Flutter, Dart, Firebase, and API integrations, I focus on creating scalable, high-performance apps with clean architecture and great user experience.''';


  /// Your skills (displayed in about section)
  static const String skillsDescription =
      'Flutter Developer\nApp Publisher\nVideo Editor';

  /// List of your main skills/badges
  static const List<String> skillsBadges = [
    'Flutter Developer',
    'C++', 'C#', 'Python',
    'Dart Programming',
    'Mobile App Development',
    'UI/UX Design',
    'Firebase Integration',
    'API Integration',
    'State Management',
    'Technical Writing',
  ];

  // ============================================
  // 🛠️ SERVICES INFORMATION
  // ============================================

  /// Services you offer (displayed in services section)
  static const List<ServiceInfo> services = [
    ServiceInfo(
      title: 'Mobile App Development',
      description:
      'Designing and developing high-quality mobile apps tailored to business needs. Delivering seamless user experiences with modern UI and robust functionality.',
      debugMessage: 'Mobile App Development card pressed',
      features: [
        'Cross-platform apps for Android & iOS',
        'Interactive and responsive UI/UX',
        'Custom feature implementation',
        'Database integration and management',
        'Real-time functionality',
        'App testing and debugging',
      ],
      technologies: [
        'Flutter',
        'Dart',
        'Firebase',
        'SQLite',
        'REST APIs',
        'Git',
      ],
    ),
    ServiceInfo(
      title: 'API Development & Integration',
      description:
      'Creating secure, scalable, and efficient APIs for smooth communication between mobile apps and servers. Connecting apps with third-party platforms and services.',
      debugMessage: 'API Development & Integration card pressed',
      features: [
        'Custom REST API development',
        'Integration with third-party APIs',
        'Authentication & authorization (OAuth/JWT)',
        'Cloud hosting & scaling solutions',
        'Database design & optimization',
        'Real-time data synchronization',
      ],
      technologies: ['Node.js', 'Python', 'PostgreSQL', 'Docker', 'AWS'],
    ),
    ServiceInfo(
      title: 'App Performance Optimization',
      description:
      'Analyzing and fine-tuning apps for better speed, smoother navigation, and reduced load times. Ensuring apps run efficiently on all devices.',
      debugMessage: 'App Performance Optimization card pressed',
      features: [
        'Performance auditing & monitoring',
        'Code optimization & refactoring',
        'Memory & resource management',
        'UI/UX performance improvements',
        'Bundle size & loading time reduction',
        'Crash reporting & issue fixing',
      ],
      technologies: [
        'Flutter DevTools',
        'Firebase Performance',
        'Dart Observatory',
        'Webpack',
        'Bundle Analyzer',
      ],
    ),
    ServiceInfo(
      title: 'Video Editing & Motion Graphics',
      description:
      'Professional video editing services to create engaging content for apps, social media, and marketing. Adding smooth transitions, effects, and animations.',
      debugMessage: 'Video Editing & Motion Graphics card pressed',
      features: [
        'Cinematic video editing',
        'Motion graphics & animations',
        'Color correction & enhancement',
        'Audio mixing & background scoring',
        'Intro/outro video creation',
        'Export in multiple formats',
      ],
      technologies: [
        'Adobe Premiere Pro',
        'After Effects',
        'Filmora',
        'Final Cut Pro',
      ],
    ),
    ServiceInfo(
      title: 'App Publishing & Store Management',
      description:
      'Helping clients publish apps successfully on Google Play Store and Apple App Store with proper guidelines, optimization, and support.',
      debugMessage: 'App Publishing & Store Management card pressed',
      features: [
        'App Store & Play Store publishing',
        'App Store Optimization (ASO)',
        'Version management & updates',
        'App signing & release builds',
        'Crash & review monitoring',
        'Post-launch support',
      ],
      technologies: [
        'Google Play Console',
        'App Store Connect',
        'Firebase Crashlytics',
        'Analytics Tools',
      ],
    ),
  ];


  // ============================================
  // 📱 APP INFORMATION
  // ============================================

  /// Your app title (displayed in title bar)
  static const String appTitle = 'My Folio';

  /// Profile image path (make sure to place your image here)
  static const String profileImagePath = 'assets/images/my_pic.jpeg';
}

/// Helper class for service information
class ServiceInfo {
  final String title;
  final String description;
  final String debugMessage;
  final List<String> features;
  final List<String> technologies;

  const ServiceInfo({
    required this.title,
    required this.description,
    required this.debugMessage,
    required this.features,
    required this.technologies,
  });
}
