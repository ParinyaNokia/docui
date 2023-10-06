import 'package:flutter/material.dart';

class Settingappoint extends StatefulWidget {
  const Settingappoint({super.key});

  @override
  State<Settingappoint> createState() => _SettingappointState();
}

class _SettingappointState extends State<Settingappoint> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Calendar Example'),
      ),
      body: Container(
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 7, // จำนวนคอลัมน์ที่คุณต้องการ
          ),
          itemCount: 31, // จำนวนรายการที่คุณต้องการ
          itemBuilder: (BuildContext context, int index) {
            // เพิ่ม 1 เพื่อให้เริ่มต้นที่วันที่ 1
            int day = index + 1;
            return GridTile(
              child: Text('$day'),
              // สามารถเพิ่มโค้ดเพิ่มเติมตามความต้องการ
            );
          },
        ),
      ),
    );
  }
}
