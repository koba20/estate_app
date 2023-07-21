import 'package:flutter/material.dart';

class DeleteAccount extends StatefulWidget {
  const DeleteAccount({super.key});

  @override
  State<DeleteAccount> createState() => _DeleteAccountState();
}

class _DeleteAccountState extends State<DeleteAccount> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.blue,
        centerTitle: true,
        title: const Text(
          'Delete Account',
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
              const Text(
                'Please let us know below why you need to delete your account'
              ),
              const SizedBox(height: 20,),
              const Text(
                'Reasons'
              ),
              const SizedBox(height: 10,),
              TextField(
                maxLines: 5,
                keyboardType: TextInputType.name,
                decoration: InputDecoration(
                  contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                  hintText: 'State your reasons',
                  hintStyle:
                      const TextStyle(fontSize: 15, color: Colors.grey),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(color: Colors.grey
                    )
                  )
                ),
              ),
              const SizedBox(height: 10,),
              const Text(
                'Note:',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              const Text(
                'Estate management apps are required to keep financial records for audit and regulation purposes. These records are important to ensure that the app is compliant with all applicable laws and regulations.'
              ),
              const SizedBox(height: 20,),
              const Text(
                'What happens if I delete my account',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              const Text(
                'If you delete your account, your personal information and non-estate management related information will be removed from the system. However, your estate management records will still be available for audit and regulation purposes.'
              ),
              const SizedBox(height: 20,),
              const Text(
                'How do I reactivate my account',
                style: TextStyle(
                  fontWeight: FontWeight.bold
                ),
              ),
              const Text(
                'If you delete your account and you need to reactivate it, you will need to contact customer support. Customer support will attempt to restore your estate management records, but they will not be able to restore your personal information or non-estate management related information. I hope this helps!'
              ),
              const SizedBox(height: 20,),
              ListTile(
                contentPadding: EdgeInsets.zero,
                leading: Checkbox(value: false, onChanged: (value){}),
                title: Text(
                  'By confirming, we assume that you have read and understood the information above.'
                ),
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
                      return const DeleteAccountModal();
                    }
                  );
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    color: Colors.white
                  )
                ),
              ),
              const SizedBox(height: 20,),
            ],  
          ),
        ),
      ),
    );
  }
}

class DeleteAccountModal extends StatelessWidget {
  const DeleteAccountModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
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
          crossAxisAlignment: CrossAxisAlignment.center, 
          children: [
            const Text(
              'Confirm Delete',
              style: TextStyle(
                fontSize: 17,
                fontWeight: FontWeight.w800
              ),
            ),
            Text(
              'Kindly input your password to confirm account delete.',
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20,),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Password',
              ),
            ),
            const SizedBox(height: 10,),
            TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                hintText: 'Enter Password',
                suffixIcon: IconButton(onPressed: (){}, icon: const Icon(Icons.remove_red_eye)),
                hintStyle:
                    const TextStyle(fontSize: 15, color: Colors.grey),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: const BorderSide(color: Colors.grey
                  )
                )
              ),
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
                      return const DeleteAccountModal();
                    }
                  );
                },
                child: const Text(
                  'Delete Now',
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
