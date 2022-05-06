import 'package:flutter/material.dart';

class AuthWidgets extends StatefulWidget {
  const AuthWidgets({Key? key}) : super(key: key);

  @override
  State<AuthWidgets> createState() => _AuthWidgetsState();
}

class _AuthWidgetsState extends State<AuthWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text(
          'Umma Life',
          textAlign: TextAlign.center,
          style: TextStyle(color: Color.fromRGBO(0, 146, 150, 1),
          fontSize: 28 ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(110),
        child: SizedBox(child: const FormWidget()),
      )
    );
  }
}

class FormWidget extends StatefulWidget {
  const FormWidget({Key? key}) : super(key: key);

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  [
        TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
                width: 6,
                style: BorderStyle.none
              ),
                borderRadius: BorderRadius.circular(15)),),
        ),
        SizedBox(height: 25,),
        TextField(
          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),),
        ),
        SizedBox(height: 13,),
        TextButton(onPressed: (){}, child: Text('Забыли пароль?',style: TextStyle(color: Colors.black))),
        SizedBox(height: 25,),
        ElevatedButton(onPressed: (){}, child: Text('Войти'),
          style: ElevatedButton.styleFrom(
              primary: Color.fromRGBO(0, 146, 150, 1),
              fixedSize: Size(260, 45),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20)
          )),),
        SizedBox(height: 10,),
        Text('У вас нет аккаунта?',style: TextStyle(color: Colors.grey),),
        TextButton(onPressed: (){}, child: Text('Ругистрация',style: TextStyle(color: Color.fromRGBO(0, 146, 150, 1)),)),
      ],
    );
  }
}
