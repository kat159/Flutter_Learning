class Applicant {
  static getPersonalInfo() {
    return {
      'fullName': 'Feixiang Allen Ye',
      'profession': 'Developer Extraordinaire',
      'phoneNumber': '555 555 5555',
      'email': 'allen@example.com',
      'githubAdress': 'https:github.com/allen',
      'githubAdressText': 'github.com/allen',
    };
  }

  static getPriorPositions() {
    const priorPositions = {
      'positionTitle': 'Software Developer Intern',
      'companyName': 'E Corp',
      'timePeriod': '2016 - Present',
      'location': 'Springfield, OR',
      'description': 'I developed extensive skills working with customers even when they were distressed. '
          'I\'m excellent at deescalating situations and finding a way to make the customer happy. '
          'Our customer satisfaction rating rose 10% during my tenure at my previous employer.',
      
    };
    return [for (int i = 0; i < 30; i++) priorPositions];
  }
}
