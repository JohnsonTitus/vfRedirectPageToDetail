public with sharing class mySecondController {

    Account account;

    public mySecondController() {

    }

    public Account getAccount(){
        if(account == null){
            account = new Account();
        }
        return account;

    }

    public Pagereference save(){
        insert account;

        Pagereference acctPage = new ApexPages.StandardController(account).view();
        acctPage.setRedirect(true);

        return acctPage;
    }
}
