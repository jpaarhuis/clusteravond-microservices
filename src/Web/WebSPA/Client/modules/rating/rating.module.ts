import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { StarRatingModule } from 'angular-star-rating';

@NgModule({
  declarations: [],
  imports: [
    CommonModule,
    StarRatingModule.forRoot()
  ],
  exports: [
    StarRatingModule
  ]
})
export class RatingModule { }
