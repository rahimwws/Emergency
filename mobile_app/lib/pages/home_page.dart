import 'package:emergencyapp/Provider/ProviderData.dart';
import 'package:emergencyapp/pages/category_info.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:geolocator/geolocator.dart';
import 'package:latlong2/latlong.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  List safeZone = ['БЕЗОПАСНАЯ ЗОНА', 'SAFE ZONE', 'HOWPSYZ ÝERLER'];
  List areYouInEmergency = ['Вы в чрезвычайной ситуации?', 'Are you in Emergency', 'Siz çykgynsyz ýagdaýdamy?'];
  List press = ['Нажмите кнопку ниже, и помощь\nсвяжется с вами в ближайшее время.', 'Press the button below help will\nreach you soon.', 'Aşakdaky düwmä basyň, ýakyn wagtda\nsize kömek eder.'];

  List category = [
    {
      'title': ['Землетрясение', 'Earthquake', 'Ýertitreme'],
      'image': 'lib/images/earthquake.png',
      'desc': [
        '1. Старайтесь сохранять хладнокровие и не паниковать. Держитесь подальше от окон и дверей, от предметов, которые могут упасть на вас, и убедитесь, что вы находитесь у основания дома, где вероятность повреждения минимальна.\n\n2. При более сильном землетрясении необходимо немедленно покинуть здание и найти открытое место.\n\n3. После землетрясения следует обратить внимание на возможность повреждения дома и проверить наличие возможных жертв в вашем окружении.\n\n4. Сделайте необходимые звонки, чтобы помочь нуждающимся.\n\n5. Если вы за рулем автомобиля, притормозите, остановите машину и оставайтесь в ней до окончания землетрясения. Двери должны быть открыты, чтобы при необходимости можно было выйти.\n\n6. Если вы находитесь в горах, избегайте мест с возможной опасностью оползня.',
        '1. Try to keep your cool and not panic. Stay away from windows and doors, from objects that could fall on you, and make sure you are at the base of the house where the chance of damage is minimal.\n\n2. In stronger earthquakes, you must immediately leave the building and find an open space.\n\n3. After an earthquake, you should pay attention to the possibility of damage to the house and check for possible victims in your surroundings.\n\n4. Make the necessary calls to help those in need.\n\n5. If you are driving a car, slow down, stop the car and stay in it until the end of the earthquake. Doors should be kept open so that you can get out if necessary.\n\n6. If you are in the mountains, avoid places with a possible landslide danger.',
        '1. Aljyraňňy däl-de, salkynlygy saklamaga synanyşyň. Penjirelerden we gapylardan, üstüňize düşüp biljek zatlardan uzak duruň we zeper ýetmek ähtimallygy az bolan jaýyň düýbünde bolanyňyza göz ýetiriň.\n\n2. Güýçli ýer titremelerde derrew binadan çykyp, açyk ýer tapmaly.\n\n3. Earthquakeer titremesinden soň, jaýyň zaýalanmagynyň ähtimallygyna üns bermeli we daş-töweregiňizde bolup biljek pidalary barlamaly.\n\n4. Mätäçlere kömek etmek üçin zerur jaň ediň.\n\n5. Maşyn sürýän bolsaňyz, haýal ediň, ulagy saklaň we ýer titremesi gutarýança şol ýerde galyň. Gerek bolsa çykyp bilersiňiz, gapylar açyk bolmaly.\n\n6. Dagda bolsaňyz, süýşmek howpy bolan ýerlerden gaça duruň.'
      ]
    },
    {
      'title': [
        'Наводнение',
        'Flooding',
        'Suw heläkçiligi',
      ],
      'image': 'lib/images/flood.png',
      'desc': [
        '1. Если есть угроза наводнения, соберите важные документы, фотографии и ценные вещи, и положите их высоко.\n\n2. Отключите газ и электричество в доме, если вы не можете это сделать безопасно, вызовите квалифицированного специалиста.\n\n3. Проветрите дом, откройте дверь или окна для облегчения движения воздуха и запаха во время наводнения.\n\n4. Если уровень воды уже высокий или растет быстро, повесьте на дверь красное полотенце, чтобы остальные могли узнать, что дом нуждается в помощи.\n\n5. Если вам придется эвакуироваться, выберите место высоко на холме или другом высоком месте.\n\n6. Помните, что никогда не следует переходить через потоки воды, особенно если вы не знаете глубину и скорость течения. Не стоит заходить в завалы или подтопленные здания.\n\n7. Если вам придется перемещаться в воде, используйте не лодку, а надувной матрас либо палатку, чтобы уменьшить риск переворота.\n\n8. Если вы оказались застрявшим в автомобиле во время наводнения, не пытайтесь преодолеть течение воды. Оставайтесь в машине, надуйте подушку безопасности, запишите  своим именем и адресом на фару и позвоните в полицию.\n\n9. Если вы были в контакте с заброшенными местами или загрязненной водой, обязательно вымойте руки и тело мылом и водой.\n\n10. Следите за новостями в теле-радио режиме и не собирайтесь вернуться в дом, пока не будет объявлено о том, что все безопасно.',
        '1. If there is a threat of flooding, collect important documents, photos, and valuables, and put them high.\n\n2. Turn off the gas and electricity in the house, if you cannot do it safely, call a qualified specialist.\n\n3. Ventilate the house, and open the door or windows to facilitate the movement of air and smell during flooding.\n\n4. If the water level is already high or growing fast, hang a red towel on the door so that others can know that the house needs help.\n\n5. If you have to evacuate, choose a place high on a hill or another high place.\n\n6. Remember that you should never cross over streams of water, especially if you do not know the depth and speed of the current. Do not go into the rubble or flooded buildings.\n\n7. If you have to move in the water, do not use a boat, but an inflatable mattress or tent to reduce the risk of a coup.\n\n8. If you find yourself stuck in a car during a flood, do not try to overcome the flow of water. Stay in the car, inflate the airbag, write your name and address on the headlight, and call the police.\n\n9. If you have been in contact with abandoned places or contaminated water, be sure to wash your hands and body with soap and water.\n\n10. Follow the news in TV-radio mode and do not plan to return to the house until it is announced that everything is safe.',
        '1. Suw basmak howpy bar bolsa, möhüm resminamalary, suratlary we gymmat bahaly zatlary ýygnaň we ýokary goýuň.\n\n2. Jaýdaky gazy we elektrik toguny öçüriň, ygtybarly edip bilmeseňiz, ökde hünärli hünärmen çagyryň.\n\n3. Suw joşanda howanyň we ysyň hereketini ýeňilleşdirmek üçin jaýy şemallaşdyryň, gapyny ýa-da penjireleri açyň.\n\n4. Suwuň derejesi eýýäm ýokary bolsa ýa-da çalt ösýän bolsa, jaýyň kömegine mätäçdigini beýlekiler bilmegi üçin gapyda gyzyl polotensany asyň.\n\n5. Eger ewakuasiýa etmeli bolsaňyz, depäniň üstünde ýa-da başga bir beýik ýerde saýlaň.\n\n6. Esasanam tokyň çuňlugyny we tizligini bilmeseňiz, suw akymlaryndan hiç haçan geçmeli däldigini ýadyňyzdan çykarmaň. Harabalyga ýa-da suw basan binalara girmäň.\n\n7. Suwda hereket etmeli bolsaňyz, agdarlyşyk howpuny azaltmak üçin gaýyk däl-de, çişirilen düşek ýa-da çadyr ulanmaň.\n\n8. Suw joşmasy wagtynda awtoulagda galan bolsaňyz, suw akymyny ýeňip geçmäň. Awtoulagda galyň, howpsuzlyk howa ýassygyny çişiriň, adyňyzy we adresiňizi fara ýazyň we polisiýa jaň ediň.\n\n9. Taşlanan ýerler ýa-da hapalanan suwlar bilen aragatnaşykda bolsaňyz, elleriňizi we bedeniňizi sabyn we suw bilen ýuwuň.\n\n10. Täzelikleri teleýaýlym-radio re modeiminde yzarlaň we hemme zadyň howpsuzdygy yglan edilýänçä, öýe gaýdyp barmagy meýilleşdirmäň.'
      ]
    },
    {
      'title': [
        'Пожар',
        'Fire',
        'Ýangyn',
      ],
      'image': 'lib/images/fire.png',
      'desc': [
        '1. Вызовите пожарных.\n\n2. В случае небольшого возгорания постарайтесь потушить огонь водой, песком, плотной тканью или специальными огнетушащими средствами.\n\n3. Запрещается тушить электроприборы водой.\n\n4.Предупредить других людей о пожаре, не допуская паники.\n\n5. Если пламя значительно распространится, немедленно покиньте помещение. Использование лифтов запрещено.\n\n6. При наличии дыма на пути эвакуации необходимо дышать через влажную ткань, двигаться, пригнувшись к полу.\n\n7. Если покинуть помещение невозможно - оставайтесь в нем, закрыв окна и двери, привлекайте внимание очевидцев через стекло.',
        '1. Call the firemen.\n\n2. In case of a small fire, try to extinguish the fire with water, sand, thick cloth or special extinguishing agents.\n\n3. It is forbidden to extinguish electrical appliances with water.\n\n4.Warn other people about the fire, preventing panic.\n\n5. If the flame spreads significantly, leave the room immediately. The use of elevators is prohibited.\n\n6. If there is smoke along the escape route, you need to breathe through a damp cloth, move, bending down to the floor.\n\n7. If it is impossible to leave the premises - stay in it, closing the windows and doors, attract the attention of eyewitnesses through the glass.',
        '1. Ýangyn söndürijilere jaň ediň.\n\n2. Kiçijik ýangyn bolan bolsa, ody suw, gum, galyň mata ýa-da ýörite söndüriji serişdeler bilen öçürmäge synanyşyň.\n\n3. Elektrik enjamlaryny suw bilen öçürmek gadagandyr.\n\n4. Aljyraňňylygyň öňüni alyp, beýleki adamlara ýangyn barada duýduryş beriň.\n\n5. Ameangyn ep-esli ýaýrasa, derrew otagdan çykyň. Liftleri ulanmak gadagandyr.\n\n6. Gaçyş ýolunda tüsse bar bolsa, çygly mata bilen dem almaly, ýere egilmeli.\n\n7. Jaýdan çykmak mümkin däl bolsa - şol ýerde galyň, penjireleri we gapylary ýapyň, aýna arkaly şaýatlaryň ünsüni özüne çekiň.'
      ]
    },
    {
      'title': ['Ураган', 'Hurricane', 'Tüweleý'],
      'image': 'lib/images/sandstorm.png',
      'desc': ['1. Следуйте указаниям и рекомендациям местных властей и спасательных служб. Их инструкции могут спасти вашу жизнь.\n\n2. Ищите спокойное и защищенное место. Идеальным местом будет подвал или другое помещение ниже уровня земли. Если такого нет, то постарайтесь найти защищенное место в доме, подальше от окон и дверей, например, в ванной комнате, где нет окон.\n\n3. Если вам придется эвакуироваться, заранее спланируйте маршрут и подготовьте аварийный рюкзак с необходимыми вещами и документами.\n\n4. Не выходите из укрытия, пока не пройдет ураган. Ураганы могут длиться несколько часов, поэтому будьте готовы пробыть в укрытии вероятно долгое время.\n\n5. Подготовьте необходимые запасы. В укрытии вам может понадобиться вода (1 галлон воды на человека в день), пища, свечи, фонарики, батарейки, аптечка первой помощи, радио, туалетная бумага и полотенца.\n\n6. Заранее перезарядите мобильный телефон и сохраните его заряд. Если у вас есть запасная батарея, возьмите ее с собой.\n\n7. Слушайте радиостанции и следите за новостями. Будьте готовы к тому, что связь может оказаться недоступной.\n\n8. Главное - не паникуйте! Будьте спокойны и продумайте каждое решение. В ситуации урагана, важно сохранять хладнокровие и действовать в соответствии с инструкциями.', '1. Follow the directions and recommendations of local authorities and rescue services. Their instructions could save your life.\n\n2. Look for a quiet and protected place. The ideal place would be a basement or other room below ground level. If not, then try to find a protected place in the house, away from windows and doors, for example, in a bathroom where there are no windows.\n\n3. If you have to evacuate, plan your route in advance and prepare an emergency backpack with the necessary things and documents.\n\n4. Do not leave the shelter until the hurricane has passed. Hurricanes can last several hours, so be prepared to stay in the shelter for probably a long time.\n\n5. Prepare the necessary supplies. In the shelter, you may need water (1 gallon of water per person per day), food, candles, flashlights, batteries, first aid kit, radio, toilet paper, and towels.\n\n6. Recharge your mobile phone in advance and save its charge. If you have a spare battery, take it with you.\n\n7. Listen to radio stations and follow the news. Be prepared for the fact that the connection may not be available.\n\n8. The main thing - do not panic! Be calm and think through every decision. In a hurricane situation, it is important to keep your cool and act according to instructions.', '1. Häkimiýetleriň we halas ediş hyzmatlarynyň görkezmelerine we tekliplerine eýeriň. Olaryň görkezmeleri siziň janyňyzy halas edip biler.\n\n2.Howypsyz yeri  we goralýan ýer gözläň. Iň amatly ýerzemin ýa-da ýer derejesinden başga otag bolar.  Penjireden we gapydan uzakda, meselem, penjiresi bolmadyk hammamda goragly ýer tapmaga synanyşyň.\n\n3. Ewakuasiýa etmeli bolsaňyz, ýoluňyzy öňünden meýilleşdiriň we zerur zatlar we resminamalar bilen gyssagly sumka taýýarlaň. 4. Tupan geçýänçä gaçybatalgadan çykmaň. Tupan birnäçe sagat dowam edip biler, şonuň üçin uzak wagtlap gaçybatalga bolmaga taýyn boluň.\n\n5. Zerur enjamlary taýýarlaň. Başpena ýerinde size suw (adam başyna 1 gallon suw), iýmit, şem, çyralar, batareýalar, ilkinji kömek enjamy, radio, hajathana kagyzy we polotensalar gerek bolup biler.\n\n6. Jübi telefonyňyzy öňünden güýçlendiriň we zarýadyny tygşytlaň. Eger ätiýaçlyk batareýaňyz bar bolsa, ýanyňyz bilen alyň.\n\n7. Radio stansiýalaryny diňläň we habarlary yzarlaň. Baglanyşygyň elýeterli bolmazlygyna taýyn boluň.\n\n8. Esasy zat - howsala düşmäň! Arkaýyn boluň we her karar bilen pikirleniň. Tupan ýagdaýynda sowukganlylygy saklamak we görkezmelere görä hereket etmek möhümdir.']
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF4F1F4),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          children: [
            Column(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  width: MediaQuery.of(context).size.width - 50,
                  height: 535,
                  decoration: BoxDecoration(
                      color: Color(0xFFF4F1F4),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 10,
                            offset: Offset(0, 10))
                      ]),
                  child: Column(
                    children: [
                      const SizedBox(height: 35),
                      Consumer<ProviderData>(builder: ((context, value, child) {
                        return Text(
                          '${areYouInEmergency[value.a]}',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 25),
                        );
                      })),
                      const SizedBox(height: 10),
                      Consumer<ProviderData>(
                        builder: ((context, value, child) {
                          return Text(
                        '${press[value.a]}',
                        style: TextStyle(fontSize: 13),
                        textAlign: TextAlign.center,
                      );
                        })
                      ),
                      const SizedBox(height: 70),
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          width: 200,
                          height: 200,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(500),
                              color: Color(0xFFDC4848).withOpacity(0.4),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xFFDC4848).withOpacity(0.2),
                                  blurRadius: 0,
                                  spreadRadius: 25,
                                )
                              ]),
                          child: Container(
                              width: 140,
                              height: 140,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(500),
                                gradient: LinearGradient(colors: [
                                  Color(0xFFDC4848),
                                  Color.fromARGB(255, 236, 128, 124)
                                ]),
                              ),
                              child: Text(
                                'SOS',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 35),
                              )),
                        ),
                      ),
                      const SizedBox(height: 50),
                      SizedBox(
                        height: 55,
                        width: MediaQuery.of(context).size.width,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF7AA874),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(40))),
                            onPressed: () {
                              Navigator.pushNamed(context, '/SafeZone');
                            },
                            child: Consumer<ProviderData>(
                              builder: (context, value, child) {
                                return Text('${safeZone[value.a]}',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18));
                              },
                            )),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Consumer<ProviderData>(builder: ((context, value, child) {
                  return GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: category.length,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          mainAxisSpacing: 20,
                          crossAxisSpacing: 20),
                      itemBuilder: ((context, index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CategoryInfo(
                                        title: category[index]['title']
                                            [value.a],
                                        desc: category[index]['desc']
                                            [value.a])));
                          },
                          child: Container(
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10)),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Text('${category[index]['title'][value.a]}',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold)),
                                Image.asset(
                                  category[index]['image'],
                                  width: 80,
                                )
                              ],
                            ),
                          ),
                        );
                      }));
                })),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: 55,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF7AA874)),
                      onPressed: () {
                        Navigator.pushNamed(context, '/ChatBot');
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'CHAT BOT',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16),
                          ),
                          const SizedBox(width: 10),
                          Image.asset(
                            'lib/images/chatbot.png',
                            width: 30,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      )),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     Provider.of<ProviderData>(context, listen: false).onChangeCount();
      //   },
      //   child: Text('LG'),
      // ),
    );
  }
}
