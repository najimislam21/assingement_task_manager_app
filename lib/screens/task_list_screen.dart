
import 'package:assingment_task_manager_app/screens/add_task_screen.dart';
import 'package:flutter/material.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  final List<Map<String, dynamic>> tasks = const [
    {
      "id": "01",
      "title": "Market Research",
      "time": "10:00 AM (10 minutes ago)",
      "status": "Done",
      "statusColor": Color(0xffDCCBFF),
      "iconBg": Color(0xffFFE2F2),
      "icon": Icons.work,
    },
    {
      "id": "02",
      "title": "Competitive Analysis",
      "time": "12:00 PM",
      "status": "In Progress",
      "statusColor": Color(0xffFFD6CC),
      "iconBg": Color(0xffFFE8DD),
      "icon": Icons.cases,
    },
    {
      "id": "03",
      "title": "Create Low-fidelity Wireframe",
      "time": "07:00 PM",
      "status": "To-do",
      "statusColor": Color(0xffD8ECFF),
      "iconBg": Color(0xffE8DDFF),
      "icon": Icons.lock,
    },
    {
      "id": "04",
      "title": "How to pitch a Design Sprint",
      "time": "09:00 PM",
      "status": "To-do",
      "statusColor": Color(0xffD8ECFF),
      "iconBg": Color(0xffFFE7D8),
      "icon": Icons.book,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: const Color(0xffF5F7FB),
        title: const Text(
          "To-Do List",
          style: TextStyle(
            color: Colors.black87,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xff7C5CFF),
        child: const Icon(Icons.add, color: Colors.white),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const AddTaskScreen(),
            ),
          );
        },
      ),

      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];

          return Padding(
            padding: const EdgeInsets.only(bottom: 16),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(22),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.03),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),

              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  /// LEFT CONTENT
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "ID: ${task["id"]}",
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),

                        const SizedBox(height: 8),

                        Text(
                          task["title"],
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w600,
                            color: Colors.black87,
                          ),
                        ),

                        const SizedBox(height: 12),

                        Row(
                          children: [
                            const Icon(
                              Icons.access_time_filled,
                              size: 16,
                              color: Color(0xff8D7CFF),
                            ),

                            const SizedBox(width: 6),

                            Text(
                              task["time"],
                              style: const TextStyle(
                                color: Color(0xff8D7CFF),
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  /// RIGHT SIDE
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: task["iconBg"],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          task["icon"],
                          color: const Color(0xff7C5CFF),
                          size: 18,
                        ),
                      ),

                      const SizedBox(height: 50),

                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color: task["statusColor"],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Text(
                          task["status"],
                          style: const TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}