import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { InicioComponent } from './inicio/inicio.component';
import { LoginComponent } from './login/login.component';
import { QuienesSomosComponent } from './quienes-somos/quienes-somos.component';
import { RegistrarseComponent } from './registrarse/registrarse.component';
import { ReportesComponent } from './reportes/reportes.component';
import { DonacionesComponent } from './donaciones/donaciones.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { FormsModule } from '@angular/forms';
import { ReactiveFormsModule } from '@angular/forms';

@NgModule({
  declarations: [
    InicioComponent,
    
    QuienesSomosComponent,
    RegistrarseComponent,
    ReportesComponent,
    DonacionesComponent
  ],

  imports: [
    CommonModule,
    NgbModule,
    FormsModule,
    ReactiveFormsModule
  ],

  exports:[
    InicioComponent,
    //LoginComponent,
    QuienesSomosComponent,
    RegistrarseComponent,
    ReportesComponent,
    DonacionesComponent
  ]
})


export class PagesModule { }


