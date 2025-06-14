import 'package:ekran15todolist/providers/all_providers.dart';
import 'package:ekran15todolist/widgets/list_item_widget.dart';
import 'package:ekran15todolist/widgets/my_sized_box.dart';
import 'package:ekran15todolist/widgets/text_field_widget.dart';
import 'package:ekran15todolist/widgets/title_widget.dart';
import 'package:ekran15todolist/widgets/tool_bar_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ToDoAppPage extends ConsumerWidget {
  const ToDoAppPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var toDoList = ref.watch(toDoListProvider);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: ListView(
          children: [
            TitleWidget(),
            MySizedBox(),
            TextFieldWidget(),
            MySizedBox(),
            ToolBarWidget(),
            MySizedBox(),
            for(int i = 0 ; i< toDoList.length ; i++) 
            ListItemWidget(item: toDoList[i],),
            
          ],
        ),
      ),
    );
  }
}
