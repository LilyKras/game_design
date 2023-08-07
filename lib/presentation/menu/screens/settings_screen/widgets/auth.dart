import 'package:diella/presentation/menu/theme/theme_extensions.dart';
import 'package:flutter/material.dart';

class AuthCard extends StatelessWidget {
  const AuthCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: MediaQuery.of(context).size.height / 45),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(21)),
        ),
        color:
            Theme.of(context).extension<ThemeColors>()!.setingsBackgroundColor,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Log in with',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 17,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Facebook'),
                      ),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Log in with',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height / 17,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text('Google'),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
