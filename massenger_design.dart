import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MassengerDesgin extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      backgroundColor: Colors.white,
      titleSpacing: 20.2,
      elevation: 0.0,
      title: Row(
        children: [
          CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage("https://scontent.fcai19-4.fna.fbcdn.net/v/t1.6435-9/173888283_1999423796867534_7484671140245580909_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGmobbBPXhrNcJzbDxYBEksNDfuqgfWXGA0N-6qB9ZcYFgasrRqS7dUp6tre4O_ZaD1pqTnI7TrZBWZIwXecNJq&_nc_ohc=iSX-PB3QO3YAX88915y&_nc_ht=scontent.fcai19-4.fna&oh=e7a115fa887a84eca0ed35752afbccbe&oe=60E23356"),
          ),
          SizedBox(width: 10.0,)
          ,Text(
              ("Chats"),
            style: TextStyle(
              color: Colors.black
            ),
          ),

        ],
      ),
      actions: [
        IconButton(onPressed: (){}, icon:CircleAvatar(
          radius: 15.0,
          backgroundColor: Colors.black,
          child: Icon(
            Icons.camera_alt
            ,size: 15.0,
            color: Colors.white,
          ),
        ))
        ,IconButton(onPressed: (){}, icon:CircleAvatar(
          radius: 15.0,
          backgroundColor: Colors.black,
          child: Icon(
            Icons.edit
            ,size: 15.0,
            color: Colors.white,
          ),
        ))
      ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                    15.0,
                ),
                  color: Colors.grey[300],
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search
                    ),
                    SizedBox(width: 10.0,)
                    ,Text("Search")
                  ],
                ),
              ),//Search
              SizedBox(height: 10.0,),
              Container(
                  height: 100.0,
                  child: ListView.separated(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index) =>BuilderStoryItem(),
                    separatorBuilder: (context,index)=>SizedBox(width: 20.0,),
                  itemCount: 5,
                  ),
                )
              ,SizedBox(height: 15.0,),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context,index) =>BuilderChatItem(),
                  separatorBuilder: (context,index)=>SizedBox(height: 20.0,),
                  itemCount: 10,
                ),
            ],
              ),
        ),
      ),
    );
  }
  Widget BuilderStoryItem()=> Container(
    width: 70.0,
    child: Column(

      children: [
        Stack(
          alignment: AlignmentDirectional.bottomEnd,
          children: [
            CircleAvatar(
              radius: 35.0,
              backgroundImage: NetworkImage("https://scontent.fcai19-4.fna.fbcdn.net/v/t1.6435-9/173888283_1999423796867534_7484671140245580909_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGmobbBPXhrNcJzbDxYBEksNDfuqgfWXGA0N-6qB9ZcYFgasrRqS7dUp6tre4O_ZaD1pqTnI7TrZBWZIwXecNJq&_nc_ohc=iSX-PB3QO3YAX88915y&_nc_ht=scontent.fcai19-4.fna&oh=e7a115fa887a84eca0ed35752afbccbe&oe=60E23356"),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.only(bottom: 3.0,end: 3.0),
              child: CircleAvatar(

                radius: 7.0,
                backgroundColor: Colors.green,
              ),
            )
          ],
        ),
        Text("Abdelrhman Sabry",
          maxLines: 2,
        ),
      ],
    ),
  );
  Widget BuilderChatItem()=> Row(
    children: [
      Stack(
        alignment: AlignmentDirectional.bottomEnd,
        children: [
          CircleAvatar(
            radius: 35.0,
            backgroundImage: NetworkImage("https://scontent.fcai19-4.fna.fbcdn.net/v/t1.6435-9/173888283_1999423796867534_7484671140245580909_n.jpg?_nc_cat=101&ccb=1-3&_nc_sid=09cbfe&_nc_eui2=AeGmobbBPXhrNcJzbDxYBEksNDfuqgfWXGA0N-6qB9ZcYFgasrRqS7dUp6tre4O_ZaD1pqTnI7TrZBWZIwXecNJq&_nc_ohc=iSX-PB3QO3YAX88915y&_nc_ht=scontent.fcai19-4.fna&oh=e7a115fa887a84eca0ed35752afbccbe&oe=60E23356"),
          ),
          Padding(
            padding: const EdgeInsetsDirectional.only(bottom: 3.0,end: 3.0),
            child: CircleAvatar(

              radius: 7.0,
              backgroundColor: Colors.green,
            ),
          )
        ],
      ),
      SizedBox(width: 10.0,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Abdelrhman Sabry",
              style: TextStyle(
                  fontWeight: FontWeight.bold
                  ,fontSize: 16.0
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis ,
            ),
            SizedBox(height: 5.0),
            Row(
              children: [
                Text("Fuck",
                  maxLines: 2,
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Container(
                    width: 5.0,
                    height: 5.0,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        shape:BoxShape.circle
                    ),
                  ),
                ),
                Text("02.00 pm",
                  maxLines: 2,
                ),
              ],
            )
          ],
        ),
      )
    ],
  );
}
