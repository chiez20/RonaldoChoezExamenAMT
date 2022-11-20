import 'avion.dart';

class Backend {

  static final Backend _backend = Backend._internal();

  factory Backend() {
    return _backend;
  }

  Backend._internal();

  final _aviones=[
     Avion(id: 1, nombre: ' F-35 Lightning II', capacidad: '1 Persona', velocidad:'2.200 Km' , valor: '382 000 Millones ' , informacion: 'El objetivo de dicho proyecto era el de desarrollar un avión de diseño de tecnología furtiva, de cara al reemplazo de todos los aviones de caza y ataque ligeros del Departamento de Defensa de los Estados Unidos.'),
      Avion(id: 2, nombre: 'F-22 Raptor', capacidad: '1 Persona', velocidad: '2.335 km/h' , valor: '339 millones', informacion: 'El Lockheed Martin F-22 Raptor es el avión más avanzado que existe hoy en día en servicio, con el permiso del F-35, el Su-57 y el súper caza furtivo J-20 chino en desarrollo.'),
      Avion(id: 3, nombre: 'Eurofighter Typhoon', capacidad: ' 2 Personas', velocidad: 'Mach 1.6 ' , valor: '200 Millones', informacion: 'El Eurofighter Typhoon es un caza polivalente, bimotor, de gran maniobrabilidad, diseñado y construido por el consorcio de empresas europeas Eurofighter GmbH, creado en 1983 '),
      Avion(id: 4, nombre: 'Sukhoi Su-35', capacidad: ' 2 Personas', velocidad: '2,778 km/h' , valor: '40 Millones a 50 Millones', informacion: 'El Sukhoi Su-35,conocido inicialmente como Su-27M, es un caza polivalente monoplaza y bimotor desarrollado por la compañía rusa Sukhoi como un derivado del caza de superioridad aérea Su-27. Comenzó a ser desarrollado en los años 1980'),
       Avion(id: 5, nombre: 'F/A-18E/F Super Hornet', capacidad: '2 Personas.', velocidad: '1,915 km/h', valor: '66 Millones', informacion: 'El Boeing F/A-18 Super Hornet es un caza polivalente, bimotor, de cuarta generación++ de origen estadounidense y con capacidad todo tiempo, diseñado para ser embarcado en portaaviones.'),
  ];


 List<Avion> getAviones(){
   return _aviones;
 }
 


}
