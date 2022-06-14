import 'dart:ffi';

class EventDetail{
  String? id;
  String description;
  String date;
  String startTime;
  String endTime;
  String speaker;
  String isFavorite;

  EventDetail(this.id,this.description,this.date,this.startTime,this.endTime,this.speaker,this.isFavorite);


String get _description=>_description;
String get _date=>_date;
String get _startTime=>_startTime;
String get _endTime=>_endTime;
String get _speaker=>_speaker;
Bool get _isFavorite=>_isFavorite;

EventDetail.fromMap(dynamic obj):
id = obj['id'],
description = obj['description'],
date= obj['date'],
startTime = obj['startTime'],
endTime= obj['endTime'],
speaker= obj['speaker'],
isFavorite= obj['isFavorite'];

Map<String, dynamic> toMap(){
var map = Map<String, dynamic>();

map['id']=id;
map['decription']=description;
map['date']=date;
map['startTime']=startTime;
map['endTime']=endTime;
map['speaker']=speaker;
map['isFavorite']=isFavorite;
print("creando evento");

return map;
}
}
