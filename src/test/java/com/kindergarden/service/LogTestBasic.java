package com.kindergarden.service;

import org.slf4j.*;

public class LogTestBasic {

   public static void main(String[] args) {
      Logger logger = LoggerFactory.getLogger(LogTestBasic.class);
      
      //ERROR-WARN-INFO-DEBUG-TRACE  src/test/resources/log4j.xml-> Application Loggers=> level value = "trace"
      logger.error("OH!! NO!!!");
      logger.warn("WATCH OUT!!");
      logger.info("HELLO SLF4J log!!!");
      logger.debug("What's wrong with this??");
      logger.trace("Here we are...");
   }
}