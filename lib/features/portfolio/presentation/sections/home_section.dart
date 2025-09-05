import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'package:myfolio/core/constants/app_colors.dart';
import 'package:myfolio/core/constants/app_text_styles.dart';
import 'package:myfolio/features/portfolio/presentation/widgets/image_box.dart';
import 'package:myfolio/core/config/user_info_config.dart';

import 'package:myfolio/core/constants/responsive.dart';
import '../../../../core/widgets/text_widget.dart';
import '../widgets/custom_button_row.dart';

class HomeSection extends StatelessWidget {
  const HomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    final bool isMobile = Responsive.isMobile(context);

    return Container(
      padding: EdgeInsets.symmetric(
        vertical: isMobile ? 30 : 60,
        horizontal: isMobile ? 24 : 24,
      ),
      width: double.infinity,
      child: isMobile
          ? Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start, // ✅ Left align for mobile
              children: [
                TextContent(isMobile: true),
                const SizedBox(height: 40),
                // ✅ Show image only on mobile in home section
                Center(child: const ImageBox()),
                const SizedBox(height: 32),
                // ✅ Only ONE button row - at the bottom on mobile
                const CustomButtonRow(isMobile: true),
              ],
            )
          : Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: TextContent(isMobile: false),
                  ),
                ),
                // const SizedBox(width: 40),
                const ImageBox(),

              ],
            ),
    );
  }
}
