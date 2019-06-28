public with sharing class Autoservice {
    public Autoservice() {

    }
       public Account createAccount( String accountName, String accountNumber, String tickerSymbol ) {
        Account newAcct = new Account(
            Name = accountName,
            AccountNumber = accountNumber,
            TickerSymbol = accountNumber
        );
        return newAcct;
    }
}