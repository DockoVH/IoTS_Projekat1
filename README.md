# IoTS_Projekat1

https://ieee-dataport.org/open-access/airiot-iot-based-air-pollution-monitoring

### DataManager
  * Servis zadužen za upravljanje podacima. Sadrži sledeće gRPC servise:
  
    * VratiSensorPodatak - Pribavlja jedan podatak iz baze sa prosledjenim ID-em.
    * SviSenzorPodaci - Pribavlja sve podatke iz baze.
    * DodajSenzorPodatak - Dodaje novi podatak u bazu.
    * IzmeniSenzorPodatak - Ažurira podatke u bazi.
    * IzbrisiSenzorPodatak - Briše podatak iz baze.
    * SviSenzorPodaciPeriod - Vraća sve podatke iz baze u zadatom vremenskom periodu.

### Gateway
  * Ovaj servis predstavlja ulaznu tačku u sistem, on prima podatke sa senzora i prosledjuje ih dalje.

    * VratiSenzorPodatak - Poziva VratiSenzorPodatak gRPC metod.
    * SviSenzorPodataci - Poziva SviSenzorPodataci gRPC metod.
    * DodajSenzorPodatak - Poziva DodajSenzorPodatak gRPC metod.
    * IzmeniSenzorPodatak/id - Poziva IzmeniSenzorPodatak gRPC metod.
    * IzbrisiSenzorPodatak/id - Poziva IzbrisiSenzorPodatak gRPC metod.
    * MinTemperatura/ - Pribavlja podatak sa najmanjom temperaturom u zadatom vremenskom periodu.
    * MaxTemperatura/ - Pribavlja podatak sa najvećom temperaturom u zadatom vremenskom periodu.
    * AvgTemperatura/ - Pribavlja prosečnu temperaturu podataka u zadatom vremensom periodu.
    * SumTemperatura/ - Pribavlja zbir vrednosti temperature u zadatom vremensom periodu.
    * MinVlaznostVazduha/ - Pribavlja podatak sa najmanjom vrednosti vlažnosti vazduha u zadatom vremenskom periodu.
    * MaxVlaznostVazduha/ - Pribavlja podatak sa najvećom vrednosti vlažnosti vazduha u zadatom vremenskom periodu.
    * AvgVlaznostVazduha/ - Pribavlja prosečnu vrednost vlažnosti vazduha u zadatom vremensom periodu.
    * SumVlaznostVazduha/ - Pribavlja zbir vrednosti vlažnosti vazduha u zadatom vremensom periodu.
    * MinVlaznostVazduha/ - Pribavlja podatak sa najmanjom količinom PM2.5 čestica u zadatom vremenskom periodu.
    * MaxVlaznostVazduha/ - Pribavlja podatak sa najvećom količinom PM2.5 čestica u zadatom vremenskom periodu.
    * AvgVlaznostVazduha/ - Pribavlja prosečnu vrednost količine PM2.5 čestica u zadatom vremensom periodu.
    * SumVlaznostVazduha/ - Pribavlja zbir vrednosti količine PM2.5 čestica u zadatom vremensom periodu.
    * MinVlaznostVazduha/ - Pribavlja podatak sa najmanjom količinom PM10 čestica u zadatom vremenskom periodu.
    * MaxVlaznostVazduha/ - Pribavlja podatak sa najvećom količinom PM10 čestica u zadatom vremenskom periodu.
    * AvgVlaznostVazduha/ - Pribavlja prosečnu vrednost količine PM10 čestica u zadatom vremensom periodu.
    * SumVlaznostVazduha/ - Pribavlja zbir vrednosti količine PM10 čestica u zadatom vremensom periodu.

### SensorGenerator
  * Služi za simuliranje rada senzora. Čita podatke iz fajlova i prosledjuje ih na Gateway.
