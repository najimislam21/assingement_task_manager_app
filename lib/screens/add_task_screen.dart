import 'package:flutter/material.dart';
import 'dart:math';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({super.key});

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  final formKey = GlobalKey<FormState>();
  final TaskTitelController = TextEditingController();
  final TaskDesController = TextEditingController();

  @override
  void dispose() {
    TaskTitelController.dispose();
    TaskDesController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery
        .sizeOf(context)
        .width;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Add Task"),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),

        child: Column(
          children: [
            Form(
              key: formKey,
              child: TextFormField(
                controller: TaskTitelController,
                onTapOutside: (_) => FocusScope.of(context).unfocus(),
                decoration: InputDecoration(
                  hintText: "Task Title",
                  filled: true,
                  fillColor: Colors.white,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            const SizedBox(height: 20),

            TextFormField(
              controller:TaskDesController,
              onTapOutside: (_)=> FocusScope.of(context).unfocus(),
              maxLines: 5,
              decoration: InputDecoration(
                hintText: "Task Description",
                filled: true,
                fillColor: Colors.white,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(16),
                  borderSide: BorderSide.none,
                ),
              ),
            ),

            const SizedBox(height: 30),

            SizedBox(
              width: double.infinity,
              height: width * .14,

              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text(
                  "Save Task",
                  style: TextStyle(
                    fontSize: width * .045,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

