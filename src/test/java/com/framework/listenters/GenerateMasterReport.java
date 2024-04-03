package com.framework.listenters;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class GenerateMasterReport {
    public static void generateReport() {
        try {
            SimpleDateFormat format = new SimpleDateFormat("ddMMYYYY");
            Date date = new Date();
            String folderName = format.format(new Date());
            File reportOutputDir = new File(System.getProperty("user.dir") + "/target/cucumber-reports/" + folderName);
            List<String> jsonFiles = new ArrayList<>();
            File folder = new File("target/cucumber-reports/JsonReport/");
            File[] listOfFiles = folder.listFiles();
            for (int i = 0; i < listOfFiles.length; i++) {
                if (listOfFiles[i].getName().contains(".json")) {
                    jsonFiles.add("target/cucumber-reports/JsonReport/" + listOfFiles[i].getName());
                }
            }
            String buildnum = "1";
            String projectName = "TechReward Automation";
            Configuration configuration = new Configuration(reportOutputDir, projectName);
            configuration.setBuildNumber(buildnum);
            ReportBuilder reportBuilder = new ReportBuilder(jsonFiles, configuration);
            reportBuilder.generateReports();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public static void removeReportJsonFile() {
        // store file path
        String filepath = "C:\\Automation Learning\\CucumberFramework2023 - Copy\\target\\cucumber-reports";
        File file = new File(filepath);

        // call deleteDirectory function to delete
        // subdirectory and files
//        deleteDirectory(file);

        // delete main GFG folder
//        file.delete();
//        try {
//            ArrayList<String> jsonFiles = new ArrayList<>();
//            File folder = new File("target/cucumber-reports/");
//            File[] listOfFiles = folder.listFiles();
//
//            for (int i = 0; i < listOfFiles.length; i++) {
////                if (listOfFiles[i].getName().contains(".json")) {
////                    jsonFiles.add("target/cucumber-reports/" + listOfFiles[i].getName());
////                }
//            }
//            jsonFiles.add("target/cucumber-reports/" +folder.getName());
//
//            for(String str:jsonFiles){
//                if(str!=null){
//                    File file=new File(str);
//                    if(file.delete()){
//                        System.out.println(str+" --->>> deleted successfully");
//                    }else {
//                        System.out.println(str+" ---> failed to delete");
//                    }
//                }else {
//                    System.out.println("There is no file to delete");
//                }
//            }
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
    }
    public static void deleteDirectory(File file)
    {
        // store all the paths of files and folders present
        // inside directory
        for (File subfile : file.listFiles()) {

            // if it is a subfolder,e.g Rohan and Ritik,
            //  recursively call function to empty subfolder
            if (subfile.isDirectory()) {
                deleteDirectory(subfile);
            }

            // delete files and empty subfolders
            subfile.delete();
        }
    }
}
