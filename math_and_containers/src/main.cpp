#include "foo.h"
#include <iostream>
#include "Transform.hpp"
#include "../include/main.hpp"

#include <chrono>
#include <iomanip>
#include <cmath>
#include <ranges>

// sequential containers
#include <deque>
#include <array>
#include <list>
#include <map>
#include <set>

// algorithms
#include <numeric>
#include <algorithm>


// Asociative containers
#include <stack>
#include <queue> // std::queue<T> & std::priority_queue<T>

// iterator
#include <iterator>

void transform_logic_check()
{
    Transform<float> t_f{22.9f, 33.3f, 44.4f, 3, 4};

    for (const auto& i: t_f.get_transform_ro())
    {
        std::cout << i << '\n';
    }
}

void asociative_containers()
{
    auto stack{[](){
    
    std::cout << "std::stack<T>\n";
    std::stack<int> stack{};

    stack.push(3);
    stack.push(4);
    stack.push(5);
    stack.push(6);
    stack.push(7);
    stack.push(8);

    stack.pop();
    stack.pop();
    stack.pop();

    while (!stack.empty())
    {
        std::cout << stack.top() << '\t';
        stack.pop();
    }
    std::cout << '\n';

    }};
    stack();

    auto queue{[](){

    std::cout << "queue\n";

    std::queue<float> queue{};
    queue.push(99.9f);
    queue.push(44.4f);
    queue.push(22.2f);
    queue.push(33.f);

    queue.pop(); // 99.9f deleted.

    while(!queue.empty())
    {
        std::cout << queue.front() << '\t';
        queue.pop();
    }
    std::cout << '\n';

    }};
    queue();

    auto priority_queue{[](){

        std::cout << "priority queue\n";

        std::priority_queue<double> pq{};

        pq.push(99.64);
        pq.push(99.65);
        pq.push(99.99);
        pq.push(99.99);
        pq.push(93.67);

        pq.pop(); // 99.99
        pq.pop(); // 99.99

        while(!pq.empty())
        {
            std::cout << pq.top() << '\t';
            pq.pop();
        }

        std::cout << '\n';

    }};
    priority_queue();

    auto pq_char{[](){

        std::cout << "std::priority_queue<char>\n";
        std::priority_queue<char> pq_c{};
        pq_c.push('z');
        pq_c.push('x');
        pq_c.push('y');
        pq_c.push('r');
        pq_c.push('t');
        pq_c.push('u');
        pq_c.push('v');

        pq_c.pop();
        pq_c.pop();
        pq_c.pop();

        while(!pq_c.empty())
        {
            std::cout << pq_c.top() << '\t';
            pq_c.pop();
        }

        std::cout << '\n';
    }};
    pq_char();
}

void iterators()
{
    auto semi_open{[](){

    std::vector<float> vf{};

    if (vf.begin() == vf.end()) // Implementación formal de rangos semi-abiertos.
    {
        std::cout << std::boolalpha << true << '\n';
    }
    else
    {
        std::cout << std::boolalpha << false << '\n';
    }

    }};

    auto vec_it{[](){

        std::vector<char> v_c{};

        for (char cont{'a'}; cont <= 'z'; ++cont)
        {
            v_c.push_back(cont);
        }

        std::vector<char>::iterator v_cit{v_c.begin()};

        while (v_cit != v_c.end())
        {
            std::cout << *v_cit << '\n';
            ++v_cit;
        }
        
    }};
    // vec_it();

    auto set_it{[](){

        std::set<std::string> set{};

        set.insert("Pedro");
        set.insert("Pablo");
        set.insert("Ana");
        set.insert("Maria");
        set.insert("Carla");
        set.insert("Yasmin");

        std::set<std::string>::iterator set_it{set.begin()};

        // set_it = set.begin();

        while (set_it != set.end())
        {
            std::cout << *set_it << '\t';
            ++set_it;
        }
        


    }};
    // set_it();

    auto map_it{[](){

        std::map<std::size_t, std::string> map{};

        map.insert(std::make_pair(001, "Pedro"));
        map.insert(std::make_pair(002, "Carlos"));
        map.insert(std::make_pair(003, "Ñañi"));
        map.insert(std::make_pair(004, "Ñañi"));

        std::map<std::size_t, std::string>::const_iterator map_it{map.cbegin()};

        // auto map_it2{map.cbegin()}; // Equivalente: L:206 

        while(map_it != map.cend())
        {
            std::cout << '[' << map_it->first << ", " << map_it->second << ']' <<  '\n';
            ++map_it;
        }
        
    }}; 
    // map_it();
}

void algorithms()
{
    auto iota{[](){

    std::vector<char> vc(26);

    std::iota(vc.begin(), vc.end(), 'a');

    for (auto i : vc)
    {
        std::cout << i << '\t';
    }

    }};
    // iota();

    auto iota_enum{[](){

        std::vector<ID> vc_id(10);

        std::vector<ID>::const_iterator vc_id_it{vc_id.begin()};

        std::iota(vc_id.begin(), vc_id.end(), ID::none);

        while (vc_id_it != vc_id.end())
        {
            std::cout << static_cast<int>(*vc_id_it) << '\t';
            ++vc_id_it;
        }
        std::cout << "\nElemento mas pequenho de vc_id: " << static_cast<int>(*std::min_element(vc_id.begin(), vc_id.end())) << '\n';
        std::cout << "Elemento mas grande de vc_id: " << static_cast<int>(*std::max_element(vc_id.begin(), vc_id.end())) << '\n';
        
    }};
    // iota_enum();

    auto iota_char{[](){

        Transform<float> t{0.0, 0.0, 0.0};

        std::cout << t << '\n';
        // std::list<Transform<float>> l(5);

        // std::iota(l.begin(), l.end(), Transform{0.0, 0.0, 0.0});

        // std::list<Transform<float>>::const_iterator l_it{l.cbegin()};

        // while (l.empty())
        {
            // std::cout << *l_it
        }
        

    }};
    // iota_char();

    auto subranges{[](){

        std::vector<char> apple{'m', 'a', 'n', 'z', 'a', 'n', 'a'};

        // std::multiset<char>::iterator apple_it{apple.begin()};
        auto apple_it{apple.begin()};

        while (apple_it != apple.end())
        {
            std::cout << *apple_it << '\t';
            ++apple_it;
        }
        std::cout << '\n';

        auto it{min_element(begin(apple) + 2, end(apple) - 2)};

        std::cout << *it << '\n';
        
    }};
    // subranges();

    auto subranges_classes{[](){


        std::vector<Transform<float>> v_tf(500);

        std::iota(v_tf.begin(), v_tf.end(), Transform{0.0f, 0.0f, 0.0f});

        std::vector<Transform<float>>::const_iterator vtf_it{v_tf.begin()};

        while (vtf_it != v_tf.end())
        {
            std::cout << *vtf_it << '\n';
            ++vtf_it;
        }
        
    }};
    subranges_classes();

}

void search_subrange()
{

    auto subranges_classes2{[](){

        std::vector<Transform<float>> vtf(500);

        std::iota(vtf.begin(), vtf.end(), Transform<float>{0.0, 0.0, 0.0});

        const auto vtf_cit{vtf.cbegin()};

        for (auto it{vtf_cit + 200}; it < vtf.end(); ++it)
        {
            std::cout << *it << '\n';
        }

        // std::cout << "La distancia entre el primer y último elemento es: " << std::distance(vtf.begin(), vtf.end());
        

    }};
    subranges_classes2();
}

void merge()
{
    std::vector<float> vt_t1(500);
    std::iota(vt_t1.begin(), vt_t1.end(), 0.0f);

    std::vector<float> vt_t2(500);
    std::iota(vt_t2.begin(), vt_t2.end(), 0.0f);

    std::vector<float> vt_t3{};

    vt_t3.resize(vt_t1.size() + vt_t2.size());

    std::merge(vt_t1.begin(), vt_t1.end(), vt_t2.begin(), vt_t2.end(), vt_t3.begin());


    std::cout << "El tamaño de vt_t3 es de: " << vt_t3.size() << '\n';
}

int main(int argc, char **argv) {

    // asociative_containers();
    // iterators();

    /**
     * @brief Impresión por rango completo.
     * 
     */
    
    const auto start{std::chrono::steady_clock::now()};
    algorithms();
    const auto finish{std::chrono::steady_clock::now()};
    const std::chrono::duration<double> elapsed_seconds{finish - start};
    std::cout << "La Impresión por rango completo duró: " << std::setprecision(5) << elapsed_seconds << '\n'; 


    /**
     * @brief Impresión por subrango.
     * 
     */
    const auto start1{std::chrono::steady_clock::now()};
    search_subrange();
    const auto finish1{std::chrono::steady_clock::now()};
    const std::chrono::duration<double> elapsed_seconds1{finish1 - start1};

    std::cout << "La Impresión por subrango duró: " << std::setprecision(5) << elapsed_seconds1 << '\n';

    


    return 0;
}
