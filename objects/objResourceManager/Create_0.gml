if (instance_number(objResourceManager) > 1)
	throw ("objResourceManager already exists");
global.deltaTime = 0;
randomise();

global.saveLocation = working_directory  + "saveData.dat";
global.highScore = 0;