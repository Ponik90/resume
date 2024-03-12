import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;

import 'global_screen_var.dart';

var pdf = pw.Document();

void pdfmake() async {
  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Container(
          padding: pw.EdgeInsets.all(10),
          color: PdfColors.white,
          child: pw.Column(
            crossAxisAlignment: pw.CrossAxisAlignment.start,
            children: [
              //image

              //contact
              pw.Text(
                "Contact Details :",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "name : ${g1.contactName}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "email : ${g1.contactEmail}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "phone : ${g1.contactPhone}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "Address : ${g1.contactAddress}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),

              pw.SizedBox(
                height: 10,
              ),

              //carrier
              pw.Text(
                "Carrier Details :",
                style: pw.TextStyle(
                  color: PdfColors.blueAccent,
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "Objective : ${g1.carrierObjective}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "Designation : ${g1.carrierDesignation}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),

              pw.SizedBox(
                height: 10,
              ),

              //personal
              pw.Text(
                "Your Personal Details :",
                style: pw.TextStyle(
                  color: PdfColors.blueAccent,
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "DOB : ${g1.personalDOB}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "States : ${g1.personalStates}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),

              pw.Text(
                "Nationality : ${g1.personalNationality}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),

              g1.personalEnglish == true
                  ? pw.Text(
                      "English",
                      style: pw.TextStyle(
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    )
                  : pw.Text(""),

              g1.personalHindi == true
                  ? pw.Text(
                      "Hindi",
                      style: pw.TextStyle(
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    )
                  : pw.Text(""),

              g1.personalGujarati == true
                  ? pw.Text(
                      "Gujarati",
                      style: pw.TextStyle(
                        fontSize: 20,
                        fontWeight: pw.FontWeight.bold,
                      ),
                    )
                  : pw.Text(""),
              pw.SizedBox(
                height: 10,
              ),

              //Eduction
              pw.Text(
                "Eduction Details :",
                style: pw.TextStyle(
                  color: PdfColors.blueAccent,
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "Course : ${g1.eductionCourse}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "School/College : ${g1.eductionSchool}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "Percentage : ${g1.eductionPercentage}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "Year of pass  : ${g1.eductionPass}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),

              pw.SizedBox(
                height: 10,
              ),

              //experience
              pw.Text(
                "Experience Details :",
                style: pw.TextStyle(
                  color: PdfColors.blueAccent,
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "Company Name  : ${g1.experienceCompanyName}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "School  : ${g1.experienceSchool}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "Roles  : ${g1.experienceRoles}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "Joined Date  : ${g1.experienceJoinedDate}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "Exit Date  : ${g1.experienceExitDate}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),

              pw.SizedBox(
                height: 10,
              ),

              pw.Text(
                "Technical skill : ",
                style: pw.TextStyle(
                  color: PdfColors.blueAccent,
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Column(
                crossAxisAlignment: pw.CrossAxisAlignment.start,
                children: g1.techadd
                    .map(
                      (e) => pw.Text(
                        "$e",
                        style: pw.TextStyle(
                          fontSize: 20,
                          fontWeight: pw.FontWeight.bold,
                        ),
                      ),
                    )
                    .toList(),
              ),
              pw.SizedBox(
                height: 10,
              ),

              //project
              pw.Text(
                "Project Details :",
                style: pw.TextStyle(
                  color: PdfColors.blueAccent,
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "Project Title  : ${g1.projectTitle}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "Roles  : ${g1.projectRoles}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "Technologies  : ${g1.projectTechnologies}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "Project Description : ${g1.projectDescription}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),

              //reference
              pw.Text(
                "Reference Name : ${g1.referenceName}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "Designation : ${g1.referenceDesignation}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
              pw.Text(
                "Organization/Institute : ${g1.referenceOrganization}",
                style: pw.TextStyle(
                  fontSize: 20,
                  fontWeight: pw.FontWeight.bold,
                ),
              ),
            ],
          ),
        );
      },
    ),
  );
}
