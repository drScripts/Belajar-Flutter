# crud_cloud_firestore

A new Flutter project.

## Explanation
- pengambilan data dengan system sekali ambil / unsynchronized menggunakan FutureBuilder<Object>()
- untuk unsynchronized menggunakan method get()
<pre>
FutureBuilder<QuerySnapshot>(
                 future: collection.get(),
                 builder: (_, snapshot) {
                   if (snapshot.hasData) {
                     return Column(
                       children: snapshot.data.docs
                           .map(
                             (e) => ItemCard(
                               e.data()['name'],
                               e.data()['age'],
                             ),
                           )
                           .toList(),
                     );
                   } else {
                     return Center(
                       child: CircularProgressIndicator(),
                     );
                   }
                 },
               ),
</pre>

- untuk yang synchronized menggunakan StreamBuilder<Object>()
- synchornized juga menggunakan collection.snapshot(),
<pre>
StreamBuilder<QuerySnapshot>(
                stream: collection.orderBy('age', descending: true).snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Column(
                      children: snapshot.data.docs
                          .map(
                            (e) => ItemCard(
                              e.data()['name'],
                              e.data()['age'],
                              onUpdate: () {
                                collection
                                    .doc(e.id)
                                    .update({"age": e.data()['age'] + 1});
                              },
                              onDelete: () {
                                collection.doc(e.id).delete();
                              },
                            ),
                          )
                          .toList(),
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                },
              ),
</pre>

- untuk proses filter menggunakan method where() sebelum collection pada stream/future
<pre>
collection.where('age', gratherThan: 15).snapshots()
</pre>

- untuk proses sort menggunakan method orderBy() sebelum collection pada stream/future
<pre>
collection.orderBy('age', descending: true).snapshots()
</pre>
