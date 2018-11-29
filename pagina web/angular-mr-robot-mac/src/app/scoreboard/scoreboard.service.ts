import { Injectable } from '@angular/core';
import { HttpClient} from '@angular/common/http';
import { Observable } from 'rxjs';

@Injectable({
    providedIn: 'root',
})
export class ScoreboardService {

    constructor(private http: HttpClient) {}

    public getEquipo(): Observable<any> {
        return this.http.get(`http://localhost:3000/equipos/`)
    }

}