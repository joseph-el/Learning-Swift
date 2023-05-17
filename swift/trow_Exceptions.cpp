#include <climits>
# include <iostream>
#include  <pthread.h>
#include <sys/syslimits.h>

class UI {
    private :
        int x;
        int y;
    public :
        UI() : x(10), y(1) {}

        void UI::DS() {
            std::cout << "X " << x << "Y " << y << std::endl;
        }
};

int foo(int x, int y)
{
    int z{ y };
    if (x > y)
    {
        z = x;
    }
    return z;
}

int main() {

 


}