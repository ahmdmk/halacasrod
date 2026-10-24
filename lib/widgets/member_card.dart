import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';
import '../models/member.dart';
import '../utils/app_theme.dart';

class MemberCard extends StatelessWidget {
  final Member member;
  final VoidCallback? onTap;

  const MemberCard({
    super.key,
    required this.member,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppTheme.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.05),
              blurRadius: 4,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            // Profile Picture
            CircleAvatar(
              radius: 24,
              backgroundColor: AppTheme.primaryBlue.withValues(alpha: 0.1),
              backgroundImage: member.profilePictureUrl != null
                  ? CachedNetworkImageProvider(member.profilePictureUrl!)
                  : null,
              child: member.profilePictureUrl == null
                  ? Text(
                      member.name.isNotEmpty ? member.name[0].toUpperCase() : 'U',
                      style: const TextStyle(
                        color: AppTheme.primaryBlue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    )
                  : null,
            ),
            const SizedBox(width: 12),
            // Member Info
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: Text(
                          member.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: AppTheme.textDark,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      if (member.isVerified)
                        const Icon(
                          Icons.verified,
                          color: AppTheme.green,
                          size: 16,
                        ),
                    ],
                  ),
                  const SizedBox(height: 4),
                  Text(
                    member.nativeDistrict,
                    style: const TextStyle(
                      fontSize: 14,
                      color: AppTheme.textGray,
                    ),
                  ),
                ],
              ),
            ),
            // Location
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  member.countryOfResidence,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                    color: AppTheme.textDark,
                  ),
                ),
                if (member.currentLocation != null)
                  Text(
                    member.currentLocation!,
                    style: const TextStyle(
                      fontSize: 11,
                      color: AppTheme.textGray,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}