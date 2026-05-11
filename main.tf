resource "null_resource" "vm_manage" {
    provisioner "local-exec" {
        when = create
        command = "az vm start --resource-group Test --name workstation"
      
    }
    provisioner "local-exec" {
        when = destroy
        command = "az vm start --resource-group Test --name workstation"
      
    } 
}