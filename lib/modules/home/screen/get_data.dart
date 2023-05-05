import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class Data extends StatelessWidget {
  const Data({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance.collection('slider').snapshots(),
      builder: (_, snapshot) {
        if (snapshot.hasError) return Text('Error = ${snapshot.error}');

        if (snapshot.hasData) {
          final docs = snapshot.data!.docs;
          return ListView.builder(
            itemCount: docs.length,
            itemBuilder: (_, i) {
              final data = docs[i].data();
              return ListTile(
                leading: CircleAvatar(
                  child: Image.network(
                    data['image'][0],
                    filterQuality: FilterQuality.high,
                  ),
                ),
                title: Text(data['id'].toString()),
                subtitle: Text(data['title']),
              );
            },
          );
        }

        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
