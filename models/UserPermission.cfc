/**
* A cool Customer entity
*/
component quick table="cbc_userPermissions"extends="BaseCBCommerceEntity" accessors="true"{
        
    // Persistent column properties
    property name="prefix";
    property name="suffix";

    function roles(){
        return belongsToMany( "UserRole@cbc", "lookups_roles_permissions", "FK_permission", "FK_role" );
    }
    
    function explicitAssignments(){
        return belongsToMany( "User@cbc" , "lookups_users_explicitPermissions", "FK_permission", "FK_user" );
    }

	
}

