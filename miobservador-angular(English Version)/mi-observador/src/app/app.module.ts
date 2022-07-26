import { NgModule } from '@angular/core';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { BrowserModule } from '@angular/platform-browser';
import { RouterModule, Routes } from '@angular/router';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { LayoutsModule } from './layouts/layouts.module';
import { DonacionesComponent } from './pages/donaciones/donaciones.component';
import { InicioComponent } from './pages/inicio/inicio.component';
import { LoginComponent } from './pages/login/login.component';
import { PagesModule } from './pages/pages.module';
import { QuienesSomosComponent } from './pages/quienes-somos/quienes-somos.component';
import { RegistrarseComponent } from './pages/registrarse/registrarse.component';
import { ReportesComponent } from './pages/reportes/reportes.component';

const rutas:Routes=[
{path:'',component:InicioComponent},
{path:'quienes-somos',component:QuienesSomosComponent},
{path:'reportes',component:ReportesComponent},
{path:'login',component:LoginComponent},
{path:'registrarse',component:RegistrarseComponent},
{path:'donaciones',component:DonacionesComponent},
];

@NgModule({
  declarations: [
    AppComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    LayoutsModule,
    PagesModule,
    RouterModule.forRoot(rutas),
    ReactiveFormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
