import 'package:cointracker/model/listing/data.dart';
import 'package:cointracker/model/listing/status.dart';
import 'package:json_annotation/json_annotation.dart';

part 'listing_latest.g.dart';

@JsonSerializable()
class ListingLatest {
  Status status;
  List<Data> data;

  ListingLatest({required this.status, required this.data});

  factory ListingLatest.fromJson(Map<String, dynamic> json) =>
      _$ListingLatestFromJson(json);

  Map<String, dynamic> toJson() => _$ListingLatestToJson(this);
}
