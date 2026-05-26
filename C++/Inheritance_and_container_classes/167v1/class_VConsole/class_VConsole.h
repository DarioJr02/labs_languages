#include "Header.h"

class Prototype
{
    public:
    // CPU
    enum CpuType 
    {
        intel,
        amd,
        maxCpu,
    };

    // GPU
    enum GpuType
    {
        nvidia,
        radeon,
        maxGpu,
    };

    private:
    // v_members
    std::string m_name{};
    int m_nModel{};
    int m_generation{};

    // Power and services
    bool m_isPowered{};
    bool m_isOnline{};

    // Specs
    CpuType m_cpu{};
    GpuType m_gpu{};
    int m_ram{};
    double m_storage{};

    // Launch year and price
    int m_launchYear{};
    double m_price{};

    // Privada porque setIsPowered y setIsOnline hacen uso de ella, no interesa su uso arbitrario en otras clases derivadas ni fuera del programa.
    void enforcePowerOnlineInvariant()
    {
        if(!m_isPowered && m_isOnline)
        {
            m_isOnline = false;
            logPowered();
            logOnline();
        }
    }
    
    protected:
    /* Motivo: Aún sin conocimiento de clases abstractas, solo aplicando lo conocido hasta ahora, por lo tanto,
    este constructor solo puede ser llamado desde una clase que derive de esta */

    // Constructor
    Prototype(int launchYear, int price,
        const std::string_view name = "Insert name",
        int model = 0,
        int generation = 0,
        bool isPowered = false,
        bool isOnline = false,
        const CpuType cpu,
        const GpuType gpu,
        int ram = 8,
        double storage = 256) 
    : m_launchYear{launchYear}, m_price{price}, m_name{name}, m_nModel{model}, m_generation{generation}, m_isPowered{isPowered}, m_isOnline{isOnline}, m_cpu{cpu}, m_gpu{gpu}, m_ram{ram}, m_storage{storage}
    {
        // Invariant 
        
        assert(model >= 0);
        assert(generation >= 0);
        assert(ram >= 8);
        assert(storage >= 256);

        if (!m_isPowered)
        {
            std::cout << "Console is powered off.";
            m_isOnline = false;
        }

    }

    // Getters
    const std::string_view getName() const {return m_name;}
    const int getModel() const {return m_nModel;}
    const int getGeneration() const {return m_generation;}
    const bool getIsPowered() const {return m_isPowered;}
    const bool getIsOnline() const {return m_isOnline;}
    const CpuType getCPU() const {return m_cpu;}
    const GpuType getGPU() const {return m_gpu;}
    const int getLaunchYear() const {return m_launchYear;}
    const double getPrice() const {return m_price;}

    // Setters
    Prototype& setName(const std::string_view newName) {m_name = newName; return *this;}
    Prototype& setIsPowered(bool newPowered)
    {
        m_isPowered = newPowered;
        logPowered();
        enforcePowerOnlineInvariant();

        return *this;
    }
    Prototype& setIsOnline(bool newOnlineStatus) 
    {
        m_isOnline = newOnlineStatus;
        logOnline();
        enforcePowerOnlineInvariant();

        return *this;
    }
    Prototype& setCPU(const CpuType newCPU) {m_cpu = newCPU; return *this;}
    Prototype& setGPU(const GpuType newGPU) {m_gpu = newGPU; return *this;}


    // CheckInvariants
    void checkModel() const {assert(m_nModel >= 0);}
    void checkGeneration() const {assert(m_generation >= 0);}
    void checkIsPowered() const 
    {
        if (!m_isPowered)
        {
            throw std::runtime_error("Device must be powered ON to continue.");
        }
    }
    void checkIsOnline() const 
    {
        if (!m_isOnline)
        {
            throw std::invalid_argument("This device must be connected to internet to continue.");
        }
    }
    void checkLaunchYear () const {assert(m_launchYear >= 0);}
    void checkPrice() const {assert(m_price >= 0);}

    // CheckObjetcInvariants
    void checkObjectInvariants()
    {
        checkModel();
        checkGeneration();
        checkIsPowered();
        checkIsOnline();
        checkLaunchYear();
        checkPrice();
    }

    // Logging
    void logPowered() const { std::cout << (m_isPowered ? "Device is powered ON.\n" : "Device is powered OFF.\n");}
    void logOnline() const {std::cout << (m_isOnline ? "Device is online.\n" : "Device is offline.\n");}
    
    
};