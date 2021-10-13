# finerate
## Author: JO HYUK JUN, LEE JUN HO
#
## Specifications

Video file 기준임..

e.g.) '#pineapple video.webm' 파일

input : 비디오 파일(들) 선택후 스크립트 실행 

output : 

0) '#pineapple video.webm' 의 메타데이터 bitrate를 Mbps 단위로  'filename.extension - nn.nn Mbps' 형태의 plain text 클립보드에 저장 (복수일 경우에는 다음 파일의 경우 줄바꿈 먹혀있는 형태로 
'
filename.extension - nn.nn Mbps
filename.extension - nn.nn Mbps
'
같은형식으로 클립보드저장

——Y/N : N로 0번에서 끝, Y로 계속진행

1) 비디오 파일 metadata 에서 ({query1}/1920)*({query2}/1080)*({query3}/30)*6000={kbps} 계산 (FHD 30fps 기준 6000이 계산됨) 
*query1=Width, query2=Height, query3=fps

2) 1번에 계산된 ’@kbps@#pineapple video.webm' 으로 (각)파일명 변경

3) *만약 Target Bitrates계산값>기존 Bitrates면 기존값으로 출력

## UX 

  I.Listing user experience
  II. Drag & Drop support (Multi path support)
  III. Each column can be moved by users.
  IV. Customizible 'Target bps'formula.

![image](https://user-images.githubusercontent.com/39693451/135867110-0989ee02-5916-4389-a6fa-7898ec263fc5.png)
  

## Current Status

![image](https://user-images.githubusercontent.com/39693451/135867288-fffb2119-ef16-4b84-a302-1efe53241cc6.png)

### FFMEPG PROBE Example
{'streams': [{'index': 0, 'codec_name': 'hevc', 'codec_long_name': 'H.265 / HEVC (High Efficiency Video Coding)', 'profile': 'Main', 'codec_type': 'video', 'codec_tag_string': 'hev1', 'codec_tag': '0x31766568', 'width': 1920, 'height': 1080, 'coded_width': 1920, 'coded_height': 1088, 'closed_captions': 0, 'film_grain': 0, 'has_b_frames': 0, 'sample_aspect_ratio': '1:1', 'display_aspect_ratio': '16:9', 'pix_fmt': 'yuv420p', 'level': 120, 'color_range': 'tv', 'chroma_location': 'left', 'field_order': 'progressive', 'refs': 1, 'id': '0x1', 'r_frame_rate': '2997/125', 'avg_frame_rate': '2997/125', 'time_base': '1/11988', 'start_pts': 0, 'start_time': '0.000000', 'duration_ts': 121605500, 'duration': '10143.935602', 'bit_rate': '2449713', 'nb_frames': '243211', 'disposition': {'default': 1, 'dub': 0, 'original': 0, 'comment': 0, 'lyrics': 0, 'karaoke': 0, 'forced': 0, 'hearing_impaired': 0, 'visual_impaired': 0, 'clean_effects': 0, 'attached_pic': 0, 'timed_thumbnails': 0, 'captions': 0, 'descriptions': 0, 'metadata': 0, 'dependent': 0, 'still_image': 0}, 'tags': {'language': 'eng', 'handler_name': 'VideoHandler', 'vendor_id': '[0][0][0][0]'}}, {'index': 1, 'codec_name': 'aac', 'codec_long_name': 'AAC (Advanced Audio Coding)', 'profile': 'LC', 'codec_type': 'audio', 'codec_tag_string': 'mp4a', 'codec_tag': '0x6134706d', 'sample_fmt': 'fltp', 'sample_rate': '44100', 'channels': 2, 'channel_layout': 'stereo', 'bits_per_sample': 0, 'id': '0x2', 'r_frame_rate': '0/0', 'avg_frame_rate': '0/0', 'time_base': '1/44100', 'start_pts': 0, 'start_time': '0.000000', 'duration_ts': 447307535, 'duration': '10143.028005', 'bit_rate': '191738', 'nb_frames': '436825', 'disposition': {'default': 1, 
'dub': 0, 'original': 0, 'comment': 0, 'lyrics': 0, 'karaoke': 0, 'forced': 0, 'hearing_impaired': 0, 'visual_impaired': 0, 'clean_effects': 0, 'attached_pic': 0, 'timed_thumbnails': 0, 'captions': 0, 'descriptions': 0, 'metadata': 0, 'dependent': 0, 'still_image': 0}, 'tags': {'language': 'eng', 'handler_name': 'SoundHandler', 'vendor_id': '[0][0][0][0]'}}, {'index': 2, 'codec_name': 'bin_data', 'codec_long_name': 'binary data', 'codec_type': 'data', 'codec_tag_string': 'text', 'codec_tag': '0x74786574', 'id': '0x3', 'r_frame_rate': '0/0', 'avg_frame_rate': '0/0', 'time_base': '1/1000', 'start_pts': 0, 'start_time': '0.000000', 'duration_ts': 10143926, 'duration': '10143.926000', 'nb_frames': '21', 'disposition': {'default': 0, 'dub': 0, 'original': 0, 'comment': 0, 'lyrics': 0, 'karaoke': 0, 'forced': 0, 'hearing_impaired': 0, 'visual_impaired': 0, 'clean_effects': 0, 'attached_pic': 0, 'timed_thumbnails': 0, 'captions': 0, 'descriptions': 0, 'metadata': 0, 'dependent': 0, 'still_image': 0}, 'tags': {'language': 'eng', 'handler_name': 'SubtitleHandler'}}], 'format': {'filename': 'D:\\jo-work-directory\\git\\fineapple\\src\\test.mp4', 'nb_streams': 3, 'nb_programs': 0, 'format_name': 'mov,mp4,m4a,3gp,3g2,mj2', 'format_long_name': 'QuickTime / MOV', 'start_time': '0.000000', 'duration': '10143.936000', 'size': '3357076310', 'bit_rate': '2647553', 'probe_score': 100, 'tags': {'major_brand': 'isom', 'minor_version': '512', 'compatible_brands': 'isomiso2mp41', 'encoder': 'Lavf58.12.100'}}}

