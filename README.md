# conv2kr
forked from https://github.com/hongcho/conv2kr

한국어의 로마자 변환 (RRK; Revised Romanization of Korean)을 수행하는 스크립트.

코드의 저작권은 Younghong "Hong" Cho 님께 귀속되어 있으며, 본 저장소에 있는 수정본은 이를 UTF-8 인코딩에서 잘 변환되도록 일부분을 수정한 것입니다. 
UTF-8을 사용함으로, EUC-KR 캐릭터 인코딩의 문제로 소실되는 일부 문자열을 좀 더 올바르게 반환합니다.
원본의 라이선스와 동일한, GNU GPL v3 라이선스 하에서 배포됩니다.

사용법은 다음과 같습니다.

```bash
$ perl ./c2ksample-utf8.pl < [입력 UTF-8 파일] > [RRK 변환 출력 파일]
```
