import 'package:flutter/material.dart';
import 'package:task_3/models/pets_model.dart';

class PetMarket extends StatelessWidget {
  const PetMarket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFDFE0DF),
        title: const Text('Pet Market',style: TextStyle(fontSize: 30,fontFamily: 'BalsamiqSans',fontWeight: FontWeight.w400),),
        centerTitle: true,
        toolbarHeight: 86,
      ),
      body: Column(
        children: [

          Padding(
            padding: const EdgeInsets.only(right: 10,left: 20,bottom: 0,top: 20),
            child: Container(
              height: 41,
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color(0x7FDFE0DF),
                borderRadius: BorderRadius.circular(20)
              ),
              child: const Row(
                children: [
                  SizedBox(width: 24,),
                  Image(
                    image: AssetImage('assets/images/mag.png'),
                    height: 16,
                    width: 16,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(width: 57,),
                  Text('Search by pet type',style: TextStyle(fontWeight: FontWeight.w400,color: Color(0xFFACACAC),fontFamily: 'BalsamiqSans',fontSize: 22),),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20,),
          buildPetList()
        ],
      ),
    );
  }

  Widget buildPetList() {
    return Expanded(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              color: const Color(0x7FDFE0DF),
              child: ListView.builder(
                itemBuilder: (context, index) => buildPetItem(petList[index]),
                itemCount: petList.length,
              ),
            ),
          ),
        );
  }

  Widget buildPetItem(PetModel model) => Padding(
    padding: const EdgeInsets.only(top: 15,right: 15,left: 15,bottom: 7.5),
    child: Container(
      width: 335.74,
      height: 125.69,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15)
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 5
        ),
        child: Row(
          children: [
            Image(image: NetworkImage(model.image),
              width: 115.68,
              height: 112.22,
              fit: BoxFit.fill,
            ),
             const SizedBox(width: 15,),
             Column(
               crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(model.name,style: const TextStyle(fontSize: 22,fontWeight: FontWeight.bold,fontFamily: 'BalsamiqSans')),
                const SizedBox(height: 5,),
                Text(model.gender,style: const TextStyle(fontWeight: FontWeight.w400 ,fontSize: 15,color: Color(0xFFACACAC),fontFamily: 'BalsamiqSans')),
                const SizedBox(height: 18,),

                Row(
                  children: [
                    const Image(image: AssetImage("assets/images/pawprintImg.png")),
                    const SizedBox(width: 8,),
                    const Text('Pet Love: ',style: TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Color(0xFFDB6400),fontFamily: 'BalsamiqSans'),),
                    Text('${model.petLove}',style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w400,color: Color(0xFFDB6400),fontFamily: 'BalsamiqSans')),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    ),
  );
}
