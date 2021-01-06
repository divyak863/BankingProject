export class Admin{
    admin_id :string;
    password:string;
    constructor(admin_id:string="",password:string=""){
        this.admin_id=admin_id;
        this.password=password;
    }
}