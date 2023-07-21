import 'package:estate_app/screens/home_screens/addIssues_screen.dart';
import 'package:estate_app/screens/home_screens/trackIssue_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class IssueScreen extends StatefulWidget {
  const IssueScreen({super.key});

  @override
  State<IssueScreen> createState() => _IssueScreenState();
}

class _IssueScreenState extends State<IssueScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Issues',
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
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  children: [
                    Row(
                      children: [
                        const Text(
                          'In Progress',
                          style: TextStyle(color: Colors.blue),
                        ),
                        const Spacer(),
                        Text(
                          'Ticket No: 001',
                          style: TextStyle(color: Colors.black.withOpacity(.5)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage(
                                  'assets/images/Rectangle 1.png', //Download Image
                                ),
                                fit: BoxFit.cover)),
                      ),
                      title: const Text('PLUMBING'),
                      subtitle: const Text(
                          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        MaterialButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          onPressed: () {},
                          color: Colors.red,
                          elevation: 0,
                          child: const Row(
                            children: [
                              Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              Text(
                                'Withdraw',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                        const Spacer(),
                        MaterialButton(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>TrackIssueScreen()));
                          },
                          color: Colors.blue,
                          elevation: 0,
                          child: const Row(
                            children: [
                              Icon(
                                Icons.edit,
                                color: Colors.white,
                              ),
                              Text(
                                'Track',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const Divider(),
              Container(
                padding: const EdgeInsets.all(5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Text(
                          'Resolved',
                          style: TextStyle(color: Colors.green),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        const Text('03/10/2023'),
                        const Spacer(),
                        Text(
                          'Ticket No: 002',
                          style: TextStyle(color: Colors.black.withOpacity(.5)),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Container(
                        height: 75,
                        width: 75,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            image: const DecorationImage(
                                image: AssetImage(
                                  'assets/images/Rectangle 1.png', //Download Image
                                ),
                                fit: BoxFit.cover)),
                      ),
                      title: const Text('Electrical'),
                      subtitle: const Text(
                          'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit.'),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                      'Service Rate',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    RatingStars(
                      value: 3 / 5,
                      onValueChanged: (value) {
                        setState(() {
                          value = value;
                        });
                      },
                      starCount: 5,
                      starColor: Colors.yellow,
                      starSpacing: 2,
                      valueLabelColor: const Color(0xff9b9b9b),
                      valueLabelTextStyle: const TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal,
                          fontSize: 12.0),
                      valueLabelRadius: 10,
                      maxValue: 5,
                      maxValueVisibility: true,
                      valueLabelVisibility: true,
                      animationDuration: Duration(milliseconds: 1000),
                      valueLabelPadding: const EdgeInsets.symmetric(
                          vertical: 1, horizontal: 8),
                      valueLabelMargin: const EdgeInsets.only(right: 8),
                      starOffColor: const Color(0xffe7e8ea),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => AddIssueScreen()));
        },
        child: const Icon(Icons.edit),
      ),
    );
  }
}
