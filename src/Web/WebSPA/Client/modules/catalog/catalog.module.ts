import { CommonModule } from '@angular/common';
import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { SharedModule } from '../shared/shared.module';
import { CatalogComponent } from './catalog.component';
import { CatalogService } from './catalog.service';
import { RatingModule } from '../rating/rating.module';

@NgModule({
    imports: [BrowserModule, SharedModule, CommonModule, RatingModule],
    declarations: [CatalogComponent],
    providers: [CatalogService]
})
export class CatalogModule { }
