import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { NuevaCuenta} from "../Service/NuevaCuenta"

const baseUrl ='http://localhost:8080/api/cuenta';

@Injectable({
  providedIn: 'root'
})

export class ServicioService {

constructor(private http: HttpClient) { }

getAll():Observable<NuevaCuenta[]>{
  return this.http.get<NuevaCuenta[]>(baseUrl);
}

getUnaCuenta(id: any): Observable<NuevaCuenta> {
  return this.http.get<NuevaCuenta>(baseUrl);
}

create(data: any): Observable<any> {
  return this.http.post(baseUrl, data);
}


  //then(arg0: (user: any) => void) {
//        throw new Error('Method not implemented.');
//}
//  createUserWithEmailAndPassword(email: any, password: any) {
//        throw new Error('Method not implemented.');
//  }

//  private BASE_URL ='http://localhost:8080/api/cuenta';
//  private NEW_ACCOUNT = '${this.BASE_URL}/cuenta';

  //constructor(private http: HttpClient) { }

//  getCuenta():Observable<any>
 // {
 //   return this.http.get(this.BASE_URL)
 // }

 // getUnaCuenta(id: string):Observable<any>
 //// {
 //   return this.http.get(this.BASE_URL+'/'+id);
 // }

 // CuentaNueva(cuenta: NuevaCuenta):Observable<NuevaCuenta>
//  {
//    return this.http.post<NuevaCuenta>(this.NEW_ACCOUNT, cuenta);
//  }
//  codeError(code:string){
 //   switch (code) {
   //   //Mensajes para el registro
     // case 'auth/email-already-in-use':
       // return 'El usuario ya existe, ingrese otro email';
      //case 'auth/weak-password':
        //return 'La contraseña es debil, minimo de 8 caracteres';
      //case 'auth/invalid-email':
        //return 'Correo invalido';
      //Mensajes para el login
      //case 'auth/wrong-password':
        //return 'Contraseña incorrecta';
      //case 'auth/user-not-found':
      //  return 'El usuario no existe';
    
      //default:
        //return 'Error desconocido';
    }



