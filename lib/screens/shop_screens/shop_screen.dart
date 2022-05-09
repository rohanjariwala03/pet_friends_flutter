import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({Key? key}) : super(key: key);

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: () async {
          // controller.fetchItems();
        },
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Wrap(
            runSpacing: 20,
            children: [wSearch(context),
              //wCategories(),
            wItemList(context)],
          ),
        ),
      ),
    );
  }

  Widget wSearch(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color(0xffBBDEFB), borderRadius: BorderRadius.circular(20)),
      child: IntrinsicHeight(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                width: 100,
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xffE3F2FD)),
              ),
            ),
            Padding(
              padding:
              const EdgeInsets.only(top: 20, left: 16, bottom: 10, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Find the best\nproduct for you",
                    style: TextStyle(
                        color: Color(0xff465bd8),
                        fontWeight: FontWeight.bold,
                        fontSize: 12.0),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(30)),
                    width: double.infinity,
                    child: TextFormField(
                      controller: searchController,
                      style: const TextStyle(
                        fontSize: 18,
                      ),
                      decoration: InputDecoration(
                        hintText: "Search what you need",
                        hintStyle: const TextStyle(
                          fontSize: 18,
                        ),
                        border: InputBorder.none,
                        prefixIcon: GestureDetector(
                          onTap: (){},
                          child: const Icon(
                            Icons.search,
                            size: 25,
                            color: Colors.black,
                          ),
                        ),
                        suffixIcon:  GestureDetector(
                          onTap: (){
                            searchController.text = "";
                          },
                          child: const Icon(
                            Icons.cancel,
                            size: 25,
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget wCategories() {
  Widget wItemList(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return  ListView.builder(
        itemCount: 4,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return GestureDetector(
            child: Container(
              padding:
              const EdgeInsets.only(top: 10, bottom: 10, left: 5, right: 10),
              margin: const EdgeInsets.symmetric(vertical: 5),
              decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      colors: [
                        Color(0xFFFFFFFF),
                        Color(0xB0E7E9E7),
                      ],
                      begin: Alignment(0.2, 0.0),
                      end: Alignment(1.0, 0.0),
                      tileMode: TileMode.clamp),
                  borderRadius: BorderRadius.circular(30)),
              child: Row(
                children: [
                  Image.network(
                    "https://media.istockphoto.com/photos/sneakers-picture-id495204892",
                    width: size.width / 4,
                    height: size.width / 4,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Flexible(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text("New Shoes"),
                        const SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              "100"
                                  " \$",
                              style: TextStyle(
                                  fontSize: 12.0,
                                  color: Color(0xff465bd8),
                                  fontWeight: FontWeight.bold),
                            ),
                            FloatingActionButton(
                              backgroundColor: const Color(0xff465bd8),
                              onPressed: () {
                                // cc.addToCart(controller.itemItems[index]);
                              },
                              child: const Icon(
                                // Foundation.shopping_cart,
                                Icons.add_shopping_cart_rounded,
                                size: 20,
                              ),
                              mini: true,
                              materialTapTargetSize:
                              MaterialTapTargetSize.shrinkWrap,
                              heroTag: null,
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            onTap: () {
              // Get.to(()=>ProductPage(), arguments: [index]);
            },
          );
        });
  }
}