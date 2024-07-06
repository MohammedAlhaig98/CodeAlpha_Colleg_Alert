import 'package:college_project_test/core/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../../SignIn/Presentation/sing_in.dart';
class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody> with SingleTickerProviderStateMixin {

  @override
  void initState(){
    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    Future.delayed(const Duration(seconds: 5),() {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (_) => const SingIn()));
    });
  }
  @override
  void dispose(){
    super.dispose();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values
    );
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color(0x7FDA1775),
                Color(0x7FF91414)
              ],
              begin: Alignment(-1.00, -0.00),
              end: Alignment(1, 0)
          )
      ),
      child:Column(
        children: [
          const Spacer(),
          // App Logo
          Image.asset("assets/images/App_Logo.png"),
          const Spacer(),

          //App Creator Names
          const Text("Made by Mohammed & Abdullah",
          style: TextStyle(
            color: Color(0xFFB01212),
            fontSize: 15,
            fontFamily: 'Acme',
            fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 20,)
        ],
      ),
    );
  }
}
