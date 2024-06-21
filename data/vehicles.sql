USE FREERIDER_DB;

DELETE FROM RESERVATION;    -- avoid FOREIGN KEY dependency
DELETE FROM VEHICLE;
INSERT INTO VEHICLE (ID, MAKE, MODEL, SEATS, CATEGORY, POWER, STATUS) VALUES
    (1000, 'VW', 'ID.3', 4, 'Sedan', 'Electric', 'Active'),
    (1001, 'VW', 'ID.3', 4, 'Sedan', 'Electric', 'Active'),
    (1002, 'VW', 'ID.3', 4, 'Sedan', 'Electric', 'Active'),
    (1003, 'VW', 'ID.3', 4, 'Sedan', 'Electric', 'Active'),
    (1004, 'VW', 'ID.3', 4, 'Sedan', 'Electric', 'Active'),
    (1005, 'VW', 'ID.3', 4, 'Sedan', 'Electric', 'Active'),
    (1006, 'VW', 'ID.3', 4, 'Sedan', 'Electric', 'Active'),
    (1007, 'VW', 'ID.3', 4, 'Sedan', 'Electric', 'Active'),
    (1008, 'VW', 'ID.3', 4, 'Sedan', 'Electric', 'Active'),
    (1009, 'VW', 'ID.3', 4, 'Sedan', 'Electric', 'Active'),
    (1010, 'VW', 'ID.4', 4, 'Sedan', 'Electric', 'Active'),
    (1011, 'VW', 'ID.4', 4, 'Sedan', 'Electric', 'Active'),
    (1012, 'VW', 'ID.4', 4, 'Sedan', 'Electric', 'Active'),
    (1013, 'VW', 'ID.4', 4, 'Sedan', 'Electric', 'Active'),
    (1014, 'VW', 'ID.4', 4, 'Sedan', 'Electric', 'Active'),
    (1015, 'VW', 'ID.4', 4, 'Sedan', 'Electric', 'Active'),
    (1016, 'VW', 'ID.4', 4, 'Sedan', 'Electric', 'Active'),
    (1017, 'VW', 'ID.4', 4, 'Sedan', 'Electric', 'Active'),
    (1018, 'VW', 'ID.4', 4, 'Sedan', 'Electric', 'Active'),
    (1019, 'VW', 'Up', 4, 'Sedan', 'Electric', 'Active'),
    (1020, 'VW', 'Up', 4, 'Sedan', 'Electric', 'Active'),
    (1021, 'VW', 'Up', 4, 'Sedan', 'Electric', 'Active'),
    (1022, 'VW', 'Up', 4, 'Sedan', 'Electric', 'Active'),
    (1023, 'VW', 'Up', 4, 'Sedan', 'Electric', 'Active'),
    (1024, 'VW', 'Up', 4, 'Sedan', 'Electric', 'Active'),
    (1025, 'VW', 'Up', 4, 'Sedan', 'Electric', 'Active'),
    (1026, 'VW', 'Up', 4, 'Sedan', 'Electric', 'Active'),
    (1027, 'VW', 'Golf', 4, 'Sedan', 'Gasoline', 'Active'),
    (1028, 'VW', 'Golf', 4, 'Sedan', 'Gasoline', 'Active'),
    (1029, 'VW', 'Golf', 4, 'Sedan', 'Gasoline', 'Active'),
    (1030, 'VW', 'Golf', 4, 'Sedan', 'Gasoline', 'Active'),
    (1031, 'VW', 'Passat', 4, 'Sedan', 'Gasoline', 'Active'),
    (1032, 'VW', 'Passat', 4, 'Sedan', 'Gasoline', 'Active'),
    (1033, 'VW', 'Passat', 4, 'Sedan', 'Gasoline', 'Active'),
    (1034, 'VW', 'Passat', 4, 'Sedan', 'Gasoline', 'Active'),
    (1035, 'VW', 'Passat', 4, 'Sedan', 'Gasoline', 'Active'),
    (1036, 'VW', 'Passat', 4, 'Sedan', 'Gasoline', 'Serviced'),
    (1037, 'VW', 'Polo', 4, 'Sedan', 'Gasoline', 'Active'),
    (1038, 'VW', 'Polo', 4, 'Sedan', 'Gasoline', 'Active'),
    (1039, 'VW', 'Polo', 4, 'Sedan', 'Gasoline', 'Active'),
    (1040, 'VW', 'Polo', 4, 'Sedan', 'Gasoline', 'Active'),
    (1041, 'VW', 'Polo', 4, 'Sedan', 'Gasoline', 'Active'),
    (1042, 'VW', 'Polo', 4, 'Sedan', 'Gasoline', 'Active'),
    (1043, 'VW', 'Roc', 4, 'SUV', 'Gasoline', 'Terminated'),
    (1044, 'VW', 'Roc', 4, 'SUV', 'Gasoline', 'Active'),
    (1045, 'VW', 'Tiguan', 4, 'Sedan', 'Gasoline', 'Active'),
    (1046, 'VW', 'Tiguan', 4, 'Sedan', 'Gasoline', 'Active'),
    (1047, 'VW', 'Tiguan', 4, 'Sedan', 'Gasoline', 'Active'),
    (1048, 'VW', 'Tiguan', 4, 'Sedan', 'Gasoline', 'Active'),
    (1049, 'VW', 'Tiguan', 4, 'Sedan', 'Gasoline', 'Active'),
    (1050, 'VW', 'Tiguan', 4, 'Sedan', 'Gasoline', 'Active'),
    (1051, 'VW', 'Tiguan', 4, 'Sedan', 'Gasoline', 'Active'),
    (1052, 'VW', 'Tiguan', 4, 'Sedan', 'Gasoline', 'Active'),
    (1053, 'VW', 'Tiguan', 4, 'Sedan', 'Gasoline', 'Serviced'),
    (1054, 'VW', 'Tiguan', 4, 'Sedan', 'Gasoline', 'Active'),
    (1055, 'VW', 'Tiguan', 4, 'Sedan', 'Gasoline', 'Active'),
    (1056, 'VW', 'Touareg', 4, 'SUV', 'Gasoline', 'Active'),
    (1057, 'VW', 'Touareg', 4, 'SUV', 'Gasoline', 'Terminated'),
    (1058, 'VW', 'Touareg', 4, 'SUV', 'Gasoline', 'Active'),
    (1059, 'VW', 'Touareg', 4, 'SUV', 'Gasoline', 'Active'),
    (1060, 'VW', 'Golf', 4, 'Sedan', 'Hybrid', 'Active'),
    (1061, 'VW', 'Golf', 4, 'Sedan', 'Hybrid', 'Active'),
    (1062, 'VW', 'Golf', 4, 'Sedan', 'Hybrid', 'Active'),
    (1063, 'VW', 'Golf', 4, 'Sedan', 'Hybrid', 'Active'),
    (1064, 'VW', 'Golf', 4, 'Sedan', 'Hybrid', 'Active'),
    (1065, 'VW', 'Golf', 4, 'Sedan', 'Hybrid', 'Active'),
    (1066, 'VW', 'Golf', 4, 'Sedan', 'Hybrid', 'Active'),
    (1067, 'VW', 'Passat', 4, 'Sedan', 'Hybrid', 'Active'),
    (1068, 'VW', 'Passat', 4, 'Sedan', 'Hybrid', 'Active'),
    (1069, 'VW', 'Passat', 4, 'Sedan', 'Hybrid', 'Active'),
    (1070, 'VW', 'Passat', 4, 'Sedan', 'Hybrid', 'Active'),
    (1071, 'VW', 'California', 6, 'Van', 'Diesel', 'Active'),
    (1072, 'VW', 'California', 6, 'Van', 'Diesel', 'Active'),
    (1073, 'VW', 'California', 6, 'Van', 'Diesel', 'Active'),
    (1074, 'VW', 'California', 6, 'Van', 'Diesel', 'Terminated'),
    (1075, 'VW', 'California', 6, 'Van', 'Diesel', 'Active'),
    (1076, 'VW', 'California', 6, 'Van', 'Diesel', 'Active'),
    (1077, 'VW', 'California', 6, 'Van', 'Diesel', 'Active'),
    (1078, 'VW', 'California', 6, 'Van', 'Diesel', 'Active'),
    (1079, 'VW', 'Caravelle', 8, 'Van', 'Diesel', 'Active'),
    (1080, 'VW', 'Caravelle', 8, 'Van', 'Diesel', 'Active'),
    (1081, 'VW', 'Caravelle', 8, 'Van', 'Diesel', 'Active'),
    (1082, 'VW', 'Caravelle', 8, 'Van', 'Diesel', 'Active'),
    (1083, 'VW', 'Caravelle', 8, 'Van', 'Diesel', 'Active'),
    (1084, 'VW', 'Caravelle', 8, 'Van', 'Diesel', 'Serviced'),
    (1085, 'VW', 'Caravelle', 8, 'Van', 'Diesel', 'Active'),
    (1086, 'VW', 'Caravelle', 8, 'Van', 'Diesel', 'Active'),
    (1087, 'VW', 'Golf', 4, 'Sedan', 'Diesel', 'Active'),
    (1088, 'VW', 'Golf', 4, 'Sedan', 'Diesel', 'Terminated'),
    (1089, 'VW', 'Golf', 4, 'Sedan', 'Diesel', 'Active'),
    (1090, 'VW', 'Golf', 4, 'Sedan', 'Diesel', 'Active'),
    (1091, 'VW', 'Golf', 4, 'Sedan', 'Diesel', 'Active'),
    (1092, 'VW', 'Golf', 4, 'Sedan', 'Diesel', 'Active'),
    (1093, 'VW', 'Golf', 4, 'Sedan', 'Diesel', 'Active'),
    (1094, 'VW', 'Passat', 4, 'Sedan', 'Diesel', 'Active'),
    (1095, 'VW', 'Passat', 4, 'Sedan', 'Diesel', 'Active'),
    (1096, 'VW', 'Passat', 4, 'Sedan', 'Diesel', 'Active'),
    (1097, 'VW', 'Passat', 4, 'Sedan', 'Diesel', 'Active'),
    (1098, 'VW', 'Passat', 4, 'Sedan', 'Diesel', 'Active'),
    (1099, 'VW', 'Polo', 4, 'Sedan', 'Diesel', 'Active'),
    (1100, 'VW', 'Polo', 4, 'Sedan', 'Diesel', 'Active'),
    (1101, 'VW', 'Roc', 4, 'SUV', 'Diesel', 'Active'),
    (1102, 'VW', 'Roc', 4, 'SUV', 'Diesel', 'Terminated'),
    (1103, 'VW', 'Roc', 4, 'SUV', 'Diesel', 'Active'),
    (1104, 'VW', 'Roc', 4, 'SUV', 'Diesel', 'Active'),
    (1105, 'VW', 'Roc', 4, 'SUV', 'Diesel', 'Active'),
    (1106, 'VW', 'Roc', 4, 'SUV', 'Diesel', 'Serviced'),
    (1107, 'VW', 'Roc', 4, 'SUV', 'Diesel', 'Active'),
    (1108, 'VW', 'Roc', 4, 'SUV', 'Diesel', 'Active'),
    (1109, 'VW', 'Tiguan', 4, 'Sedan', 'Diesel', 'Active'),
    (1110, 'VW', 'Tiguan', 4, 'Sedan', 'Diesel', 'Active'),
    (1111, 'VW', 'Tiguan', 4, 'Sedan', 'Diesel', 'Active'),
    (1112, 'VW', 'Touareg', 4, 'SUV', 'Diesel', 'Terminated'),
    (1113, 'VW', 'Touareg', 4, 'SUV', 'Diesel', 'Active'),
    (1114, 'VW', 'Touareg', 4, 'SUV', 'Diesel', 'Active'),
    (1115, 'VW', 'Touareg', 4, 'SUV', 'Diesel', 'Active'),
    (1116, 'VW', 'Touareg', 4, 'SUV', 'Diesel', 'Active'),
    (2000, 'Skoda', 'Enyaq Coupe', 4, 'Sedan', 'Electric', 'Active'),
    (2001, 'Skoda', 'Enyaq Coupe', 4, 'Sedan', 'Electric', 'Active'),
    (2002, 'Skoda', 'Octavia', 4, 'Sedan', 'Electric', 'Active'),
    (2003, 'Skoda', 'Octavia', 4, 'Sedan', 'Electric', 'Active'),
    (2004, 'Skoda', 'Octavia', 4, 'Sedan', 'Electric', 'Active'),
    (2005, 'Skoda', 'Octavia', 4, 'Sedan', 'Electric', 'Active'),
    (2006, 'Skoda', 'Superb', 4, 'Sedan', 'Electric', 'Terminated'),
    (2007, 'Skoda', 'Superb', 4, 'Sedan', 'Electric', 'Active'),
    (2008, 'Skoda', 'Superb', 4, 'Sedan', 'Electric', 'Active'),
    (2009, 'Skoda', 'Fabia', 4, 'Sedan', 'Gasoline', 'Active'),
    (2010, 'Skoda', 'Fabia', 4, 'Sedan', 'Gasoline', 'Active'),
    (2011, 'Skoda', 'Fabia', 4, 'Sedan', 'Gasoline', 'Active'),
    (2012, 'Skoda', 'Karoq', 4, 'Sedan', 'Gasoline', 'Active'),
    (2013, 'Skoda', 'Karoq', 4, 'Sedan', 'Gasoline', 'Active'),
    (2014, 'Skoda', 'Kodiaq', 4, 'Sedan', 'Gasoline', 'Active'),
    (2015, 'Skoda', 'Kodiaq', 4, 'Sedan', 'Gasoline', 'Active'),
    (2016, 'Skoda', 'Kodiaq', 4, 'Sedan', 'Gasoline', 'Active'),
    (2017, 'Skoda', 'Kodiaq', 4, 'Sedan', 'Gasoline', 'Active'),
    (2018, 'Skoda', 'Kodiaq', 4, 'Sedan', 'Gasoline', 'Active'),
    (2019, 'Skoda', 'Octavia', 4, 'Sedan', 'Gasoline', 'Active'),
    (2020, 'Skoda', 'Octavia', 4, 'Sedan', 'Gasoline', 'Active'),
    (2021, 'Skoda', 'Octavia', 4, 'Sedan', 'Gasoline', 'Active'),
    (2022, 'Skoda', 'Octavia', 4, 'Sedan', 'Gasoline', 'Active'),
    (2023, 'Skoda', 'Superb', 4, 'Sedan', 'Gasoline', 'Active'),
    (2024, 'Skoda', 'Superb', 4, 'Sedan', 'Gasoline', 'Active'),
    (2025, 'Skoda', 'Fabia', 4, 'Sedan', 'Diesel', 'Active'),
    (2026, 'Skoda', 'Fabia', 4, 'Sedan', 'Diesel', 'Active'),
    (2027, 'Skoda', 'Fabia', 4, 'Sedan', 'Diesel', 'Active'),
    (2028, 'Skoda', 'Fabia', 4, 'Sedan', 'Diesel', 'Active'),
    (2029, 'Skoda', 'Karoq', 4, 'Sedan', 'Diesel', 'Terminated'),
    (2030, 'Skoda', 'Karoq', 4, 'Sedan', 'Diesel', 'Active'),
    (2031, 'Skoda', 'Karoq', 4, 'Sedan', 'Diesel', 'Active'),
    (2032, 'Skoda', 'Karoq', 4, 'Sedan', 'Diesel', 'Active'),
    (2033, 'Skoda', 'Karoq', 4, 'Sedan', 'Diesel', 'Active'),
    (2034, 'Skoda', 'Kodiaq', 4, 'Sedan', 'Diesel', 'Active'),
    (2035, 'Skoda', 'Kodiaq', 4, 'Sedan', 'Diesel', 'Active'),
    (2036, 'Skoda', 'Kodiaq', 4, 'Sedan', 'Diesel', 'Active'),
    (2037, 'Skoda', 'Kodiaq', 4, 'Sedan', 'Diesel', 'Active'),
    (2038, 'Skoda', 'Octavia', 4, 'Sedan', 'Diesel', 'Active'),
    (2039, 'Skoda', 'Octavia', 4, 'Sedan', 'Diesel', 'Active'),
    (2040, 'Skoda', 'Octavia', 4, 'Sedan', 'Diesel', 'Active'),
    (2041, 'Skoda', 'Octavia', 4, 'Sedan', 'Diesel', 'Active'),
    (2042, 'Skoda', 'Octavia', 4, 'Sedan', 'Diesel', 'Active'),
    (2043, 'Skoda', 'Octavia', 4, 'Sedan', 'Diesel', 'Serviced'),
    (2044, 'Skoda', 'Octavia', 4, 'Sedan', 'Diesel', 'Active'),
    (2045, 'Skoda', 'Superb', 4, 'Sedan', 'Diesel', 'Active'),
    (2046, 'Skoda', 'Superb', 4, 'Sedan', 'Diesel', 'Active'),
    (3000, 'Tesla', 'Model 3', 4, 'Sedan', 'Electric', 'Active'),
    (3001, 'Tesla', 'Model 3', 4, 'Sedan', 'Electric', 'Active'),
    (3002, 'Tesla', 'Model 3', 4, 'Sedan', 'Electric', 'Active'),
    (3003, 'Tesla', 'Model 3', 4, 'Sedan', 'Electric', 'Active'),
    (3004, 'Tesla', 'Model 3', 4, 'Sedan', 'Electric', 'Active'),
    (3005, 'Tesla', 'Model 3', 4, 'Sedan', 'Electric', 'Active'),
    (3006, 'Tesla', 'Model 3', 4, 'Sedan', 'Electric', 'Active'),
    (3007, 'Tesla', 'Model S', 4, 'Sedan', 'Electric', 'Active'),
    (3008, 'Tesla', 'Model S', 4, 'Sedan', 'Electric', 'Active'),
    (3009, 'Tesla', 'Model X', 4, 'Sedan', 'Electric', 'Active'),
    (3010, 'Tesla', 'Model X', 4, 'Sedan', 'Electric', 'Active'),
    (3011, 'Tesla', 'Model X', 4, 'Sedan', 'Electric', 'Active'),
    (3012, 'Tesla', 'Model X', 4, 'Sedan', 'Electric', 'Active'),
    (4000, 'BMW', 'i1', 4, 'Sedan', 'Electric', 'Active'),
    (4001, 'BMW', 'i1', 4, 'Sedan', 'Electric', 'Active'),
    (4002, 'BMW', 'i1', 4, 'Sedan', 'Electric', 'Active'),
    (4003, 'BMW', 'i1', 4, 'Sedan', 'Electric', 'Active'),
    (4004, 'BMW', 'i1', 4, 'Sedan', 'Electric', 'Active'),
    (4005, 'BMW', 'i1', 4, 'Sedan', 'Electric', 'Active'),
    (4006, 'BMW', 'i1', 4, 'Sedan', 'Electric', 'Active'),
    (4007, 'BMW', 'i3', 4, 'Sedan', 'Electric', 'Active'),
    (4008, 'BMW', 'i3', 4, 'Sedan', 'Electric', 'Active'),
    (4009, 'BMW', 'i3', 4, 'Sedan', 'Electric', 'Active'),
    (4010, 'BMW', 'i3', 4, 'Sedan', 'Electric', 'Active'),
    (4011, 'BMW', 'i4', 4, 'Sedan', 'Electric', 'Active'),
    (4012, 'BMW', 'i4', 4, 'Sedan', 'Electric', 'Active'),
    (4013, 'BMW', 'i4', 4, 'Sedan', 'Electric', 'Active'),
    (4014, 'BMW', 'i4', 4, 'Sedan', 'Electric', 'Active'),
    (4015, 'BMW', 'i4', 4, 'Sedan', 'Electric', 'Active'),
    (4016, 'BMW', 'i4', 4, 'Sedan', 'Electric', 'Active'),
    (4017, 'BMW', 'i7', 4, 'Sedan', 'Electric', 'Active'),
    (4018, 'BMW', 'i7', 4, 'Sedan', 'Electric', 'Active'),
    (4019, 'BMW', 'i7', 4, 'Sedan', 'Electric', 'Active'),
    (4020, 'BMW', 'i7', 4, 'Sedan', 'Electric', 'Active'),
    (4021, 'BMW', 'i7', 4, 'Sedan', 'Electric', 'Active'),
    (4022, 'BMW', 'i7', 4, 'Sedan', 'Electric', 'Active'),
    (4023, 'BMW', 'i7', 4, 'Sedan', 'Electric', 'Active'),
    (4024, 'BMW', '320i', 4, 'Sedan', 'Gasoline', 'Active'),
    (4025, 'BMW', '320i', 4, 'Sedan', 'Gasoline', 'Active'),
    (4026, 'BMW', '320i', 4, 'Sedan', 'Gasoline', 'Active'),
    (4027, 'BMW', '520i', 4, 'Sedan', 'Gasoline', 'Active'),
    (4028, 'BMW', '520i', 4, 'Sedan', 'Gasoline', 'Active'),
    (4029, 'BMW', '520i', 4, 'Sedan', 'Gasoline', 'Active'),
    (4030, 'BMW', 'X1', 4, 'SUV', 'Gasoline', 'Active'),
    (4031, 'BMW', 'X1', 4, 'SUV', 'Gasoline', 'Terminated'),
    (4032, 'BMW', 'X1', 4, 'SUV', 'Gasoline', 'Active'),
    (4033, 'BMW', 'X1', 4, 'SUV', 'Gasoline', 'Active'),
    (4034, 'BMW', 'X1', 4, 'SUV', 'Gasoline', 'Active'),
    (4035, 'BMW', 'X1', 4, 'SUV', 'Gasoline', 'Active'),
    (4036, 'BMW', 'X3', 4, 'SUV', 'Gasoline', 'Active'),
    (4037, 'BMW', 'X5', 4, 'SUV', 'Gasoline', 'Active'),
    (4038, 'BMW', 'X5', 4, 'SUV', 'Gasoline', 'Terminated'),
    (4039, 'BMW', 'X5', 4, 'SUV', 'Gasoline', 'Active'),
    (4040, 'BMW', 'X5', 4, 'SUV', 'Gasoline', 'Active'),
    (4041, 'BMW', 'X5', 4, 'SUV', 'Gasoline', 'Active'),
    (4042, 'BMW', '320e', 4, 'Sedan', 'Hybrid', 'Terminated'),
    (4043, 'BMW', '320e', 4, 'Sedan', 'Hybrid', 'Terminated'),
    (4044, 'BMW', '320e', 4, 'Sedan', 'Hybrid', 'Active'),
    (4045, 'BMW', '320e', 4, 'Sedan', 'Hybrid', 'Active'),
    (4046, 'BMW', '320e', 4, 'Sedan', 'Hybrid', 'Active'),
    (4047, 'BMW', '320e', 4, 'Sedan', 'Hybrid', 'Active'),
    (4048, 'BMW', '320e', 4, 'Sedan', 'Hybrid', 'Active'),
    (4049, 'BMW', '520e', 4, 'Sedan', 'Hybrid', 'Active'),
    (4050, 'BMW', '520e', 4, 'Sedan', 'Hybrid', 'Active'),
    (4051, 'BMW', '520e', 4, 'Sedan', 'Hybrid', 'Active'),
    (4052, 'BMW', 'X1', 4, 'SUV', 'Hybrid', 'Active'),
    (4053, 'BMW', 'X1', 4, 'SUV', 'Hybrid', 'Serviced'),
    (4054, 'BMW', 'X3', 4, 'SUV', 'Hybrid', 'Active'),
    (4055, 'BMW', 'X3', 4, 'SUV', 'Hybrid', 'Active'),
    (4056, 'BMW', 'X3', 4, 'SUV', 'Hybrid', 'Active'),
    (4057, 'BMW', 'X5', 4, 'SUV', 'Hybrid', 'Active'),
    (4058, 'BMW', 'X5', 4, 'SUV', 'Hybrid', 'Active'),
    (4059, 'BMW', '320d', 4, 'Sedan', 'Diesel', 'Active'),
    (4060, 'BMW', '320d', 4, 'Sedan', 'Diesel', 'Active'),
    (4061, 'BMW', '320d', 4, 'Sedan', 'Diesel', 'Active'),
    (4062, 'BMW', '520d', 4, 'Sedan', 'Diesel', 'Terminated'),
    (4063, 'BMW', '520d', 4, 'Sedan', 'Diesel', 'Terminated'),
    (4064, 'BMW', '520d', 4, 'Sedan', 'Diesel', 'Active'),
    (4065, 'BMW', 'X1', 4, 'SUV', 'Diesel', 'Terminated'),
    (4066, 'BMW', 'X1', 4, 'SUV', 'Diesel', 'Active'),
    (4067, 'BMW', 'X1', 4, 'SUV', 'Diesel', 'Active'),
    (4068, 'BMW', 'X3', 4, 'SUV', 'Diesel', 'Active'),
    (4069, 'BMW', 'X3', 4, 'SUV', 'Diesel', 'Active'),
    (4070, 'BMW', 'X3', 4, 'SUV', 'Diesel', 'Active'),
    (4071, 'BMW', 'X3', 4, 'SUV', 'Diesel', 'Active'),
    (4072, 'BMW', 'X3', 4, 'SUV', 'Diesel', 'Active'),
    (4073, 'BMW', 'X3', 4, 'SUV', 'Diesel', 'Active'),
    (4074, 'BMW', 'X3', 4, 'SUV', 'Diesel', 'Active'),
    (4075, 'BMW', 'X3', 4, 'SUV', 'Diesel', 'Active'),
    (4076, 'BMW', 'X3', 4, 'SUV', 'Diesel', 'Active'),
    (4077, 'BMW', 'X3', 4, 'SUV', 'Diesel', 'Active'),
    (4078, 'BMW', 'X3', 4, 'SUV', 'Diesel', 'Active'),
    (4079, 'BMW', 'X5', 4, 'SUV', 'Diesel', 'Active'),
    (4080, 'BMW', 'X5', 4, 'SUV', 'Diesel', 'Active'),
    (4081, 'BMW', 'X5', 4, 'SUV', 'Diesel', 'Active'),
    (4082, 'BMW', 'X5', 4, 'SUV', 'Diesel', 'Active'),
    (8000, 'EMCO', 'Novi', 2, 'Bike', 'Electric', 'Active'),
    (8001, 'EMCO', 'Novi', 2, 'Bike', 'Electric', 'Serviced'),
    (8002, 'EMCO', 'Novi', 2, 'Bike', 'Electric', 'Serviced'),
    (8003, 'EMCO', 'Novi', 2, 'Bike', 'Electric', 'Serviced'),
    (8004, 'EMCO', 'Novi', 2, 'Bike', 'Electric', 'Serviced')
;