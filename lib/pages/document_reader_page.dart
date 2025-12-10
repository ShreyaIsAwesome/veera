import 'dart:io';
import 'dart:nativewrappers/_internal/vm/lib/internal_patch.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:main/app_colors.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';

class DocumentReaderPage extends StatefulWidget {
  const DocumentReaderPage({super.key});

  @override
  State<DocumentReaderPage> createState() => _DocumentReaderPageState();
}

class _DocumentReaderPageState extends State<DocumentReaderPage> {
   String? fileName;
   PlatformFile? pickedFile;
  
  Future<void> pickFile() async {
    final result = await FilePicker.platform.pickFiles(
      allowMultiple: false,
      type: FileType.custom,
      allowedExtensions: ['pdf', 'doc', 'docx'],
    );

    if (result == null) {
      debugPrint("User cancels file picking");
      return;
    }
    
    setState(() {
      pickedFile = result.files.first;
      fileName = pickedFile!.name;
    });
    }
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backgroundColor,
      
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 25.0),
          child: Column(
            children: [
              const Text("Document Scanner",
              style: TextStyle(
                color: Colors.white,
                fontSize: 34,
                fontWeight: .bold),
              ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: ElevatedButton(
                onPressed: pickFile,
                style: ButtonStyle(
                  backgroundColor: WidgetStatePropertyAll(AppColors.accentGrey),
                  shadowColor: WidgetStatePropertyAll(Colors.black),
                
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Text("Click To Insert Document",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                  ),
                )
              ),
            ),
            if (pickedFile != null)
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: SizedBox(
                  height: 450,
                  width: 350,
                  child: PDFView(
                    filePath: pickedFile!.path!,
                  ),
                ),
              )
            
          ],
        ),
      ),
    )
  );
}
}