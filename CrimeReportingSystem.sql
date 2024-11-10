--Creating a Database
Create Database CARS

--Creating Incidents Table 
Create Table Incidents(
IncidentID int identity Primary Key,
IncidentType Varchar(50),
IncidentDate Date,
Location Varchar(50),
Description Varchar(100),
Status Varchar(20),
VictimID int,
SuspectID int,
AgencyID int,
Foreign Key (VictimID) references Victims(VictimID),
Foreign Key (SuspectID) references Suspects(SuspectID),
Foreign Key (AgencyID) references LawEnforcementAgencies(AgencyID))

--Creating Victims Table
Create Table Victims(
VictimID int identity Primary Key,
FirstName Varchar(50),
LastName Varchar(50),
DateOfBirth Date,
Gender Varchar(50),
ContactInformation Varchar(100))

--Creating Suspects Table
Create Table Suspects(
SuspectID int identity Primary key,
FirstName Varchar(50),
LastName Varchar(50),
DateOfBirth Date,
Gender Varchar(50),
ContactInformation Varchar(100))

--Creating Law Enforcement Agencies Table
Create Table LawEnforcementAgencies(
AgencyID int identity Primary key,
Officer int,
AgencyName Varchar(100),
Jurisdiction Varchar(100),
ContactInformation Varchar(100),)

--Creating Officers Table
Create Table Officers(
OfficerID int identity Primary Key,
FirstName Varchar(50),
LastName Varchar(50),
BadgeNumber Varchar(50),
Rank Varchar(50),
ContactInformation Varchar(100),
AgencyID int,
Foreign Key (AgencyID) references LawEnforcementAgencies(AgencyID))

--Creating Evidence Table
Create Table Evidence (
EvidenceID int identity Primary Key,
Description Varchar(100),
LocationFound Varchar(100),
IncidentID int,
Foreign Key (IncidentID) references Incidents(IncidentID))

--Creating Reports Table
Create Table Reports(
ReportID int identity Primary Key,
IncidentID int,
ReportingOfficer int,
ReportDate Date,
ReportDetails Varchar(100),
Status varchar(20),
Foreign Key (IncidentID) references Incidents(IncidentID),
Foreign Key (ReportingOfficer) references Officers(OfficerID))
