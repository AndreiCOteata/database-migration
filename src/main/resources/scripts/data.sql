INSERT INTO public.city(
    id, name, postal_code, country_id)
VALUES
    (1, 'Sinaia', 106100, 1),
    (2, 'Poiana Brasov', 500002, 1),
    (3, 'Sovata', 545500, 1),
    (4, 'Mamaia', 900001, 1),
    (5, 'Paris', 75000, 2),
    (6, 'Lyon', 69000, 2),
    (7, 'Niche', 06050, 2),
    (8, 'Cannes', 06600, 2),
    (9, 'London', 66000, 3),
    (10, 'Manchester', 88000, 3);


INSERT INTO public.company(
    id, name, vat_id, email, city_id, details, is_active)
VALUES
    (1, 'Booking', 1, 'booking@yahoo.com', 1, 'Some details', TRUE),
    (2, 'TravelComp', 2, 'travel.comp@yahoo.com', 5, 'Another details', TRUE),
    (3, 'PriceLine', 3, 'PriceLine@yahoo.com', 2, 'details', TRUE);


INSERT INTO public.hotel(
    id, name, description, is_active, company_id, city_id, category_id, checkin_date, checkout_date)
VALUES
    (1, 'Ensa Bradet', 'Situată în Sovata, Ensana Bradet oferă o gamă variată de servicii și tratamente, precum și o serie de activități de agrement. WiFi este gratuit în zonele publice.', TRUE, 3, 3, 4, 46800000, 43200000),
    (2, 'Alpin Resort Hotel', 'Hotelul Alpin Resort, situat în centrul stațiunii Poiana Brașov, la 10 minute de mers pe jos de pârtiile de schi, pune la dispoziție unități de cazare cu acces gratuit la o piscină semi-olimpică.', TRUE, 2, 2, 3, 46800000, 43200000),
    (3, 'Hotel Sinaia', 'Hotelul Rina Sinaia are o poziţie centrală, chiar lângă Parcul Dimitrie Ghica, pe strada comercială principală.', TRUE, 2, 1, 4, 46800000, 43200000),
    (4, 'Iaki Conference & Spa Hotel', 'Aflat la doar 20 de metri de plaja din Mamaia, hotelul Iaki oferă acces gratuit la o piscină sezonieră în aer liber, un restaurant sezonier cu terasă de vară', FALSE, 1, 4, 2, 46800000, 43200000),
    (5, 'La Meurice', 'Hotelul Le Meurice se află într-un palat din centrul Parisului. Oferă un restaurant cu 2 stele Michelin, precum şi un centru de fitness şi spa, cu tratamente de masaj.', TRUE, 1, 5, 5, 46800000, 43200000),
    (6, 'Radisson Blu Hotel', 'Situat la 300 de metri de gara Part-Dieu, acest hotel are un bar-restaurant cu vedere panoramică la Lyon de la etajul 32 al turnului emblematic Part Dieu.', TRUE, 2, 6, 2, 46800000, 43200000),
    (7, 'Heliopic Hotel & Spa', 'Hôtel LHeliopic Sweet and Spa este situat în Chamonix-Mont-Blanc și oferă un centru spa de 500 mp, cu baie de aburi turcească, peșteră de gheață, piscină interioară, tepidarium și saună.', TRUE, 3, 7, 3, 46800000, 43200000),
    (8, 'Hotel Martinez', 'Hotel Martinez - in the Unbound Collection by Hyatt, de 5 stele, este situat pe faimosul bulevard La Croisette din Cannes şi are plajă privată, disponibilă la un cost suplimentar.', TRUE, 1, 8, 3, 46800000, 43200000),
    (9, 'Strand Palace Hotel', 'Hotelul Strand Palace a fost inaugurat în anul 1909 și se află în zona West End din Londra, la aproximativ 700 de metri de teatrele Adelphi și Vaudeville.', TRUE, 3, 9, 1, 46800000, 43200000),
    (10, 'The Midland', 'The Midland is an award-winning, 4-star luxury hotel with a spa in Manchester city centre. It offers stylish, air-conditioned rooms with free WiFi.', TRUE, 2, 10, 2, 46800000, 43200000);

INSERT INTO public.room_description
(id, room_type_id, price, description, number_of_rooms)
VALUES
    (1, 1, 20, 'E foarte faina sa stai', 16 ),
    (2, 1, 40, 'Poti sa dormi linistit ca nu te deranjeaza nimeni', 10 ),
    (3, 1, 140, 'Nu primesti mic-dejun la pat', 22 ),
    (4, 1, 120, 'Primesti mic-dejun la pat, daca ai cascavalul', 6 ),
    (5, 1, 56, 'Peretii sunt subtiri', 11 ),
    (6, 1, 33, 'Ultima data cand cineva a comentat de camerele astea a fost data disparut', 13 ),
    (7, 1, 14, 'La ora 3 dimineata se aud zgomote dar daca dormi deja nu te dernajeaza', 4 ),
    (8, 1, 110, 'Minibar-ul nu e gratis', 19 ),
    (9, 1, 140, 'Daca da-i tips facem mai putin zgomot', 22 ),
    (10, 1, 140, 'Eu n-as deschide dulapul in locul tau', 22 ),
    (11, 2, 209, 'Se da stingerea la 10', 14 ),
    (12, 2, 180, 'Double = 2', 10 ),
    (13, 2, 190, 'Va rog nu mai furati prosoapele', 9 ),
    (14, 2, 70, 'Dusul nu merge de aia pretul e 70 pe camera', 14 ),
    (15, 2, 100, 'Cameristele sunt judgemental', 15 ),
    (16, 2, 190, 'Lux nu gluma', 12 ),
    (17, 2, 210, 'Cand sunt puterea creste', 9 ),
    (18, 2, 210, 'Cand sunt puterea creste', 17 ),
    (19, 2, 170, 'Avem review-uri bune... de la angajati', 17 ),
    (20, 3, 370, 'Queen baby, lux', 9 ),
    (21, 4, 370, 'Fells like you own the world', 9 ),
    (22, 5, 890, 'Vino cu toata familia', 3 ),
    (23, 5, 890, 'Vino cu toata familia', 3 ),
    (24, 3, 400, 'Lux', 3 ),
    (25, 4, 400, 'Lux', 6 );

INSERT INTO public.room
(id, name, hotel_id, room_description_id)
VALUES
    (1, 'Camera Single', 1, 1),
    (2, 'Camera Double', 1, 11),
    (3, 'Camera Queen', 1, 20),
    (4, 'Camera Single', 2, 2),
    (5, 'Camera Single', 3, 3),
    (6, 'Camera Single', 4, 4),
    (7, 'Camera Single', 5, 5),
    (8, 'Camera Single', 6, 6),
    (9, 'Camera Single', 7, 7),
    (10, 'Camera Single', 8, 8),
    (11, 'Camera Single', 9, 9),
    (12, 'Camera Single', 10, 10),
    (13, 'Camera Double', 2, 12),
    (14, 'Camera Double', 3, 13),
    (15, 'Camera Double', 4, 14),
    (16, 'Camera Double', 5, 15),
    (17, 'Camera Double', 6, 16),
    (18, 'Camera Double', 7, 17),
    (19, 'Camera Double', 8, 18),
    (20, 'Camera Double', 9, 19),
    (21, 'Camera Double', 4, 21),
    (22, 'Camera Double', 7, 22),
    (23, 'Camera Double', 3, 23),
    (24, 'Camera Double', 3, 24),
    (25, 'Camera Double', 4, 25);