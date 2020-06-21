import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:listdemo_app/src/views/custom_item.dart';


class HomeScreen extends StatelessWidget {
 
  //const HomeScreen({Key key}) : super(key: key);

  final listaPersonas = ['Ana','Laura', 'JC'];
  @override
  Widget build(BuildContext context) {
    return Material(
          child: CupertinoPageScaffold(
            child: CustomScrollView(
              slivers: <Widget>[
                CupertinoSliverNavigationBar(
                  largeTitle: Text('List Demo App')
                ),
                SliverList(
                  delegate: SliverChildListDelegate(<Widget>[
                    //Text('Hola Mundo'),
                    //Text('Hola Mundo'),
                    //Text('Hola Mundo')
                    Card(
                        child: ListTile(
                          leading: Icon(CupertinoIcons.add_circled_solid),
                          title: Text('Elemento 1'),
                          trailing: Icon(CupertinoIcons.right_chevron),
                        ),
                    ),
                    Card(
                        child: ListTile(
                          leading: Icon(CupertinoIcons.add_circled_solid),
                          title: Text('Elemento 1'),
                          trailing: Icon(CupertinoIcons.right_chevron),
                        ),
                    ),
                    Card(
                        child: ListTile(
                          leading: Icon(CupertinoIcons.add_circled_solid),
                          title: Text('Elemento 1'),
                          trailing: Icon(CupertinoIcons.right_chevron),
                        ),
                    ),

                  ]),
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                  (context,index){  
                    /*return ListTile(
                      leading: Icon(CupertinoIcons.add_circled_solid),
                      title: Text(listaPersonas[index]),
                      trailing:Icon(CupertinoIcons.right_chevron)
                    );*/
                    return CustomItemList(
                      titulo: listaPersonas[index]
                    );

                  },
                    childCount: listaPersonas.length,
                  ),
                )
              ],
            ),
        
      ),
    );
    

  }

}