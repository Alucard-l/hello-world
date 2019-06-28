public with sharing class PruebaCreacionClase {
    public PruebaCreacionClase() {
    }
 public static List<Account> getAllActiveAccounts() {
    return [SELECT Id,Name,Active__c FROM Account];
  }
}