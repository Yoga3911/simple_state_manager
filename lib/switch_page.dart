import 'package:flutter/material.dart';
import 'package:value_notifier/setting_model.dart';
import 'package:value_notifier/state_manager.dart';

class SwitchPage extends StatelessWidget {
  const SwitchPage({super.key});

  @override
  Widget build(BuildContext context) {
    var settings = [
      SettingModel(name: "Dark Mode", isEnable: false.oby),
      SettingModel(name: "Night Mode", isEnable: true.oby),
      SettingModel(name: "Sad Mode", isEnable: false.oby),
    ];
    debugPrint("masuk!");
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: settings.length,
        itemBuilder: (_, i) {
          final setting = settings[i];
          return GetYBuilder(
            () => SwitchListTile(
              title: Text(setting.name),
              value: setting.isEnable.value,
              onChanged: (val) {
                setting.isEnable.value = val;
              },
            ),
            notifier: setting.isEnable,
          );
        },
      ),
    );
  }
}
