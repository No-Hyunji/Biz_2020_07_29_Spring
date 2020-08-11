# WAS : Web Application Service(Server)
* Web Browser를 사용하여 Server와 통신을 하면서 어떤 일을 수행하는 어플리케이션
* 클래스에 포함된 method는 함수라고 표현하자 
## WEB Browser에서 Server 보내는 Request
* a href ="주소" : Hyper Text를 보여주고, Hyper Text를 클릭했을 때 Server로 
Request를 보내는 가장 기본적인 형태 
이 Req를 Controller에서 받아서 처리할 때는 method=Request.GET로 지정된
method가 연산을 수행하는 처리를 한다.

* form tag의 button을 클릭했을 때 Server로 Re02q를 보내는 형태
input box에 문자열을 입력한 후 button을 클릭하면 그 문자열들을 Query String이라는
형식으로 바꾸어서 Server에 한꺼번에 Request한다. 

* form tag에 특별히 method라는 것을 지정하지 않으면
Controller에서 처리할 때는 method=Request.GET로 지정된 함수가 처리한다. 
* form tagdp method를 지정(통상 POST)하면
Controller에서 처리할 때는 지정된 처리가 표현된 함수가 처리한다. 
