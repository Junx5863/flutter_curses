import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  const AnimatedText({super.key});

  @override
  State<AnimatedText> createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: AnimatedSwitcher(
          duration: const Duration(milliseconds: 200),
          child: Center(
            /* //* Al tener una key nos permite hacer el cambio sobre un widget especifico, al tener una logica por ejemplo
                //*_counter % 2 == 0 ? Text('$_counter') : const FlutterLogo(size: 100,), */
                //* el widget AnimatedSwitcher identifica cuando debe hacer la animacion  */
                //* pero al tener una key solo se haria el cambio por medio de lo que se cambia dentro del widget de TexT.  */
             */
            */
            key: ValueKey<int>(_counter),
            child: Text(
              '$_counter',
              style: const TextStyle(fontSize: 20),
            ),
          )),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _counter++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}
