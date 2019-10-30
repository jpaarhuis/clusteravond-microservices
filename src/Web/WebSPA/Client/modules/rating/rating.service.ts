import { HttpClient, HttpErrorResponse } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable, of, throwError } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { Rating } from './rating';

@Injectable({
  providedIn: 'root'
})
export class RatingService {

  ratingsFunctionUrl = 'http://localhost:7071/api/';

  constructor(private httpClient: HttpClient) { }

  addRating(rating: Rating) {
    const url = this.ratingsFunctionUrl + 'rating';
    return this.httpClient.post(url, rating);
  }

  getAverageRatings(): Observable<Rating[]> {
    const url = this.ratingsFunctionUrl + 'average-ratings';
    return this.httpClient.get<Rating[]>(url)
      .pipe(catchError(this.ignore404));
  }

  private ignore404(error: HttpErrorResponse) {
    if (error.status === 404) {
      // A client-side or network error occurred. Handle it accordingly.
      return of(undefined);
    }
    // return an observable with a user-facing error message
    return throwError(error);
  }

}
