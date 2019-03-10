@isTest
public class TestRestrictContactByName {
    @isTest static void TestcontactbyName1() {
        Contact cont=new Contact(LastName='INVALIDNAME');
                
        Test.startTest();
        Database.SaveResult result = Database.insert(cont);
        Test.stopTest();
        
        System.assert(!result.isSuccess());
        System.assert(result.getErrors().size() > 0);
        System.assertEquals('The Last Name "'+cont.LastName+'" is not allowed for DML',
                             result.getErrors()[0].getMessage());

    }
    
}