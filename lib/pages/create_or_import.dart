import 'package:flutter/material.dart';
import 'package:wallet_contract/pages/generate_mnemonic_page.dart';

class CreateOrImport extends StatelessWidget {
  const CreateOrImport({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              alignment: Alignment.center,
              child: const Text(
                'Flexit wallet',
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 24.0,
            ),

            // logo
            Container(
              width: double.infinity,
              alignment: Alignment.center,
              child: SizedBox(
                width: 150,
                height: 200,
                child: Image.asset(
                  'assets/images/login.jpg',
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(
              height: 50.0,
            ),

            // login button

            ElevatedButton(
              onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const GenerateMnemonicPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.all(16)),
              child: const Text(
                'Create Wallet',
                style: TextStyle(fontSize: 18.0),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),

            // Register button
            ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                    padding: const EdgeInsets.all(16.0)),
                child: const Text(
                  'import from seed',
                  style: TextStyle(fontSize: 18.0),
                )),
            const SizedBox(
              height: 24.0,
            ),

            // footer
            Container(
              alignment: Alignment.center,
              child: const Text(
                '@ 2024 Athena. All rights reserved',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Colors.grey,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
