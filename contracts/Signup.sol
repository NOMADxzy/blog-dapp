// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;

contract Signup {

    struct Account {
        string username;//用户名
        string password;//密码
        string avatar;//头像
        uint ts;//注册时间
        bool admin;//是否管理员
    }
    Account[] public accounts;//账户列表

    function signup(string username,string password) public {//用户注册微博
        bool admin=false;
        if(accounts.length==0) admin=true;
        accounts.push(Account(username,password,"public/logo192.png",now,admin));
    }
    function getCount() public view returns(uint){
        return accounts.length;
    }
    function check(string username,string password) public view returns(int){
        for(uint i = 0; i < accounts.length; i++){
            if(keccak256(accounts[i].username) == keccak256(username)&&keccak256(accounts[i].password) == keccak256(password)){
                if(accounts[i].admin) return 1;
                else return 0;
            }
        }
        return -1;
    }

}
