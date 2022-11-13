import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { InicioComponent } from './inicio/inicio.component';
import { LoginComponent } from './login/login.component';
import { QuienesSomosComponent } from './quienes-somos/quienes-somos.component';
import { RegistrarseComponent } from './registrarse/registrarse.component';
import { ReportesComponent } from './reportes/reportes.component';
import { DonacionesComponent } from './donaciones/donaciones.component';



@NgModule({
  declarations: [
    InicioComponent,
    LoginComponent,
    QuienesSomosComponent,
    RegistrarseComponent,
    ReportesComponent,
    DonacionesComponent
  ],
  imports: [
    CommonModule
  ],
  exports:[
    InicioComponent,
    LoginComponent,
    QuienesSomosComponent,
    RegistrarseComponent,
    ReportesComponent,
    DonacionesComponent
  ]
})
export class PagesModule { }
