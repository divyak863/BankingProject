import { Component, OnInit } from '@angular/core';
import { FormControl, FormGroup, Validators } from '@angular/forms';
import { Admin } from '../models/admin.model';

@Component({
  selector: 'app-home',
  templateUrl: './home.component.html',
  styleUrls: ['./home.component.css']
})
export class HomeComponent implements OnInit {
  admin:Admin;
  myForm:FormGroup;
  resmessage:string="";
  constructor() { 
    this.admin=new Admin();
    this.myForm=new FormGroup({
      username:new FormControl(null,[Validators.required]),
      password:new FormControl(null,[Validators.required,Validators.pattern("[A-Z][a-z][a-z][a-z]")])
    });
    this.resmessage="";
  }
  public get username():any{
    return this.myForm.get("username");
  }
  public get password():any{
   return this.myForm.get("password");
 }
 loginCheck(){
  if(this.myForm.valid)
  {
    var admin:Admin=new Admin();
     admin.admin_id=this.username.value;
     admin.password=this.password.value;
  }
}
 

  ngOnInit(): void {
  }

}
