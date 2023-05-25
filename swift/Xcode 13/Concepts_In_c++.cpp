# include <iostream>
# include <memory>
# include <string>

using namespace std;

void set(int x, int v) {
    int z{ x };
    cout << "Value of z " << z << endl;
}

int foo(int x, int y)
{
    int z{ y };
    if (x > y)
    {
        z = x;
    }
    return z;
}

int main()
{
    {
        set(3, 2);
        return -2;
    }

    {
        const int U = 33;
        cout << "with const " << U << endl;

        std::cout << "address " << &U << endl;
        // int *ptr = &U;
    }

    return 5;
    // std::string (char *)🍋 = "HELLO"
    int x = 2 | 3;
    cout << x << endl;

    
}