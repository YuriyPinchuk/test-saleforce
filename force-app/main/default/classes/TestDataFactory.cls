/**
 * @name TestDataFactory
 * @description Contains methods to construct and/or validate commonly used records
**/
public with sharing class TestDataFactory {

    /**
     * @name ConstructCollaborationGroup
     * @description
    **/
    public CollaborationGroup ConstructCollaborationGroup(){
        //ToDo: Ensure this method returns a single Chatter CollaborationGroup
        //    whose Name starts with 'TEST' followed by the INVENTORY_ANNOUNCEMENTS constant
        //    and configured so anyone can join, see and post updates.
        CollaborationGroup collGroup = new CollaborationGroup();
        collGroup.Name='TEST' + Constants.INVENTORY_ANNOUNCEMENTS;
        collGroup.CollaborationType = 'Public';
        return collGroup;
    }

    /**
     * @name CreateProducts
     * @description Constructs a list of Product2 records for unit tests
    **/
    public List <Product2> ConstructProducts(Integer cnt){
        //ToDo: Ensure this method returns a list, of size cnt, of uniquely named Product2 records
        //  with all the required fields populated
        //  and IsActive = true
        //  an Initial Inventory set to 10
        //  and iterating through the product family picklist values throughout the list.
		List <Product2> lstProducts = new List <Product2>();
        for (Integer i = 0; i < cnt; i++){
            Product2 pr = new Product2();
            pr.Name = 'Test ' + i;
        	pr.IsActive = true;
            pr.Initial_Inventory__c = 10;
            for (Schema.PicklistEntry pk : Constants.PRODUCT_FAMILY){
                pr.Family = pk.getValue();
            }
            lstProducts.add(pr);
        }
        
        return lstProducts;
    }

    /**
     * @name CreatePricebookEntries
     * @description Constructs a list of PricebookEntry records for unit tests
    **/
    public List<PricebookEntry> ConstructPricebookEntries(List<Product2> prods){
        //ToDo: Ensure this method returns a corresponding list of PricebookEntries records
        //  related to the provided Products
        //  with all the required fields populated
        //  and IsActive = true
        //  and belonging to the standard Pricebook
        List <PricebookEntry> lstPricebookEntrys = new List <PricebookEntry>();
        for (Product2 pr : prods){
            PricebookEntry pbEntry = new PricebookEntry();
            pbEntry.IsActive = true;
            pbEntry.Product2Id = pr.id;
            pbEntry.Pricebook2Id = Constants.STANDARD_PRICEBOOK_ID;
            
            lstPricebookEntrys.add(pbEntry);
        }
        return lstPricebookEntrys;
    }

    /**
     * @name CreateAccounts
     * @description Constructs a list of Account records for unit tests
    **/
    public List<Account> ConstructAccounts(Integer cnt){
        //ToDo: Ensure this method returns a list of size cnt of uniquely named Account records
        //  with all of the required fields populated.
        List <Account> lstAcc = new List<Account>();
        for (Integer i = 0; i < cnt ; i++) {
            Account acc = new Account(Name = 'Test ' + i);
            lstAcc.add(acc);
        }
    return lstAcc;
    }

    /**
     * @name CreateContacts
     * @description Constructs a list of Contacxt records for unit tests
    **/
    public void ConstructContacts(Integer cnt, List<Account> accts){
        //ToDo: Ensure this method returns a list, of size cnt, of uniquely named Contact records
        //  related to the provided Accounts
        //  with all of the required fields populated.
    }

    /**
     * @name CreateOrders
     * @description Constructs a list of Order records for unit tests
    **/
    public void ConstructOrders(Integer cnt, List<Account> accts){
        //ToDo: Ensure this method returns a list of size cnt of uniquely named Order records
        //  related to the provided Accounts
        //  with all of the required fields populated.
    }

    /**
     * @name CreateOrderItems
     * @description Constructs a list of OrderItem records for unit tests
    **/
    public void ConstructOrderItems(integer cnt, list<pricebookentry> pbes, list<order> ords){
        //ToDo: Ensure this method returns a list of size cnt of OrderItem records
        //  related to the provided Pricebook Entries
        //  and related to the provided Orders
        //  with all of the required fields populated.
        //  Hint: Use the DEFAULT_ROWS constant for Quantity as it will be used in the next challenge
    }

    /**
     * @name SetupTestData
     * @description Inserts accounts, contacts, Products, PricebookEntries, Orders, and OrderItems.
    **/
    public void InsertTestData(Integer cnt){
        //ToDo: Ensure this method calls each of the construct methods
        //  and inserts the results for use as test data.

    }

}