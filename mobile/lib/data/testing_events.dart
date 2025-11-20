import 'package:mobile/model/event_summary.dart';
import 'package:mobile/model/event_details.dart';
import 'package:mobile/model/fight.dart';
import 'package:mobile/model/fighter.dart';

List<EventSummary> testingEvents = [
  EventSummary(
    eventName: "UFC Fight Night: Bonfim vs. Brown",
    arena: "UFC APEX",
    location: "Las Vegas, NV",
    date: DateTime(2025, 11, 8),
  ),
  EventSummary(
    eventName: "UFC Fight Night: Garcia vs. Onama",
    arena: "UFC APEX",
    location: "Las Vegas, NV",
    date: DateTime(2025, 11, 1),
  ),
  EventSummary(
    eventName: "UFC 321: Aspinall vs. Gane",
    arena: "Etihad Arena",
    location: "Abu Dhabi, United Arab Emirates",
    date: DateTime(2025, 10, 25),
  ),
  EventSummary(
    eventName: "UFC Fight Night: de Ridder vs. Allen",
    arena: "Rogers Arena",
    location: "Vancouver, BC, Canada",
    date: DateTime(2025, 10, 18),
  ),
  EventSummary(
    eventName: "Dana White's Contender Series: Season 9, Week 10",
    arena: "UFC APEX",
    location: "Las Vegas, NV",
    date: DateTime(2025, 10, 15),
  ),
  EventSummary(
    eventName: "UFC Fight Night: Oliveira vs. Gamrot",
    arena: "Farmasi Arena",
    location: "Rio de Janeiro, Brazil",
    date: DateTime(2025, 10, 11),
  ),
  EventSummary(
    eventName: "Dana White's Contender Series: Season 9, Week 9",
    arena: "UFC APEX",
    location: "Las Vegas, NV",
    date: DateTime(2025, 10, 8),
  ),
  EventSummary(
    eventName: "UFC 320: Ankalaev vs. Pereira 2",
    arena: "T-Mobile Arena",
    location: "Las Vegas, NV",
    date: DateTime(2025, 10, 5),
  ),
  EventSummary(
    eventName: "Dana White's Contender Series: Season 9, Week 8",
    arena: "UFC APEX",
    location: "Las Vegas, NV",
    date: DateTime(2025, 10, 1),
  ),
  EventSummary(
    eventName: "UFC Fight Night: Ulberg vs. Reyes",
    arena: "RAC Arena",
    location: "Perth, WA, Australia",
    date: DateTime(2025, 9, 28),
  ),
  EventSummary(
    eventName: "Dana White's Contender Series: Season 9, Week 7",
    arena: "UFC APEX",
    location: "Las Vegas, NV",
    date: DateTime(2025, 9, 24),
  ),
  EventSummary(
    eventName: "Dana White's Contender Series: Season 9, Week 6",
    arena: "UFC APEX",
    location: "Las Vegas, NV",
    date: DateTime(2025, 9, 17),
  ),
  EventSummary(
    eventName: "Noche UFC: Lopes vs. Silva",
    arena: "Frost Bank Center",
    location: "San Antonio, TX",
    date: DateTime(2025, 9, 13),
  ),
  EventSummary(
    eventName: "Dana White's Contender Series: Season 9, Week 5",
    arena: "UFC APEX",
    location: "Las Vegas, NV",
    date: DateTime(2025, 9, 10),
  ),
  EventSummary(
    eventName: "UFC Fight Night: Imavov vs. Borralho",
    arena: "Accor Arena",
    location: "Paris, France",
    date: DateTime(2025, 9, 6),
  ),
  EventSummary(
    eventName: "Dana White's Contender Series: Season 9, Week 4",
    arena: "UFC APEX",
    location: "Las Vegas, NV",
    date: DateTime(2025, 9, 3),
  ),
];

final List<EventDetails> testingEventDetails = [
  // --- Numerado: UFC 321: Aspinall vs. Gane (incluye early prelims) ---
  EventDetails(
    eventSummary: EventSummary(
      eventName: "UFC 321: Aspinall vs. Gane",
      arena: "Etihad Arena",
      location: "Abu Dhabi, United Arab Emirates",
      date: DateTime(2025, 10, 25),
    ),
    // Horarios (solo hora, como string)
    mainCardStart: "22:00",
    prelimsStart: "19:30",
    earlyPrelimsStart: "17:30",

    // Main Card
    mainCardFights: [
      Fight(
        fighter1: Fighter(
          name: "Tom",
          lastName: "Aspinall",
          record: "13-3-0",
          nationality: "England",
        ),
        fighter2: Fighter(
          name: "Ciryl",
          lastName: "Gane",
          record: "11-3-0",
          nationality: "France",
        ),
        weightClass: "Heavyweight",
        odds: Odds(fighter1: "+120", fighter2: "-140"),
      ),
      Fight(
        fighter1: Fighter(
          name: "Islam",
          lastName: "Makhachev",
          record: "24-1-0",
          nationality: "Russia",
        ),
        fighter2: Fighter(
          name: "Beneil",
          lastName: "Dariush",
          record: "21-6-0",
          nationality: "USA",
        ),
        weightClass: "Lightweight",
        odds: Odds(fighter1: "-300", fighter2: "+240"),
      ),
      // Añade más peleas main card si quieres...
    ],

    // Prelims
    prelimnsFights: [
      Fight(
        fighter1: Fighter(
          name: "Jack",
          lastName: "Shore",
          record: "15-0-0",
          nationality: "Wales",
        ),
        fighter2: Fighter(
          name: "Gavin",
          lastName: "Tucker",
          record: "11-2-0",
          nationality: "Canada",
        ),
        weightClass: "Featherweight",
        odds: Odds(fighter1: "-150", fighter2: "+130"),
      ),
      Fight(
        fighter1: Fighter(
          name: "Marcin",
          lastName: "Prachnio",
          record: "17-7-0",
          nationality: "Poland",
        ),
        fighter2: Fighter(
          name: "Andrei",
          lastName: "Arlovski",
          record: "31-21-0",
          nationality: "Belarus",
        ),
        weightClass: "Light Heavyweight",
        odds: Odds(fighter1: "+110", fighter2: "-120"),
      ),
    ],

    // Early Prelims (solo en eventos numerados)
    earlyPrelimsFights: [
      Fight(
        fighter1: Fighter(
          name: "Young",
          lastName: "Prospect",
          record: "8-1-0",
          nationality: "Brazil",
        ),
        fighter2: Fighter(
          name: "Seasoned",
          lastName: "Veteran",
          record: "18-9-0",
          nationality: "USA",
        ),
        weightClass: "Welterweight",
        odds: Odds(fighter1: "+350", fighter2: "-450"),
      ),
      Fight(
        fighter1: Fighter(
          name: "Local",
          lastName: "Hero",
          record: "10-3-0",
          nationality: "UAE",
        ),
        fighter2: Fighter(
          name: "International",
          lastName: "Challenger",
          record: "12-4-0",
          nationality: "Australia",
        ),
        weightClass: "Middleweight",
        odds: Odds(fighter1: "-110", fighter2: "+100"),
      ),
    ],
  ),

  // --- Fight Night: Bonfim vs. Brown (sin early prelims) ---
  EventDetails(
    eventSummary: EventSummary(
      eventName: "UFC Fight Night: Bonfim vs. Brown",
      arena: "UFC APEX",
      location: "Las Vegas, NV",
      date: DateTime(2025, 11, 8),
    ),
    mainCardStart: "21:00",
    prelimsStart: "18:30",
    earlyPrelimsStart: null, // Fight Night - no early prelims

    mainCardFights: [
      Fight(
        fighter1: Fighter(
          name: "Rafael",
          lastName: "Bonfim",
          record: "12-2-0",
          nationality: "Brazil",
        ),
        fighter2: Fighter(
          name: "Chris",
          lastName: "Brown",
          record: "17-5-0",
          nationality: "USA",
        ),
        weightClass: "Lightweight",
        odds: Odds(fighter1: "+140", fighter2: "-160"),
      ),
      Fight(
        fighter1: Fighter(
          name: "Mateusz",
          lastName: "Rebecki",
          record: "21-6-0",
          nationality: "Poland",
        ),
        fighter2: Fighter(
          name: "Jordan",
          lastName: "Williams",
          record: "13-4-0",
          nationality: "England",
        ),
        weightClass: "Welterweight",
        odds: Odds(fighter1: "-130", fighter2: "+115"),
      ),
    ],

    prelimnsFights: [
      Fight(
        fighter1: Fighter(
          name: "Alejandro",
          lastName: "Perez",
          record: "23-7-0",
          nationality: "Mexico",
        ),
        fighter2: Fighter(
          name: "Marco",
          lastName: "Silva",
          record: "14-6-0",
          nationality: "Portugal",
        ),
        weightClass: "Featherweight",
        odds: Odds(fighter1: "-105", fighter2: "+100"),
      ),
      Fight(
        fighter1: Fighter(
          name: "Sasha",
          lastName: "Ivanov",
          record: "9-2-0",
          nationality: "Russia",
        ),
        fighter2: Fighter(
          name: "John",
          lastName: "Doe",
          record: "10-3-0",
          nationality: "USA",
        ),
        weightClass: "Light Heavyweight",
        odds: Odds(fighter1: "+220", fighter2: "-260"),
      ),
    ],

    // earlyPrelimsFights left null for Fight Night
    earlyPrelimsFights: null,
  ),
];

