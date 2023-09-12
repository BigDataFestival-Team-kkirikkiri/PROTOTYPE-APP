# 게이미피케이션을 활용한 주가예측 기반의 종목 위험도 평가와 고객 군집화 및 수익률 랭킹 서비스

### 서비스 개요
본 팀의 서비스는 주식 시장에 본격적으로 입문하고 싶지만 주식에 대한 어려움을 느끼는 일명 '주린이' 고객들을 주요 대상으로 합니다. 메인 서비스는 <위험도 예측>, <고객군집화>이며 이 서비스들을 활성화하기 위한 방안으로 게이미피케이션을 고안하였습니다.

해당 프로토타입은 이런한 서비스들을 사용자가 이용 할 수 있도록 구현하였습니다. 
서비스 제목 옆에 플러스 버튼을 누르면 해당 서비스에 대한 설명이 나타날 수 있도록 구현하였습니다.

현재까지는 프론프로 구현된 앱이며, 추후에 백엔드와 연동할 예정입니다.

### 팀 소개
<p>팀명 : 끼리끼리</p>
<p>프로젝트 기간 : 2023/7/1 ~ </p>

|    소속    |          전공           |  이름  |
| :--------: | :---------------------: | :----: |
| 동국대학교 | 통계학과/융합소프트웨어 | 김동완 |
| 동국대학교 | 통계학과/데이터사이언스 | 이예슬 |
| 동국대학교 | 통계학과/데이터사이언스 | 조유솔 |

## 📌 권장 사항
<p>Flutter 와 Android studio 설치와 환경설정이 다소 복잡하여 아래에 있는 시연영상으로 확인하시는걸 권장해드립니다.</p>

### [☑️ 시연영상 보기](https://youtu.be/IwJkYmmxSGU)

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
   git clone https://github.com/BigDataFestival-Team-kkirikkiri/PROTOTYPE-APP.git
   ```
2. 프로젝트 디렉토리로 이동합니다.
   ```
   cd ./PROTOTYPE-APP/service_prototype
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

## 디렉토리 구조
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
## 프로토타입 미리보기
### 1. 팝업 퀴즈
#### 1-1. 퀴즈 화면
<span><img src="https://github.com/khlskahd-dasdsad-asdwdw/PROTOTYPE-APP/assets/122766043/f5ad998e-c8ea-42d6-a2a7-d12f2b21e962" width="490" height="750"/></span>
-----
#### 1-2. 퀴즈 정답 화면
<span><img src="https://github.com/khlskahd-dasdsad-asdwdw/PROTOTYPE-APP/assets/122766043/455b3556-63fb-4c47-9c37-8465d61fef77" width="490" height="750"/></span> 

### 2. 메인 서비스
<div><img src="https://github.com/khlskahd-dasdsad-asdwdw/app/assets/122766043/d1b16520-6de4-4140-900d-7443205e81e8" width="510" height="750"/></div> 
<div><img src="https://github.com/khlskahd-dasdsad-asdwdw/app/assets/122766043/c3db19a8-a652-4658-914c-625f6ae69aeb" width="510" height="750"/></div> 

### 3. 기타 상세 페이지
#### 3-1. 퀴즈 상세 설명
<span><img src="https://github.com/khlskahd-dasdsad-asdwdw/PROTOTYPE-APP/assets/122766043/0595dc2b-ca50-4ee2-b187-3de2be674b3a" width="490" height="750"/></span>
-----
#### 3-2. 위험도 평가 상세 설명
<span><img src="https://github.com/khlskahd-dasdsad-asdwdw/app/assets/122766043/1f9cd7ef-bd79-4d6c-b3f3-b78e767ad630" width="490" height="750"/></span>
-----
#### 3-3. 주식 투자유형 상세 설명
<span><img src="https://github.com/khlskahd-dasdsad-asdwdw/app/assets/122766043/b069c135-b83b-4adf-84d7-e05656fb51e0" width="490" height="750"/></span>
-----
#### 3-4. 수익률랭킹 상세 설명
<span><img src="https://github.com/khlskahd-dasdsad-asdwdw/PROTOTYPE-APP/assets/122766043/0a29add9-a82a-4553-8eab-4519294f45f0" width="490" height="750"/></span>

## 시연 영상
아래 '시연영상보기' 링크로 들어가 시연영상을 확인해주세요<br/>

현재 까지의 개발은 프로토타입이고 앱을 배포하기까지에는 어려움이 있어 시연영상을 촬영하였습니다. <br/>
해당 촬영영상은 Flutter에서 제공하는 디버깅에서 촬영된 영상입니다. <br/>
위에서 소개된 과정을 따라서 Flutter 를 실행이 가능하다면 직접 프로토타입을 경험해 볼 수 있습니다 ✨
<br/>
<br/>
<a href="https://youtu.be/IwJkYmmxSGU">시연영상 보기</a>


