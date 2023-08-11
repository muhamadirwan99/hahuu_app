import 'package:flutter/material.dart';
import '../view/data_pemain_view.dart';

class DataPemainController extends State<DataPemainView> {
  static late DataPemainController instance;
  late DataPemainView view;

  List dataPemain = [];
  List listControllerTextField = [];

  GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
