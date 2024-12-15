import 'package:flutter/material.dart';

// import '../../core/env/env.dart';
import '../../core/ui/helper/loader.dart';
import '../../core/ui/helper/messages.dart';
import '../../core/ui/helper/size_extension.dart';
import '../../core/ui/styles/colors_app.dart';
import '../../core/ui/styles/text_styles.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with Loader, Messages {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      floatingActionButton: FloatingActionButton(onPressed: () async {
        showLoader();
        await Future.delayed(Duration(seconds: 2));
        hideLoader();

        showError("Algum erro");
        showInfo("Alguma info");
        showSucess("Algum Sucesso");
        showWarning("Algum aviso");
      }),
      body: Container(
        // color: Colors.red,
        color: context.colors.primary,
        width: context.percentWidget(.5),
        height: context.percentWidget(.5),
        child: Text("Texto Extra BOLD", style: context.textStyles.textBold),
      ),
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(Env.instance.get('backend_base_url')),
      //       Text(context.screenWidget.toString()),

      //     ],
      //   ),
      // ),
    );
  }
}
