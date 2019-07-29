# culture="en-US"
ConvertFrom-StringData @'
    RetrievingADUserError                = Error looking up Active Directory user '{0}' ({0}@{1}). (ADU0001)
    PasswordParameterConflictError       = Parameter '{0}' cannot be set to '{1}' when the '{2}' parameter is specified. (ADU0002)
    ChangePasswordParameterConflictError = Parameter 'ChangePasswordAtLogon' cannot be set to 'true' when Parameter 'PasswordNeverExpires' is also set to 'true'. (ADU0003)
    RetrievingADUser                     = Retrieving Active Directory user '{0}' ({0}@{1}). (ADU0004)
    CreatingADDomainConnection           = Creating connection to Active Directory domain '{0}'. (ADU0005)
    CheckingADUserPassword               = Checking Active Directory user '{0}' password. (ADU0006)
    ADUserIsPresent                      = Active Directory user '{0}' ({0}@{1}) is present. (ADU0007)
    ADUserNotPresent                     = Active Directory user '{0}' ({0}@{1}) was NOT present. (ADU0008)
    ADUserNotDesiredPropertyState        = User '{0}' property is NOT in the desired state. Expected '{1}', actual '{2}'. (ADU0009)
    AddingADUser                         = Adding Active Directory user '{0}'. (ADU0010)
    RemovingADUser                       = Removing Active Directory user '{0}'. (ADU0011)
    UpdatingADUser                       = Updating Active Directory user '{0}'. (ADU0012)
    SettingADUserPassword                = Setting Active Directory user password. (ADU0013)
    UpdatingADUserProperty               = Updating user property '{0}' with/to '{1}'. (ADU0014)
    ClearingADUserProperty               = Clearing user property '{0}'. (ADU0015)
    MovingADUser                         = Moving user from '{0}' to '{1}'. (ADU0016)
    RenamingADUser                       = Renaming user from '{0}' to '{1}'. (ADU0017)
    RestoringUser                        = Attempting to restore the user object {0} from the recycle bin. (ADU0018)
    TestPasswordUsingImpersonation       = Impersonating the credentials ''{0}'' to test password for user ''{1}''.
'@
