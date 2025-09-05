
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../features/portfolio/presentation/widgets/custom_button_row.dart';
import '../config/user_info_config.dart';
import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class TextContent extends StatelessWidget {
  final bool isMobile;

  const TextContent({required this.isMobile});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start, // ✅ Always start-aligned
      children: [
        // Mobile-optimized heading
        Text(
          'Hello,\nI\'m ${UserInfoConfig.firstName}',
          style: isMobile
              ? AppTextStyles.heading.copyWith(
            color: AppColors.kBlack,
            height: 1.1,
            fontSize: 48, // Better mobile size
          )
              : AppTextStyles.heading.copyWith(
            color: AppColors.kBlack,
            height: 1.1,
          ),
        ),
        const SizedBox(height: 20),

        // Enhanced animated text section - better mobile layout
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_right_rounded,
              color: AppColors.kBlack,
              size: isMobile ? 32 : 34,
            ),
            const SizedBox(width: 12),
            Expanded(
              // ✅ Use Expanded to handle text overflow properly
              child: AnimatedTextKit(
                repeatForever: true,
                pause: const Duration(milliseconds: 1000),
                animatedTexts: [
                  TyperAnimatedText(
                    UserInfoConfig.jobTitle,
                    textStyle: GoogleFonts.montserrat(
                      fontSize: isMobile ? 22 : 25,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF474A57),
                    ),
                    speed: const Duration(milliseconds: 70),
                  ),
                  TyperAnimatedText(
                    'UI/UX Designer',
                    textStyle: GoogleFonts.montserrat(
                      fontSize: isMobile ? 22 : 25,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF474A57),
                    ),
                    speed: const Duration(milliseconds: 70),
                  ),
                  TyperAnimatedText(
                    'Technical Writer',
                    textStyle: GoogleFonts.montserrat(
                      fontSize: isMobile ? 22 : 25,
                      fontWeight: FontWeight.w600,
                      color: const Color(0xFF474A57),
                    ),
                    speed: const Duration(milliseconds: 70),
                  ),
                ],
              ),
            ),
          ],
        ),

        // ✅ Only show buttons on desktop - NOT on mobile
        if (!isMobile) ...[
          const SizedBox(height: 36),
          const CustomButtonRow(isMobile: false),
        ],
      ],
    );
  }
}
