import 'package:flutter/material.dart';

class DataList extends StatefulWidget {
  const DataList({Key? key}) : super(key: key);

  @override
  State<DataList> createState() => _DataListState();
}


class _DataListState extends State<DataList> {
  List<user> users = [
    user(nama: "Adhanafi Ilyasa Sutejo", email: "masilyas.gt@gmail.com"),
    user(nama: "Ahmad Aziz Wira Widodo", email: "wira123widodo@gmail.com"),
    user(nama: "Akbar Rizqullah Putra Susanto", email: "akbarrizqullah228@gmail.com"),
    user(nama: "Alwan Athallah Mumtaz", email: "mumtazalwan06@gmail.com"),
    user(nama: "Amri Iqro Samudra Al-Fatihah", email: "amriiqosamudraalfatihah@gmail.com"),
    user(nama: "Anakku Lanang Sejati Adli", email: "sejatiadli@gmail.com"),
    user(nama: "Andika Setya Eka Natha", email: ""),
    user(nama: "Antariksa Kusuma Harmawan", email: "antariksakusumaharmawan6801@gmail.com"),
    user(nama: "Azzra Rienov Fahlivi", email: "fahlivi.azzrarienov@gmail.com"),
    user(nama: "Bayu Septian Kurniawan", email: "bayuseptiankurniawan@gmail.com"),
    user(nama: "Bhre Nabil Faeyza", email: ""),
    user(nama: "Bimo Adi Bramantyo", email: "bimo6a.shb@gmail.com"),
    user(nama: "Daffa Syauqi Syarif", email: "daffass01@gmail.com"),
    user(nama: "Danar Gading", email: "danargading@gmail.com"),
    user(nama: "Dimas Bagus Adityas", email: "dmsadityas@gmail.com"),
    user(nama: "Firdaus Hafidz Al-Kaff", email: "firdaushafidz132@gmail.com"),
    user(nama: "Hegel Al Rafli", email: "hegelalrafli@gmail.com"),
    user(nama: "Hibatullah Fawwaz Hana", email: "hiba.kudus@gmail.com"),
    user(nama: "Javier Gavra Abhinaya", email: "javiergavra01@gmail.com"),
    user(nama: "Khoiru Rizal Kalam Ismail", email: "rizalkalam78@gmail.com"),
    user(nama: "Lugas Richtigo Kalam Hetami", email: "lugasrichtigolugas@gmail.com"),
    user(nama: "Meyssa Aqila Adikara", email: "qilaadikara@gmail.com"),
    user(nama: "Mikhail Haqeen", email: "mamash4ck3n@gmail.com"),
    user(nama: "Muh Wahyu Ageng Pambudi", email: "agengw825@gmail.com"),
    user(nama: "Muhammad Firdan Azhari", email: "firdannoobgam@gmail.com"),
    user(nama: "Muhammad Nur Wahid Bimawan", email: "mnurwahidbimmawan73@gmail.com"),
    user(nama: "Muhammad Vitto Corleone", email: "mvittocorleone19@gmail.com"),
    user(nama: "Muhammad Zumar Ramadhan", email: "zumar.ramadhan46@gmail.com"),
    user(nama: "Nabil Rajankanz", email: "nabilrajankanz@gmail.com"),
    user(nama: "Nadhif 'Ariq Danendra", email: "nadhifariq180@gmail.com"),
    user(nama: "Riko Aditya Zaki", email: "rikoadityazaki@gmail.com"),
    user(nama: "Rizqi Agung Pradana", email: "izunna158@gmail.com"),
    user(nama: "Sinatrya Rasyid Fawwaz", email: "bubblegaming431@gmail.com"),
    user(nama: "Wulan Febrianti", email: "wulanfebrianti716@gmail.com"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text("List phone"),
      // ),
      body: Container(
        child: Container(
          margin: EdgeInsets.all(10),
          child: ListView.builder(
              itemCount: users.length,
              itemBuilder: (BuildContext context, int index) {
                return GestureDetector(
                  onTap: () {
                    showDialog(context: context, builder: (BuildContext context)=> AlertDialog(
                      title: Text("Hapus Kontak"),
                      content: Text("Anda yakin ingin menghapus kontak ${users[index].nama}?"),
                      actions: <Widget>[
                        FlatButton(
                          child: Text("Ya"),
                          onPressed: (){
                            setState(() {
                              users.removeAt(index);
                            });
                            Navigator.pop(context);
                          },
                        ),
                        FlatButton(
                          child: Text("Tidak"),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        ),
                      ],
                    ));
                  },
                  child: Card(
                    child: Container(
                      margin: EdgeInsets.all(15),
                      child: Row(
                        children: [
                          Container(
                              margin: EdgeInsets.only(right: 20),
                              width: 20,
                              height: 20,
                              child: Icon(Icons.people)),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(users[index].nama, style: TextStyle(fontSize: 12),),
                              Text(users[index].email, style: TextStyle(fontSize: 12),),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),
        ),
      ),
    );
  }
}

class user{
  String nama, email;
  user({required this.nama, required this.email});
}
