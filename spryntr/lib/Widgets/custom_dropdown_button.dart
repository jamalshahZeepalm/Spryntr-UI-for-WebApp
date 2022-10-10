// ignore_for_file: must_be_immutable

import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:spryntr/Utils/typography.dart';

import '../Utils/colors.dart';

class CustomDropDownButton extends StatefulWidget {
  bool isMobileView;
  CustomDropDownButton({Key? key, required this.isMobileView})
      : super(key: key);

  @override
  State<CustomDropDownButton> createState() => _CustomDropDownButtonState();
}

class _CustomDropDownButtonState extends State<CustomDropDownButton> {
  bool value = false;
  List<Map<String, dynamic>> selectedItems = [];
  List<Map> jonson = [
    {"id": "1", "title": "Channels", "value": false, "checkBox": false},
    {"id": "2", "title": "All Channels", "value": true, "checkBox": false},
    {
      "id": "3",
      "title": "Stores",
      "color": CustomColors.kOrange,
      "value": true,
      "checkBox": true
    },
    {
      "id": "4",
      "title": "Delivery",
      "color": CustomColors.kPurple,
      "value": true,
      "checkBox": false
    },
    {
      "id": "5",
      "title": "Customer",
      "color": CustomColors.kBlueAccent,
      "value": true,
      "checkBox": false
    },
    {"id": "6", "title": "___________", "value": false, "checkBox": false},
    {"id": "7", "title": "Transaction", "value": false, "checkBox": false},
    {
      "id": "8",
      "title": "Pending",
      "color": CustomColors.kBlueAccent,
      "value": true,
      "checkBox": true
    },
    {
      "id": "9",
      "title": "Completed",
      "color": CustomColors.kGreen,
      "value": true,
      "checkBox": false
    },
    {
      "id": "10",
      "title": "Cancelled",
      "color": CustomColors.kbrownIconColor,
      "value": true,
      "checkBox": false,
    },
  ];

  String selectedValue = '1';

  @override
  Widget build(BuildContext context) {
    if (widget.isMobileView == true) {
      return Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.r),
        ),
        child: DropdownButtonHideUnderline(
          child: DropdownButton2(
            isExpanded: true,
            hint: Text(
              'Filter',
              style: TextStyle(
                fontSize: 14,
                color: CustomColors.kbrownIconColor,
              ),
            ),
            items: jonson.map((Map map) {
              return DropdownMenuItem<String>(
                value: map["id"].toString(),
                //disable default onTap to avoid closing menu when selecting an item
                enabled: false,
                child: StatefulBuilder(
                  builder: (context, menuSetState) {
                    //  final _isSelected = jonson.contains(map);
                    return Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(left: 10.w),
                          child: Container(
                            width: 10,
                            height: 10,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.r),
                              color: map["color"],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        SizedBox(
                          width: 240.w,
                          child: Text(map["title"],
                              textAlign: TextAlign.center,
                              style: CustomTextStyle.kRegular
                                  .copyWith(fontSize: 40.sp)),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        map["value"] == false
                            ? const SizedBox()
                            : map["value"] == false
                                ? const SizedBox(
                                    width: 0,
                                  )
                                : SizedBox(
                                    width: 17.w,
                                    child: Checkbox(
                                        checkColor:
                                            CustomColors.kBackgroundColor,
                                        activeColor: map["checkBox"] == true
                                            ? CustomColors.kbrownIconColor
                                            : CustomColors.kBackgroundColor,
                                        value: map["checkBox"],
                                        onChanged: (val) {
                                          setState(() {
                                            map["checkBox"] = val as bool;
                                          });
                                        }),
                                  ),
                        SizedBox(
                          width: 20.w,
                        ),
                      ],
                    );
                  },
                ),
              );
            }).toList(),
            //Use last selected item as the current value so if we've limited menu height, it scroll to last item.
            value: selectedValue,
            onChanged: (value) {},
            buttonHeight: 100.w,
            buttonWidth: double.infinity.w,
            itemHeight: 40.h,
            itemPadding: EdgeInsets.zero,
            selectedItemBuilder: (context) {
              return selectedItems.map(
                (item) {
                  return Container(
                    alignment: AlignmentDirectional.center,
                    child: Text(
                      selectedItems.join(', '),
                      style: TextStyle(
                        fontSize: 40.sp,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 2,
                    ),
                  );
                },
              ).toList();
            },
          ),
        ),
      );
    } else {
      return Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(7.r)),
        child: DropdownButtonHideUnderline(
          child: DropdownButton2(
            isExpanded: true,
            hint: Text(
              'Filter',
              style: TextStyle(
                fontSize: 14,
                color: CustomColors.kbrownIconColor,
              ),
            ),
            items: jonson.map((Map map) {
              return DropdownMenuItem<String>(
                value: map["id"].toString(),
                //disable default onTap to avoid closing menu when selecting an item
                enabled: false,
                child: StatefulBuilder(
                  builder: (context, menuSetState) {
                    //  final _isSelected = jonson.contains(map);
                    return SizedBox(
                      height: double.infinity,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(50.r),
                                color: map["color"],
                              ),
                            ),
                            title: SizedBox(
                              width: 207.w,
                              child: Text(
                                map["title"],
                                textAlign: TextAlign.start,
                                style: const TextStyle(
                                    fontSize: 10, fontWeight: FontWeight.bold),
                              ),
                            ),
                            trailing: map["value"] == false
                                ? const SizedBox()
                                : map["value"] == false
                                    ? const SizedBox()
                                    : Checkbox(
                                        checkColor:
                                            CustomColors.kBackgroundColor,
                                        activeColor: map["checkBox"] == true
                                            ? CustomColors.kbrownIconColor
                                            : CustomColors.kBackgroundColor,
                                        value: map["checkBox"],
                                        onChanged: (val) {
                                          setState(() {
                                            map["checkBox"] = val as bool;
                                          });
                                        }),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              );
            }).toList(),
            //Use last selected item as the current value so if we've limited menu height, it scroll to last item.
            value: selectedValue,
            onChanged: (value) {},
            buttonHeight: 20.w,
            buttonWidth: 70.w,
            itemHeight: 75.h,
            itemPadding: EdgeInsets.zero,
            selectedItemBuilder: (context) {
              return selectedItems.map(
                (item) {
                  return Container(
                    alignment: AlignmentDirectional.center,
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      selectedItems.join(', '),
                      style: const TextStyle(
                        fontSize: 14,
                        overflow: TextOverflow.ellipsis,
                      ),
                      maxLines: 1,
                    ),
                  );
                },
              ).toList();
            },
          ),
        ),
      );
    }
  }
}
