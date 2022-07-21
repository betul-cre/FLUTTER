class AllStuff {
  int case_number = 0;
  int answernumber1 = 0;
  int answernumber2 = 1;
  int answernumber3 = 2;
  List Case_list = [
    "The woman you went to your home with was found dead on her back in redheads. and he wrote RACH on the floor with his fingernails.Which step would you follow?",
    "a woman comes to you and says that every year 4 orange seeds are sent to her home in a letter.and in the last letter he received a death threat.what would your next step be?",
    "People living in a village claimed to have seen a bright hound one night.When you went and checked it, you saw that hound.what would your next step be?",
    "7 people died in one village in a row. The people of the village believe that this was done by a ghost. the day you left 2 more people died, what will your next step be?",
    "In a town, people believe in the existence of a vampire. and they claimed what they saw. and those who claimed to have seen died one by one.what will your next step be?",
    "A man tells his house he got a warning message. but then he hears that other people receive this warning message and becomes anxious.come to you for help what will be your next step?",
    "The body of a peasant is found in a village. it is claimed that the peasant does not live there. What will be your next step?",
    "secondstep",
    "secondstep",
    "secondstep"
  ];
  List Answer_list = [
    "examining the woman lying on the ground without touching any clue",
    "examining blood splattered on walls in other rooms",
    "talking to people living in the building where the incident occurred",
    "I ask what the woman has been through in the past",
    "examining the letter and the orange seeds inside",
    "examine the place where the woman lives",
    "Talking to everyone who saw the hound one by one",
    "go to the place where you saw the hound and investigate",
    "admit that everything is real and escape from that village",
    "examine the place where deceased people died",
    "Talking to the families of deceased people and learning about their history",
    "Talking to the village ruler about these events",
    "examine the places where dead people died",
    "examine where people who saw the vampire see",
    "talking with the families of the deceased and getting information about them",
    "examine the place where the man lives",
    "knowing about the man's past",
    "a",
    "b",
    "c",
    "f",
    "j",
    "e",
    "i",
    "k",
    "l",
    "m",
    "n",
    "o",
    "p"
  ];

  int zero() {
    case_number = 0;
    answernumber1 = 0;
    answernumber2 = 1;
    answernumber3 = 2;
  }

  int plus1() {
    case_number++;
    answernumber1 += 3;
    answernumber2 += 3;
    answernumber3 += 3;
  }

  int plus2() {
    case_number += 2;
    answernumber1 += 6;
    answernumber2 += 6;
    answernumber3 += 6;
  }

  int plus3() {
    case_number += 3;
    answernumber1 += 9;
    answernumber2 += 9;
    answernumber3 += 9;
  }

  int plus4() {
    case_number += 4;
    answernumber1 += 12;
    answernumber2 += 12;
    answernumber3 += 12;
  }

  int plus5() {
    case_number += 5;
    answernumber1 += 15;
    answernumber2 += 15;
    answernumber3 += 15;
  }

  int plus6() {
    case_number += 6;
    answernumber1 += 18;
    answernumber2 += 18;
    answernumber3 += 18;
  }

  int secondplus() {
    case_number += 7;
    answernumber1 += 21;
    answernumber2 += 21;
    answernumber3 += 21;
  }

  int secondplus2() {
    case_number += 8;
    answernumber1 += 24;
    answernumber2 += 24;
    answernumber3 += 24;
  }

  int secondplus3() {
    case_number += 9;
    answernumber1 += 27;
    answernumber2 += 27;
    answernumber3 += 27;
  }

  String getcase() {
    return Case_list[case_number];
  }

  String getanswer() {
    return Answer_list[answernumber1];
  }

  String getanswertwo() {
    return Answer_list[answernumber2];
  }

  String getanswerthree() {
    return Answer_list[answernumber3];
  }

  String getname() {
    casename = case_names[case_number];
    return casename;
  }

  List case_names = [
    "A Study in Scarlet",
    "The Sign of the Four",
    "The Hound of the Baskervilles",
    "The Valley of Fear",
    "The adventure of sussex vampir's",
    "Warning",
    "Copper colored beech trees",
    "A Study in Scarlet",
    "A Study in Scarlet",
    "A Study in Scarlet",
  ];
  String casename;
}
