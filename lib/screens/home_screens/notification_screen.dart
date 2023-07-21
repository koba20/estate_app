import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Notifications',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.white,
          ),
        ),
        leading: Transform.scale(
          scale: 0.7,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
                onPressed: () => Navigator.pop(context),
                icon: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: Colors.black,
                )),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextButton(
                onPressed: (){
                  showModalBottomSheet<void>(
                    context: context,
                    backgroundColor: Colors.transparent,
                    builder: (BuildContext context) {
                      return const NotificationModal();
                    }
                  );
                }, 
                child: const Text(
                  'Notification Settings'
                )
              ),
              const SizedBox(height: 10,),
              ExpansionTile(
                tilePadding: EdgeInsets.zero,
                title: Text(
                  '2 unread notifications',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(.5)
                  ),
                ),
                trailing: TextButton(
                  onPressed: (){}, 
                  child: const Text(
                    'Mark as read',
                    style: TextStyle(fontSize: 12),
                  )
                ),
                children: const [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(),
                    title: Text('Welcome to Estate Lead'),
                    subtitle: Text('Hello John, welcome to Estate Lead, your default pin is 0000, please go to setting to reset...'),
                  ),
                  Divider(),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(),
                    title: Text('Welcome to Estate Lead'),
                    subtitle: Text('Hello John, welcome to Estate Lead, your default pin is 0000, please go to setting to reset...'),
                  ),
                ],
              ),
              ExpansionTile(
                tilePadding: EdgeInsets.zero,
                title: Text(
                  'Yesterday',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black.withOpacity(.5)
                  ),
                ),
                trailing: TextButton(
                  onPressed: (){}, 
                  child: const Text(
                    'Clear All',
                    style: TextStyle(fontSize: 12),
                  )
                ),
                children: const [
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(),
                    title: Text('Welcome to Estate Lead'),
                    subtitle: Text('Hello John, welcome to Estate Lead, your default pin is 0000, please go to setting to reset...'),
                  ),
                  Divider(),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(),
                    title: Text('Welcome to Estate Lead'),
                    subtitle: Text('Hello John, welcome to Estate Lead, your default pin is 0000, please go to setting to reset...'),
                  ),
                  Divider(),
                  ListTile(
                    contentPadding: EdgeInsets.zero,
                    leading: CircleAvatar(),
                    title: Text('Welcome to Estate Lead'),
                    subtitle: Text('Hello John, welcome to Estate Lead, your default pin is 0000, please go to setting to reset...'),
                  ),
                ],
              )
            ],  
          ),
        ),
      ),
    );
  }
}


class NotificationModal extends StatelessWidget {
  const NotificationModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).scaffoldBackgroundColor,
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            )),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, 
          children: [
            const Text(
              'Notification',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800
              ),
            ),
            const SizedBox(height: 20,),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'In-app notifications'
              ),
              trailing: CupertinoSwitch(
                value: true, 
                activeColor: Colors.blue,
                onChanged: (value){}
              )
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              title: const Text(
                'Reminders'
              ),
              trailing: CupertinoSwitch(
                value: false, 
                activeColor: Colors.blue,
                onChanged: (value){}
              )
            ),
          ]
        ),
      ),
    );
  }
}
