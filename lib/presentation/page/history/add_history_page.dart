import 'dart:convert';

import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:mockito/annotations.dart';
import 'package:moneyrecord/data/source/source_history.dart';
import 'package:d_input/d_input.dart';
import 'package:d_view/d_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../../../config/app_color.dart';
import '../../../config/app_format.dart';
import '../../controller/c_user.dart';
import '../../controller/history/c_add_history.dart';

class AddHistoryPage extends StatelessWidget {
  AddHistoryPage({Key? key}) : super(key: key);
  final cAddHistory = Get.put(CAddHistory());
  final cUser = Get.put(CUser());
  final controllerName = TextEditingController();
  final controllerPrice = TextEditingController();
  final controllerPrice2 = TextEditingController();

  addHistory() async {
    bool success = await SourceHistory.add(
        cUser.data.idUser!,
        cAddHistory.date,
        cAddHistory.type,
        jsonEncode(cAddHistory.items),
        cAddHistory.total.toString());
    if (success) {
      Future.delayed(const Duration(milliseconds: 3000), () {
        Get.back(result: true);
      });
    }
  }

  validation() async {
    if (controllerPrice2 == controllerPrice) {
      print("Pengeluaran melebihi pemasukan !!");
    } else {
      true;
    }
  }

/*   DValidator hargaValidator(String? value) {
    int pemasukan = int.tryParse(value.toString()) ?? 0;
    int harga = int.tryParse(controllerPrice2.text) ?? 0;
    if (harga >= pemasukan) {
      return "Pemasukan Lebih Kecil Harga";
    }
  }

  DValidator? pemasukanValidator(String? value) {
    int pemasukan = int.tryParse(controllerName.toString()) ?? 0;
    int harga = int.tryParse(value.toString()) ?? 0;
    if (harga >= pemasukan) {
      return "Pemasukan Lebih Kecil Harga";
    }
    return null;
  }
 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DView.appBarLeft('Tambah Baru'),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text(
            'Tanggal',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Row(
            children: [
              Obx(() {
                return Text(cAddHistory.date);
              }),
              DView.spaceWidth(),
              ElevatedButton.icon(
                onPressed: () async {
                  DateTime? result = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2022, 01, 01),
                    lastDate: DateTime(DateTime.now().year + 1),
                  );
                  if (result != null) {
                    cAddHistory
                        .setDate(DateFormat('yyyy-MM-dd').format(result));
                  }
                },
                icon: const Icon(Icons.event),
                label: const Text('Pilih'),
              ),
            ],
          ),
          DView.spaceHeight(),
          const Text(
            'Tipe',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          DView.spaceHeight(4),
          Obx(() {
            return DropdownButtonFormField(
              value: cAddHistory.type,
              items: ['Pemasukan', 'Pengeluaran'].map((e) {
                return DropdownMenuItem(
                  value: e,
                  child: Text(e),
                );
              }).toList(),
              onChanged: (value) {
                cAddHistory.setType(value);
              },
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                isDense: true,
              ),
            );
          }),
          DView.spaceHeight(),
          DInput(
            controller: controllerName,
            hint: 'Jualan',
            title: 'Sumber/Objek Pengeluaran',
          ),
          DView.spaceHeight(),
          DInput(
            controller: controllerPrice,
            hint: '30000',
            title: 'Pemasukan',
            inputType: TextInputType.number,
            validator: (value) {
              if (value != null && controllerPrice2.text.isNotEmpty) {
                int pemasukan = int.tryParse(value.toString()) ?? 0;
                int harga = int.tryParse(controllerPrice2.text) ?? 0;
                if (harga >= pemasukan) {
                  return "Pemasukan Lebih Kecil dari Harga";
                }
              }

              return null;
            },
          ),
          DView.spaceHeight(),
          DInput(
            controller: controllerPrice2,
            hint: '30000',
            title: 'Harga',
            inputType: TextInputType.number,
            validator: (value) {
              if (value != null && controllerPrice.text.isNotEmpty) {
                int pemasukan = int.tryParse(controllerPrice.text) ?? 0;
                int harga = int.tryParse(value.toString()) ?? 0;
                if (harga >= pemasukan) {
                  return "Pemasukan Lebih Kecil dari Harga";
                }
              }

              return null;
            },
          ),
          DView.spaceHeight(),
          ElevatedButton(
            onPressed: () {
              int pemasukan = int.tryParse(controllerPrice.text) ?? 0;
              int harga = int.tryParse(controllerPrice2.text) ?? 0;
              if (harga >= pemasukan) {
                const snackBar = SnackBar(
                  content: Text('Check Harga atau Pemasukkan'),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              } else {
                cAddHistory.addItem({
                  'name': controllerName.text,
                  'price': controllerPrice2.text,
                  'income': controllerPrice.text
                });
                controllerName.clear();
                controllerPrice.clear();
                controllerPrice2.clear();
              }
            },
            child: const Text('Tambah ke Items'),
          ),
          /*if () {
                cAddHistory.addItem({
                  'name': controllerName.text,
                  'price': controllerPrice.text,
                  'price2': controllerPrice2.text,
                });
              } else {
                print("Pengeluaran melebihi pemasukan !!");
              }
              cAddHistory.addItem({});
              controllerName.clear();
              controllerPrice.clear();
              controllerPrice2.clear();
            },
            child: const Text('Tambah ke Items'),
          ),*/
          DView.spaceHeight(),
          Center(
            child: Container(
              height: 5,
              width: 80,
              decoration: BoxDecoration(
                color: AppColor.bg,
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          ),
          DView.spaceHeight(),
          const Text(
            'Items',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          DView.spaceHeight(8),
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey),
            ),
            child: GetBuilder<CAddHistory>(builder: (_) {
              return Wrap(
                runSpacing: 0,
                spacing: 8,
                children: List.generate(_.items.length, (index) {
                  return Chip(
                    label: Text(_.items[index]['name']),
                    deleteIcon: const Icon(Icons.clear),
                    onDeleted: () => _.deleteItem(index),
                  );
                }),
              );
            }),
          ),
          DView.spaceHeight(),
          Row(
            children: [
              const Text(
                'Total:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              DView.spaceWidth(8),
              Obx(() {
                return Text(
                  AppFormat.currency(cAddHistory.total.toString()),
                  style: Theme.of(context).textTheme.headline5!.copyWith(
                        fontWeight: FontWeight.bold,
                        color: AppColor.primary,
                      ),
                );
              }),
            ],
          ),
          DView.spaceHeight(30),
          Material(
            color: AppColor.primary,
            borderRadius: BorderRadius.circular(8),
            child: InkWell(
              onTap: () => addHistory(),
              borderRadius: BorderRadius.circular(8),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Center(
                  child: Text(
                    'SUBMIT',
                    style: Theme.of(context).textTheme.headline6!.copyWith(
                          color: Colors.white,
                        ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
