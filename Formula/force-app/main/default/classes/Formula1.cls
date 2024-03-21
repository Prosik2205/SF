public with sharing class Formula1 {
    public static void main()
    {
        Account account1 = new Account(
            Name = 'Fernando',
            Industry = 'Banking',
            Description = 'F1 Driver'
        );
        
        // Schema.DescribeFieldResult F1 =  Contact.FirstName.getDescribe();
        // Schema.sObjectField T1 = F1.getSObjectField();

        // Schema.DescribeFieldResult F2 =  Contact.LastName.getDescribe();
        // Schema.sObjectField T2 = F2.getSObjectField();

        // Schema.DescribeFieldResult F3 =  Contact.Title.getDescribe();
        // Schema.sObjectField T3 = F3.getSObjectField();
        
        // Schema.DescribeFieldResult F = Account.Industry.getDescribe();
        // Schema.sObjectField T = F.getSObjectField();


        // List<SObjectField> sObjectField = new List<SObjectField>{
        //     T1,
        //     T2,
        //     T3
        // };
        
        sObjectField[] fieldList = new sObjectField[] {
        Account.Name, Account.Industry, Account.Description
};

        String driverKey = generateKey(
            account1,
            fieldList,
            '+'
        );
        System.debug('@@@@@@@' + driverKey);
    }

    public static String generateKey(SObject record, List<SObjectField> sObjectFields, String separator){
        List<Object> values = new List<Object>();
        for (SObjectField sObjectField : sObjectFields)
        {
            values.add(record.get(sObjectField));
        }
        return String.join(values,separator);
    }



}