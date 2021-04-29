import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:my_first_app/screens/doctorChatScreen.dart';

class PatientList extends StatelessWidget {
  const PatientList({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List Of Patients'),
          backgroundColor: Colors.red[300],
        ),
        backgroundColor: Colors.cyan[50],
        body: StreamBuilder(
            stream: FirebaseFirestore.instance
                .collection(
                    'doctors/${FirebaseAuth.instance.currentUser.uid.toString()}/patients')
                .snapshots(),
            builder: (ctx, streamSnapshot) {
              final documents = streamSnapshot.data.docs;
              return ListView.builder(
                  itemCount: documents.length,
                  itemBuilder: (ctx, index) => Center(
                          child: InkWell(
                        onTap: () {
                          showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                    backgroundColor: Colors.red[100],
                                    content: Card(
                                      color: Colors.cyan[50],
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                              padding: EdgeInsets.all(10),
                                              child: Text('Name : ' +
                                                  documents[index]['name'])),
                                          Container(
                                              padding: EdgeInsets.all(10),
                                              child: Text('Contact Number : ' +
                                                  documents[index]['number'])),
                                          Container(
                                              padding: EdgeInsets.all(10),
                                              child: Text('Email Id : ' +
                                                  documents[index]['email'])),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                          primary:
                                                              Colors.red[300]),
                                                  onPressed: () {
                                                    Navigator.of(context).push(
                                                        MaterialPageRoute(
                                                            builder: (_) {
                                                      return DocChatScreen(
                                                        patName:
                                                            documents[index]
                                                                ['name'],
                                                        uid: documents[index]
                                                            ['patientuid'],
                                                      );
                                                    }));
                                                  },
                                                  child: Text('Chat',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      )))
                                            ],
                                          )
                                        ],
                                      ),
                                    ));
                              });
                        },
                        child: Card(
                          margin: EdgeInsets.all(20),
                          color: Colors.red[300],
                          child: Container(
                              padding: EdgeInsets.all(10),
                              width: 200.00,
                              alignment: Alignment.center,
                              child: Text(
                                documents[index]['name'],
                                style: TextStyle(color: Colors.white),
                              )),
                        ),
                      )));
            }));
  }
}

// FirebaseFirestore.instance
//                 .collection(
//                     'patients').doc(documents[index]['patientuid']).get.then((data){return data.name;})

// FirebaseFirestore.instance.collection('patients').doc(documents[index]['patientuid'])).get().then((value){
//       var a = value.data()['name'];
//     })
