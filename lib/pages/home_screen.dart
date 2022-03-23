part of 'pages.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<Product> products = [
    Product(
        name: "Paracetamol",
        stok: 25,
        price: 1500,
        image: 'assets/images/paracetamol.jpg'),
    Product(
        name: "Mixagrip",
        stok: 20,
        price: 1000,
        image: 'assets/images/mixagrip.jpg'),
    Product(
        name: "Antangin",
        stok: 15,
        price: 1500,
        image: 'assets/images/antangin.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping List"),
      ),
      body: Container(
        margin: const EdgeInsets.all(8),
        child: ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: products.length,
            itemBuilder: (context, index) {
              final product = products[index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/products', arguments: product);
                },
                child: Container(
                  margin: EdgeInsets.all(20),
                  child: Row(
                    children: [
                      Expanded(
                          child: Text(product.name,
                              style: const TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w300))),
                      Expanded(
                          child: Text(
                        "Rp. " + product.price.toString(),
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.w300),
                        textAlign: TextAlign.end,
                      )),
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
