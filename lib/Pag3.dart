// ignore: file_names
// ignore_for_file: use_key_in_widget_constructors
import 'package:flutter/material.dart';
// ignore: camel_case_types

class StoryDate{

  // ignore: non_constant_identifier_names
  late final String name_user;

  StoryDate({
   // ignore: non_constant_identifier_names
   required this.name_user,
  });

}

class ChetUser{
  late final String name;
   String? object;
  late final String time;
  late final String img;
ChetUser({
  required this.name,
  required this.object,
  required this.time,
  required this.img,

});
  
}

// ignore: camel_case_types, must_be_immutable
class massager_Secern   extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List<StoryDate>NamesUser=[
    StoryDate(
      name_user:'Shaker Almazuini',
    ),
    StoryDate(
      name_user:'Ahmed Ail',
    ),
    StoryDate(
      name_user:'Omer jamel',
    ),
    StoryDate(
      name_user:'mona syslog',
    ),
    StoryDate(
      name_user:'askeg dfgmog',
    ),

  ];
  // ignore: non_constant_identifier_names
  List<ChetUser>ChetUsers=[
    ChetUser(
      name:'shaker Almazuini',
      object:'eklsmfklf ...',
      time:'12:00 PM',
      img:'https://avatars.githubusercontent.com/u/92122042?s=400&u=ab6060f94817d6aa1cb57d5a96f742dd243f5f09&v=4',

    ),
    ChetUser(
      name:'Sebastian  Henry ',
      object:'wowf...',
      time:'11:00 PM',
      img:'https://avatars.githubusercontent.com/u/19245504?v=4',

    ),
    ChetUser(
      name:'Sebastian  Michael ',
      object:'kmfgrew...',
      time:'10:00 PM',
      img:'https://avatars.githubusercontent.com/u/24697284?v=4',

    ),
    ChetUser(
      name:'Michael  Henry ',
      object:'Yes...',
      time:'12:30 PM',
      img:'https://avatars.githubusercontent.com/u/21027969?v=4',

    ),
    ChetUser(
      name:'Henry  Michael ',
      object:'OK...',
      time:'01:20 PM',
      img:'https://avatars.githubusercontent.com/u/19245504?v=4',

    ),
    ChetUser(
      name:'shaker Almazuini',
      object:'Yes...',
      time:'12:00 PM',
      img:'https://avatars.githubusercontent.com/u/21027969?v=4',

    ),
    ChetUser(
      name:'Sebastian  Henry ',
      object:'sfkweew...',
      time:'11:00 PM',
      img:'https://avatars.githubusercontent.com/u/1973948?v=4',

    ),
    ChetUser(
      name:'Sebastian  Michael ',
      object:'Yes...',
      time:'10:00 PM',
      img:'https://avatars.githubusercontent.com/u/21027969?v=4',

    ),
    ChetUser(
      name:'Michael  Henry ',
      object:'wekorlv...',
      time:'12:30 PM',
      img:'https://avatars.githubusercontent.com/u/1973948?v=4',

    ),
    ChetUser(
      name:'Henry  Michael ',
      object:'6s8fmsdf...',
      time:'01:20 PM',
      img:'https://avatars.githubusercontent.com/u/35585791?v=4',

    ),

  ];

  @override
  Widget build(BuildContext context) {
    return(
       Scaffold(
         backgroundColor:Colors.black,
        appBar:AppBar(
          backgroundColor:Colors.black,
          elevation: 0.0,
          title:Row(children: const [
            CircleAvatar(radius:20.0,backgroundImage:NetworkImage(
            'https://avatars.githubusercontent.com/u/92122042?s=400&u=ab6060f94817d6aa1cb57d5a96f742dd243f5f09&v=4')
            ,),
          SizedBox(
            width:7,
          ),
            Text('Chats',style:TextStyle(
               
              color:Colors.white,
            ),)
          ]),
          actions:[  
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              backgroundColor:const Color.fromARGB(255, 60, 60, 60),
              radius:20.0,
              child: IconButton(icon:const Icon(Icons.camera_alt,color:Colors.white),onPressed: (){},)),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius:20.0,
              backgroundColor:const Color.fromARGB(255, 60, 60, 60),
              child: IconButton(icon:const Icon(Icons.edit,color:Colors.white),onPressed: (){},)),
          ),   
          ],
          
        ),
        body:
           Padding(
             padding: const EdgeInsets.all(8.0),
             child:SingleChildScrollView(
               child: Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: [
                             Column(
                              children: [
                               Padding(
                                padding: const EdgeInsets.all(12.0),
                                child: Container(
                                  decoration:BoxDecoration(borderRadius:BorderRadius.circular(16),
                                  color:const Color.fromARGB(255, 63, 63, 63) ,
                                  ),

                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: [
                                        Row(children: const [
                                             Icon(Icons.search, color:Color.fromARGB(255, 120, 120, 120), size:24),
                                             SizedBox(width:4,),
                                             Text('Search',style:TextStyle(
                                               fontSize:18,
                                               fontFamily:'cairo',
                                               color:Color.fromARGB(255, 120, 120, 120))),
                                        ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                       ],
                     ),
                  SizedBox(
                    height:105 ,
                    child: ListView.separated(
                        scrollDirection:Axis.horizontal,
                        itemBuilder:(context,index)=>buldStoryItem
                          (NamesUser[index]),
                        separatorBuilder:(context,index)
                        =>const SizedBox (width:7),
                        itemCount:NamesUser.length,
                    )
                  ),
                  const SizedBox(
                    height:15,
                  ),
                  ListView.separated(
                      physics:const NeverScrollableScrollPhysics(),
                      shrinkWrap:true,
                      itemBuilder:(context,index)=>buldChetitem(ChetUsers[index]),
                      separatorBuilder:(context,index)=>const SizedBox(height:10),
                      itemCount:ChetUsers.length),
                      ],
     ),
             ),
           ),
       )
    );
  }
   Widget buldChetitem(ChetUser date)=>Row(children:[
     Stack(
       alignment:AlignmentDirectional.bottomEnd,
       children:[
         Padding(
           padding: const EdgeInsets.only(left:10),
           child: CircleAvatar(
             backgroundColor:const Color.fromARGB(255, 60, 60, 60),
             radius:31.0,
             backgroundImage:
             NetworkImage
               (date.img),

           ),
         ),
         const CircleAvatar(radius:8.5,
           backgroundColor:Colors.black,
         ),
         const CircleAvatar(
           radius: 7,
           backgroundColor:Colors.green,
         ),
       ],
     ),

     const SizedBox(
       width:7.0,
     ),
     Expanded(
       child: Column(
         crossAxisAlignment:CrossAxisAlignment.start,

         children: [
           Row(children:[
             Text(
                 date.name,
                 maxLines:1,
                 overflow:TextOverflow.ellipsis,
                 style: const TextStyle(color:Colors.white,fontSize:14))
           ],),
           Row(children:[

             Expanded(
               child: Text(
                   date.object!+date.time,
                   maxLines:1,
                   overflow:TextOverflow.ellipsis,
                   style: const TextStyle(color:Colors.white,fontSize:13)),
             ),

              Padding(
               padding: const EdgeInsets.all(10.0),
               child: CircleAvatar(

                   maxRadius:7,
                   backgroundImage:
                   NetworkImage(
                       date.img
                   ),
               ),
             ),


           ],


           ),


         ],


       ),
     )]
     ,);
   Widget buldStoryItem(StoryDate nameUsers)=>SizedBox(
     width:61,
     child: Column(
       children: [
         Stack(
           alignment:AlignmentDirectional.bottomEnd,
           children: const [

             CircleAvatar(
                 backgroundColor:Color.fromARGB(256, 60, 60, 60),
                 radius:29.0,
                 backgroundImage:NetworkImage
                   ('https://avatars.githubusercontent.com/u/92122042?s=400&u=ab6060f94817d6aa1cb57d5a96f742dd243f5f09&v=4')

             ),
             CircleAvatar(radius:9.5,
               backgroundColor:Colors.black,
             ),
             CircleAvatar(
               radius: 8,
               backgroundColor:Colors.green,
             ),

           ],
         ),
         const SizedBox(
           height:5.0,
         ),
           Text(
           nameUsers.name_user,
           maxLines:2,
           overflow:TextOverflow.ellipsis,
           style: const TextStyle(color:Colors.white,fontSize:15),
         ),  ],)

     ,);
}


