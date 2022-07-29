package AssessmentPhase1;

import java.io.File;
import java.io.IOException;
import java.util.Arrays;
import java.util.Scanner;

public class VirtualRepository {
	//welcome Screen
	 private static void welcomeScreen() {
		 System.out.println("***Welcome Screen***");
		 //application name and developer details
		 System.out.println("Application Name: LockedMe.com");
		 System.out.println("Developer Details: Durga Sindhu\n");
	      	    }
	 //path of the directory 
	static String path;
	   File folder;
	 public VirtualRepository() {
		 System.out.println("**Path of the directory**");
		 //It takes this file path
	        path = System.getProperty("user.dir");
	        //search for it otherwise create a folder called files
	        folder = new File(path+"/files");
		    if (!folder.exists())
	        folder.mkdirs();
	        System.out.println("Directory : "+ folder.getAbsolutePath());
	    }
	 //options displaying the user interaction information 
	  private static final String options="1 : Sort file names in ascending order\n2 : Perform add, delete or search operations\n3 : Close application";
	  void optionsAvailable() {
		  System.out.println("\nPlease select an option to perform operations on file:");
		  // To display options each time
		  System.out.println(options);
		  //To take option as input
		  Scanner in=new Scanner(System.in);
	        try{
	        	int choose = in.nextInt();
	            //To perform operations on that options
	            switch (choose){
	                case 1 : {
	                  sortOperation();
	                    optionsAvailable();
	                    break;
	                }
	                case 2 : {
	                   operations();
	                	break;
	                }
	                case 3 : {
	                	System.out.println("Do you want to close application:");
	                	System.out.println("Select:\nYes to exit\nNo to continue");
	                	in=new Scanner(System.in);
	                	String s=in.nextLine();
	        	        if(s.equalsIgnoreCase("yes")) {
	        	        	System.out.println("Closing your application... \nThank you!");
	                        System.exit(0);
	                        }
	                        else if(s.equalsIgnoreCase("no")) {
	                        	optionsAvailable();
	                        }	                 
	                    break;
	                }
	                default: 
	                	System.out.println("You have choosen an invalid option!");
	                	System.out.println("Please select 1,2,3 options");
	                	optionsAvailable();
	                	break;
	            }
	            
	        }
	        //to catch if any exception occur
	        catch (Exception e){
	            System.out.println("Please select Options 1, 2 or 3");
	            optionsAvailable();
	        }
	    }
	  //sorting files into ascending order
	  void sortOperation() {
	        if (folder.list().length==0)
	            System.out.println(" Folder is empty!\nNo file is added");
	        else {
	            String[] list = folder.list();
	            System.out.println("The files in location "+ folder +" are :");
	            //
	            Arrays.sort(list);
	            for (String str:list) {
	                System.out.println(str);
	            }
	        }
	    }
	//Perform business-level operations
	  private static final String options1 = "1 : To add a file\n2 : To search a file\n3 : To delete a file\n4 : Go Back to main options";
	  void operations() {
		 System.out.println("\nBusiness-level operations\nSelect an option to perform operations:");
		 //It displays options to select by the user
	        System.out.println(options1);
	      //Taking input to perform which operation
	        Scanner s=new Scanner(System.in);
   	        try{
	            int option = s.nextInt();
	            switch (option){
	                case 1 : {
	                	//Add
	                    System.out.print("Adding a file to the existing directory list\n");
	                    System.out.println("Please enter the file name to add a file:");
	                    String addfile= s.next();
	                    addFile(addfile);
	                    break;
	                }
	                case 2 : {
	                	//search
	                    System.out.print("Searching a file from the existing directory list\n");
	                    System.out.println("Please enter the file name to search a file:");
	                    String searchfile = s.next();
	                    searchFile(searchfile);
	                    break;
	                }

	                case 3 : {
	                	//delete
	                    System.out.print("Deleting a file from the existing directory list\n");
	                    System.out.println("Do you want to delete the file:");
	                	System.out.println("Select:\nYes to delete\nNo to not delete");
	                	s=new Scanner(System.in);
	                	String s1=s.nextLine();
	        	        if(s1.equalsIgnoreCase("yes")) {
	        	        	System.out.println("Please enter the file name to delete a file:");
		                    String deletefile = s.next();
		                    deleteFile(deletefile);
	                        }
	                        else if(s1.equalsIgnoreCase("no")) {
	                        	operations();
	                        }	 
	                    break;
	                }
	                   case 4 : {
	                	   //navigate to main
	                    System.out.println("Navigating back to options available");
	                    optionsAvailable();
	                    break;
	                }
	                default : System.out.println("Please select options 1, 2, 3, or 4");
	                operations();
	            }
	            operations();
	        }
	        //to catch if any exception occur
	        catch (Exception e){
	            System.out.println("Please select options 1,2,3 or 4");
	            operations();
	        }
	    }
	  //Adding a file to a location
	  void addFile(String addfile) throws IOException {
	        File filepath = new File(folder+"/"+addfile);
	        //List of files in a folder
	        String[] list = folder.list();
	        for (String fileName : list) {
	        	//Here it ignore case sensitive of file name
	            if (addfile.equalsIgnoreCase(fileName)) {
	                System.out.println("File " + addfile + " is already present\nLOCATION: " + folder);
	                return;
	            }
	        }
	        filepath.createNewFile();
	        System.out.println("File: "+addfile+" is added to "+ folder+" location Successfully");
	    }
	 //Searching a file from a location
	  void searchFile(String searchfile) {
		  //List of files in a folder
	        String[] list = folder.list();
	        for (String fileName: list) {
	        	//Here file name case sensitive
	            if (searchfile.equals(fileName)) {
	            	//successful operation
	                System.out.println("Successful operation file " + searchfile + " is present at location: " + folder);
	                return;
	            }
	        }
	        //unsuccessful operation
	        System.out.println("File not found --> Unsuccessful operation");
	    }
	  //Deleting a file from a location
	  void deleteFile(String deletefile) {
	        File filepath = new File(folder +"/"+deletefile);
	        //List of files in a folder
	        String[] list = folder.list();
	        for (String fileName: list) {
	        	//Here file name is case sensitive
	            if (deletefile.equals(fileName) && filepath.delete()) {
	                System.out.println("File " + deletefile + " deleted from location: " + folder);
	                return;
	            }
	        }
	        System.out.println("FILE NOT FOUND --> Delete operation is failed");
	       	    }
	  //Main method
	 public static void main(String[] args) {
	    	System.out.println("Welcome to LockMe.com\n");
	    	//static method
	    	 welcomeScreen();
	    	 VirtualRepository VR = new VirtualRepository();
	    	 //Main options available
	    	 VR.optionsAvailable();
	 }   
}