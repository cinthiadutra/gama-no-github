import 'package:flutter/material.dart';
import 'package:projeto_nlw/shared/themes/app_colors.dart';
import 'package:projeto_nlw/shared/widgets/set_label_button/set_label_button.dart';

class BottomSheetWidget extends StatelessWidget {
  final String primaryLabel;
  final VoidCallback primaryOnPressed;
  final String secundaryLabel;
  final VoidCallback secundaryOnPressed;
  final String title;
  final String subtitle;
  const BottomSheetWidget({Key? key, required this.primaryLabel,
   required this.primaryOnPressed,
    required this.secundaryLabel, 
    required this.secundaryOnPressed, 
    required this.title, 
    required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
          child: Container(
        color: AppColors.shape,
        child: Column(
          children: [
            Text(title),
            Text(subtitle),
            SetLabelButton(
              primaryLabel: "Inserir condigo do boleto",
              primaryOnPressed: () {},
              secundaryLabel: "Adicionar da galeria",
              secundaryOnPressed: () {},
            )
          ],
        ),
      ),
    );
  }
}
