public with sharing class Formula1 {
    public static void main()
    {
        Contact contact = new Contact(
            FirstName = 'Fernando',
            LastName = 'Alonso',
            Title = 'F1 Driver'
        );

        List<SObjectField> sObjectField = new List<SObjectField>{
            Contact.FirstName,
            Contact.LastName,
            Contact.Title
        };

        String driverKey = generateKey(
            contact,
            sObjectField,
            '+'
        );
        System.debug(driverKey)
    }

    public static String generateKey(SObjectField record,List<SObjectField> sObjectFields,String separator){
        List<Object> values = new List<Object>();
        for (SObjectField sObjectField : sObjectFields)
        {
            values.add(record.get(sObjectField));
        }
        return String.join(values,separator)
    }



}