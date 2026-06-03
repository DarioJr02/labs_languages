"""This class is to show the Composition concept."""

from class_cpu_sub_snapdragon import Snapdragon


class MotherBoard:
    """MotherBoard class"""

    def __init__(self, brand_name, model, year):
        self._brand_name = brand_name
        self._model = model
        self._year = year
        self._cpu = Snapdragon(2024, "Qualcomm", "Elite", 8)
