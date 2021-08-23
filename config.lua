Config = {}

--Coordinates
Config.kincs = {
	vector3(499.63, 5607.63, 795.67), --1
	vector3(455.46, -839.52, 26.65), --2
	vector3(-336.02, -958.33, 30.61), --3
	vector3(694.34, 551.54, 128.05), --4
	vector3(-1577.89, -970.92, 16.41), --5
	vector3(-1888.38, -582.74, 10.83), --6
	vector3(-2293.29, 209.6, 166.6), --7
	vector3(-1350.04, 21.74, 52.45), --8
	vector3(3604.26, 3736.03, 27.69), --9
	vector3(2136.27, 4831.88, 40.64), --10
	vector3(1710.66, 3611.14, 34.09), --11
	vector3(781.72, -3187.66, 5.09), --12
	vector3(153.92, -3108.18, 4.9), --13
	vector3(-347.7, -1862.19, 27.66), --14
	vector3(185.13, -730.53, 46.08), --15
	vector3(2654.32, 1425.1, 23.52), --16
	vector3(2563.98, 2587.49, 37.08), --17
	vector3(2949.65, 2741.14, 43.03), --18
	vector3(1910.55, 3283.843, 43.56), --19
	vector3(67.15, 3655.69, 38.67), --20
	vector3(-2297.51, 3191.1, 31.81), --21
	vector3(170.62, -908.9, 29.69), --22
	vector3(677.86, 686.74, 129.46), --23
	vector3(5.48, -1386.95, 29.29), --24
	vector3(857.48, -948.71, 25.28), --25
	vector3(1665.19, 0.73, 165.12), --26
	vector3(-90.29, -1010.4, 26.31), --27
	vector3(2520.47, 2621.87, 36.94), --28
	vector3(1201.26, 2656.5, 36.85), --29
	vector3(-2349.48, 2815.32, 0.71), --30
	vector3(37.21, 6555.49, 30.45), --31
	vector3(-927.89, 6148.93, 4.56), --32
	vector3(-1280.2, 2553.37, 17.39), --33
	vector3(-2472.78, 2305.78, 31.01), --34
	vector3(-1663.54, -292.07, 50.88), --35
	vector3(1077.88, -750.55, 56.97), --36
	vector3(-1428.16, -420.71, 35.36), --37
	vector3(-2115.73, -316.28, 12.59), --38
	vector3(-769.33, -931.08, 17.07), --39
	vector3(-221.0, -1498.05, 30.61), --40
	vector3(244.14, -1273.74, 28.44), --41
	vector3(1789.34, -1541.54, 112.26), --42
	vector3(1282.99, -725.94, 63.49), --43
}

--A kincses láda object neve
Config.object = "xm_prop_x17_chest_closed"
--A tárgy amit a játékos kap tárgy nyitása esetén
Config.nyeremenytargy = "diamond_ore"
--A mennyisége annak, hogy mennyi tárgyat kap a játékos amennyiben tárgyat nyit a ládából
Config.nyeremenytargyszam = 25
--Nyerési esélyek. Most 1 a 15-höz
Config.nyeremenyesely = 15 --Minimum 3
--A kulcs item neve ami kell a láda kinyitásához
Config.kulcsitem = "kulcs"
--Mennyit kell várni, hogy a játékos megint kinyithasson egy ládát (in ms)
Config.varakozas = 100000
--Milyen távol legyen a játékos a ládától, hogy megjelenjen a felirat és kinyithassa a ládát. (kordinátákban)
Config.tavolsag = 2
--Üzenetek és szövegek
Config.szoveg = "Kincsesláda [E]"
Config.penz = "Gratulálunk! Találtál egy kincsesládát és pénz volt benne!"
Config.gyemant = "Gratulálunk! Találtál egy kincsesládát és 25 csiszolt gyémánt volt benne!"
Config.nincskulcs = "Szükséged van egy kulcsra, hogy kinithasd ezt a kincses ládát!"
--Howgyan kapja a pénzt a játékos. True = készpénz; false = bank
Config.keszpenz = true
--Mennyit kapjon a játékos a pénzt kap a ládából
Config.nyeremenynagy = math.random(8000, 10000)
-- Mennyit kapjon a játékos a kevesebb pénzt kap a ládából.
Config.nyeremeny = math.random(5000, 8000)
--Discord webhook a logoláshoz
Config.discord = "WEBHOOK_URL"
--Discord üzenetek
Config.dcuzenetpenz = " Kinyitott egy kincsesládát és pénz volt benne!"
Config.dcuzenetpenzkeves = " Kinyitott egy kincsesládát és kicsit kevesebb pénz volt benne!"
Config.dcuzenetdia = " Kinyitott egy kincsesládát és gyémánt volt benne!"