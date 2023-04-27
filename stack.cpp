#include <iostream>
#include <stack>

using namespace std;

int main(){
    std::stack <int> mystack;
    mystack.push(1);
    mystack.push(2);
    mystack.push(3);
    mystack.push(4);
    mystack.push(5);

    std::cout << "Top element: " << mystack.top() << std::endl;

    // Pop elements from the stack
    mystack.pop();
    mystack.pop();

    // Print the top element again
    std::cout << "Top element: " << mystack.top() << std::endl; 

    // Check if the stack is empty
    if (mystack.empty()) {
        std::cout << "Stack is empty" << std::endl;
    } else {
        std::cout << "Stack is not empty" << std::endl;
    }

    return 0;
}
