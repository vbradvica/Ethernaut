## Follow the steps below


1. `await contract.info()`  
"You will find what you need in info1()."  


2. `await contract.info1()`  
"Try info2(), but with "hello" as a parameter."  


3. `await contract.info2('hello')`  
"The property infoNum holds the number of the next info method to call."  


4. `await contract.infoNum()`  
42  


5. `await contract.info42()`  
"theMethodName is the name of the next method."  


6. `await contract.theMethodName()`  
"The method name is method7123949."  


7. `await contract.method7123949()`  
"If you know the password, submit it to authenticate()."  


8. We should explore the contract ABI. There is a method called password that returns a string. Let's call that. `await contract.password()`  
"ethernaut0"  


9. `await contract.authenticate('ethernaut0')`  


10. Submit instance 🎉