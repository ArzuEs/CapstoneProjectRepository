package tek.sdet.framework.utilities;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.util.HashMap;

import org.yaml.snakeyaml.Yaml;


// we use  singlito panthers


public class ReadYamlFiles {
	private static ReadYamlFiles readYamlFiles;
	private HashMap propertyMap;
	
	private ReadYamlFiles(String filePath) throws FileNotFoundException {
		FileInputStream fileInputStream = FileUtility.getFileInputStream(filePath);
		Yaml yaml = new Yaml();
		this.propertyMap =yaml.load(fileInputStream);
	}
	
	public static ReadYamlFiles getInstance(String filePath) throws FileNotFoundException {
		if(readYamlFiles == null)
			return new ReadYamlFiles( filePath);
		return readYamlFiles;
	}
	
	public HashMap getYamlProperty(String key) {
		return(HashMap) this.propertyMap.get(key);
	}

}
