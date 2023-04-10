import 'package:flutter/material.dart';
import 'package:google_ml_kit_example/constant/image_constant.dart';
import 'package:google_ml_kit_example/constant/string_constant.dart';
import 'package:google_ml_kit_example/widgets/common_box.dart';
import 'package:path/path.dart';
import 'vision_detector_views/barcode_scanner_view.dart';
import 'vision_detector_views/digital_ink_recognizer_view.dart';
import 'vision_detector_views/face_detector_view.dart';
import 'vision_detector_views/label_detector_view.dart';
import 'vision_detector_views/object_detector_view.dart';
import 'vision_detector_views/pose_detector_view.dart';
import 'vision_detector_views/selfie_segmenter_view.dart';
import 'vision_detector_views/text_detector_view.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Google ML Kit Demo App'),
      //   centerTitle: true,
      //   elevation: 0,
      // ),
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 28, vertical: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  StringConstant.mlkit,
                  style: TextStyle(
                      letterSpacing: 3,
                      fontSize: 40,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 32,
                ),
                Box(
                    text: StringConstant.barCode,
                    viewPage: BarcodeScannerView()),
                Box(
                    text: StringConstant.faceDetection,
                    viewPage: FaceDetectorView()),
                Box(
                    text: StringConstant.imageLable,
                    viewPage: ImageLabelView()),
                Box(
                    text: StringConstant.textRecog,
                    viewPage: TextRecognizerView()),
                Box(text: StringConstant.digital, viewPage: DigitalInkView()),
                Box(
                    text: StringConstant.objectDetection,
                    viewPage: ObjectDetectorView()),
                Box(
                    text: StringConstant.postDetection,
                    viewPage: PoseDetectorView()),
                Box(
                    text: StringConstant.selfi,
                    viewPage: SelfieSegmenterView()),
              ],
            )
            // Column(
            //   children: [

            //     CustomCard('Barcode Scanning', BarcodeScannerView()),
            //     // CustomCard('Face Detection', FaceDetectorView()),
            //     CustomCard('Image Labeling', ImageLabelView()),
            //     // CustomCard('Object Detection', ObjectDetectorView()),
            //     CustomCard('Text Recognition', TextRecognizerView()),
            //     // CustomCard('Digital Ink Recognition', DigitalInkView()),
            //     // CustomCard('Pose Detection', PoseDetectorView()),
            //     // CustomCard('Selfie Segmentation', SelfieSegmenterView()),
            //     // ExpansionTile(
            //     //   title: const Text('Vision APIs'),
            //     //   children: [
            //     //     CustomCard('Barcode Scanning', BarcodeScannerView()),
            //     //     CustomCard('Face Detection', FaceDetectorView()),
            //     //     CustomCard('Image Labeling', ImageLabelView()),
            //     //     CustomCard('Object Detection', ObjectDetectorView()),
            //     //     CustomCard('Text Recognition', TextRecognizerView()),
            //     //     CustomCard('Digital Ink Recognition', DigitalInkView()),
            //     //     CustomCard('Pose Detection', PoseDetectorView()),
            //     //     CustomCard('Selfie Segmentation', SelfieSegmenterView()),
            //     //   ],
            //     // ),
            //     SizedBox(
            //       height: 20,
            //     ),
            //     // ExpansionTile(
            //     //   title: const Text('Natural Language APIs'),
            //     //   children: [
            //     //     CustomCard('Language ID', LanguageIdentifierView()),
            //     //     CustomCard(
            //     //         'On-device Translation', LanguageTranslatorView()),
            //     //     CustomCard('Smart Reply', SmartReplyView()),
            //     //     CustomCard('Entity Extraction', EntityExtractionView()),
            //     //   ],
            //     // ),
            //   ],
            // ),

            ),
      ),
    );
  }
}

// class CustomCard extends StatelessWidget {
//   final String _label;
//   final Widget _viewPage;
//   final bool featureCompleted;

//   const CustomCard(this._label, this._viewPage, {this.featureCompleted = true});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 5,
//       margin: EdgeInsets.only(bottom: 10),
//       child: ListTile(
//         tileColor: Theme.of(context).primaryColor,
//         title: Text(
//           _label,
//           style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
//         ),
//         onTap: () {
//           if (!featureCompleted) {
//             ScaffoldMessenger.of(context).showSnackBar(SnackBar(
//                 content:
//                     const Text('This feature has not been implemented yet')));
//           } else {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => _viewPage));
//           }
//         },
//       ),
//     );
//   }
// }
