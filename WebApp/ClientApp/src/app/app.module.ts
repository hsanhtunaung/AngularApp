import { BrowserModule } from '@angular/platform-browser';
import { NgModule,CUSTOM_ELEMENTS_SCHEMA } from '@angular/core';
import {MatTableModule} from '@angular/material/table';
import { FormsModule } from '@angular/forms';
import { HttpClientModule, HTTP_INTERCEPTORS } from '@angular/common/http';
import { RouterModule } from '@angular/router';
import { AppComponent } from './app.component';
import { NavMenuComponent } from './nav-menu/nav-menu.component';
import { HomeComponent } from './home/home.component';
import { PlayersModule } from './Players/player.module';
import { ListsComponent } from "./Players/lists/lists.component";
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';
import { MatPaginatorModule } from '@angular/material/paginator';
import { MatAutocompleteModule, MatBadgeModule, MatBottomSheetModule, MatButtonModule, MatFormFieldModule, MatInputModule, MatListModule} from '@angular/material';
import { ReactiveFormsModule } from '@angular/forms';
import 'hammerjs';

@NgModule({
  declarations: [
    AppComponent,
    NavMenuComponent,
    HomeComponent,     
    ListsComponent,   
  ],
  imports: [
    BrowserModule.withServerTransition({ appId: 'ng-cli-universal' }),
    MatPaginatorModule,
       MatTableModule,
      HttpClientModule,
    FormsModule,
    PlayersModule, MatAutocompleteModule, MatBadgeModule,
    MatBottomSheetModule, MatButtonModule, MatInputModule, MatFormFieldModule, MatListModule,
    ReactiveFormsModule,
    RouterModule.forRoot([
      { path: '', component: HomeComponent, pathMatch: 'full' },    
      { path: 'lists', component: ListsComponent },
  

    ]),
    BrowserAnimationsModule
  ],
  providers: [],
  bootstrap: [AppComponent],
schemas: [CUSTOM_ELEMENTS_SCHEMA]
})
export class AppModule { }
