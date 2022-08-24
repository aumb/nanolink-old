import 'package:freezed_annotation/freezed_annotation.dart';

part 'links_exception.freezed.dart';

@freezed
class LinksException with _$LinksException implements Exception {
  //Links
  const factory LinksException.getLinksException() = _GetLinksException;
  const factory LinksException.linksDeserializationException() =
      _LinksDeserializationException;

  //Link
  const factory LinksException.getLinkException() = _GetLinkException;
  const factory LinksException.updateLinkException() = _UpdateLinkException;
  const factory LinksException.createLinkException() = _CreateLinkException;
  const factory LinksException.deleteLinkException() = _DeleteLinkException;
  const factory LinksException.linkDoesNotExistException() =
      _LinkDoesNotExistException;
  const factory LinksException.linkDeserializationException() =
      _LinkDeserializationException;
  const factory LinksException.linkUnsafeException() = _LinkUnsafeException;
  const factory LinksException.linkMissingOrInvalidBodyParams() =
      _LinkMissingOrInvalidBodyParams;
}
