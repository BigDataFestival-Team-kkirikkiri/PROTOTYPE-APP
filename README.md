# 프로젝트 이름

## 서비스 개요

## 팀 소개
<p>프로젝트 기간 : 2023/7/1 ~ </p>

|    소속    |          전공           |  이름  |
| :--------: | :---------------------: | :----: |
| 동국대학교 | 통계학과/융합소프트웨어 | 김동완 |
| 동국대학교 | 통계학과/데이터사이언스 | 이예슬 |
| 동국대학교 | 통계학과/데이터사이언스 | 조유솔 |

## 📌 권장 사항
<p>Flutter 와 Android studio 설치와 환경설정이 다소 복잡하여 아래에 있는 시연영상으로 확인하시는걸 권장해드립니다.</p>
<a href="https://www.youtube.com/watch?v=uvFH1tF58iM">시연영상 바로 가기</a>

## 시작하기
### 필수사항
<P>이 프로젝트를 실행하기 위해서는 다음 항목들이 설치되어 있어야합니다.</P>

<ui>
  <li>Flutter : <a href="https://docs.flutter.dev/get-started/install">공식 Flutter 웹사이트</a>에서 설치 지침을 참조해주세요.</li>
  <li>Dart : Flutter와 함께 제공됩니다.</li>
  <li>Android 스튜디오 : <a href="https://developer.android.com/studio/install?hl=ko">공식 Android 스튜디오 웹사이트</a>에서 설치 지침을 따라주세요.</li>
</ui>

### 설치 및 실행
아래의 사항은 터미널에서 진행해주세요. 

1. 저희 깃허브 레포지토리를 클론합니다.
   ```
   git clone https://github.com/khlskahd-dasdsad-asdwdw/app.git
   ```
2. 프로젝트 디렉토리로 이동합니다.
   ```
   cd ./app/service_prototype
   ```
3. 필요한 종속성을 설치합니다. 터미널에서 진행해주시면 됩니다.
   ```
   flutter pub get
   ```
4. 앱을 실행합니다.
   ```
   flutter run
   ```
5. 4번 실행 후에 안내문구를 따라 chrome 으로 실행해주세요.
   
6. chrome으로 실행된 화면의 크기를 가로는 가장 작게 세로는 가장 크게 설정해주세요.
   - 핸드폰 크기에 맞춰서 화면을 구성해놨기에 chrome으로 실행시에 크기를 맞춰줘야 가장 비슷한 화면이 나옵니다.
   - 가상환경을 통해 앱으로 실행이 가능하지만 컴퓨터 사양에 따라 어려움이 있을수 있기에 chrome으로 실행하는걸 권장드립니다.

### 디렉토리 구조
```
lib : 프로토타입 실행에 주요한 코드들을 모아놓은 폴더

lib/screens : screen에 나타내는 페이지들
lib/widgets : screen을 구성하는데 필요한 widget

lib/widgets/common : 띄어쓰기와 같이 자주쓰이는 custom된 widget
lib/widgets/modal_content : 서비스를 설명해주는 페이지의 content widget
lib/widgets/modal_title : 상세페이지로 넘어갈 버튼이 있는 title widget
lib/widgets/service : 위험도예측, 패턴분류 등 메인서비스 안에 들어갈 service widget
lib/widgets/title : 서비스 제목을 위한 widget

lib/main.dart : 프로토타입을 실행하는 메인 코드
```
### 프로토타입 미리보기

### 시연 영상
아래 링크로 들어가 시연영상을 확인해주세요! <br/>
현재 까지의 개발은 프로토타입이고 앱을 배포하기까지에는 어려움이 있어서 시연영상을 촬영하였습니다. <br/>
해당 촬영영상은 Flutter에서 제공하는 디버깅에서 작성된 영상입니다. <br/>
<a href="https://www.youtube.com/watch?v=uvFH1tF58iM">시연영상 보기</a>


