import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, FormControl, Validators} from '@angular/forms';
import { UserFields } from '../Usuario';


@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})

export class LoginComponent implements OnInit {
 
  
    
  UsuarioForm!: FormGroup
  resultado!: string;
  submitted = false;


  constructor(private fb: FormBuilder) {
    this.createForm();
  }
    
  createForm() {
    this.UsuarioForm = this.fb.group({
        
      email:       new FormControl('', [Validators.required,
                                        Validators.email,
                                       ]),
      contrasenia: new FormControl('', [Validators.maxLength(8),
                                        Validators.minLength(8),
                                        Validators.required])
                                        });
                                      
                                     
    this.UsuarioForm.controls["email"].valueChanges.subscribe(data => {
                              console.log(data);
                                        });
                                      }
                     
  onSubmit() {
    this.submitted = true;
     if (this.UsuarioForm.invalid) {
      return;
      }
        }
                                      
get email() { return this.UsuarioForm.get('email'); }

get contrasenia() { return this.UsuarioForm.get('contrasenia'); } 
                                        
get f() {return this.UsuarioForm.controls; }

ngOnInit() {}                               
  
    

    
    }
    
