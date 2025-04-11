import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: TelaInicial()));
}

// stateless: estático
// stateful: dinâmico

class TelaInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.elderly, color: Colors.white),
          ),
        ],
        title: Text(
          "Central de estudos.",
          style: TextStyle(color: Colors.white),
        ),
        leading: Icon(Icons.school, color: Colors.white),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(20),
        crossAxisCount: 3,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.amber[100],
            child: const Text("Nome do"),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.amber[200],
            child: const Text('Pra comprar o mé'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.amber[300],
            child: const Text('O leite das criança'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.amber[400],
            child: const Text('O motz da muié'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.amber[500],
            child: const Text('O resto é só fé'),
          ),
          Container(
            padding: const EdgeInsets.all(8),
            color: Colors.amber[600],
            child: const Text('Só fé Só fé'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaCadastro()),
          );
        },
        backgroundColor: Colors.amber,
        child: Icon(Icons.schedule, color: Colors.white),
      ),
    );
  }
}

class TelaCadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.abc, color: Colors.white),
          ),
        ],
        title: Text("Central Vitores", style: TextStyle(color: Colors.white)),
        leading: Icon(Icons.school, color: Colors.white),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.all(12.0),
            child: Column(
              children: [
                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.shopping_bag),
                      border: OutlineInputBorder(),
                      labelText: 'Nome do produto',
                    ),
                  ),
                ),

                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.shopping_cart),
                      border: OutlineInputBorder(),
                      labelText: 'Quantidade',
                    ),
                  ),
                ),

                SizedBox(
                  width: 300,
                  child: TextField(
                    decoration: InputDecoration(
                      icon: Icon(Icons.money),
                      border: OutlineInputBorder(),
                      labelText: 'Preço do produto',
                    ),
                  ),
                ),

                SizedBox(
                  child: Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.delete_forever, color: Colors.red),
                      ),
                      IconButton(onPressed: () {}, icon: Icon(Icons.send)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaInicial()),
          );
        },
        backgroundColor: Colors.blueGrey,
        child: Icon(Icons.back_hand, color: Colors.white),
      ),
    );
  }
}
