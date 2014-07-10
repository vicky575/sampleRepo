public class TestPicklist 
{
    public List<SelectOption> getItems1() 
    {
        List<SelectOption> options = new List<SelectOption>();
        List<Account> accList = [select name from account limit 10];
        for(account a : accList)
        options.add(new SelectOption(a.Name,a.Name));
        return options;
    }
    Public string select1{get; set;}
    Public string select2{get; set;}
    Public string select3{get; set;}        
    public List<SelectOption> getItems2() 
    {
        List<SelectOption> options = new List<SelectOption>();
        List<Account> accList = [select name from account where name != :select1 limit 10];
        for(account a : accList)
        options.add(new SelectOption(a.Name,a.Name));
        return options;
    }
    public List<SelectOption> getItems3() 
    {
        List<SelectOption> options = new List<SelectOption>();
        List<Account> accList = [select name from account where name != :select1 and name != :select2 limit 10];
        for(account a : accList)
        options.add(new SelectOption(a.Name,a.Name));
        return options;
    }
    
    public List<SelectOption> getItems4() 
    {
        List<SelectOption> options = new List<SelectOption>();
        List<Account> accList = [select name from account where  name = :select2 Or name=:select1 limit 10];
        for(account a : accList)
        options.add(new SelectOption(a.Name,a.Name));
        return options;
    }

}
