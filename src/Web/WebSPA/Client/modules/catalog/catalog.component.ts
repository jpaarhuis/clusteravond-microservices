import { Component, OnInit } from '@angular/core';
import { Observable, Subscription } from 'rxjs';
import { catchError } from 'rxjs/operators';
import { Rating } from '../rating/rating';
import { RatingService } from '../rating/rating.service';
import { ICatalog } from '../shared/models/catalog.model';
import { ICatalogBrand } from '../shared/models/catalogBrand.model';
import { ICatalogItem } from '../shared/models/catalogItem.model';
import { ICatalogType } from '../shared/models/catalogType.model';
import { IPager } from '../shared/models/pager.model';
import { BasketWrapperService } from '../shared/services/basket.wrapper.service';
import { ConfigurationService } from '../shared/services/configuration.service';
import { SecurityService } from '../shared/services/security.service';
import { CatalogService } from './catalog.service';

@Component({
    selector: 'esh-catalog .esh-catalog',
    styleUrls: ['./catalog.component.scss'],
    templateUrl: './catalog.component.html'
})
export class CatalogComponent implements OnInit {
    brands: ICatalogBrand[];
    types: ICatalogType[];
    catalog: ICatalog;
    brandSelected: number;
    typeSelected: number;
    paginationInfo: IPager;
    authenticated: boolean = false;
    authSubscription: Subscription;
    errorReceived: boolean;
    ratings: number[] = [];

    constructor(private ratingService: RatingService, private service: CatalogService, private basketService: BasketWrapperService, private configurationService: ConfigurationService, private securityService: SecurityService) {
        this.authenticated = securityService.IsAuthorized;
    }

    ngOnInit() {

        // Configuration Settings:
        if (this.configurationService.isReady)
            this.loadData();
        else
            this.configurationService.settingsLoaded$.subscribe(x => {
                this.loadData();
            });

        // Subscribe to login and logout observable
        this.authSubscription = this.securityService.authenticationChallenge$.subscribe(res => {
            this.authenticated = res;
        });
    }

    loadData() {
        this.getBrands();
        this.getCatalog(10, 0);
        this.getTypes();
        this.getRatings();
    }

    getRatings() {
        this.ratingService.getAverageRatings().subscribe(ratings => {
            ratings.forEach(rating => {
                this.ratings[rating.itemId] = rating.ratingValue;
            });
        });
    }

    onFilterApplied(event: any) {
        event.preventDefault();
        this.getCatalog(this.paginationInfo.itemsPage, this.paginationInfo.actualPage, this.brandSelected, this.typeSelected);
    }

    onBrandFilterChanged(event: any, value: number) {
        event.preventDefault();
        this.brandSelected = value;
    }

    onTypeFilterChanged(event: any, value: number) {
        event.preventDefault();
        this.typeSelected = value;
    }

    onPageChanged(value: any) {
        console.log('catalog pager event fired' + value);
        event.preventDefault();
        this.paginationInfo.actualPage = value;
        this.getCatalog(this.paginationInfo.itemsPage, value);
    }

    onRatingChange(item: ICatalogItem, $event: any) {
        const rating = new Rating();
        rating.itemId = item.id;
        rating.ratingValue = $event.rating;

        this.ratingService.addRating(rating).subscribe();
    }

    addToCart(item: ICatalogItem) {
        this.basketService.addItemToBasket(item);
    }

    getCatalog(pageSize: number, pageIndex: number, brand?: number, type?: number) {
        this.errorReceived = false;
        this.service.getCatalog(pageIndex, pageSize, brand, type)
            .pipe(catchError((err) => this.handleError(err)))
            .subscribe(catalog => {
                this.catalog = catalog;
                this.paginationInfo = {
                    actualPage: catalog.pageIndex,
                    itemsPage: catalog.pageSize,
                    totalItems: catalog.count,
                    totalPages: Math.ceil(catalog.count / catalog.pageSize),
                    items: catalog.pageSize
                };
            });
    }

    getTypes() {
        this.service.getTypes().subscribe(types => {
            this.types = types;
            let alltypes = { id: null, type: 'All' };
            this.types.unshift(alltypes);
        });
    }

    getBrands() {
        this.service.getBrands().subscribe(brands => {
            this.brands = brands;
            let allBrands = { id: null, brand: 'All' };
            this.brands.unshift(allBrands);
        });
    }

    private handleError(error: any) {
        this.errorReceived = true;
        return Observable.throw(error);
    }
}

