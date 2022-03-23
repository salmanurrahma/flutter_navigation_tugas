part of 'pages.dart';

class DetailScreen extends StatelessWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Product productArgs =
        ModalRoute.of(context)!.settings.arguments as Product;
    return Scaffold(
        backgroundColor: Colors.grey,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(productArgs.name + ' with ' + productArgs.price.toString(),
                  style: TextStyle(fontSize: 25, color: Colors.white)),
              Text("Stok : " + productArgs.stok.toString(),
                  style: TextStyle(fontSize: 25, color: Colors.white)),
              SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(productArgs.image)),
            ],
          ),
        ));
  }
}
