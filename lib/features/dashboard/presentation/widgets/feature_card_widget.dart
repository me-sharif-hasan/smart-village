import 'package:flutter/material.dart';
import '../controllers/dashboard_controller.dart';
import '../../../../shared/themes/app_theme.dart';

class FeatureCardWidget extends StatelessWidget {
  final FeatureCard feature;
  final VoidCallback onTap;

  const FeatureCardWidget({
    super.key,
    required this.feature,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final color = Color(int.parse(feature.color));
    
    return Card(
      elevation: 3,
      shadowColor: color.withOpacity(0.3),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                color.withOpacity(0.1),
                color.withOpacity(0.05),
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: color.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Icon(
                  _getIconData(feature.icon),
                  size: 32,
                  color: color,
                ),
              ),
              
              const SizedBox(height: 12),
              
              Text(
                feature.title,
                style: Theme.of(context).textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                  color: AppTheme.textPrimary,
                ),
                textAlign: TextAlign.center,
              ),
              
              const SizedBox(height: 4),
              
              Text(
                feature.subtitle,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: AppTheme.textSecondary,
                ),
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  IconData _getIconData(String iconName) {
    switch (iconName) {
      case 'medical':
        return Icons.medical_services;
      case 'agriculture':
        return Icons.agriculture;
      case 'law':
        return Icons.gavel;
      case 'emergency':
        return Icons.emergency;
      default:
        return Icons.help_outline;
    }
  }
}
