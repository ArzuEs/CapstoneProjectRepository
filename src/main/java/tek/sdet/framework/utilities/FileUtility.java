package tek.sdet.framework.utilities;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;

public class FileUtility {
	
	//  the job of this method is that extend the inputstream 1. read file, and write file we uset to read the file
	// read the Address file path
	public static FileInputStream getFileInputStream(String filePath) throws FileNotFoundException {
		return new FileInputStream(new File(filePath));
		
	}

}
