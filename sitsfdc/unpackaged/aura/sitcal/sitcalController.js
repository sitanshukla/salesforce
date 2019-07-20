({
	addAction : function(component, event, helper) {
        var num1=component.get("v.num1");
        var num2=component.get("v.num2");
        var num3=num1+num2;
        component.set("v.num3", num3);
    },
    multiplicationAction : function(component, event, helper) {
        var num1=component.get("v.num1");
        var num2=component.get("v.num2");
        var num3=num1*num2;
        component.set("v.num3", num3);
    },
     substractionAction : function(component, event, helper) {
        var num1=component.get("v.num1");
        var num2=component.get("v.num2");
        var num3=num1-num2;
        component.set("v.num3", num3);
    },
    divisionAction : function(component, event, helper) {
        var num1=component.get("v.num1");
        var num2=component.get("v.num2");
        var num3=num1/num2;
        component.set("v.num3", num3);
    }
})