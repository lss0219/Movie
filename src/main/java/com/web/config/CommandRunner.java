package com.web.config;

import com.web.utils.LogManager;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.CommandLineRunner;
import org.springframework.stereotype.Component;


/**
 * Created by conan on 2020/2/7.
 */
@Component
public class CommandRunner implements CommandLineRunner {
    @Value("${spring.web.mainUrl}")
    private String mainUrl;

    @Value("${spring.web.googleexcute}")
    private String googleExcutePath;

    @Value("${spring.auto.openurl}")
    private boolean isOpen;

    @Override
    public void run(String[] args)throws Exception{
        if(isOpen){
            String cmd = googleExcutePath + " "+ mainUrl;
            Runtime runing = Runtime.getRuntime();
            try {
                runing.exec(cmd);
                LogManager.info("启动浏览器打开项目成功");
            }catch (Exception e){
                e.printStackTrace();
                LogManager.error(e.getMessage());
            }
        }
    }
}
