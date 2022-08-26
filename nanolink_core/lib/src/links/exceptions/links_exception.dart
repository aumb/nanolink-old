import 'package:freezed_annotation/freezed_annotation.dart';

part 'links_exception.freezed.dart';

@freezed
class LinksException with _$LinksException implements Exception {
  //Links
  const factory LinksException.getLinks() = _GetLinks;
  const factory LinksException.linksDeserialization() = _LinksDeserialization;

  //Link
  const factory LinksException.getLink() = _GetLink;
  const factory LinksException.updateLink() = _UpdateLink;
  const factory LinksException.createLink() = _CreateLink;
  const factory LinksException.deleteLink() = _DeleteLink;
  const factory LinksException.linkDoesNotExist() = _LinkDoesNotExist;
  const factory LinksException.linkDeserialization() =
      _LinkDeserializationException;
  const factory LinksException.linkUnsafe() = _LinkUnsafe;
  const factory LinksException.linkMissingOrInvalidBodyParams() =
      _LinkMissingOrInvalidBodyParams;
}
