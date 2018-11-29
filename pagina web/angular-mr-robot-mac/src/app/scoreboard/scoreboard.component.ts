import { Component, OnInit } from '@angular/core';
import { ScoreboardService } from './scoreboard.service';
import { interval } from 'rxjs';

@Component({
  selector: 'app-scoreboard',
  templateUrl: './scoreboard.component.html',
  styleUrls: ['./scoreboard.component.css']
})
export class ScoreboardComponent implements OnInit {

  equipos = [];
  time = interval(1000); // Tiempo de actualizacion 1 minuto
  ganadores = []

  constructor(
    private scoreboardservice: ScoreboardService
  ) { }

  ngOnInit() {

    this.EquiposScore()
    this.time
    .subscribe(() =>{
      this.EquiposScore()
      });
  }

  EquiposScore(){
    this.scoreboardservice.getEquipo().subscribe(data => {
      this.equipos = data
      this.KnowWinners()
    }, error => {
      
    });
  }

  KnowWinners(){
    let porcentaje_ganador = this.equipos[0].porcentaje;
    this.ganadores = []
    for ( var index = 0; index < 20; index++){
      if ( this.equipos[index].porcentaje == porcentaje_ganador ){
        this.ganadores.push(this.equipos[index])
      }else{
        break;
      }
    }
  }

}
