//SPDX-License-Identifier: UNLICENSED

pragma solidity >=0.4.11;

// 빠칭코 머신
contract pachinko {

	struct User {
		address addr;
		uint coin;
	}
	address payable public owner;
	uint public numUsers;
	uint public totalCoins;
	mapping (uint => User) public users;

	constructor  () payable {
		owner = payable(msg.sender);

		totalCoins = msg.value;

	}
	
	// 사용자가 코인을 넣어서 빠칭코 머신 실행
	function coinInput() payable public {
		

		User storage user = users[numUsers++];
		user.addr = msg.sender;
		user.coin = msg.value;
		totalCoins += user.coin;
	}
	
	// 현재 모인 금액을 보여주는 함수
	function getTotalCoin() view public returns (uint) {
		return totalCoins;
	}
	
	function success() payable public {
		if(!payable(msg.sender).send(address(this).balance * 90 / 100)){ //당첨 시 전체금액의 90프로만 수령 가능하다.
			revert();
		}
		if(!owner.send(address(this).balance)){ //계약 주인이 10프로의 수수료를 가져간다.
			revert();
		}
		totalCoins = 0;
		
	}
	
}
