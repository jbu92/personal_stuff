#include <stack>
#include <iostream>
#include <cstdlib>
#include <string.h>
using namespace std;
double add(double, double);
double subtract(double, double);
double multiply(double, double);
double divide(double, double);

int main(){
	char input[100];
	double a, b;
	cout << "Enter input string: ";
	cin.getline(input,100);
	stack<double> mystack;
	char * pch;
	pch = strtok(input, " ");
	while(pch != NULL){
		if(strcmp(pch, "/") == 0){
			a = mystack.top();
			mystack.pop();
			b = mystack.top();
			mystack.pop();
			mystack.push(divide(a, b));
		}
		else if(strcmp(pch, "+") == 0){
			a = mystack.top();
			mystack.pop();
			b = mystack.top();
			mystack.pop();
			mystack.push(add(a, b));
		}
		else if(strcmp(pch, "-") == 0){		
			a = mystack.top();
			mystack.pop();
			b = mystack.top();
			mystack.pop();
			mystack.push(subtract(a, b));
		}
		else if(strcmp(pch, "*") == 0){
			a = mystack.top();
			mystack.pop();
			b = mystack.top();
			mystack.pop();
			mystack.push(multiply(a, b));
		}
		else{
			mystack.push(atoi(pch));
		}
		pch = strtok(NULL, " ");
	}
	cout << mystack.top() << endl;
	return 0;
}

double add(double a, double b){
	return b + a;
}
double subtract(double a, double b){
	return b - a;
}
double multiply(double a, double b){
	return b * a;
}
double divide(double a, double b){
	return b/a;
}
