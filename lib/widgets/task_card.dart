
import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String id;
  final String title;
  final String time;
  final String status;
  final Color statusColor;
  final Color iconBg;
  final IconData icon;

  const TaskCard({
    super.key,
    required this.id,
    required this.title,
    required this.time,
    required this.status,
    required this.statusColor,
    required this.iconBg,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24),

        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.05),
            blurRadius: 10,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,

        children: [

          /// TOP ROW
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              Text(
                "ID:$id",
                style: TextStyle(
                  color: Colors.grey.shade500,
                  fontSize: 16,
                ),
              ),

              Container(
                padding: const EdgeInsets.all(12),

                decoration: BoxDecoration(
                  color: iconBg,
                  borderRadius: BorderRadius.circular(16),
                ),

                child: Icon(icon),
              ),


            ],
          ),

          const Spacer(),

          /// TITLE
          Text(
            title,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight(600),
            ),
          ),

          const SizedBox(height: 8),

          /// BOTTOM ROW
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,

            children: [

              Text(
                time,
                style: TextStyle(
                  color: Colors.grey.shade600,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),

                decoration: BoxDecoration(
                  color: statusColor,
                  borderRadius: BorderRadius.circular(20),
                ),

                child: Text(
                  status,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}