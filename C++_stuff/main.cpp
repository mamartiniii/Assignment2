#include <iostream>
#include <fstream>
#include <cassert>
#include <vector>
#include <string>
#include <iomanip>

int main() {

    double c = 380*1000;    // micrometer of chord


    std::vector<double> vec1;
    std::vector<double> vec2;
    std::vector<std::string> str_arr;

    std::cout << "Il file con le coordinate (e altri caratteri vari) deve chiamarsi coord.txt e trovarsi in cmake-build-debug" << std::endl;
    std::ifstream file("coord.txt");

    assert(file.is_open());

    int j = 0;
    int k = 2;
    while (file.peek() != EOF)
    {
        double num;
        std::string str;
        file >> num;

        if (j < 2) {
            vec1.push_back(num);     // first two columns are saved in the first vector
            j++;

            if(j == 2)
            {
                k = 0;
            }
        } else
        {
            vec2.push_back(num);   // last two columns are saved in the second vector
            k++;

            if( k == 2)
            {
                j = 0;
            }
        }

        file.seekg(+1, std::ios::cur);
        char ch;
        file >> ch;
        while(ch != '0' && ch != '-' && !file.eof() ) {
            //std::cout << ch << std::endl;
            file >> ch;
        }
        file.seekg(-1, std::ios::cur);





    }

    for (int i = 0; i<vec1.size(); i++) {
        std::cout << vec1[i] << std::endl;
    }


    file.close();

    std::ofstream file_up("down.txt");
    std::ofstream file_down("up.txt");


    assert(file_up.is_open());
    assert(file_down.is_open());


    file_up.precision(6);
    file_down.precision(6);
    int w = 1;

    int i = 0;

    file_up << 1 << "\t" << w << "\t";

    for(auto &e : vec1) {


        file_up << std::setprecision(0) << std::fixed<<  e*c;
        file_up << "\t";

        i++;


        if(i ==2 && e != vec1[vec1.size()-1]) {

            file_up << 0.0000;
            file_up << "\n";
            w++;
            file_up << 1 << "\t" << w << "\t";
            i = 0;





        } else if (e == vec1[vec1.size()-1]) {

            file_up << 0.0000;
        }


    }

    w = 1;

    i = 0;

    file_down << 1 << "\t" << w << "\t";

    for(auto &e : vec2) {


        file_down << std::setprecision(0) << std::fixed << e*c;
        file_down << "\t";

        i++;


        if(i ==2 && e != vec2[vec2.size()-1]) {

            file_down << 0.0000;
            file_down << "\n";
            w++;
            file_down << 1 << "\t" << w << "\t";
            i = 0;





        } else if (e == vec2[vec2.size()-1]) {
            file_down << 0.0000;
        }


    }



    file_up.close();
    file_down.close();

    std::cout << "Ho prodotto un file con dentro le coordinate arrangiate in maniera corretta" << std::endl;
    return 0;
}
