"""
Class SmarthPhone - to practice class concepts
and python behaviors.

Homework:

- Setting a default value for an attribute. => OK

- Modifying attributes values, directly (unrecommended), with functions,
  and apply some creative update.

- Naming conventions to attributes, getters and setters.

- Implement decorators:
- @property for getters => OK
- @val.setter for setters => OK

"""


class SmartPhone:
    """Simple attempt to modeling a SmarthPhone."""

    def __init__(self, brand, model, year, cpu='Snap Dragon', gpu='Nvidia'):
        """__ini__ Method => Pass args."""
        self._brand = brand
        self._model = model
        self._year = 2023
        self._cpu = cpu
        self._gpu = gpu

    # Getters
    @property
    def brand(self):
        """r_brand"""
        return self._brand

    @property
    def model(self):
        """r_model"""
        return self._model

    @property
    def year(self):
        """r_year"""
        return self._year

    @property
    def cpu(self):
        """r_cpu"""
        return self._cpu

    @property
    def gpu(self):
        """r_gpu"""
        return self._gpu

    # Setters

    @brand.setter
    def brand(self, new_brand):
        """set brand"""

        self._brand = new_brand

    @model.setter
    def model(self, new_model):
        """set model"""

        self._model = new_model

    @year.setter
    def year(self, new_year):
        """set year"""

        self._year = new_year

    @cpu.setter
    def cpu(self, new_cpu):
        """set cpu"""

        self._cpu = new_cpu

    @gpu.setter
    def w_gpu(self, new_gpu):
        """set gpu"""

        self._gpu = new_gpu
