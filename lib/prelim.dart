import 'package:flutter/material.dart';

class PrelimScreen extends StatefulWidget {
  const PrelimScreen({super.key});

  @override
  State<PrelimScreen> createState() => _PrelimScreenState();
}

class _PrelimScreenState extends State<PrelimScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("PRELIM EXAM", style: TextStyle(color: Colors.red)),
          const SizedBox(height: 20),
          const Text("HERNI S. MIRALLES II"),
          const SizedBox(height: 20),
          
          
          Center(
            child: Container(
              width: 250,
              height: 250,
              color: Colors.blue,
              child: const Center(child: Text("BOX 1")),
            ),
          ),
          const SizedBox(height: 20),

     
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 150,
                height: 150,
                color: Colors.blueAccent,
                alignment: Alignment.center,
                child: const Text('BOX 2', style: TextStyle(fontWeight: FontWeight.bold)),
              ),
              const SizedBox(width: 16),
              Container(
                width: 150,
                height: 150,
                color: Colors.blueAccent,
                alignment: Alignment.center,
                child: const Text('BOX 3', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}


                  
                    


           
       






                  
                
    


       

         
            

           

        
      
    
  

