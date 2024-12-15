import 'package:flutter/material.dart';

class ContactScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('聯絡方式'),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
            _buildContactCard(
              icon: Icons.email,
              title: '電子郵件',
              subtitle: 'C111151120@nkust.edu.tw',
              backgroundColor: Colors.blue[50]!,
              textColor: Colors.blue[800]!,
            ),
            SizedBox(height: 16),

            _buildContactCard(
              icon: Icons.phone,
              title: '電話',
              subtitle: '+886 982 515 549',
              backgroundColor: Colors.green[50]!,
              textColor: Colors.green[800]!,
            ),
            SizedBox(height: 16),

            _buildContactCard(
              icon: Icons.location_on,
              title: '地址',
              subtitle: '台灣，高雄市',
              backgroundColor: Colors.orange[50]!,
              textColor: Colors.orange[800]!,
            ),
            SizedBox(height: 16),

            _buildContactCard(
              icon: Icons.link,
              title: 'GitHub',
              subtitle: 'https://github.com/flysnow921103',
              backgroundColor: Colors.grey[200]!,
              textColor: Colors.black87,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildContactCard({
    required IconData icon,
    required String title,
    required String subtitle,
    required Color backgroundColor,
    required Color textColor,
  }) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      color: backgroundColor,
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        leading: CircleAvatar(
          backgroundColor: textColor.withOpacity(0.2),
          child: Icon(
            icon,
            color: textColor,
            size: 30,
          ),
        ),
        title: Text(
          title,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
        subtitle: Text(
          subtitle,
          style: TextStyle(
            fontSize: 16,
            color: textColor.withOpacity(0.8),
          ),
        ),
      ),
    );
  }
}
