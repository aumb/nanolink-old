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

// abstract class LinksException implements Exception {
//   const LinksException(this.error, this.stackTrace);

//   final Object error;
//   final StackTrace stackTrace;
// }

//Link list

// class GetLinksException extends LinksException {
//   const GetLinksException(super.error, super.stackTrace);
// }
//
// class LinksDeserializationException extends LinksException {
//   const LinksDeserializationException(super.error, super.stackTrace);
// }

//Link

// class GetLinkException extends LinksException {
//   const GetLinkException(super.error, super.stackTrace);
// }

// class UpdateLinkException extends LinksException {
//   const UpdateLinkException(super.error, super.stackTrace);
// }

// class CreateLinkException extends LinksException {
//   const CreateLinkException(super.error, super.stackTrace);
// }

// class DeleteLinkException extends LinksException {
//   const DeleteLinkException(super.error, super.stackTrace);
// }

// class LinkDoesNotExistException extends LinksException {
//   const LinkDoesNotExistException(super.error, super.stackTrace);
// }

// class LinkDeserializationException extends LinksException {
//   const LinkDeserializationException(super.error, super.stackTrace);
// }

// class LinkUnsafeException extends LinksException {
//   const LinkUnsafeException(super.error, super.stackTrace);
// }

// class LinkMissingOrInvalidBodyParams extends LinksException {
//   const LinkMissingOrInvalidBodyParams(super.error, super.stackTrace);
// }
