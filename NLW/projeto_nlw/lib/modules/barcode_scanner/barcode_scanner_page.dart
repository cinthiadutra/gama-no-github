import 'package:flutter/material.dart';
import 'package:projeto_nlw/shared/themes/app_colors.dart';
import 'package:projeto_nlw/shared/themes/app_text_styles.dart';
import 'package:projeto_nlw/shared/widgets/botton_sheet/button_sheet_widget.dart';
import 'package:projeto_nlw/shared/widgets/divider_vertical/divider_vertical_widget.dart';
import 'package:projeto_nlw/shared/widgets/label_button/label_button.dart';
import 'package:projeto_nlw/shared/widgets/set_label_button/set_label_button.dart';

class BarcodeScannerPage extends StatefulWidget {
  BarcodeScannerPage({Key? key}) : super(key: key);

  @override
  _BarcodeScannerPageState createState() => _BarcodeScannerPageState();
}

class _BarcodeScannerPageState extends State<BarcodeScannerPage> {
  @override
  Widget build(BuildContext context) {
    return BottomSheetWidget(
      title: "Não foi possivel ler o codigo de barras",
      subtitle: "Tente novamente ou, digite seu boleto ",
      primaryLabel: "Escanear Novamente",
      primaryOnPressed: (){},
      secundaryLabel: "digite codigo",
      secundaryOnPressed: (){},
    );
    return SafeArea(
      right: true,
      left: true,
      top: true,
      bottom: true,
      child: RotatedBox(
        quarterTurns: 1,
        child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.black,
              title: Text(
                "Escaneie o codigo de barras",
                style: TextStyles.buttonBackground,
              ),
              centerTitle: true,
              leading: BackButton(
                color: AppColors.background,
              ),
            ),
            body: Column(
              children: [
                Expanded(
                    child: Container(
                  color: Colors.black,
                )),
                Expanded(
                    flex: 2,
                    child: Container(
                      color: Colors.transparent,
                    )),
                Expanded(
                    child: Container(
                  color: Colors.black.withOpacity(0.6),
                )),
              ],
            ),
            bottomNavigationBar: SetLabelButton(
              primaryLabel: "Inserir condigo do boleto",
              primaryOnPressed: () {},
              secundaryLabel: "Adicionar da galeria",
              secundaryOnPressed: () {},
            )),
      ),
    );
  }
}
