import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/dashboard_controller.dart';
import '../../../../shared/themes/app_theme.dart';

class UserHeaderWidget extends StatelessWidget {
  const UserHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<DashboardController>();
    
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppTheme.primaryGreen,
            AppTheme.secondaryGreen,
          ],
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [          // Avatar
          const CircleAvatar(
            radius: 24,
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              size: 28,
              color: AppTheme.primaryGreen,
            ),
          ),
          
          const SizedBox(width: 12),
          
          // User info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'আসসালামু আলাইকুম', // Assalamu Alaikum
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.white70,
                  ),
                ),
                
                const SizedBox(height: 2),
                
                Obx(() => Text(
                  controller.userName.value,
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                )),
                
                const SizedBox(height: 2),
                
                Row(
                  children: [                    const Icon(
                      Icons.location_on_outlined,
                      size: 14,
                      color: Colors.white70,
                    ),
                    
                    const SizedBox(width: 4),
                    
                    Obx(() => Text(
                      controller.userLocation.value,
                      style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        color: Colors.white70,
                      ),
                    )),
                  ],
                ),
              ],
            ),
          ),
          
          // Weather info (placeholder)
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Column(              children: [
                const Icon(
                  Icons.wb_sunny,
                  color: Colors.white,
                  size: 20,
                ),
                
                const SizedBox(height: 2),
                
                Text(
                  '২৮°',
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
