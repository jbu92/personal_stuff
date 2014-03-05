#include <string>
#include <fstream>
#include <iostream>
using namespace std;

int main(int ARGC, char**ARGV){
	string filename;
	string line;
	ifstream fin;
	ofstream fout;
	cout << "Please enter a filename: ";
	cin >> filename;
	fin.open(filename.c_str());
	while(!fin.eof()){
		getline(fin, line);
		cout << line << endl;
	}
	fin.close();
}
