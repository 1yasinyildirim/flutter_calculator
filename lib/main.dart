import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calculator",
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hesap Makinesi'),
      ),
      body: MyHomePageState(),
    );
  }
}

class MyHomePageState extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}
//ilk bastan buraya kadar hazir geliyor

class _MyHomePageState extends State<MyHomePageState> {
  num s1 = 0, s2 = 0, sonuc = 0; //değişkenleri tanımlıyoruz
  TextEditingController t1 = TextEditingController();
  TextEditingController t2 = TextEditingController();

  // Textfield 1 ve Textfield 2 için inputlarımızı alıyoruz.


  sayiTopla() {
    setState(() {
      s1 = num.parse(t1.text); //sayi 1 in girdisini aliyoruz.
      s2 = num.parse(t2.text); //sayi 2 nin girdisini aliyoruz.
      sonuc = s1 + s2; //sonuç
    });
  }

  sayiCikar() {
    setState(() {
      s1 = num.parse(t1.text); //sayi 1 in girdisini aliyoruz.
      s2 = num.parse(t2.text); //sayi 2 nin girdisini aliyoruz.
      sonuc = s1 - s2; //sonuc
    });
  }

  sayiCarp() {
    setState(() {
      s1 = num.parse(t1.text); //sayi 1 in girdisini aliyoruz.
      s2 = num.parse(t2.text); //sayi 2 nin girdisini aliyoruz.
      sonuc = s1 * s2; //sonuc
    });
  }

  sayiBol() {
    setState(() {
      s1 = num.parse(t1.text); //sayi 1 in girdisini aliyoruz.
      s2 = num.parse(t2.text); //sayi 2 nin girdisini aliyoruz.
      sonuc = s1 / s2; //sonuc
    });
  }

  @override
  Widget build(BuildContext context) {
    return
    Container( //herşey container içinde
    width: double.maxFinite, //maximum genişlik
    height: double.maxFinite, // maximum yükseklik
      child: Center( //ortaya hizalı
        child: Column( //satır şeklinde wigdetimizi oluşturuyoruz
            mainAxisAlignment: MainAxisAlignment.spaceAround, // aralıklı yapıyoruz.
            mainAxisSize: MainAxisSize.max, //Axis kısmı max yapiliyor.
            crossAxisAlignment: CrossAxisAlignment.center, // Merkeze alıyoruz
          children: <Widget>[ //birden fazla child için bunu kullanıyoruz.
            
            TextField(
              keyboardType: TextInputType.number, //sadece sayı
              controller: t1, //kullanıcıdan alınan değeri kullanmak için textfield içerisinde kullanıyoruz bunu
            ),
            TextField(
              keyboardType: TextInputType.number,
              controller: t2, //kullanıcıdan alınan değeri kullanmak için textfield içerisinde kullanıyoruz bunu
            ),
            RaisedButton(
              onPressed: sayiTopla,//Bu Buton için kullanacağımız fonksiyon
              child: Text("+"), //Butonun içindeki yazı
            ),
            RaisedButton(
              onPressed: sayiCikar,//Bu Buton için kullanacağımız fonksiyon
              child: Text("-"), //Butonun içindeki yazı
            ),
            RaisedButton(
              onPressed: sayiCarp, //Bu Buton için kullanacağımız fonksiyon
              child: Text("*"), //Butonun içindeki yazı
            ),
            RaisedButton(
              onPressed: sayiBol,//Bu Buton için kullanacağımız fonksiyon
              child: Text("/"),//Butonun içindeki yazı
            ),
            Text("$sonuc",//Sonuç neyse onu veriyor.
                  style: TextStyle(
                      color: Colors.green, //yazı rengimiz yeşil
                      fontSize: 18.0, // yazı büyüklüğümüz 18
                      fontWeight: FontWeight.bold, //Yazımız Kalın
                      letterSpacing: 5.0 //kelimeler arası boşluk
                  ),
            ),
          ],
        ),
      ),
    );
  }
}
