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
  time = interval(60000) // Tiempo de actualizacion 1 minuto

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
    }, error => {
      
    });
  }

}
