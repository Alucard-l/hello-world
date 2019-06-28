public with sharing class Autoservicio {
    public Autoservicio() {
        String cc='hola mundo';
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