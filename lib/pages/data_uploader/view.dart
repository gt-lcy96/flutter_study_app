import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:study_app/firebase_ref/loading_status.dart';
import 'package:study_app/pages/data_uploader/controller.dart';

class DataUploaderScreen extends GetView<DataUploaderController> {
  const DataUploaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Obx(() =>
            controller.state.loadingStatus == LoadingStatus.completed
                ? Text("Uploaded")
                : Text('uploading')),
      ),
    );
  }
}
