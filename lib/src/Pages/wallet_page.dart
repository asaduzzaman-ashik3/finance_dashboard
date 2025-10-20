import 'package:finance_dashboard/src/Servvices/image_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({super.key});

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage> {
  List images = [];

  @override
  void initState() {
    super.initState();
    fetchImages();
  }

  fetchImages() async {

  


    final data = await ImagesService().getData();
    setState(() {
      images = data;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Wallet Page')),
      floatingActionButton: FloatingActionButton(onPressed: (){showModalBottomSheet(context: context, builder: (BuildContext context) {
        return SizedBox(
          height: 400,
          child: Center(
            child: ElevatedButton(onPressed: (){Navigator.pop(context);}, 
            child: Text('Close')),
          ),
        );
      });}, 
      
      child: Icon(Icons.add),),
      body: images.isEmpty
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(10.0),
              child: GridView.builder(
                itemCount: images.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.7,

                ),
                itemBuilder: (context, index) {
                  final image = images[index];
                  return Card(
                    
                    elevation: 3,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: const BorderRadius.vertical(
                              top: Radius.circular(12),
                            ),
                            child: Image.network(
                              image['image'],
                              fit: BoxFit.contain,
                            )
                            .animate()
                            .then()
                            .shake(duration: 200.ms)
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            image['title'],
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w500,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Text(
                          "\$${image['price']}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                          ),
                        )
                        .animate()
                        .fadeIn(duration:300.ms),
                        

                        const SizedBox(height: 8),
                      ],
                    ),
                  )
                  .animate()
                  .fadeIn(duration: 300.ms)
                  .slideX(begin: 1,end: 0, duration: 300.ms)
                  .then()
                  .shake(duration: 100.ms);
                  
                },
              ),
            ),
    );
  }
}
