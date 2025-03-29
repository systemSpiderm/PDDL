#include <iostream>
#include <fstream>
#include <string>
#include <vector>
using namespace std;
vector<int> initial_state = {14, 10, 6, 0,
                            4, 9, 1, 8,
                            2, 3, 5, 11,
                            12, 13, 7, 15};
// vector<int> initial_state = {6, 10, 3, 15,
//                             14, 8, 7, 11,
//                             5, 1, 0, 2,
//                             13, 12, 9, 4};
// vector<int> initial_state = {11, 3, 1, 7,
//                             4, 6, 8, 2,
//                             15, 9, 10, 13,
//                             14, 12, 5, 0};
// vector<int> initial_state = {0, 5, 15, 14,
//                             7, 9, 6, 13,
//                             1, 2, 12, 10,
//                             8, 11, 4, 3};                                             
vector<int> goal_state = {1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,0};
void read_and_test(const char* filename)
{
    ifstream file(filename);
    if (!file.is_open())
    {
        cerr << "打开失败" << endl;
        exit(1);
    }
    string line;
    while (getline(file, line))
    {
        if (line[0] == 's')  continue;
        int num1, num2;
        int i = line.find('l'), j;
        for (j = i + 1; line[j] >= '0' && line[j] <= '9' && j < line.size(); j++);
        string s1 = line.substr(i + 1, j - i - 1);
        i = line.find('l', i + 1);
        string s2 = line.substr(i + 1, line.size() - i - 1);
        num1 = stoi(s1);
        num2 = stoi(s2);
        swap(initial_state[num1 - 1], initial_state[num2 - 1]);
    }
    if (initial_state == goal_state)  cout << "The answer is true." << endl;
    else  cout << "The answer is wrong." << endl;
}
int main()
{
    read_and_test("domains/puzzle/answer1.txt");
    return 0;
}