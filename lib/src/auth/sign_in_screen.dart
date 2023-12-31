import 'package:flutter/material.dart';
import 'components/custom_text_field.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
    body: Column (
    children: [
      Expanded(
        child: Container(
          color: Colors.red
        ),
      ),
      Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
          vertical: 35,
        ),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(45),
        ),
      ),
      child:  Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children:[

      const CustomTextField(
        icon: Icons.email,
        label: 'Email',
       ),

      const CustomTextField(
        icon: Icons.lock,
        label: 'Senha',
        isSecret: true,
       ),

       SizedBox(
         height: 50,
         child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
            ),
          ),
          onPressed: () {}, 
         child: const Text('Entrar', style: TextStyle(
          fontSize: 18,
         ),),
         ),
       ),

        Align(
         alignment: Alignment.centerRight,
         child: TextButton(
          onPressed:() {}, 
          child: const Text(
          'Esqueceu a senha ?',
          style: TextStyle(
            color: Colors.red,
          )
         ),
               ),
       ),

        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Row(
            children: [
              Expanded(
                child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                        ),
              ),
              const Padding(
                padding:  EdgeInsets.symmetric(horizontal: 15),
                child: Text('Ou'),
              ),
              Expanded(
                child: Divider(
                          color: Colors.grey.withAlpha(90),
                          thickness: 2,
                )
              )
              ],),
        ),

               // Botão de novo usuario
              SizedBox(
                height: 50,
                child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                    side: BorderSide(
                      width: 2,
                      color: Colors.green,
                    ),
                  ),
                onPressed: () {},
                child: const Text('Criar conta',
                 style: TextStyle(
                  fontSize: 18,
                 ),
                 ),
                ),
              ),

      ],)
      ),
    ]),
    );
  }
}