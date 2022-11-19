package tek.sdet.framework.pages;

import tek.sdet.framework.base.BaseSetup;

// the job of pom factry is to manage our pages
//we will do the creation of objct for our classes 
public class POMFactory extends BaseSetup {
	//declare a private instance
    private HomePage homePage;
    private SignInPage signInPage;
    private AccountPage accountPage;
    private RetailOrderPage orderPage;
   

    public POMFactory() {
  // we need to initialize in constructor
        this.homePage = new HomePage();
        this.signInPage = new SignInPage();
        this.accountPage = new AccountPage();
        this.orderPage = new RetailOrderPage();

    }

  // These are the return method of them
    public HomePage homePage() {
        return this.homePage;
    }
    
    public SignInPage signInPage() {
    	return this.signInPage;
    }
    
    
    public AccountPage accountPage() {
    	return this.accountPage;	
    }
    
    public RetailOrderPage orderPage() {
    	return this.orderPage;
}
    
    
}

