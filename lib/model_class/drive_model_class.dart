

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DriveModelClass {
  int? id;
  Icon? icon;
  String? driveName;
  String? driveSize;

  DriveModelClass(
      this.id,
      this.icon,
      this.driveName,
      this.driveSize);
}


final drives = [
  DriveModelClass(1,Icon(Icons.file_open_outlined,) , 'OneDrive', '1.0 GB'),
  DriveModelClass(2,Icon(Icons.file_open_outlined,) , 'Backups', '2.3 GB'),
  DriveModelClass(3,Icon(Icons.file_open_outlined,) , 'Adobe', '1.0 GB'),
  DriveModelClass(4,Icon(Icons.file_open_outlined,) , 'Design', '1.0 GB'),
  DriveModelClass(5,Icon(Icons.file_open_outlined,) , 'Documents', '12.0 GB'),
  DriveModelClass(6,Icon(Icons.file_open_outlined,) , 'ProCreate', '1.0 GB'),
];