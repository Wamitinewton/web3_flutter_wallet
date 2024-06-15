import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wallet_contract/pages/create_or_import.dart';
import 'package:wallet_contract/pages/wallet.dart';
import 'package:wallet_contract/providers/wallet_provider.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final walletProvider = Provider.of<WalletProvider>(context);

    if (walletProvider.privateKey == null) {
      // If private key doesn't exist, load CreateOrImportPage
      return const CreateOrImport();
    } else {
      // If private key exists, load WalletPage
      return WalletPage();
    }
  }
}
