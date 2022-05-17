# Pachinko : 슬롯머신 웹 사이트

![html badge](https://img.shields.io/badge/-TechStack-white)  
![html badge](https://img.shields.io/badge/-html-black)
![css badge](https://img.shields.io/badge/-css-black)
![bootstrap badge](https://img.shields.io/badge/-bootstrap-black)
![nodejs badge](https://img.shields.io/badge/-node.js-black)
![javaScript badge](https://img.shields.io/badge/-node.js-black)
![solidity badge](https://img.shields.io/badge/-solidity-black)
![ethereum badge](https://img.shields.io/badge/-ethereum-black)

네트워크 최신기술 수업 이더리움 네트워크 활용 프로젝트 

## Description

이더리움 스마트 계약 활용 웹 개발 프로젝트 입니다.  
ropsten 테스트 네트워크에서 정상 실행 가능합니다.

### fuction

- 현재 까지 모인 금액 확인 가능
- 일정 코인 지불 후 슬롯 머신 작동
- 당첨 확률 1/100, 당첨시 현재까지 모인 금액 90프로 수령
- 10프로는 계약 주인에게 수수료로 돌아감

## Prerequisite

- node.js 16.14.2
- metamask wallet

## Files

- pachinko.html : 메인 페이지
- pachinko.sol : Dapp 코드
- abilist.js : Dapp ABI 데이터
- server.js : 간단한 node.js 기반 서버
- web3.min.js, web3.min.js.map : node.js web3 모듈

## Usage

```
$ node server.js
```
- localhost:8080/pachinko.html 접속
- metamask 로그인 / ropsten network(ETH) 활용
- 게임을 하기 위해선 설정된 코인 만큼의 잔액 필요

