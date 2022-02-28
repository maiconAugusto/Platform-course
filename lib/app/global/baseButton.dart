import 'package:flutter/material.dart';

class BaseButton extends StatelessWidget {
  const BaseButton(
      {Key? key, required this.onPress, required this.text, this.loading})
      : super(key: key);
  final Function onPress;
  final String text;
  final bool? loading;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: double.infinity,
      child: ElevatedButton(
          onPressed: () {
            onPress();
          },
          child: loading == true
              ? Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(
                      height: 22,
                      width: 22,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Aguarde...')
                  ],
                )
              : Text(text),
          style: ElevatedButton.styleFrom(primary: const Color(0xff2DBD9C))),
    );
  }
}
