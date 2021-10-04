# fineapple
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

## UX Example
![image](https://user-images.githubusercontent.com/39693451/135867110-0989ee02-5916-4389-a6fa-7898ec263fc5.png)
  
  I.Listing user experience
  II. Drag & Drop support (Multi path support)
  III. Each column can be moved by users.
  IV. Customizible 'Target bps'formula.

## Current Status

![image](https://user-images.githubusercontent.com/39693451/135867288-fffb2119-ef16-4b84-a302-1efe53241cc6.png)

