import { Component, OnInit } from '@angular/core';
//importacion de form
import { FormGroup, FormBuilder, FormControl, Validators } from '@angular/forms';
import { ServicioService} from 'src/app/Service/servicio.service';
import {Router} from '@angular/router';
import { NuevaCuenta } from 'src/app/Service/NuevaCuenta';
import { ToastrService } from 'ngx-toastr';

@Component({
  selector: 'app-registrarse',
  templateUrl: './registrarse.component.html',
  styleUrls: ['./registrarse.component.css']
})

export class RegistrarseComponent implements OnInit {
  // formRegistro: any = {};
  formRegistro!: FormGroup 
  nuevaCuenta: NuevaCuenta={
      id: '',
      documento:'',
      nombre:'',
      apellido:'',
      email:'',
      password:'',
      //telefono:'',
      domicilio:'',
      fecha_nacimiento:''};
   
  submitted = false;
  
 // private cuenta: any = {};
  //isRegister = false;
  //isRegisterFail = false;
  //errorMsg = '';
  
  constructor(
      private cuentaServicio: ServicioService,
      private fb: FormBuilder,
      //private Cuenta: ServicioService,
      private router:Router,
      private toastr: ToastrService)
       {
    this.buildForm();
  }
  buildForm() {
       this.formRegistro = this.fb.group({
                                nombre:            ['',  [Validators.required]],
                                apellido:          ['',  [Validators.required]],
                                documento:         ['',  [Validators.required]],
                                fechaNacimiento:   ['',  [Validators.nullValidator]],
                                domicilio:         ['',  [Validators.maxLength(200)]],
                                //telefono:          ['',  [Validators.maxLength(10)]],
                                email:             ['',  [Validators.required, Validators.email]],
                                confirmarEmail:    ['',  [Validators.required, Validators.email]],
                                password:          ['',  [Validators.required, Validators.maxLength(8)]],
                                                        confirmarPassword: ['',  [Validators.required, Validators.maxLength(8)]]
                                      });
      
            this.formRegistro.controls["nombre"].valueChanges.subscribe((data: any) => {
                   console.log(data);
             });
             this.formRegistro.controls["apellido"].valueChanges.subscribe((data: any) => {
                   console.log(data);
             });
             this.formRegistro.controls["documento"].valueChanges.subscribe((data: any) => {
                   console.log(data);
             });
             this.formRegistro.controls["fechaNacimiento"].valueChanges.subscribe((data: any) => {
                   console.log(data);
             });
             this.formRegistro.controls["domicilio"].valueChanges.subscribe((data: any) => {
                   console.log(data);
             });
            // this.formRegistro.controls["telefono"].valueChanges.subscribe((data: any) => {
             //      console.log(data);
            // });
             this.formRegistro.controls["email"].valueChanges.subscribe((data: any) => {
                   console.log(data);
             });
             this.formRegistro.controls["confirmarEmail"].valueChanges.subscribe((data: any) => {
                   console.log(data);
             });
             this.formRegistro.controls["password"].valueChanges.subscribe((data: any) => {
                   console.log(data);
             });
             this.formRegistro.controls["confirmarPassword"].valueChanges.subscribe((data: any) => {
                   console.log(data);
             });
      }
      onSubmit() {

           const email = this.formRegistro.value.email;
           const password = this.formRegistro.value.password;
           const confirmarPassword = this.formRegistro.value.confirmarPassword;
           
           if (password !== confirmarPassword) {
              this.toastr.error('Las contraseñas deben ser las mismas','Error');
              return;
            }
            
                       
           
                   //  .createUserWithEmailAndPassword(email,password)
                   //  .then((user: any) => {
                    ///   this.toastr.success('Usuario registrado con exito','  Registro exitoso');
                   //    this.router.navigate(['/ingresar']);
                   //    console.log(user);
                   //  })
                    // .catch((error: { code: any; })=>{
                   //    console.log(error);
                   //    this.toastr.error(this.Cuenta.codeError(error.code),'Error')
                   //  })



            this.submitted = true;
             if (this.formRegistro.invalid) {
              return;
              }
                }
  ngOnInit(): void {}

  saveCuenta():void{
      const data = {
            documento:this.nuevaCuenta.documento,
            nombre:this.nuevaCuenta.nombre,
            apellido:this.nuevaCuenta.apellido,
            email:this.nuevaCuenta.email,
            password:this.nuevaCuenta.password,
            //telefono:'',
            domicilio:this.nuevaCuenta.domicilio,
            fecha_nacimiento:this.nuevaCuenta.fecha_nacimiento      
      };

      //this.nuevaCuenta.nativeElement.innerHTML = "I am changed by ElementRef & ViewChild";
          
      
      

      this.cuentaServicio.create(data)
      .subscribe({
            next: (res: any) => {
                 console.log(res);
                  this.submitted = true;
                  },
               error: (e: any) => console.error(e)
          });
            }

               
            NuevaCuenta(): void {
                  this.submitted = false;
                  this.nuevaCuenta = {
                        documento:'',
                        nombre:'',
                        apellido:'',
                        email:'',
                        password:'',
                        //telefono:'',
                        domicilio:'',
                        fecha_nacimiento:''
                  };
                }
              
                                   
//onSubmit() {
//
 //     const email = this.formRegistro.value.email;
   //   const password = this.formRegistro.value.password;
     // const confirmarPassword = this.formRegistro.value.confirmarPassword;

   //   if (password !== confirmarPassword) {
    //        this.toastr.error('Las contraseñas deben ser las mismas','Error');
     //       return;
      //    }
   // 
    //      this.Cuenta
    //      .createUserWithEmailAndPassword(email,password)
     //     this.Cuenta.then((user: any) => {
     //       this.toastr.success('Usuario registrado con exito','  Registro exitoso');
      //      this.router.navigate(['/ingresar']);
      //         console.log(user);
        //      })
            

        //  .createUserWithEmailAndPassword(email,password)
        //  .then((user: any) => {
         ///   this.toastr.success('Usuario registrado con exito','  Registro exitoso');
        //    this.router.navigate(['/ingresar']);
        //    console.log(user);
        //  })
         // .catch((error: { code: any; })=>{
        //    console.log(error);
        //    this.toastr.error(this.Cuenta.codeError(error.code),'Error')
        //  })
    
           
//  this.submitted = true;
//    if (this.formRegistro.invalid) {
//    return;
//    }
//}
                                
get nombre() { return this.formRegistro.get('nombre') }
get apellido() { return this.formRegistro.get('apellido') }
get documento() { return this.formRegistro.get('documento') }
get fechaNacimiento() { return this.formRegistro.get('fechaNacimiento') }
get domicilio() { return this.formRegistro.get('domicilio') }
//get telefono() { return this.formRegistro.get('telefono') }
get email() { return this.formRegistro.get('email') }
get confirmarEmail() { return this.formRegistro.get('confirmarEmail') }
get password() { return this.formRegistro.get('password') }
get confirmarPassword() { return this.formRegistro.get('confirmarPassword') }
get f() {return this.formRegistro.controls; }
                      

}
//onRegister(){
//      this.cuenta = new Cuenta(
///            this.formRegistro.nombre,
//            this.formRegistro.apellido,
//            this.formRegistro.documento,
///            this.formRegistro.fecha_nacimiento,
//            this.formRegistro.domicilio,
///            this.formRegistro.telefono,
//            this.formRegistro.email,
//            this.formRegistro.password);
//      this.Cuenta.CuentaNueva(this.cuenta).subscribe((data: any) => {
//            this.isRegister = true;
    //        this.isRegisterFail = false;
////          },
//            (error: any) => {
 //             console.log(error.error.mensaje);
//              this.errorMsg = error.error.mensaje;
///              this.isRegister = false;
//              this.isRegisterFail = true;
//            }
//          );
//      }

//}