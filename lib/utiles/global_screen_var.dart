Global g1 = Global();

class Global {
  //contact
  String? contactName;
  String? contactEmail;
  String? contactPhone;
  String? contactAddress;
  String? contactImage;

  //carrier
  String? carrierObjective;
  String? carrierDesignation;

  //personal
  String? personalDOB;
  String? personalStates;
  String? personalNationality;
  bool personalEnglish = false;
  bool personalHindi = false;
  bool personalGujarati = false;

  //eduction
  String? eductionCourse;
  String? eductionSchool;
  String? eductionPercentage;
  String? eductionPass;

  //experience
  String? experienceCompanyName;
  String? experienceSchool;
  String? experienceRoles;
  String? experineceEmpStatus;
  String? experienceJoinedDate;
  String? experienceExitDate;

  //technical

  List<String> techadd =[];
  //project
  String? projectTitle;
  String? projectRoles;
  String? projectTechnologies;
  String? projectDescription;

  //reference

  String? referenceName;
  String? referenceDesignation;
  String? referenceOrganization;
}
