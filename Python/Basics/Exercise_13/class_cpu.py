"""Class_CPU."""


class CPU:
    """Simple attempt to build a CPU class."""

    def __init__(self, year, brand_name, model, cores, threads=0):
        self._year = year
        self._brand_name = brand_name
        self._model = model
        self._cores = cores
        self._threads = self._cores * 2

    """
    Getters
    """

    @property
    def brand_name(self):
        """get brand_name"""
        return self._brand_name

    @property
    def model(self):
        """get model"""
        return self._model

    @property
    def cores(self):
        """get cores"""
        return self._cores

    @property
    def threads(self):
        """get threads"""
        return self._threads

    @property
    def year(self):
        """get year"""
        return self._year

    """
    Setters
    """

    @brand_name.setter
    def brand_name(self, new_brand_name):
        """set brand_name"""

        self._brand_name = new_brand_name

    @model.setter
    def model(self, new_model):
        """set model"""

        self._model = new_model

    @cores.setter
    def cores(self, update_cores):
        """set cores"""

        self._cores = update_cores
        self._threads = update_cores * 2

    @year.setter
    def year(self, update_year):
        """set year"""

        self._year = update_year

    def func_to_override(self):
        """This is a parent class function to override."""
        return f"This is a {type(self)} function."
