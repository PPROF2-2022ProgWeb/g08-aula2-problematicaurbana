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
  }

  ngOnInit() {
  }
  private buildfrom() {
    this.form = new FormGroup({
      Accidente: new FormControl('', [Validators.required]),
      Reparacion: new FormControl('', [Validators.required]),
      Manifestacion: new FormControl('', [Validators.required]),
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
