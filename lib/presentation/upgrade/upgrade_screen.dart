// upgrade_screen.dart
import 'package:flutter/material.dart';
import 'package:mini_app/core/utils/app_assets.dart';
import 'package:mini_app/helper/helper_extention.dart';
import 'package:mini_app/presentation/upgrade/widgets/plan_container.dart';
import 'package:mini_app/presentation/upgrade/widgets/upgrade_title.dart';

class UpgradeScreen extends StatefulWidget {
  const UpgradeScreen({super.key});

  @override
  State<UpgradeScreen> createState() => _UpgradeScreenState();
}

class _UpgradeScreenState extends State<UpgradeScreen> {
  int selectedPlan = 0; // 0 for monthly, 1 for annually

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            AppAssets.upgradeBackground,
            fit: BoxFit.cover,
            height: double.infinity,
            width: double.infinity,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const UpgradeTitle(),
                  const SizedBox(height: 20),
                  Image.asset(
                    AppAssets.rocketBoy,
                    height: 207,
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Seamless Anime\nExperience, Ad-Free.',
                    textAlign: TextAlign.center,
                    style: context.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 12),
                  Text(
                    'Enjoy unlimited anime streaming without\ninterruptions.',
                    style: context.textTheme.bodyMedium?.copyWith(
                      color: const Color(0xffAEADB5),
                      fontSize: 12,
                      fontWeight: FontWeight.w300,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 32),
                  PlanContainer(
                    isSelected: selectedPlan == 0,
                    title: 'Monthly',
                    price: '\$5 USD / Month',
                    onTap: () {
                      setState(() {
                        selectedPlan = 0;
                      });
                    },
                  ),
                  PlanContainer(
                    isSelected: selectedPlan == 1,
                    title: 'Annually',
                    price: '\$50 USD / Year',
                    onTap: () {
                      setState(() {
                        selectedPlan = 1;
                      });
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle continue action
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff5D5FEF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: Text(
                        'Continue',
                        style: context.textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}