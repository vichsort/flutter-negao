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
        backgroundColor: Colors.indigo,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.elderly, color: Colors.white),
          ),
        ],
        title: Text("Jukebox Joints", style: TextStyle(color: Colors.white)),
        leading: Icon(Icons.school, color: Colors.white),
      ),
      body: ListView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TelaCadastro()),
          );
        },
        backgroundColor: Colors.indigo,
        child: Icon(Icons.child_care_outlined, color: Colors.white),
      ),
    );
  }
}

class TelaCadastro extends StatelessWidget {
  final TextEditingController _controllernome = TextEditingController();
  final TextEditingController _controlerquant = TextEditingController();
  final TextEditingController _controllerpreco = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.abc, color: Colors.white),
          ),
        ],
        title: Text("Cadastrar", style: TextStyle(color: Colors.white)),
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
                    controller: _controllernome,
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
                    controller: _controlerquant,
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
                    controller: _controllerpreco,
                  ),
                ),

                SizedBox(
                  child: Center(
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            _controllernome.text = "";
                            _controlerquant.text = "";
                            _controllerpreco.text = "";
                          },
                          child: Icon(Icons.delete_forever, color: Colors.red),
                        ),
                        ElevatedButton(
                          onPressed: () {
                            Produto p = Produto(
                              _controllernome.text,
                              _controlerquant.text,
                              _controllerpreco.text,
                            );
                            Navigator.pop(context, p);
                          },
                          child: Icon(Icons.send),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.indigo,
        child: Icon(Icons.child_care_outlined, color: Colors.white),
      ),
    );
  }
}

class Produto {
  String nome;
  String quant;
  String preco;

  Produto(this.nome, this.quant, this.preco);
}
