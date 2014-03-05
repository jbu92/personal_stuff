#include<iostream>
#include<stack>
using namespace std;

int main(){
	stack<int> mystack;
	mystack.push(85);
	mystack.push(90);
	int boop = mystack.top();
	mystack.pop();
	cout << boop;
	return 0;
}
