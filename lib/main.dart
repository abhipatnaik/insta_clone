import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BaseApp(),
      routes: <String, WidgetBuilder> {
        '/LogIn': (context) => LogIn(),
        '/SignUp': (context) => SignUp(),
        '/BaseApp': (context) => BaseApp(),
        '/MainPage': (context) => MainPage(),
        '/DMPage': (context) => DMPage(),
        '/SearchPage': (context) => SearchPage(),
        '/ProfilePage': (context) => ProfilePage(),

      },
    );
  }
}

class BaseApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          Container(
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 100,vertical: 70),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Image(
                image: AssetImage('assets/InstagramName.png'),
                width: 250,
                height: 100,
              ),
            ),
          ),

          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: InkWell(
                child: Container(
                  width: 350,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(30, 144, 255, 1),
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Center(
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        )
                    ),
                  ),
                ),
                onTap:() {
                  Navigator.pushNamed(context, '/LogIn');
                }
            ),
          ),

          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: InkWell(
                child: Container(
                    width: 350,
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        border: Border.all(
                          color: Color.fromRGBO(30, 144, 255, 1),
                          width: 1,
                        )
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15),
                      child: Center(
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              color: Color.fromRGBO(30, 144, 255, 1),
                            ),
                          )
                      ),
                    )
                ),
                onTap:() {
                  Navigator.pushNamed(context, '/SignUp');
                }
            ),
          ),

        ],
      ),
    );
  }
}

class LogIn extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  child: InkWell(
                      child: Container(
                          child: Icon(
                            Icons.arrow_back_ios,
                          )
                      ),
                      onTap:() {
                        Navigator.pushNamed(context, '/BaseApp');
                      }
                  )
              ),

              Container(
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 90),
                  //color: Colors.red,
                  child: Image(
                    image: AssetImage('assets/InstagramName.png'),
                    height: 50,
                    width: 250,
                  )
              ),

              Container(

                margin: EdgeInsets.symmetric(horizontal:30,  vertical: 10),
                padding: EdgeInsets.symmetric(),

                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230,230,230, 1),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Username'
                        ),
                      )
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                padding: EdgeInsets.symmetric(),

                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230,230,230, 1),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Password'
                        ),
                      )
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal:30, vertical: 10 ),
                width: double.infinity,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
                child: InkWell(
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(30, 144, 255, 1),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Center(
                            child: Text(
                              'Log In',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                        ),
                      ),
                    ),
                    onTap:() {
                      Navigator.pushNamed(context, '/MainPage');
                    }
                ),
              ),

              Row(
                //margin: EdgeInsets.fromLTRB(30, 200, 30, 30),
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("Don't have an Account?"),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/SignUp');
                        },
                        child: Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        )
                    )
                  ]
              )
            ]
        )

    );
  }
}

class SignUp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              Container(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  //color: Colors.red,
                  child: InkWell(
                      child: Container(
                          child: Icon(
                            Icons.arrow_back_ios,
                          )
                      ),
                      onTap:() {
                        Navigator.pushNamed(context, '/BaseApp');
                      }
                  )
              ),

              Container(
                  width: double.infinity,
                  padding: EdgeInsets.fromLTRB(10,50,10,100),
                  //color: Colors.red,
                  child: Image(
                    image: AssetImage('assets/InstagramName.png'),
                    height: 50,
                    width: 250,
                  )
              ),

              Container(

                margin: EdgeInsets.symmetric(horizontal:30,  vertical: 5),
                padding: EdgeInsets.symmetric(),

                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230,230,230, 1),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                      child: TextField(
                        decoration: InputDecoration.collapsed(
                            hintText: 'Username'
                        ),
                      )
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                padding: EdgeInsets.symmetric(),

                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230,230,230, 1),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Password'
                        ),
                      )
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                padding: EdgeInsets.symmetric(),

                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230,230,230, 1),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Confirm Password'
                        ),
                      )
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                padding: EdgeInsets.symmetric(),

                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(230,230,230, 1),
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                      child: TextField(
                        obscureText: true,
                        decoration: InputDecoration.collapsed(
                            hintText: 'Password'
                        ),
                      )
                  ),
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
                child: InkWell(
                    child: Container(
                      width: double.infinity,
                      height: 50,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(30, 144, 255, 1),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 15),
                        child: Center(
                            child: Text(
                              'Sign Up',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                        ),
                      ),
                    ),
                    onTap:() {
                      Navigator.pushNamed(context, '/MainPage');
                    }
                ),
              ),

              Row(
                //margin: EdgeInsets.fromLTRB(30, 200, 30, 30),
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    Text("Have an Account?"),
                    GestureDetector(
                        onTap: (){
                          Navigator.pushNamed(context, '/LogIn');
                        },
                        child: Text(
                          'Log In',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        )
                    )
                  ]
              )
            ]
        )

    );
  }
}

class MainPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                //color: Colors.red,
                image: AssetImage('./assets/Camera2.png'),
                height:25,
                width:25,
              ),
              Image(
                alignment: Alignment.center,
                image: AssetImage('assets/InstagramName.png'),
                height: 40,
              ),
              Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image(
                      image: AssetImage('./assets/TV.png'),
                      height: 25,
                      width: 25,
                    ),
                  ),
                  InkWell(
                    child: Container(
                      child:Image(
                        image: AssetImage('./assets/DM.png'),
                        color: Colors.black,
                        height:25,
                        width:25,
                      ),
                    ),
                    onTap: (){
                      Navigator.pushNamed(context, '/DMPage');
                    },
                  ),
                ],
              ),


            ],
          ),

        ),
      ),

      body: ListView(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children:[
                  Column(
                    children: [

                      Container(

                        margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                        width: 68,
                        height: 68,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[Color(0xFF9B2282), Color(0XFFEEA863)],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                              image:(
                                  DecorationImage(
                                    image: AssetImage('./assets/PP.png'),
                                    fit: BoxFit.cover,
                                  )
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height:5,),
                      SizedBox(
                        height: 15,
                        child: Text('Your Story'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(

                        margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                        width: 68,
                        height: 68,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[Color(0xFF9B2282), Color(0XFFEEA863)],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                              image:(
                                  DecorationImage(
                                    image: AssetImage('./assets/Story1.jpeg'),
                                    fit: BoxFit.cover,
                                  )
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height:5,),
                      SizedBox(
                        height: 15,
                        child: Text('jennie'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(

                        margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                        width: 68,
                        height: 68,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[Color(0xFF9B2282), Color(0XFFEEA863)],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                              image:(
                                  DecorationImage(
                                    image:AssetImage('./assets/Story2.jpeg'),
                                    fit: BoxFit.cover,
                                  )
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height:5,),
                      SizedBox(
                        height: 15,
                        child: Text('wayne_robert'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(

                        margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                        width: 68,
                        height: 68,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[Color(0xFF9B2282), Color(0XFFEEA863)],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                              image:(
                                  DecorationImage(
                                    image:AssetImage('./assets/Story3.jpeg'),
                                    fit: BoxFit.cover,
                                  )
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height:5,),
                      SizedBox(
                        height: 15,
                        child: Text('cooljoe'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(

                        margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                        width: 68,
                        height: 68,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[Color(0xFF9B2282), Color(0XFFEEA863)],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                              image:(
                                  DecorationImage(
                                    image:AssetImage('./assets/Story4.jpeg'),
                                    fit: BoxFit.cover,
                                  )
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height:5,),
                      SizedBox(
                        height: 15,
                        child: Text('reginaphil'),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(

                        margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                        width: 68,
                        height: 68,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: <Color>[Color(0xFF9B2282), Color(0XFFEEA863)],
                          ),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: Container(
                            width: 65,
                            height: 65,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 2,
                              ),
                              image:(
                                  DecorationImage(
                                    image:AssetImage('./assets/Story5.jpeg'),
                                    fit: BoxFit.cover,
                                  )
                              ),
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height:5,),
                      SizedBox(
                        height: 15,
                        child: Text('tuankiet'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,

            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image:(
                                DecorationImage(
                                  image:NetworkImage('https://images.pexels.com/photos/7907687/pexels-photo-7907687.jpeg?cs=srgb&dl=pexels-youssef-yaarafallah-7907687.jpg&fm=jpg'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text('julian_c',style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                child: Text("Shanghai, China"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/menu.png'),
                        width: 20,
                        height: 20,
                      ),
                    )
                  ],
                ),
                Image(
                  //image: NetworkImage('https://images.pexels.com/photos/8095809/pexels-photo-8095809.jpeg?cs=srgb&dl=pexels-garrison-gao-8095809.jpg&fm=jpg'),
                  image:AssetImage('./assets/Post1.jpeg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:Builder(
                            builder: (context)=>InkWell(
                              child: Container(
                                child: Image(
                                    image: AssetImage('./assets/heart_blank.png'),
                                    height: 25,
                                    width: 25
                                ),
                              ),
                              onTap:() {
                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'You Have Liked The Post',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),

                                    ),
                                    backgroundColor: Colors.white,

                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/Comments.png'),
                              height: 25,
                              width: 25
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/DM.png'),
                              height: 25,
                              width: 25
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/bookmark.png'),
                        height: 25,
                        width: 25,
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(text: 'julian_c ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent congue.')
                            ]
                        )
                    )


                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'View all 69 comments',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image:(
                                DecorationImage(
                                  image:NetworkImage('https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-774909.jpg&fm=jpg'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text('andrea_',style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                child: Text("Amazon"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/menu.png'),
                        width: 30,
                        height: 30,
                      ),
                    )
                  ],
                ),
                Image(
                  //image: NetworkImage('https://images.pexels.com/photos/8095809/pexels-photo-8095809.jpeg?cs=srgb&dl=pexels-garrison-gao-8095809.jpg&fm=jpg'),
                  image:AssetImage('./assets/Post2.jpeg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:Builder(
                            builder: (context)=>InkWell(
                              child: Container(
                                child: Image(
                                    image: AssetImage('./assets/heart_blank.png'),
                                    height: 30,
                                    width: 30
                                ),
                              ),
                              onTap:() {
                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'You Have Liked The Post',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),

                                    ),
                                    backgroundColor: Colors.white,

                                  ),
                                );
                              },
                            ),
                          ),
                          // child:
                          // Image(
                          //     image: AssetImage('./assets/heart_blank.png'),
                          //     height: 30,
                          //     width: 30
                          // ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/Comments.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/DM.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/bookmark.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(text: 'andrea_ ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent congue.')
                            ]
                        )
                    )


                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'View all 69 comments',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image:(
                                DecorationImage(
                                  image:NetworkImage('https://images.pexels.com/photos/1130623/pexels-photo-1130623.jpeg?cs=srgb&dl=pexels-vinicius-wiesehofer-1130623.jpg&fm=jpg'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text('vinicus',style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                child: Text("Stockholm, Sweden"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/menu.png'),
                        width: 30,
                        height: 30,
                      ),
                    )
                  ],
                ),
                Image(
                  //image: NetworkImage('https://images.pexels.com/photos/8095809/pexels-photo-8095809.jpeg?cs=srgb&dl=pexels-garrison-gao-8095809.jpg&fm=jpg'),
                  image:AssetImage('./assets/Post3.jpeg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:Builder(
                            builder: (context)=>InkWell(
                              child: Container(
                                child: Image(
                                    image: AssetImage('./assets/heart_blank.png'),
                                    height: 30,
                                    width: 30
                                ),
                              ),
                              onTap:() {
                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'You Have Liked The Post',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),

                                    ),
                                    backgroundColor: Colors.white,

                                  ),
                                );
                              },
                            ),
                          ),
                          // child:
                          // Image(
                          //     image: AssetImage('./assets/heart_blank.png'),
                          //     height: 30,
                          //     width: 30
                          // ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/Comments.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/DM.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/bookmark.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(text: 'vinicus ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent congue.')
                            ]
                        )
                    )


                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'View all 69 comments',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image:(
                                DecorationImage(
                                  image:NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text('selover',style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                child: Text("St. Petersberg"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/menu.png'),
                        width: 30,
                        height: 30,
                      ),
                    )
                  ],
                ),
                Image(
                  image:AssetImage('./assets/Post5.jpeg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:Builder(
                            builder: (context)=>InkWell(
                              child: Container(
                                child: Image(
                                    image: AssetImage('./assets/heart_blank.png'),
                                    height: 30,
                                    width: 30
                                ),
                              ),
                              onTap:() {
                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'You Have Liked The Post',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),

                                    ),
                                    backgroundColor: Colors.white,

                                  ),
                                );
                              },
                            ),
                          ),
                          // child:
                          // Image(
                          //     image: AssetImage('./assets/heart_blank.png'),
                          //     height: 30,
                          //     width: 30
                          // ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/Comments.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/DM.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/bookmark.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(text: 'selover ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent congue.')
                            ]
                        )
                    )


                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'View all 69 comments',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image:(
                                DecorationImage(
                                  image:NetworkImage('https://images.pexels.com/photos/810775/pexels-photo-810775.jpeg?cs=srgb&dl=pexels-kelvin-valerio-810775.jpg&fm=jpg'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text('kevin_malon',style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                child: Text("Las Angelas"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/menu.png'),
                        width: 30,
                        height: 30,
                      ),
                    )
                  ],
                ),
                Image(
                  //image: NetworkImage('https://images.pexels.com/photos/8095809/pexels-photo-8095809.jpeg?cs=srgb&dl=pexels-garrison-gao-8095809.jpg&fm=jpg'),
                  image:AssetImage('./assets/Post6.jpeg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:Builder(
                            builder: (context)=>InkWell(
                              child: Container(
                                child: Image(
                                    image: AssetImage('./assets/heart_blank.png'),
                                    height: 30,
                                    width: 30
                                ),
                              ),
                              onTap:() {
                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'You Have Liked The Post',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),

                                    ),
                                    backgroundColor: Colors.white,

                                  ),
                                );
                              },
                            ),
                          ),
                          // child:
                          // Image(
                          //     image: AssetImage('./assets/heart_blank.png'),
                          //     height: 30,
                          //     width: 30
                          // ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/Comments.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/DM.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/bookmark.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(text: 'kevin_malone ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent congue.')
                            ]
                        )
                    )


                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'View all 69 comments',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image:(
                                DecorationImage(
                                  image:AssetImage('./assets/Story3.jpeg'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text('cooljoe',style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                child: Text("Heaven"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/menu.png'),
                        width: 30,
                        height: 30,
                      ),
                    )
                  ],
                ),
                Image(
                  image:AssetImage('./assets/Post7.jpeg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:Builder(
                            builder: (context)=>InkWell(
                              child: Container(
                                child: Image(
                                    image: AssetImage('./assets/heart_blank.png'),
                                    height: 30,
                                    width: 30
                                ),
                              ),
                              onTap:() {
                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'You Have Liked The Post',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),

                                    ),
                                    backgroundColor: Colors.white,

                                  ),
                                );
                              },
                            ),
                          ),
                          // child:
                          // Image(
                          //     image: AssetImage('./assets/heart_blank.png'),
                          //     height: 30,
                          //     width: 30
                          // ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/Comments.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/DM.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/bookmark.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(text: 'cooljoe ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent congue.')
                            ]
                        )
                    )


                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'View all 69 comments',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image:(
                                DecorationImage(
                                  image:AssetImage('./assets/Story1.jpeg'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text('jennie',style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                child: Text("Mumbai, India"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/menu.png'),
                        width: 30,
                        height: 30,
                      ),
                    )
                  ],
                ),
                Image(
                  //image: NetworkImage('https://images.pexels.com/photos/8095809/pexels-photo-8095809.jpeg?cs=srgb&dl=pexels-garrison-gao-8095809.jpg&fm=jpg'),
                  image:AssetImage('./assets/Post8.jpeg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:Builder(
                            builder: (context)=>InkWell(
                              child: Container(
                                child: Image(
                                    image: AssetImage('./assets/heart_blank.png'),
                                    height: 30,
                                    width: 30
                                ),
                              ),
                              onTap:() {
                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'You Have Liked The Post',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),

                                    ),
                                    backgroundColor: Colors.white,

                                  ),
                                );
                              },
                            ),
                          ),
                          // child:
                          // Image(
                          //     image: AssetImage('./assets/heart_blank.png'),
                          //     height: 30,
                          //     width: 30
                          // ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/Comments.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/DM.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/bookmark.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(text: 'jennie ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent congue.')
                            ]
                        )
                    )


                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'View all 69 comments',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image:(
                                DecorationImage(
                                  image:NetworkImage('https://images.pexels.com/photos/2057152/pexels-photo-2057152.jpeg?cs=srgb&dl=pexels-prime-cinematics-2057152.jpg&fm=jpg'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text('brett',style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                child: Text("Cairo, Egypt"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/menu.png'),
                        width: 30,
                        height: 30,
                      ),
                    )
                  ],
                ),
                Image(
                  image:AssetImage('./assets/Post9.jpeg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:Builder(
                            builder: (context)=>InkWell(
                              child: Container(
                                child: Image(
                                    image: AssetImage('./assets/heart_blank.png'),
                                    height: 30,
                                    width: 30
                                ),
                              ),
                              onTap:() {
                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'You Have Liked The Post',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),

                                    ),
                                    backgroundColor: Colors.white,

                                  ),
                                );
                              },
                            ),
                          ),
                          // child:
                          // Image(
                          //     image: AssetImage('./assets/heart_blank.png'),
                          //     height: 30,
                          //     width: 30
                          // ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/Comments.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/DM.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/bookmark.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(text: 'brett ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent congue.')
                            ]
                        )
                    )


                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'View all 69 comments',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image:(
                                DecorationImage(
                                  image:NetworkImage('https://images.pexels.com/photos/7907687/pexels-photo-7907687.jpeg?cs=srgb&dl=pexels-youssef-yaarafallah-7907687.jpg&fm=jpg'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text('aidil',style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                child: Text("Home"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/menu.png'),
                        width: 30,
                        height: 30,
                      ),
                    )
                  ],
                ),
                Image(
                  //image: NetworkImage('https://images.pexels.com/photos/8095809/pexels-photo-8095809.jpeg?cs=srgb&dl=pexels-garrison-gao-8095809.jpg&fm=jpg'),
                  image:AssetImage('./assets/Post10.jpeg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:Builder(
                            builder: (context)=>InkWell(
                              child: Container(
                                child: Image(
                                    image: AssetImage('./assets/heart_blank.png'),
                                    height: 30,
                                    width: 30
                                ),
                              ),
                              onTap:() {
                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'You Have Liked The Post',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),

                                    ),
                                    backgroundColor: Colors.white,

                                  ),
                                );
                              },
                            ),
                          ),
                          // child:
                          // Image(
                          //     image: AssetImage('./assets/heart_blank.png'),
                          //     height: 30,
                          //     width: 30
                          // ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/Comments.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/DM.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/bookmark.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(text: 'aidil ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent congue.')
                            ]
                        )
                    )


                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'View all 69 comments',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.all(10),
                          width: 35,
                          height: 35,
                          decoration: BoxDecoration(
                            image:(
                                DecorationImage(
                                  image:NetworkImage('https://images.pexels.com/photos/3763188/pexels-photo-3763188.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-3763188.jpg&fm=jpg'),
                                  fit: BoxFit.cover,
                                )
                            ),
                            shape: BoxShape.circle,
                          ),
                        ),
                        Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                child: Text('piacquadio',style: TextStyle(fontWeight: FontWeight.bold)),
                              ),
                              Container(
                                child: Text("Spain"),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/menu.png'),
                        width: 30,
                        height: 30,
                      ),
                    )
                  ],
                ),
                Image(
                  //image: NetworkImage('https://images.pexels.com/photos/8095809/pexels-photo-8095809.jpeg?cs=srgb&dl=pexels-garrison-gao-8095809.jpg&fm=jpg'),
                  image:AssetImage('./assets/Post4.jpeg'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child:Builder(
                            builder: (context)=>InkWell(
                              child: Container(
                                child: Image(
                                    image: AssetImage('./assets/heart_blank.png'),
                                    height: 30,
                                    width: 30
                                ),
                              ),
                              onTap:() {
                                Scaffold.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text(
                                      'You Have Liked The Post',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Colors.blue,
                                      ),

                                    ),
                                    backgroundColor: Colors.white,

                                  ),
                                );
                              },
                            ),
                          ),
                          // child:
                          // Image(
                          //     image: AssetImage('./assets/heart_blank.png'),
                          //     height: 30,
                          //     width: 30
                          // ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/Comments.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Image(
                              image: AssetImage('./assets/DM.png'),
                              height: 30,
                              width: 30
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: AssetImage('./assets/bookmark.png'),
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: RichText(
                        text: TextSpan(
                            children: [
                              TextSpan(text: 'piacquadio ', style: TextStyle(fontWeight: FontWeight.bold)),
                              TextSpan(text: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Praesent congue.')
                            ]
                        )
                    )


                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'View all 69 comments',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                )
              ],
            ),

          ]
      ),

      bottomNavigationBar: Container(
          color: Color.fromRGBO(230, 230, 230, 1),
          width: double.infinity,
          height: 50,
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                        child: Container(
                          child: Image(
                            image: AssetImage('./assets/Home_Active.png'),
                            height:25,
                            width: 25,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/HomePage');
                        }
                    ),
                    InkWell(
                        child: Container(
                          child: Image(
                            image: AssetImage('./assets/Search.png'),
                            height:25,
                            width: 25,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/SearchPage');
                        }
                    ),
                    InkWell(
                        child: Container(
                          child: Image(
                            image: AssetImage('./assets/Add.png'),
                            height:25,
                            width: 25,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/HomePage');
                        }
                    ),
                    InkWell(
                        child: Container(
                          child: Image(
                            image: AssetImage('./assets/Heart_Blank.png'),
                            height:25,
                            width: 25,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/HomePage');
                        }
                    ),
                    InkWell(
                        child: Container(
                          //margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                                image:(
                                    DecorationImage(
                                      image: AssetImage('./assets/PP.png'),
                                      fit: BoxFit.cover,
                                    )
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/ProfilePage');
                        }
                    ),

                  ]
              )

          )

      ),
    );
  }
}

class DMPage extends StatelessWidget{

  String dropValue = 'jacob_w';
  List listitem = ["jacob_w", "vaishav", "bhubanbam22", "tinkel"];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55,
        elevation: 0,
        backgroundColor: Colors.white,
        leading: InkWell(
            child: Container(
                child: Icon(
                  Icons.arrow_back_ios,
                  color: Colors.black,
                )
            ),
            onTap:() {
              Navigator.pushNamed(context, '/MainPage');
            }
        ),
        actions: [
          Icon(
            Icons.add,
            color: Colors.black,
          ),
        ],
      ),

      body: ListView(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
            padding: EdgeInsets.symmetric(),

            width: double.infinity,
            height: 35,
            decoration: BoxDecoration(
              color: Color.fromRGBO(230,230,230, 1),
              borderRadius: BorderRadius.all(Radius.circular(5)),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Center(
                  child: TextField(
                    decoration: InputDecoration.collapsed(
                        hintText: 'Search'
                    ),
                  )
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                    width: 68,
                    height: 68,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          image:(
                              DecorationImage(
                                image: AssetImage('./assets/Story1.jpeg'),
                                fit: BoxFit.cover,
                              )
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'User1',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height:5,
                      ),
                      Text(
                        'Have a nice day, bro!',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                      ),
                      Text(
                        'now',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width:20,
                  ),
                  Image(
                      image: AssetImage("./assets/Camera2.png"),
                      height: 25,
                      width: 25
                  ),
                  Container(
                    width:10,
                  ),
                ],
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                    width: 68,
                    height: 68,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          image:(
                              DecorationImage(
                                image: AssetImage('./assets/Story2.jpeg'),
                                fit: BoxFit.cover,
                              )
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'User2',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height:5,
                      ),
                      Text(
                        'Have a nice day, bro!',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                      ),
                      Text(
                        'now',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width:20,
                  ),
                  Image(
                      image: AssetImage("./assets/Camera2.png"),
                      height: 25,
                      width: 25
                  ),
                  Container(
                    width:10,
                  ),
                ],
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                    width: 68,
                    height: 68,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          image:(
                              DecorationImage(
                                image: AssetImage('./assets/Story3.jpeg'),
                                fit: BoxFit.cover,
                              )
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'User3',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height:5,
                      ),
                      Text(
                        'Have a nice day, bro!',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                      ),
                      Text(
                        'now',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width:20,
                  ),
                  Image(
                      image: AssetImage("./assets/Camera2.png"),
                      height: 25,
                      width: 25
                  ),
                  Container(
                    width:10,
                  ),
                ],
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                    width: 68,
                    height: 68,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          image:(
                              DecorationImage(
                                image: AssetImage('./assets/Story4.jpeg'),
                                fit: BoxFit.cover,
                              )
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'User4',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height:5,
                      ),
                      Text(
                        'Have a nice day, bro!',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                      ),
                      Text(
                        'now',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width:20,
                  ),
                  Image(
                      image: AssetImage("./assets/Camera2.png"),
                      height: 25,
                      width: 25
                  ),
                  Container(
                    width:10,
                  ),
                ],
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                    width: 68,
                    height: 68,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          image:(
                              DecorationImage(
                                image: AssetImage('./assets/Story5.jpeg'),
                                fit: BoxFit.cover,
                              )
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'user5',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height:5,
                      ),
                      Text(
                        'Have a nice day, bro!',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                      ),
                      Text(
                        'now',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width:20,
                  ),
                  Image(
                      image: AssetImage("./assets/Camera2.png"),
                      height: 25,
                      width: 25
                  ),
                  Container(
                    width:10,
                  ),
                ],
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                    width: 68,
                    height: 68,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          image:(
                              DecorationImage(
                                image:NetworkImage('https://images.pexels.com/photos/7907687/pexels-photo-7907687.jpeg?cs=srgb&dl=pexels-youssef-yaarafallah-7907687.jpg&fm=jpg'),
                                fit: BoxFit.cover,
                              )
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'user6',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height:5,
                      ),
                      Text(
                        'Have a nice day, bro!',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                      ),
                      Text(
                        'now',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width:20,
                  ),
                  Image(
                      image: AssetImage("./assets/Camera2.png"),
                      height: 25,
                      width: 25
                  ),
                  Container(
                    width:10,
                  ),
                ],
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                    width: 68,
                    height: 68,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          image:(
                              DecorationImage(
                                image:NetworkImage('https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?cs=srgb&dl=pexels-andrea-piacquadio-774909.jpg&fm=jpg'),
                                fit: BoxFit.cover,
                              )
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'user7',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height:5,
                      ),
                      Text(
                        'Have a nice day, bro!',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                      ),
                      Text(
                        'now',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width:20,
                  ),
                  Image(
                      image: AssetImage("./assets/Camera2.png"),
                      height: 25,
                      width: 25
                  ),
                  Container(
                    width:10,
                  ),
                ],
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                    width: 68,
                    height: 68,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          image:(
                              DecorationImage(
                                image:NetworkImage('https://images.pexels.com/photos/1130623/pexels-photo-1130623.jpeg?cs=srgb&dl=pexels-vinicius-wiesehofer-1130623.jpg&fm=jpg'),
                                fit: BoxFit.cover,
                              )
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'user7',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height:5,
                      ),
                      Text(
                        'Have a nice day, bro!',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                      ),
                      Text(
                        'now',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width:20,
                  ),
                  Image(
                      image: AssetImage("./assets/Camera2.png"),
                      height: 25,
                      width: 25
                  ),
                  Container(
                    width:10,
                  ),
                ],
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                    width: 68,
                    height: 68,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          image:(
                              DecorationImage(
                                image:NetworkImage('https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?cs=srgb&dl=pexels-pixabay-220453.jpg&fm=jpg'),
                                fit: BoxFit.cover,
                              )
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'user8',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height:5,
                      ),
                      Text(
                        'Have a nice day, bro!',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                      ),
                      Text(
                        'now',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width:20,
                  ),
                  Image(
                      image: AssetImage("./assets/Camera2.png"),
                      height: 25,
                      width: 25
                  ),
                  Container(
                    width:10,
                  ),
                ],
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                    width: 68,
                    height: 68,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          image:(
                              DecorationImage(
                                image:NetworkImage('https://images.pexels.com/photos/810775/pexels-photo-810775.jpeg?cs=srgb&dl=pexels-kelvin-valerio-810775.jpg&fm=jpg'),
                                fit: BoxFit.cover,
                              )
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'user9',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height:5,
                      ),
                      Text(
                        'Have a nice day, bro!',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                      ),
                      Text(
                        'now',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width:20,
                  ),
                  Image(
                      image: AssetImage("./assets/Camera2.png"),
                      height: 25,
                      width: 25
                  ),
                  Container(
                    width:10,
                  ),
                ],
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                    width: 68,
                    height: 68,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: EdgeInsets.all(3.0),
                      child: Container(
                        width: 65,
                        height: 65,
                        decoration: BoxDecoration(
                          image:(
                              DecorationImage(
                                image:NetworkImage('https://images.pexels.com/photos/2057152/pexels-photo-2057152.jpeg?cs=srgb&dl=pexels-prime-cinematics-2057152.jpg&fm=jpg'),
                                fit: BoxFit.cover,
                              )
                          ),
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'user10',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Container(
                        height:5,
                      ),
                      Text(
                        'Have a nice day, bro!',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                      ),
                      Text(
                        'now',
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    width:20,
                  ),
                  Image(
                      image: AssetImage("./assets/Camera2.png"),
                      height: 25,
                      width: 25
                  ),
                  Container(
                    width:10,
                  ),
                ],
              ),

            ],
          ),

        ],
      ),

      bottomNavigationBar: Container(
        width: double.infinity,
        height: 40,
        margin: EdgeInsets.symmetric(horizontal:10, vertical:0),
        color: Color.fromRGBO(230,230,230, 1),
        child:  Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.camera_alt,
                color: Colors.blue,
              ),
              Text('Camera', style: TextStyle(color: Colors.blue)),
            ],
          ),
        ),
        //

      ),
    );
  }
}

class SearchPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 55,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
          margin: EdgeInsets.fromLTRB(0, 20, 5, 10),
          width: double.infinity,
          height: 35,
          decoration: BoxDecoration(
            color: Color.fromRGBO(230,230,230, 1),
            borderRadius: BorderRadius.all(Radius.circular(5)),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Center(
                child: TextField(
                  decoration: InputDecoration.collapsed(
                      hintText: 'Search'
                  ),
                )
            ),
          ),
        ),
        actions: [
          Icon(
            Icons.add,
            color: Colors.black,
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:[
                Row(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(25, 0, 5, 0),
                      width: 85,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          )
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Image(
                              image: AssetImage('./assets/TV.png'),
                              width: 20,
                              height: 20,
                            ),
                            Container(
                              width: 5,
                            ),
                            Text('IGTV',style: TextStyle(fontWeight: FontWeight.bold),),
                          ]
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(10, 0, 5, 0),
                      width: 85,
                      height: 35,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1,
                          )
                      ),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:[
                            Image(
                              image: AssetImage('./assets/Bag.png'),
                              width: 20,
                              height: 20,
                            ),
                            Container(
                              width: 5,
                            ),
                            Text('Shop',style: TextStyle(fontWeight: FontWeight.bold),),
                          ]
                      ),

                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 5, 0),
                        width: 60,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            )
                        ),
                        child:Center(
                            child: Text('Style',style: TextStyle(fontWeight: FontWeight.bold),)
                        )

                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 5, 0),
                        width: 80,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            )
                        ),
                        child:Center(
                            child: Text('Sports',style: TextStyle(fontWeight: FontWeight.bold),)
                        )

                    ),
                    Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
                        width: 60,
                        height: 35,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            border: Border.all(
                              color: Colors.grey,
                              width: 1,
                            )
                        ),
                        child:Center(
                            child: Text('Auto',style: TextStyle(fontWeight: FontWeight.bold),)
                        )

                    ),
                  ],
                ),

              ],
            ),
          ),
          new Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                children: [
                  Image(
                    image: AssetImage('./assets/Search1.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Search2.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Search3.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Search4.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Search5.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Search6.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Search7.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Search8.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Search9.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Search10.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Search11.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Search12.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Search13.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Search14.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Search15.jpeg'),
                  ),
                ],
              )
          ),





        ],
      ),

      bottomNavigationBar: Container(
          color: Color.fromRGBO(230, 230, 230, 1),
          width: double.infinity,
          height: 50,
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                        child: Container(
                          child: Image(
                            image: AssetImage('./assets/Home_Blank.png'),
                            height:25,
                            width: 25,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/MainPage');
                        }
                    ),
                    InkWell(
                        child: Container(
                          child: Image(
                            image: AssetImage('./assets/Search_Active.png'),
                            height:25,
                            width: 25,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/SearchPage');
                        }
                    ),
                    InkWell(
                        child: Container(
                          child: Image(
                            image: AssetImage('./assets/Add.png'),
                            height:25,
                            width: 25,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/HomePage');
                        }
                    ),
                    InkWell(
                        child: Container(
                          child: Image(
                            image: AssetImage('./assets/Heart_Blank.png'),
                            height:25,
                            width: 25,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/HomePage');
                        }
                    ),
                    InkWell(
                        child: Container(
                          //margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.white,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                                image:(
                                    DecorationImage(
                                      image: AssetImage('./assets/PP.png'),
                                      fit: BoxFit.cover,
                                    )
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/ProfilePage');
                        }
                    ),

                  ]
              )

          )

      ),


    );
  }
}

class ProfilePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 50,
        elevation: 0,
        backgroundColor: Colors.white,
        title: Container(
            child: Center(
              child: Text(
                'jacob_w',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
              ),
            )
        ),

      ),

      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                width: 86,
                height: 86,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: Padding(
                  padding: EdgeInsets.all(3.0),
                  child: Container(
                    width: 65,
                    height: 65,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 2,
                      ),
                      image:(
                          DecorationImage(
                            image: AssetImage('./assets/PP.png'),
                            fit: BoxFit.cover,
                          )
                      ),
                      shape: BoxShape.circle,
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Text('54',style: TextStyle(fontSize: 16),),
                  Text('Posts',style: TextStyle(fontSize: 13),),
                ],

              ),
              Column(
                children: [
                  Text('834',style: TextStyle(fontSize: 16),),
                  Text('Followers',style: TextStyle(fontSize: 13),),
                ],
              ),
              Column(
                children: [
                  Text('162',style: TextStyle(fontSize: 16),),
                  Text('Following',style: TextStyle(fontSize: 13),),
                ],

              ),
              Container(
                width: 20,
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Jacob West',style: TextStyle(fontWeight: FontWeight.bold),),
                Text('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam commodo.'),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Container(
                width: 343,
                height: 29,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(5)),
                    border: Border.all(
                      color: Colors.grey,
                      width: 1,
                    )
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Center(
                      child: Text(
                        'Edit Profile',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      )
                  ),
                )
            ),
          ),
          Expanded(
              child: GridView.count(
                crossAxisCount: 3,
                mainAxisSpacing: 2,
                crossAxisSpacing: 2,
                children: [
                  Image(
                    image: AssetImage('./assets/Profile1.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Profile2.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Profile3.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Profile4.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Profile5.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Profile6.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Profile7.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Profile8.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Profile9.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Profile10.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Profile11.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Profile12.jpeg'),
                  ),
                  Image(
                    image: AssetImage('./assets/Profile13.jpeg'),
                  ),
                ],
              )
          ),
        ],
      ),

      bottomNavigationBar: Container(
          color: Color.fromRGBO(230, 230, 230, 1),
          width: double.infinity,
          height: 50,
          child: Padding(
              padding: EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    InkWell(
                        child: Container(
                          child: Image(
                            image: AssetImage('./assets/Home_Blank.png'),
                            height:25,
                            width: 25,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/MainPage');
                        }
                    ),
                    InkWell(
                        child: Container(
                          child: Image(
                            image: AssetImage('./assets/Search.png'),
                            height:25,
                            width: 25,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/SearchPage');
                        }
                    ),
                    InkWell(
                        child: Container(
                          child: Image(
                            image: AssetImage('./assets/Add.png'),
                            height:25,
                            width: 25,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/HomePage');
                        }
                    ),
                    InkWell(
                        child: Container(
                          child: Image(
                            image: AssetImage('./assets/Heart_Blank.png'),
                            height:25,
                            width: 25,
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/HomePage');
                        }
                    ),
                    InkWell(
                        child: Container(
                          //margin: EdgeInsets.fromLTRB(5, 10, 10, 0),
                          width: 28,
                          height: 28,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.grey,
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(1.0),
                            child: Container(
                              width: 25,
                              height: 25,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.white,
                                  width: 1,
                                ),
                                image:(
                                    DecorationImage(
                                      image: AssetImage('./assets/PP.png'),
                                      fit: BoxFit.cover,
                                    )
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ),
                        onTap: () {
                          Navigator.pushNamed(context, '/ProfilePage');
                        }
                    ),

                  ]
              )

          )

      ),

    );
  }
}
