component{
    this.name = "Ichiraku-Contact-Sheet";
    this.datasource = "sample_crm";

    function onRequestStart(){
        request.userBean = new includes.cfc.user();
        return true;
    }
}