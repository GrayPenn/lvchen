package util;

import lib.MESSAGEXsend;
import utils.ConfigLoader;
import config.AppConfig;

public class SendMessag {
	public void Send(String phoneNum,String rNum){
		AppConfig config = ConfigLoader.load(ConfigLoader.ConfigType.Message);
		MESSAGEXsend submail = new MESSAGEXsend(config);
		submail.addTo(phoneNum);
		submail.setProject("0my812");
		submail.addVar("code", rNum+"");
		
		submail.xsend();
	}
}
