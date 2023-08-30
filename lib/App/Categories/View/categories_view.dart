import 'package:ecommerce/Common/AppText/app_text.dart';
import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  const CategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(title: 'Categories',size: 20,)
                ],
              ),

              SizedBox(height: 20,),


      Expanded(
        child: Container(
        
        color: Colors.amber,

        child: Row(

          children: [

            Container(
           width: MediaQuery.of(context).size.width/3.5,
           color: Colors.red,
           child:
            ListView.builder(
              itemCount:15,
              
              
              itemBuilder: (context,index){
            return Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Container(color: Colors.green,
              width: MediaQuery.of(context).size.width/3.5,
              height: MediaQuery.of(context).size.width/3.5,
              
              ),
            );
           }),

            ),
   Expanded(
     child: Container(
            
             color: Colors.blue,
             child: Column(

              children: [

                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(height: 170,color: Colors.black,),
                ),
SizedBox(
  height: 400,
  width: 300,
  child:   GridView.builder(
  
    gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3,
    
    mainAxisSpacing: 5,
    crossAxisSpacing: 5
    
    ),
  
    //  SliverGridDelegateWithFixedCrossAxisCount(
  
    //   crossAxisCount: 3, // number of items in each row
  
    //   mainAxisSpacing: 8.0, // spacing between rows
  
    //   crossAxisSpacing: 8.0, // spacing between columns
  
    // ),
  
    padding: EdgeInsets.all(8.0), // padding around the grid
  
    itemCount:20, // total number of items
  
    itemBuilder: (context, index) {
  
      return Container(
  
        color: Colors.orange, // color of grid items
  
      
  
      );
  
    },
  
  ),
)




              ],
             ),
   
              ),
   ),


          ],
        ),
        ),
      ),
      
      
      
            ],
          )
        ),
      ),
    );
  }
}