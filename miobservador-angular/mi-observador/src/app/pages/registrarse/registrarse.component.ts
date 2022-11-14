import { Component, OnInit } from '@angular/core';
//impotacion de form
import { FormGroup, FormControl, Validators } from '@angular/forms';

@Component({
  selector: 'app-registrarse',
  templateUrl: './registrarse.component.html',
  styleUrls: ['./registrarse.component.css']
})

export class RegistrarseComponent implements OnInit {

  form!: FormGroup
  //intento de lista, no toma los valores
  lista:string[]=["Córdoba","Rio Ceballos","Unquillo", "Alta Gracia"];
  

  constructor() {
    this.buildForm();
  }


    ngOnInit() {
  }
//definicion de campos requeridos
 private buildForm() {
  this.form = new FormGroup({
    nombre: new FormControl('',  [Validators.required]),
    apellido: new FormControl('',  [Validators.required]),
    documento: new FormControl('',  [Validators.required]),
    fechaNacimiento: new FormControl('',  [Validators.nullValidator]),
    email: new FormControl('', [Validators.required, Validators.email]),
    confirmarEmail: new FormControl('', [Validators.required, Validators.email]),
    contrasenia: new FormControl('',  [Validators.maxLength(8)]),
    confirmarContrasenia: new FormControl('',  [Validators.maxLength(8)]),
    ciudad: new FormControl('',  [Validators.required])  
  });

  this.form.valueChanges
    .subscribe(value => {
      console.log(value);
    });
  }

  
  save(event: Event) {
    event.preventDefault();
    if (this.form.valid) {
      const value = this.form.value;
      console.log(value);
    } else {
      this.form.markAllAsTouched();
    }
  }
}
