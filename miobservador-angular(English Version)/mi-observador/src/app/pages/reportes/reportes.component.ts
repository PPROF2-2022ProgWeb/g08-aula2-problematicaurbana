import { Component, OnInit } from '@angular/core';
import { FormGroup, FormControl, Validators } from '@angular/forms';

@Component({
  selector: 'app-reportes',
  templateUrl: './reportes.component.html',
  styleUrls: ['./reportes.component.css']
})
export class ReportesComponent implements OnInit {

  form!: FormGroup

  constructor() {
    this.buildForm();
   }

  ngOnInit() {
  }

  private buildForm() {
    this.form = new FormGroup({
      Accident: new FormControl('',  [Validators.required]),
      Repair: new FormControl('',  [Validators.required]),
      Manifestation: new FormControl('',  [Validators.required]),
      })
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
