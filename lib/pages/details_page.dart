import 'package:flutter/material.dart';
import 'package:breakfast/config/app.color.dart';
import 'package:breakfast/config/app.route.dart';
import 'package:breakfast/models/diet_model.dart';

// ignore: must_be_immutable
class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  List<DietModel> diets = [];
  int value = 0; // Nilai awal

  void _getInitialInfo() {
    diets = DietModel.getDiets();
  }

  void add() {
    setState(() {
      value++; // Tambah 1 ke nilai
    });
  }

  void min() {
    setState(() {
      if (value > 0) {
        value--; // Kurangi 1 dari nilai jika nilai > 0
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    _getInitialInfo();
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primary,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushReplacementNamed(context, AppRoute.homepage);
          },
          icon: const Icon(Icons.arrow_back_ios_new_outlined),
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
              child: ListView(
                children: [
                  Image.asset(
                    diets[0].iconPath,
                    height: 200,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(diets[0].level)
                    ],
                  ),
                  const SizedBox(height: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        diets[0].name,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 30),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const Text(
                        "ingredients",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 20),
                      ),
                      const SizedBox(height: 10),
                      const Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                        style: TextStyle(
                            color: Color.fromARGB(255, 134, 131, 131),
                            fontSize: 15),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: AppColor.primary,
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment
                      .center, // Menengahkan elemen-elemen dalam Row secara horizontal
                  children: [
                    const Text(
                      'Buy : ',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    Align(
                      alignment: Alignment
                          .center, // Menengahkan elemen-elemen dalam Align secara vertikal
                      child: Row(
                        children: [
                          IconButton(
                            onPressed: add,
                            icon: const Icon(Icons.add),
                          ),
                          Text(
                            '$value',
                            style: const TextStyle(fontSize: 24.0),
                          ),
                          IconButton(
                            onPressed: min,
                            icon: const Icon(Icons.remove),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
