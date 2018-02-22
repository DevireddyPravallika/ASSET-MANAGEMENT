
pragma solidity ^0.4.19;
  
contract Assets{

    address trust; 
    bool _flag=false; 
    
	    function Assets() public {	
        trust =msg.sender;     }
	modifier ifOwner(){
       if (trust!=msg.sender){ 
            throw;     }
        _; 
    }
    function depositFunds() public payable{
        
    }
	function withDrawFunds(uint amount) public ifOwner{
        if(trust.send(amount)){
            _flag=true;
        }
        else {
            _flag=false;
        }
    }
  function transferFunds(uint amount)public ifOwner{
        if(trust.send(amount)){
            _flag=true;
        }
        else {
            _flag=false;
        }
        
  
	function getfunds() constant public ifOwner returns(uint){
        return this.balance;    }
    
    
}
