import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:invitee/app/design_system/widget/chip_choice_widget/chip_choice_widget.dart';
import 'package:invitee/app/design_system/widget/chip_filter_widget/chip_filter_widget.dart';

class ModalFilter extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height / 100;
    final width = MediaQuery.of(context).size.width / 100;

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: width * 5, vertical: height * 3),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            child: Text(
              'Atributos da sala',
              style: GoogleFonts.nunito(
                fontSize: height * 1.6,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: height * 2),
            child: Wrap(
              spacing: width * 5,
              children: [
                ChipFilterWidget(title: 'Projetor',),
                ChipFilterWidget(title: 'Wi-Fi',),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Text(
              'Quantidade de pessoas',
              style: GoogleFonts.nunito(
                fontSize: height * 1.6,
                fontWeight: FontWeight.w700
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: height * 2),
            child: ChipChoiceWidget(
              dataChips: [
                '2 - 4',
                '5 - 8',
                '9 - 12',
                '13 - 16'
              ],
            ),
          ),
          SizedBox(
            
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 5),
                child: Icon(Icons.filter_list),
              ),
              label: Padding(
                padding: EdgeInsets.symmetric(horizontal: width * 5),
                child: Text(
                  'Filtrar',
                  style: GoogleFonts.nunito(
                    fontSize: height * 1.5,
                    fontWeight: FontWeight.w700
                  ),
                ),
              ),
              style: TextButton.styleFrom(
                backgroundColor: Color(0XFF593E9D)
              ),
            ),
          )
        ],
      ),
    );
  }
}