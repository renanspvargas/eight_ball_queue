import 'package:eight_ball_queue_manager/imports.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Material(
      child: Padding(
        padding: const EdgeInsets.all(30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Adicionar jogador",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              height: 45,
              width: size.width * 0.35,
              child: ElevatedButton(
                onPressed: () {},
                child: const Text("Adicionar a fila"),
              ),
            ),
            const SizedBox(height: 40),
            const Divider(thickness: 5),
            const SizedBox(height: 40),
            const Text(
              "Gerenciar fila",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 45,
                  width: size.width * 0.35,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.redAccent,
                      ),
                    ),
                    child: const Text("Jogador anterior"),
                  ),
                ),
                const SizedBox(width: 40),
                SizedBox(
                  height: 45,
                  width: size.width * 0.35,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        Colors.green,
                      ),
                    ),
                    child: const Text("Próximo jogador"),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
