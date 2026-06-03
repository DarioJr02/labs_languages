"""This class is to show the Composition concept."""

from class_CPU_sub_Snapdragon import Snapdragon


class MotherBoard:
    """MotherBoard class"""

    def __init__(self, brand_name, model, year, cpu):
        self._brand_name = brand_name
        self._model = model
        self._year = year
        self._cpu = Snapdragon(2024, "Qualcomm", "Elite", 8)
