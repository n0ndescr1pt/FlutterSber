import 'package:flutter/material.dart';

class info_tabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return tab();
  }

  Widget tab() {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16, bottom: 20, top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'У вас подключено',
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w700,
              letterSpacing: -0.70,
            ),
          ),
          Text(
            'Подписки, автоплатежи и сервисы на которые вы подписались',
            style: TextStyle(
              color: Colors.black.withOpacity(0.550000011920929),
              fontSize: 14,
              fontFamily: 'SF Pro Text',
              fontWeight: FontWeight.w500,
              letterSpacing: -0.42,
            ),
          ),
        ],
      ),
    );
  }
}
