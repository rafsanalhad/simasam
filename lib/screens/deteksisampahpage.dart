import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:pytorch_lite/lib.dart';

class DeteksiSampahPage extends StatefulWidget {
  const DeteksiSampahPage({super.key});

  @override
  State<DeteksiSampahPage> createState() => _DeteksiSampahPageState();
}

class _DeteksiSampahPageState extends State<DeteksiSampahPage> {
  ClassificationModel? _model;
  String? _result;
  final ImagePicker _imagePicker = ImagePicker();
  File? _image;
  bool _isLoading = false;

  @override
  void initState() {
    super.initState();
    _loadModel();
  }

  Future _loadModel() async {
    try {
      _model = await PytorchLite.loadClassificationModel(
          'assets/models/model_classification.pt', 320, 320, 2,
          labelPath: 'assets/labels/label.txt');
    } catch (e) {
      print(e);
    }
    print("Model Loaded");
  }

  Future runClassification() async {
    if (_model == null) {
      return;
    }
    try {
      final XFile? image =
          await _imagePicker.pickImage(source: ImageSource.camera);
      setState(() {
        _isLoading = true;
      });
      final result = await _model!
          .getImagePrediction(await File(image!.path).readAsBytes());

      print(result);
      setState(() {
        _image = File(image.path);
        _result = result;
        _isLoading = false;
      });
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Deteksi Sampah'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // loading indicator
            _isLoading
                ? const CircularProgressIndicator()
                : const SizedBox(
                    height: 0,
                  ),
            // show image
            _result == null
                ? const Text("No image")
                : Image.file(
                    _image!,
                    width: 400,
                    height: 400,
                  ),
            _result == null
                ? const Text("No result")
                : Text(
                    "Result: $_result",
                    style: const TextStyle(fontSize: 20),
                  ),
            ElevatedButton(
              onPressed: runClassification,
              child: const Text("Capture image"),
            ),
          ],
        ),
      ),
    );
  }
}
