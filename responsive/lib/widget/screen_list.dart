// ignore_for_file: prefer_const_constructors

import 'package:chips_choice/chips_choice.dart';
import 'package:flutter/material.dart';
import 'package:responsive/class/model.dart';

class ScreenList extends StatefulWidget {
  const ScreenList({super.key, required this.list});
  final Shoes list;

  @override
  State<ScreenList> createState() => _ScreenListState();
}

class _ScreenListState extends State<ScreenList> {
  bool _isSelected = false;
  final colors = ["Yellow", "Red", "Black", "Grey", "White"];
  final numbers = ['6',
      '6.5',
      '7',
      '7.5',];
  String? value;
  String? _color;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    var _mobileWidth = 576;

    String _size = "Size";
    String _description = "Description";

    int _selectedIndex;
    List<String> tags = [];
 


    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.list.title,
                    style: Theme.of(context).textTheme.headline5?.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(widget.list.model),
                  SizedBox(
                    height: 10,
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        Image.asset(widget.list.image2),
                        Text(
                          widget.list.price,
                          style: Theme.of(context)
                              .textTheme
                              .headline4
                              ?.copyWith(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Expanded(
                    flex: height < 842 ? 3 : 5,
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: AlignmentDirectional.center,
                      children: [
                        Container(
                            width: width <= 576 ? width * 0.8 : 350,
                            child: Image.asset(widget.list.image)),
                        Container(
                          width: width <= 576 ? width * 0.8 : 350,
                          child: Image.asset(widget.list.image3),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: height < 804 ? 3 : 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _description,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2
                              ?.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Container(
                            // width: width <= 576 ? width * 0.9 - 50 : 200,
                            // width: width * 0.9,
                            child: Text(
                          widget.list.description,
                          overflow: TextOverflow.ellipsis,
                          maxLines: height < 804 ? 3 : 4,
                        )),
                      ],
                    ),
                  ),
                  Expanded(
                      flex: height < 804 ? 4 : 5,
                      child: Container(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(_size),
                          SizedBox(height: 10,),
                          Wrap(
                            spacing: 5,
                            runSpacing: 10,
                            children: List<Widget>.generate(
                              numbers.length,
                              
                              (int index) {
                                return ChoiceChip(
                                  elevation: 10,
                                  pressElevation: 5,
                                  label: Text(numbers[index]),
                                  labelPadding: EdgeInsets.symmetric(horizontal: 25,vertical: 4),
                                  selectedColor: Color.fromRGBO(151, 196, 28, 0.753),
                                  backgroundColor: Color.fromARGB(255, 105, 128, 42),
                                  selected: _color == numbers[index],
                                  onSelected: (bool selected) {
                                    if(selected){
                                          _color = numbers[index];
                                          print("${numbers[index]} selected");
                                    }
                                    setState(() {},);
                                  },
                                );
                              },
                            ).toList(),
                          ),
                          //  Text(_color != null ? _color! : 'null'),
                        ],
                      ))),
                 
                  Flexible(
                    flex: 2,
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      width: width * 0.4,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        border: Border.all(color: Colors.grey.shade700),
                      ),
                      child: DropdownButton<String>(
                        menuMaxHeight: 200,
                        hint: Text(
                          "Choose Colors",
                          style: TextStyle(fontSize: width * 0.034),
                        ),
                        underline: SizedBox(),
                        dropdownColor: Colors.transparent.withOpacity(0.58),
                        isExpanded: true,
                        value: value,
                        items: colors.map(buildMenuItem).toList(),
                        onChanged: (value) {
                          setState(() {
                            this.value = value;
                          });
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  DropdownMenuItem<String> buildMenuItem(String item) => DropdownMenuItem(
        child: Text(
          item,
          style: Theme.of(context)
              .textTheme
              .bodyMedium
              ?.copyWith(color: Colors.grey.shade300),
        ),
        value: item,
      );
}

class sizeContainer extends StatelessWidget {
  const sizeContainer({
    Key? key,
    required this.number,
  }) : super(key: key);

  final String number;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
        // color: selectItem == true
        //     ? Color.fromARGB(255, 52, 112, 161)
        //     : color_Theme,
        color: Color.fromARGB(192, 151, 196, 28),
        // ignore: sort_child_properties_last
        child: SizedBox(
          width: 60,
          height: 30,
          child: Center(
            child: Text(
              number,
              // style: selectItem == index
              //     ? TextStyle(
              //         color: Colors.white, fontSize: 15)
              //     : TextStyle(color: Colors.grey.shade700),
            ),
          ),
        ),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      ),
    );
  }
}
