import { Component, Input } from '@angular/core';
import { Hero } from './hero';

@Component({
    selector: 'my-hero-detail',
    template: `
<div *ngIf="hero">
<h1>{{title}}</h1>
<h2>{{hero.name}} details:</h2>
<div><label>id: </label>{{hero.id}}</div>
<div>
<label>name: </label>
<input [(ngModel)]="hero.name" placeholder="name">
</div>
</div>
<h2>My Heroes</h2>
<ul class="heroes">
  <li *ngFor ="let hero of heroes" 
[class.selected]="hero === hero"
(click)="onSelect(hero)">
    <!-- each hero goes here -->
<span class="badge">{{hero.id}}</span> {{hero.name}}
  </li>
</ul>
<my-hero-detail [hero]="selectedHero"></my-hero-detail>
`,
})
export class HeroDetailComponent {
    @Input()
    hero: Hero;    
}