import 'package:flutter/material.dart';

class AuthCard extends StatelessWidget {
  const AuthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20.0),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(21)),
        ),
        color: const Color.fromARGB(255, 224, 177, 169),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Log in with'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Facebook'),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Log in with'),
                  TextButton(onPressed: () {}, child: const Text('Google'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
