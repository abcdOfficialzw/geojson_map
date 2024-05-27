import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map_geojson/flutter_map_geojson.dart';
// ignore: depend_on_referenced_packages
import 'package:latlong2/latlong.dart';

String testGeoJson = '''{
"type": "FeatureCollection",
"name": "waterline kaguvi phase 2",
"crs": { "type": "name", "properties": { "name": "urn:ogc:def:crs:OGC:1.3:CRS84" } },
"features": [
{ "type": "Feature", "properties": { "diameter": 200, "id": 1 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.12872, -18.11521 ], [ 30.12747, -18.11394 ], [ 30.12829, -18.11325 ], [ 30.12793, -18.1129 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 150, "id": 2 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.12793, -18.1129 ], [ 30.13074, -18.11037 ], [ 30.13231, -18.10902 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 100, "id": 3 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.12793, -18.1129 ], [ 30.12736, -18.11334 ], [ 30.12263, -18.11417 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 150, "id": 4 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.13383, -18.11011 ], [ 30.13231, -18.10902 ], [ 30.13049, -18.10708 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 150, "id": 5 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.12632, -18.11352 ], [ 30.12644, -18.11308 ], [ 30.12642, -18.11291 ], [ 30.12715, -18.11116 ], [ 30.12546, -18.10933 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 150, "id": 6 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.12586, -18.10977 ], [ 30.12692, -18.10879 ], [ 30.12731, -18.10843 ], [ 30.12748, -18.10829 ], [ 30.12788, -18.10795 ], [ 30.12866, -18.10876 ], [ 30.13049, -18.10708 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 100, "id": 7 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.13092, -18.10754 ], [ 30.12936, -18.10895 ], [ 30.13073, -18.11037 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 75, "id": 8 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.13003, -18.10835 ], [ 30.13143, -18.10978 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 75, "id": 9 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.13162, -18.10828 ], [ 30.13137, -18.10854 ], [ 30.13119, -18.10874 ], [ 30.13149, -18.10908 ], [ 30.13156, -18.10916 ], [ 30.13119, -18.10874 ], [ 30.13066, -18.10818 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 75, "id": 10 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.13007, -18.10968 ], [ 30.13033, -18.10947 ], [ 30.12985, -18.10898 ], [ 30.13033, -18.10947 ], [ 30.13076, -18.10989 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 75, "id": 11 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.12877, -18.11214 ], [ 30.12771, -18.1111 ], [ 30.12809, -18.1106 ], [ 30.12847, -18.11032 ], [ 30.12881, -18.11005 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 75, "id": 12 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.12722, -18.11194 ], [ 30.12758, -18.11221 ], [ 30.1278, -18.11245 ], [ 30.12855, -18.11186 ], [ 30.1295, -18.11104 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 75, "id": 13 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.12974, -18.11126 ], [ 30.1295, -18.11104 ], [ 30.1289, -18.11042 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 75, "id": 14 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.12908, -18.1114 ], [ 30.12849, -18.11078 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 75, "id": 15 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.12822, -18.11211 ], [ 30.12751, -18.1114 ], [ 30.12771, -18.1111 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 75, "id": 16 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.12632, -18.10934 ], [ 30.12709, -18.11013 ], [ 30.12839, -18.10893 ], [ 30.128, -18.10856 ], [ 30.12692, -18.10952 ], [ 30.12655, -18.10913 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 100, "id": 17 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.12669, -18.11228 ], [ 30.12562, -18.11182 ], [ 30.12443, -18.11089 ], [ 30.12308, -18.11191 ], [ 30.12343, -18.11345 ], [ 30.12503, -18.11314 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 75, "id": 18 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.12483, -18.1112 ], [ 30.12406, -18.11188 ], [ 30.12419, -18.11274 ], [ 30.1252, -18.11259 ], [ 30.12518, -18.11235 ], [ 30.1255, -18.11173 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 75, "id": 19 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.12542, -18.11368 ], [ 30.12574, -18.11298 ], [ 30.126, -18.11239 ] ] ] } },
{ "type": "Feature", "properties": { "diameter": 75, "id": 20 }, "geometry": { "type": "MultiLineString", "coordinates": [ [ [ 30.12323, -18.11256 ], [ 30.12211, -18.11271 ], [ 30.12211, -18.11306 ], [ 30.12217, -18.11331 ], [ 30.12297, -18.11318 ] ] ] } }
]
}
''';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'GeoJson MAP'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // instantiate parser, use the defaults
  GeoJsonParser geoJsonParser = GeoJsonParser(
    defaultMarkerColor: Colors.red,
    defaultPolygonBorderColor: Colors.red,
    defaultPolygonFillColor: Colors.red.withOpacity(0.1),
    defaultCircleMarkerColor: Colors.red.withOpacity(0.25),
  );

  bool loadingData = false;

  bool myFilterFunction(Map<String, dynamic> properties) {
    if (properties['section'].toString().contains('Point M-4')) {
      return false;
    } else {
      return true;
    }
  }

  // this is callback that gets executed when user taps the marker
  void onTapMarkerFunction(Map<String, dynamic> map) {
    // ignore: avoid_print
    print('onTapMarkerFunction: $map');
  }

  Future<void> processData() async {
    // parse a small test geoJson
    // normally one would use http to access geojson on web and this is
    // the reason why this funcyion is async.
    geoJsonParser.parseGeoJsonAsString(testGeoJson);
  }

  @override
  void initState() {
    geoJsonParser.setDefaultMarkerTapCallback(onTapMarkerFunction);
    geoJsonParser.filterFunction = myFilterFunction;
    loadingData = true;
    Stopwatch stopwatch2 = Stopwatch()..start();
    processData().then((_) {
      setState(() {
        loadingData = false;
      });
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('GeoJson Processing time: ${stopwatch2.elapsed}'),
          duration: const Duration(milliseconds: 5000),
          behavior: SnackBarBehavior.floating,
          backgroundColor: Colors.green,
        ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.title)),
        body: FlutterMap(
          mapController: MapController(),
          options: const MapOptions(
            initialCenter: LatLng(-18.1380, 30.1474),
            initialZoom: 14,
          ),
          children: [
            TileLayer(
              urlTemplate: "https://tile.openstreetmap.org/{z}/{x}/{y}.png",
              subdomains: const ['a', 'b', 'c'],
            ),
            //userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            loadingData
                ? const Center(child: CircularProgressIndicator())
                : PolygonLayer(
                    polygons: geoJsonParser.polygons,
                  ),
            if (!loadingData) PolylineLayer(polylines: geoJsonParser.polylines),
            if (!loadingData) MarkerLayer(markers: geoJsonParser.markers),
            if (!loadingData) CircleLayer(circles: geoJsonParser.circles),
          ],
        ));
  }
}
