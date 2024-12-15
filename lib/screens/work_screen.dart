import 'package:flutter/material.dart';

class WorkScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('工作經歷'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildJobCard(
              icon: Icons.code,
              jobTitle: '網頁工程師（暑期實習）',
              description:
              '負責網頁設計與App開發，運用HTML、JS、CSS、Vue.js、IONIC等技術。\n協助偏鄉診所製作貼合診所功能的App及網頁，並且與台東大學、馬偕醫院、工研院等機構報告。',
            ),
            _buildJobCard(
              icon: Icons.hotel,
              jobTitle: '房務員',
              description: '協助旅館房務整理。',
            ),
            _buildJobCard(
              icon: Icons.school,
              jobTitle: '學校專題開發',
              description: '設計量測電感、電容零件之儀器。',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildJobCard({
    required IconData icon,
    required String jobTitle,
    required String description,
  }) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        leading: CircleAvatar(
          backgroundColor: Colors.blueAccent.withOpacity(0.1),
          child: Icon(
            icon,
            color: Colors.blueAccent,
            size: 30,
          ),
        ),
        title: Text(
          jobTitle,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent,
          ),
        ),
        subtitle: Text(
          description,
          style: TextStyle(
            fontSize: 16,
            color: Colors.black87,
            height: 1.5,
          ),
        ),
      ),
    );
  }
}
