import { NgModule } from '@angular/core';
import { CommonModule } from '@angular/common';
import { PlayersRoutingModule } from './players-routing.module';
import { ListComponent } from './list/list.component';

import { DetailsComponent } from './details/details.component';
import { CreateComponent } from './create/create.component';
import { EditComponent } from './edit/edit.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { MatButtonModule, MatFormFieldModule, MatInputModule, MatListModule } from '@angular/material';
@NgModule({
  declarations: [
    ListComponent,
    DetailsComponent,
    CreateComponent,
    EditComponent  
  ],
  imports: [
    CommonModule,
    PlayersRoutingModule,
    FormsModule,
    ReactiveFormsModule
    , MatButtonModule, MatInputModule, MatFormFieldModule, MatListModule
    
  ]
})
export class PlayersModule { }
