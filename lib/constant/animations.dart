import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstScreen(),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
    );
  }
}

class QuantumPortalTransition extends PageRouteBuilder {
  final Widget page;
  final Color primaryColor;
  final Color secondaryColor;

  QuantumPortalTransition({
    required this.page,
    this.primaryColor = Colors.deepPurple,
    this.secondaryColor = Colors.blueAccent,
  }) : super(
          pageBuilder: (context, animation, secondaryAnimation) => page,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            // Animation de déformation et d'expansion
            var begin = 0.0;
            var end = 1.0;
            var curve = Curves.easeInOutQuart;

            var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
            var scaleAnimation = animation.drive(tween);

            return Stack(
              children: [
                // Effet de portail tourbillonnant
                Center(
                  child: CustomPaint(
                    painter: PortalPainter(
                      animation: animation,
                      primaryColor: primaryColor,
                      secondaryColor: secondaryColor,
                    ),
                    child: SizedBox(
                      width: double.infinity,
                      height: double.infinity,
                    ),
                  ),
                ),

                // Page qui se matérialise
                ScaleTransition(
                  scale: scaleAnimation,
                  child: FadeTransition(
                    opacity: animation,
                    child: child,
                  ),
                ),
              ],
            );
          },
          transitionDuration: Duration(milliseconds: 1500),
        );
}

class PortalPainter extends CustomPainter {
  final Animation<double> animation;
  final Color primaryColor;
  final Color secondaryColor;

  PortalPainter({
    required this.animation,
    required this.primaryColor,
    required this.secondaryColor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    final maxRadius = size.width * 1.5;

    // Effet de tourbillon quantique
    for (int i = 0; i < 10; i++) {
      final progress = animation.value;
      final radius = maxRadius * progress * (1 - i * 0.1);
      final angle = i * pi / 5 + progress * 2 * pi;

      final paint = Paint()
        ..color = Color.lerp(primaryColor, secondaryColor, i / 10)!
            .withOpacity(1 - progress)
        ..style = PaintingStyle.stroke
        ..strokeWidth = 5 * (1 - progress);

      // Dessin des anneaux tourbillonnants
      canvas.drawArc(
        Rect.fromCircle(center: center, radius: radius),
        angle,
        pi / 3,
        false,
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => true;
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Portail Quantique'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Prêt à voyager ?',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurple,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              child: Text('Entrer dans le portail'),
              onPressed: () {
                Navigator.of(context).push(
                  QuantumPortalTransition(
                    page: SecondScreen(),
                    primaryColor: Colors.deepPurple,
                    secondaryColor: Colors.blueAccent,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nouvel Univers'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Bienvenue dans un nouvel univers !',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent,
                foregroundColor: Colors.white,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              ),
              child: Text('Retour'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        ),
      ),
    );
  }
}