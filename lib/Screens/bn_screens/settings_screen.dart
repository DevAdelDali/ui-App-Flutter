import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:moumen_app_ui/Models/address.dart';
import 'package:moumen_app_ui/Models/university.dart';

class SetteingsScrren extends StatefulWidget {
  const SetteingsScrren({Key? key}) : super(key: key);

  @override
  State<SetteingsScrren> createState() => _SetteingsScrrenState();
}

class _SetteingsScrrenState extends State<SetteingsScrren> {
  bool _notfications = false;
  bool _showprofile = false;
  String? _gender;
  int? _indexSelectDropDown;

  // bool _chechGazaAddress = false;
  // bool _chechRafahAddress = false;
  // bool _chechBatlahyaAddress = false;
  // bool _chechNusiratAddress = false;
  // bool _chechKhanyounesAddress = false;

  //////////////////
  late TextEditingController _textEditingController;

  RangeValues _rangeValues = RangeValues(40, 100);

  //////////////////
  List<Address> _addressesList = [
    Address(titel: "Gaza"),
    Address(titel: "Rafah"),
    Address(titel: "Beit Lahiya "),
    Address(titel: "Nuseirat"),
    Address(titel: "Khan Younes"),
  ];

  List<University> _listUnversityes = const [
    University(id: 1, titel: "Israa"),
    University(id: 2, titel: "Islamic"),
    University(id: 3, titel: "Azhar"),
    University(id: 4, titel: "Palestine"),
    University(id: 5, titel: "Gaza"),
  ];
  List<String> _listExperience = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _textEditingController = TextEditingController();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(17),
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Location",
                style: GoogleFonts.adamina(fontSize: 20, color: Colors.black)),
            Container(
                margin: EdgeInsets.only(top: 20),
                child: Text(
                    "Cecilia Chapman 711-2880 Nulla St. \n Mankato Mississippi 96522",
                    style: GoogleFonts.adamina(
                        fontSize: 14, color: Colors.black54))),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        SwitchListTile(
          activeColor: Colors.green.shade300,
          contentPadding: EdgeInsets.zero,
          title: Text(
            "Notification",
            style: GoogleFonts.adamina(fontSize: 18, color: Colors.black),
          ),
          subtitle: const Text("Controll Notficition"),
          value: _notfications,
          onChanged: (bool value) {
            setState(() => _notfications = value);
          },
        ),
        SwitchListTile(
          activeColor: Colors.green.shade300,
          contentPadding: EdgeInsets.zero,
          title: Text(
            "Show me with profile",
            style: GoogleFonts.adamina(fontSize: 18, color: Colors.black),
          ),
          value: _showprofile,
          onChanged: (bool value) {
            setState(() => _showprofile = value);
          },
        ),
        const SizedBox(
          height: 15,
        ),
        Text("Gender",
            style: GoogleFonts.adamina(fontSize: 18, color: Colors.black)),
        Row(
          children: [
            Expanded(
              child: RadioListTile<String>(
                activeColor: Colors.green.shade300,
                contentPadding: EdgeInsets.zero,
                title: Text('Male', style: GoogleFonts.montserrat()),
                value: 'M',
                groupValue: _gender,
                onChanged: (String? value) {
                  if (value != null) {
                    setState(() => _gender = value);
                  }
                },
              ),
            ),
            Expanded(
              child: RadioListTile<String>(
                activeColor: Colors.green.shade300,
                contentPadding: EdgeInsets.zero,
                title: Text('Female', style: GoogleFonts.montserrat()),
                value: 'F',
                groupValue: _gender,
                onChanged: (String? value) {
                  if (value != null) {
                    setState(() => _gender = value);
                  }
                },
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 15,
        ),
        Text("Range Price",
            style: GoogleFonts.adamina(fontSize: 18, color: Colors.black)),
        RangeSlider(
          divisions: 20,
          inactiveColor: Colors.grey,
          activeColor: Colors.green.shade200,
          labels: RangeLabels(
              _rangeValues.start.toString(), _rangeValues.end.toString()),
          min: 0,
          max: 300,
          values: _rangeValues,
          onChanged: (RangeValues value) {
            setState(() => _rangeValues = value);
          },
        ),
        const SizedBox(
          height: 15,
        ),
        Text("Address",
            style: GoogleFonts.adamina(fontSize: 18, color: Colors.black)),
        for (Address adressObject in _addressesList)
          CheckboxListTile(
            activeColor: Colors.green.shade300,
            title: Text(adressObject.titel, style: GoogleFonts.montserrat()),
            value: adressObject.checked,
            onChanged: (value) {
              if (value != null) {
                setState(() => adressObject.checked = value!);
              }
            },
          ),
        const SizedBox(
          height: 20,
        ),
        Text("University",
            style: GoogleFonts.adamina(fontSize: 18, color: Colors.black)),
        DropdownButton(
          iconDisabledColor: Colors.green.shade300,
          dropdownColor: Colors.grey.shade200,
          elevation: 10,
          hint: Text("Select Your Univisity", style: GoogleFonts.adamina()),
          isExpanded: true,
          value: _indexSelectDropDown,
          items: _listUnversityes
              .map((e) => DropdownMenuItem(
                  value: e.id,
                  child: Text(e.titel,
                      style:
                          GoogleFonts.adamina(color: Colors.green.shade400))))
              .toList(),
          onChanged: (int? value) {
            setState(() => _indexSelectDropDown = value);
          },
        ),
        const SizedBox(
          height: 20,
        ),
        Text("Experience",
            style: GoogleFonts.adamina(fontSize: 18, color: Colors.black)),
        TextField(
          keyboardType: TextInputType.text,
          textCapitalization: TextCapitalization.words,
          style: GoogleFonts.adamina(),
          expands: false,
          textInputAction: TextInputAction.done,
          onSubmitted: (value) => _performSave(),
          maxLines: 1,
          maxLength: 50,
          controller: _textEditingController,
          decoration: InputDecoration(
              border: OutlineInputBorder(
                  gapPadding: 50,
                  borderRadius: BorderRadius.circular(14),
                  borderSide: BorderSide(
                    color: Colors.grey.shade500,
                  )),
              contentPadding: EdgeInsets.zero,
              prefixIcon: Icon(Icons.work, color: Colors.green.shade300),
              suffixIcon: IconButton(
                onPressed: () => _performSave(),
                icon: Icon(Icons.save, color: Colors.green.shade300),
              ),
              hintText: "Enter Your Experience"),
        ),
        Wrap(
          spacing: 10,
          children: _listExperience
              .map((e) => Chip(
                  labelStyle: GoogleFonts.adamina(),
                  backgroundColor: Colors.green.shade100,
                  elevation: 5,
                  avatar: const Icon(
                    Icons.work,
                    size: 17,
                  ),
                  deleteIconColor: Colors.red,
                  deleteButtonTooltipMessage: "Delete",
                  deleteIcon: const Icon(Icons.close),
                  onDeleted: () {
                    _deleteExperiense(e);
                  },
                  padding: const EdgeInsets.all(8),
                  label: Text(e)))
              .toList(growable: false),
        )
      ],
    );
  }

  void _performSave() {
    if (_ischeckData()) {
      _save();
    }
  }

  void _deleteExperiense(String titel) {
    setState(() {
      bool isDeleted = _listExperience.remove(titel);
    });
  }

  void _save() {
    setState(() {
      _listExperience.add(_textEditingController.text);
    });

    _textEditingController.clear();

    print(_listExperience);
  }

  bool _ischeckData() {
    if (_textEditingController.text.isNotEmpty) {
      return true;
    }
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        backgroundColor: Colors.red.shade600,
        padding: const EdgeInsets.all(30),
        elevation: 0,
        content: const Text("Error Plase Enter ")));
    return false;
  }
}
