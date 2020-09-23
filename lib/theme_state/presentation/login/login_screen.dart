import 'package:flutter/material.dart';
import 'package:theming_app/theme_state/presentation/theme.dart';

const logoSize = 45.0;

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final moreSize = 50.0;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 2,
            child: Stack(
              children: [
                Positioned(
                  bottom: logoSize,
                  left: -moreSize/2,
                  right: -moreSize/2,
                  height: width,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular( 200 ),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: deliveryGradients,
                        stops: [
                          0.5,
                          1.0
                        ]
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: logoSize,
                    child: Text(
                      'App',
                      style: TextStyle(
                        color: Colors.black
                      ),
                    ),
                  )
                )
              ],
            ),            
          ),
          Expanded(
            flex: 3,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox( height: 30,),
                    Text( 
                      'Login', 
                      style: Theme.of(context).textTheme.headline6.copyWith(fontWeight: FontWeight.bold ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox( height: 40,),
                    Text( 
                      'Username',
                      style: Theme.of(context).textTheme.subtitle2.copyWith(fontWeight:  FontWeight.bold),
                      textAlign: TextAlign.start,
                    ),
                    TextField(),
                    const SizedBox( height: 30,),
                    Text( 
                      'Password',
                      style: Theme.of(context).textTheme.subtitle2.copyWith(fontWeight:  FontWeight.bold),
                    ),
                    TextField(),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(25),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                gradient: LinearGradient(
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                  colors: deliveryGradients
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(14.0),
                  child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
