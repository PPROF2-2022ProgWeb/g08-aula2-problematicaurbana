import { Component, OnInit } from '@angular/core';
import { FormBuilder, FormGroup, FormControl, Validators} from '@angular/forms';
import { UserFields } from '../Usuario';
import { ServicioService } from 'src/app/Service/servicio.service';
import { Router } from '@angular/router';
import { NuevaCuenta } from 'src/app/Service/NuevaCuenta';
//import { ToastrService } from 'ngx-toastr/public_api';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})

export class LoginComponent implements OnInit {
 
  
    
  UsuarioForm!: FormGroup
  resultado!: string;
  submitted = false;
  getCuenta:NuevaCuenta={
    id: '',
      documento:'',
      nombre:'',
      apellido:'',
      email:'',
      password:'',
      domicilio:'',
      fecha_nacimiento:''};
   
    isDone = true;
 


  constructor(
    private fb: FormBuilder,
    private cuentaServicio:ServicioService,
    private router:Router) {
    this.createForm();
  }
    
  createForm() {
    this.UsuarioForm = this.fb.group({
        
      email:       new FormControl('', [Validators.required,
                                        Validators.email,
                                       ]),
      password: new FormControl('',    [Validators.maxLength(8),
                                        Validators.minLength(8),
                                        Validators.required])
                                        });
                                      
                                     
    this.UsuarioForm.controls["email"].valueChanges.subscribe(data => {
                              console.log(data);
                                        });
    this.UsuarioForm.controls["password"].valueChanges.subscribe(data => {
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

get password() { return this.UsuarioForm.get('password'); } 
                                        
get f() {return this.UsuarioForm.controls; }

ngOnInit():void {}                               
  
loadCuenta():void{
  const data = {
        documento:this.getCuenta.documento,
        nombre:this.getCuenta.nombre,
        apellido:this.getCuenta.apellido,
        email:this.getCuenta.email,
        password:this.getCuenta.password,
        //telefono:'',
        domicilio:this.getCuenta.domicilio,
        fecha_nacimiento:this.getCuenta.fecha_nacimiento      
  };

    
    }}
    
