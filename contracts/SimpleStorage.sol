// SPDX-License-Identifier: MIT
pragma solidity >=0.4.21 <0.7.0;


contract SimpleStorage {
    struct Topic {
        string title;//标题
        string content;//内容
        uint id;//微博id
        address sender;
        uint ts;//发布时间
        string owner;//拥有者
        string neixing;
    }
    uint id=0;
    Topic[] public topics;


    function postTopic(string title,string content,string owner,string neixing) public{
        id=id+1;
        topics.push(Topic(title,content,id,msg.sender,now,owner,neixing));
    }

    function getCount() public view returns(uint){
        return topics.length;
    }

    function SearchByID(uint id) public view returns(string,string,uint,string,uint,string,string){
        for(uint i = 0; i < topics.length; i++){
            if(topics[i].id==id){
                return (topics[i].title,topics[i].content,topics[i].id,"",topics[i].ts,topics[i].owner,topics[i].neixing);
            }
        }
        return ("","",0,"",0,"","");
    }

}
