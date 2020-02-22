package com.web.utils;



import org.apache.log4j.Logger;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by conan on 2020/2/7.
 */
public class LogManager {
    private static Map<String,Logger> loggerMap = new HashMap<String,Logger>();

    public static void info(Object message){
        String className = getClassName();
        Logger log = getLogger(className);
        if(log.isInfoEnabled()){
            log.info(message);
        }
    }

    public static void error(Object message){
        String className = getClassName();
        Logger log = getLogger(className);
        log.error(message);
    }

    public static void debug(Object message){
        String className = getClassName();
        Logger log = getLogger(className);
        log.debug(message);
    }

    /**
     * 获取最开始的调用者所在类
     * @return
     */
    private static String getClassName(){
        Throwable th = new Throwable();
        StackTraceElement[] stes = th.getStackTrace();
        StackTraceElement ste = stes[2];
        return ste.getClassName();
    }

    /**
     * 根据类名获得logger对象
     * @param className
     * @return
     */
    private static Logger getLogger(String className){
        Logger log = null;
        if(loggerMap.containsKey(className)){
            log = loggerMap.get(className);
        }else{
            try {
                log = Logger.getLogger(Class.forName(className));
                loggerMap.put(className, log);
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
        }
        return log;
    }
}
