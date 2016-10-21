package makeBinary;

import java.io.BufferedWriter;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.sql.Blob;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.io.FileUtils;
import org.apache.commons.io.IOUtils;
import makeBinary.MyErr;

public class MakeBinaryTool {
	public static void insertBinaryFileIntoDB(String FileName, DataSetCust ds) throws Exception {
		
		ByteArrayOutputStream os = null;
		FileOutputStream out = null;
		InputStream is = null;
		StringBuffer sb = null;
		FileInputStream fis = null;

		try {
			byte[] evdcByteArray = null;

			File file = new File(FileName);
			fis = new FileInputStream(file);
			evdcByteArray = IOUtils.toByteArray(fis);
			
			MB_DAO.insertBinaryData(evdcByteArray,ds);

		} catch (Exception e) {
			throw new MyErr("Exception"+e);
		} finally {
			if (out != null) {
				out.close();
			}
			if (fis != null) {
				fis.close();
			}
			
		}
	}
}

