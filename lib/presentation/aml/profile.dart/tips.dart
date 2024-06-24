import 'package:flutter/material.dart';

class tips extends StatefulWidget {
  const tips({super.key});

  @override
  State<tips> createState() => _tipsState();
}

class _tipsState extends State<tips> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Tips for dealing with ADHD"),
      ),
      body: Container(
        padding: EdgeInsets.all(15),
        child: ListView(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20, right: 5, left: 5),
              child: Text(
                "Organization and Planning:",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 62, 123, 173)),
              ),
            ),
            Container(
              padding: EdgeInsets.only(right: 10, left: 10),
              child: Text(
                  "Create routines and schedules: Having a consistent daily structure can help reduce decision fatigue and keep you on track. Use planners, calendars, and to-do lists to stay organized and prioritize tasks."
                  "Break down large tasks: Divide overwhelming projects into smaller, more manageable steps. This makes them feel less daunting and easier to tackle."
                  "Minimize distractions: Find a quiet workspace free from clutter and notifications. Consider noise-canceling headphones or apps that block distractin"),
            ),
            Container(
              padding: EdgeInsets.only(top: 20, right: 5, left: 5),
              child: Text(
                "Focus and Attention:",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 62, 123, 173)),
              ),
            ),
            Container(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Text(
                    "Set timers: Use a timer to focus on a task for a specific period, like 25 minutes, followed by a short break. This can help improve focus and prevent hyperfixation."
                    "Take regular breaks: Get up and move around every 20-30 minutes to avoid restlessness and re-energize your mind."
                    "Identify your peak focus times: Schedule demanding tasks for when you're naturally most alert and focused, whether it's morning, afternoon, or even late at night.")),
            Container(
              padding: EdgeInsets.only(top: 20, right: 5, left: 5),
              child: Text(
                "Movement and Body Awareness:",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 62, 123, 173)),
              ),
            ),
            Container(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Text(
                    "Exercise regularly: Physical activity is crucial for managing ADHD symptoms. Aim for at least 30 minutes of moderate-intensity exercise most days of the week."
                    "Fidget toys: Channel excess energy into a healthy outlet like doodling, fidget spinners, or chewy necklaces."
                    "Mindfulness and meditation: Practices like mindfulness and meditation can help increase self-awareness, improve focus, and manage stress.")),
            Container(
              padding: EdgeInsets.only(top: 20, right: 5, left: 5),
              child: Text(
                "Additional Tips:",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 62, 123, 173)),
              ),
            ),
            Container(
                padding: EdgeInsets.only(right: 10, left: 10),
                child: Text(
                    "Get enough sleep: When you're well-rested, you're better able to focus and regulate your emotions. Aim for 7-8 hours of sleep each night."
                    "Eat a healthy diet: Limit sugary foods and processed snacks, which can worsen ADHD symptoms. Focus on whole grains, fruits, vegetables, and lean protein."
                    "Stay hydrated: Dehydration can negatively impact mood and focus. Drink plenty of water throughout the day."
                    "Seek support: Don't hesitate to reach out to therapists, coaches, or support groups specializing in ADHD. They can provide valuable guidance and strategies."
                    "Remember, everyone with ADHD is different, and what works for one person may not work for another. Experiment with different tips and find what helps you manage your symptoms and thrive."
                    "Here are some additional resources that you may find helpful:"
                    "ADDitude Magazine: https://www.additudemag.com/")),
          ],
        ),
      ),
    );
  }
}
