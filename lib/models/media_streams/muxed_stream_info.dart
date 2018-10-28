import 'package:youtube_extractor/internal/itag_helper.dart';
import 'package:youtube_extractor/models/media_streams/audio_encoding.dart';
import 'package:youtube_extractor/models/media_streams/media_stream_info.dart';
import 'package:youtube_extractor/models/media_streams/video_encoding.dart';
import 'package:youtube_extractor/models/media_streams/video_quality.dart';

class MuxedStreamInfo extends MediaStreamInfo {
  /// Audio encoding of the associated stream.
  AudioEncoding audioEncoding;

  /// Video encoding of the associated stream.
  VideoEncoding videoEncoding;

  /// Video quality of the associated stream.
  VideoQuality videoQuality;

  /// Video quality label of the associated stream.
  String videoQualityLabel;

  MuxedStreamInfo(int iTag, String url, BigInt size) : super(iTag, url, size) {
    audioEncoding = ItagHelper.GetAudioEncoding(iTag);
    videoEncoding = ItagHelper.GetVideoEncoding(iTag);
    videoQuality = ItagHelper.GetVideoQuality(iTag);
    videoQualityLabel = videoQuality.toString() + 'p';
  }
}