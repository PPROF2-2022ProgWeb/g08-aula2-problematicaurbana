import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrls: ['./login.component.css']
})
export class LoginComponent implements OnInit {
  
  form!: FormGroup

  constructor() { 
    this.buildForm();
  }

  ngOnInit() {
  }

  private buildForm() {
    this.form = new FormGroup({
      email: new FormControl('', [Validators.required, Validators.email]),
      contrasenia: new FormControl('',  [Validators.maxLength(8)])
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
