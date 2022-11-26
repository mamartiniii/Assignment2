#include <iostream>
#include <fstream>
#include <cassert>
#include <vector>
#include <string>
#include <iomanip>

int main() {

    double c = 223.4;    // mm of chord


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
            vec1.push_back(num);     // first two rows are saved in the first vector
            j++;
            std::cout << "sono entrato qui"<< std::endl;
            if(j == 2)
            {
                k = 0;
            }
        } else
        {
            vec2.push_back(num);   // last two rows are saved in the second vector
            k++;
            std::cout << "j vale " << j << std::endl;
            std::cout << "k vale " << k << std::endl;
            if( k == 2)
            {
                j = 0;
            }
        }

        file.seekg(+1, std::ios::cur);
        char ch;
        file >> ch;
        while(ch != '0' && !file.eof() ) {
            //std::cout << ch << std::endl;
            file >> ch;
        }
        file.seekg(-1, std::ios::cur);





    }

    file.close();

    std::ofstream file_out("coordinates_ready.txt");
    assert(file_out.is_open());

    file_out.precision(4);
    int w = 1;
    int i = 0;
    file_out << 1 << "\t" << w << "\t";

    for(auto &e : vec1) {


        file_out << std::setprecision(4)<< std::fixed <<  e*c;

        file_out << "\t";

        i++;
        if(i == 2) {
            file_out << 0.0000;
            file_out << "\n";
            i = 0;
            w++;
            file_out << 1 << "\t" << w << "\t";


        }

    }
    for(auto &e : vec2) {


        file_out << e*c;
        file_out << "\t";

        i++;
        if(i == 2 && e != vec2[vec2.size()-1]) {
            file_out << 0.0000;
            file_out << "\n";
            i = 0;
            w++;
            file_out << 1 << "\t" << w << "\t";


        }

    }

    file_out << 0.0000;


    file_out.close();

    std::cout << "Ho prodotto un file coordinates_ready.txt con dentro le coordinate arrangiate in maniera corretta" << std::endl;
    return 0;
}
