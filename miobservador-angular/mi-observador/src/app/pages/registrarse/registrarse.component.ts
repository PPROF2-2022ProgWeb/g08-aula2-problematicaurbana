import { Component, OnInit } from '@angular/core';
//importacion de form
import { FormGroup, FormBuilder, FormControl, Validators } from '@angular/forms';

@Component({
  selector: 'app-registrarse',
  templateUrl: './registrarse.component.html',
  styleUrls: ['./registrarse.component.css']
})

export class RegistrarseComponent implements OnInit {

  formRegistro!: FormGroup
  //intento de lista, no toma los valores
  lista:string[]=["Córdoba","Rio Ceballos","Unquillo", "Alta Gracia"];
  submitted = false;
  
  constructor(private fb: FormBuilder) {
    this.buildForm();
  }


   
//definicion de campos requeridos
 buildForm() {
  this.formRegistro = this.fb.group({
                           nombre:            ['',  [Validators.required]],
                           apellido:          ['',  [Validators.required]],
                           documento:         ['',  [Validators.required]],
                           fechaNacimiento:   ['',  [Validators.nullValidator]],
                           domicilio:         ['',  [Validators.maxLength(200)]],
                           telefono:          ['',  [Validators.maxLength(10)]],
                           email:             ['',  [Validators.required, Validators.email]],
                           confirmarEmail:    ['',  [Validators.required, Validators.email]],
                           password:          ['',  [Validators.required, Validators.maxLength(8)]],
                           confirmarPassword: ['',  [Validators.required, Validators.maxLength(8)]]

                            });

  this.formRegistro.controls["nombre"].valueChanges.subscribe(data => {
        console.log(data);
  });
  this.formRegistro.controls["apellido"].valueChanges.subscribe(data => {
        console.log(data);
  });
  this.formRegistro.controls["documento"].valueChanges.subscribe(data => {
        console.log(data);
  });
  this.formRegistro.controls["fechaNacimiento"].valueChanges.subscribe(data => {
        console.log(data);
  });
  this.formRegistro.controls["domicilio"].valueChanges.subscribe(data => {
        console.log(data);
  });
  this.formRegistro.controls["telefono"].valueChanges.subscribe(data => {
        console.log(data);
  });
  this.formRegistro.controls["email"].valueChanges.subscribe(data => {
        console.log(data);
  });
  this.formRegistro.controls["confirmarEmail"].valueChanges.subscribe(data => {
        console.log(data);
  });
  this.formRegistro.controls["password"].valueChanges.subscribe(data => {
        console.log(data);
  });
  this.formRegistro.controls["confirmarPassword"].valueChanges.subscribe(data => {
        console.log(data);
  });
}
                                                  
onSubmit() {
  this.submitted = true;
    if (this.formRegistro.invalid) {
    return;
    }
  }
                                
get nombre() { return this.formRegistro.get('nombre') }
get apellido() { return this.formRegistro.get('apellido') }
get documento() { return this.formRegistro.get('documento') }
get fechaNacimiento() { return this.formRegistro.get('fechaNacimiento') }
get domicilio() { return this.formRegistro.get('domicilio') }
get telefono() { return this.formRegistro.get('telefono') }
get email() { return this.formRegistro.get('email') }
get confirmarEmail() { return this.formRegistro.get('confirmarEmail') }
get password() { return this.formRegistro.get('password') }
get confirmarPassword() { return this.formRegistro.get('confirmarPassword') }
get f() {return this.formRegistro.controls; }
                      
ngOnInit() 
{}
}