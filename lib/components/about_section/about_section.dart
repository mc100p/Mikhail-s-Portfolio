import 'package:flutter/material.dart';
import 'package:test/constants/constants.dart';
import 'package:test/utils/images.dart';
import 'package:test/utils/custom_widget.dart';
import 'package:test/utils/responsive_ui.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(32),
      child:
          ResponsiveUi.isMobile(context)
              ? Column(
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.redAccent, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withAlpha((0.3 * 255).toInt()),
                            blurRadius: 12,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 180,

                        backgroundImage: AssetImage(ImageNames.profilePicture),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ResponsiveText(
                        actualText: StaticText.aboutmeTitle,
                        textStyle: TextStyle(fontSize: 40, color: Colors.red),
                      ),
                      const SizedBox(height: 10),
                      ResponsiveText(
                        actualText: StaticText.aboutDescription,
                        textStyle: TextStyle(fontSize: 50),
                      ),
                    ],
                  ),
                ],
              )
              : Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Container(
                      padding: EdgeInsets.all(4),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.redAccent, width: 2),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.red.withAlpha((0.3 * 255).toInt()),
                            blurRadius: 12,
                            spreadRadius: 2,
                          ),
                        ],
                      ),
                      child: CircleAvatar(
                        radius: 180,

                        backgroundImage: AssetImage(ImageNames.profilePicture),
                      ),
                    ),
                  ),
                  const SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ResponsiveText(
                          actualText: StaticText.aboutmeTitle,
                          textStyle: TextStyle(fontSize: 28, color: Colors.red),
                        ),
                        const SizedBox(height: 10),
                        ResponsiveText(
                          actualText: StaticText.aboutDescription,
                          textStyle: TextStyle(fontSize: 40),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
    );
  }
}
