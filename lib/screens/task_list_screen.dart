
import 'package:flutter/material.dart';
import '../widgets/task_card.dart';
import 'add_task_screen.dart';

class TaskListScreen extends StatelessWidget {
  const TaskListScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final double width = MediaQuery.sizeOf(context).width;

    /// RESPONSIVE GRID COUNT
    int crossAxisCount = 1;

    if (width >= 700 && width < 1100) {
      crossAxisCount = 2;
    } else if (width >= 1100) {
      crossAxisCount = 3;
    }

    return Scaffold(
      backgroundColor: const Color(0xffF5F7FB),

      appBar: AppBar(
        backgroundColor: const Color(0xffF5F7FB),
        elevation: 0,
        centerTitle: true,

        title: const Text(
          "To-Do List",
          style: TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,

        child: const Icon(Icons.add,color: Colors.white,),

        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (_) => const AddTaskScreen(),
            ),
          );
        },
      ),

      body: GridView.builder(
        padding: const EdgeInsets.all(16),

        itemCount: 4,

        gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,

          crossAxisSpacing: 16,
          mainAxisSpacing: 16,

          /// IMPORTANT
          mainAxisExtent: width < 700 ? 170 : 190,
        ),

        itemBuilder: (context, index) {

          final tasks = [
            const TaskCard(
              id: "01",
              title: "Market Research",
              time: "10:00 AM",
              status: "Done",
              statusColor: Color(0xffE5D9FF),
              iconBg: Color(0xffFFE0F0),
              icon: Icons.work,
            ),

            const TaskCard(
              id: "02",
              title: "Competitive Analysis",
              time: "12:00 PM",
              status: "In Progress",
              statusColor: Color(0xffFFD9CC),
              iconBg: Color(0xffFFE9E1),
              icon: Icons.cases,
            ),

            const TaskCard(
              id: "03",
              title: "Create Wireframe",
              time: "07:00 PM",
              status: "To-do",
              statusColor: Color(0xffD9EEFF),
              iconBg: Color(0xffE8DDFF),
              icon: Icons.lock,
            ),

            const TaskCard(
              id: "04",
              title: "Design Sprint",
              time: "09:00 PM",
              status: "To-do",
              statusColor: Color(0xffD9EEFF),
              iconBg: Color(0xffFFE8D9),
              icon: Icons.book,
            ),
          ];

          return tasks[index];
        },
      ),
    );
  }
}