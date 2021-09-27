import 'package:flutter/material.dart';
import 'package:flutter_provider_estudo/provider/produto_model.dart';
import 'package:flutter_provider_estudo/provider/produto_widget.dart';
import 'package:flutter_provider_estudo/provider/user_model.dart';
import 'package:provider/provider.dart';

class ProviderPage extends StatelessWidget {
  const ProviderPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var user = Provider.of<UserModel>(context);
    // .read ele vai retornar uma instancia sem ficar escutando alterações
    // var user = context.read<UserModel>();
    // var imageAvatar = context.select<UserModel, String>((usermodel) => usermodel.imgAvatar);
    // var user = context.watch<UserModel>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Provider'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  user.imgAvatar,
                ),
                radius: 60,
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(user.name),
                  Text(' ${user.birthdate}'),
                ],
              ),
              Provider(
                create: (_) => ProdutoModel(nome: 'Alteração Flutter Provider'),
                child: const ProdutoWidget(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
