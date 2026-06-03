"""This file is to test the Inheritance concept in python."""

from class_CPU import CPU


"""Inheritance"""


class Snapdragon(CPU):
    """Basic inheritance and using super() method."""

    def __init__(self, year, brand_name, model, cores, threads=0):
        """Init method from Snapdragon(CPU)"""

        super().__init__(year, brand_name, model, cores, threads)
        self._battery = {"Mah": 3000}
        self._storage = {"SSD": 512}

    @property
    def battery(self):
        """Get battery size."""
        return self._battery

    @property
    def storage(self):
        """Get internal space"""
        return self._storage.get("SSD")

    @property
    def storage_type(self):
        """Get storage type"""
        return list(self._storage.keys())

    @battery.setter
    def battery(self, new_batery_size):
        """Set battery size."""
        self._battery["Mah"] = new_batery_size

    # Overriding attributes in a child class.
    @storage.setter
    def storage(self, new_storage_type):
        """Set storage size."""
        self._storage[new_storage_type[0]] = new_storage_type[1]

    # Overriding methods in a child class.
    def func_to_override(self):
        """This is a child function to override."""
        return f"This is a {type(self)} function."
