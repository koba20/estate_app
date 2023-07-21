import 'package:flutter/material.dart';

class GateScreen extends StatefulWidget {
  const GateScreen({super.key});

  @override
  State<GateScreen> createState() => _GateScreenState();
}

class _GateScreenState extends State<GateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Gate Access',
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 2/1,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: const DecorationImage(
                    image: AssetImage(
                      'assets/images/Rectangle 1.png',
                    ),
                    fit: BoxFit.cover
                  )
                ),
              ),
            ),
            const SizedBox(height: 15,),
            const Text(
              'GENERATE CODE',
              style: TextStyle(fontWeight: FontWeight.w600),
            ),
            const SizedBox(height: 10,),
            const Text(
              'Generate  gate access codes for personal use and for guests to have access into the estate'
            ),
            const SizedBox(height: 20,),
            MaterialButton(
              height: 50,
              minWidth: double.infinity,
              elevation: 0,
              color: Colors.blue,
              disabledColor: Colors.blue.shade200,
              disabledTextColor: Colors.white.withOpacity(.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {
                showModalBottomSheet<void>(
                  context: context,
                  backgroundColor: Colors.transparent,
                  builder: (BuildContext context) {
                    return const GenerateCodeModal();
                  }
                );
              },
              child: const Text(
                'Generate Code',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}


class GenerateCodeModal extends StatelessWidget {
  const GenerateCodeModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 337,
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
              'Generate Code',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800
              ),
            ),
            const Divider(height: 30,),
            const Text(
              'Personal Code',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500
              ),
            ),
            const SizedBox(height: 10,),
            const Text(
              '000 892 902',
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.blue
              ),
            ),
            const Divider(height: 30,),
            MaterialButton(
              height: 50,
              minWidth: double.infinity,
              elevation: 0,
              color: Colors.blue,
              disabledColor: Colors.blue.shade200,
              disabledTextColor: Colors.white.withOpacity(.5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              onPressed: () {},
              child: const Text(
                'Generate Code',
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                )
              ),
            ),
          ]
        ),
      ),
    );
  }
}
