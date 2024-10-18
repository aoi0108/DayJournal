//
//  JournalEntryDetailView.swift
//  DayJournal
//
//  Created by 平松蒼惟 on 2024/10/08.
//

import SwiftUI

struct JournalEntryDetailView: View {
    
    let detailJournalEntry : JournalEntry
    
    
    var body: some View {
        ScrollView{
            VStack(alignment: .leading){
                HStack{
                    Text(detailJournalEntry.date, style: .date)
                        .bold()
                    Text("-")
                    Text(String(repeating: "⭐️", count: Int(detailJournalEntry.rating)))
                    Spacer()
                    
                }
                .padding(.bottom)
                
                Text(detailJournalEntry.text)
            }
            .padding()
        }
        .navigationTitle(detailJournalEntry.title)
           
    }
}

#Preview {
    NavigationStack{
        JournalEntryDetailView(detailJournalEntry: JournalEntry(title: "Great Gold Day!", text: "I found a nice pot of gold, I'm rich I tell ya!!Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus euismod lorem metus, ut ultricies nisi malesuada in. Curabitur nisi justo, lacinia sed faucibus nec, posuere ac nisi. Nulla lacus mauris, semper eget purus in, fringilla aliquet nisi. Etiam tincidunt, arcu at fermentum eleifend, urna lorem consequat massa, a egestas velit sapien ac ligula. Curabitur mi diam, tincidunt in dictum non, finibus at elit. Pellentesque nec enim lorem. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nam condimentum felis et urna sodales placerat. Sed eget nibh ante. Aenean nisi mauris, semper at sagittis sit amet, scelerisque id mauris. Curabitur nec tempus mauris. Maecenas iaculis risus ut est faucibus egestas. In in leo quis ex fringilla iaculis. Aliquam viverra fringilla nisi, vitae condimentum eros congue sed. Etiam in porttitor tellus, et semper velit. Ut ultrices sagittis tristique. Curabitur arcu velit, placerat eu orci vitae, posuere lacinia turpis. Nunc in egestas felis.In condimentum sollicitudin nibh eu mattis. Mauris ornare accumsan libero, in laoreet erat pulvinar a. Phasellus lacinia eros at nunc placerat, eu venenatis justo ornare. Nulla vel egestas magna, eget aliquet erat. Nullam commodo rhoncus pulvinar. Nam id elit non leo porta fermentum a a urna. Cras eu ante et turpis convallis tincidunt ac ac est. Integer pharetra in velit ac mollis. Pellentesque volutpat consectetur sapien quis euismod. Aenean hendrerit semper metus, vitae porttitor leo efficitur id. Proin orci quam, aliquam nec felis eu, porttitor convallis dolor.Praesent sagittis bibendum risus fringilla mattis. Vestibulum at ante vestibulum diam iaculis ultrices posuere eu urna. Interdum et malesuada fames ac ante ipsum primis in faucibus. Proin vitae metus eget quam hendrerit iaculis. Donec tristique, tortor et iaculis lobortis, felis ante placerat nunc, eu porttitor justo nunc vel libero. Aliquam vitae vulputate arcu. Donec et magna ultricies, ultricies leo vitae, fringilla lorem. Aenean a elit ornare, lacinia tortor in, scelerisque magna. Fusce convallis porta est vitae hendrerit.Vestibulum tincidunt lorem risus, sit amet lobortis lorem pharetra non. Donec vehicula diam non viverra feugiat. Aliquam finibus porttitor justo. Curabitur cursus efficitur libero nec lobortis. Sed tempor eros non tellus dapibus, ac ultrices tortor sollicitudin. Donec id erat et ex iaculis fringilla. Sed lacus leo, pulvinar gravida blandit quis, mattis in nisl. Sed nibh est, lacinia eu augue sit amet, euismod feugiat erat. Aenean nunc eros, molestie eget malesuada ut, egestas at erat. Sed eleifend sapien nibh, sit amet tristique libero euismod id. Quisque in neque ac risus sodales pretium in eu nisi. Donec laoreet, massa vitae lacinia maximus, odio neque tincidunt orci, eu rutrum risus lorem a enim. Proin vulputate, tellus ut bibendum mattis, erat velit posuere urna, at efficitur dolor sapien vel ligula.Vivamus facilisis libero neque, quis volutpat lectus mattis ac. Sed nec ligula non augue maximus ultrices quis nec mi. Sed gravida interdum est at tempor. Donec lobortis ultrices lorem. Nunc pellentesque elementum velit nec vehicula. Sed bibendum nisl a neque malesuada interdum ut ut magna. Fusce sed dictum nibh. Nulla a aliquam enim, id convallis risus. Praesent eu felis vitae leo condimentum tempor quis ac tortor. Quisque sit amet nisl egestas, consequat nisi in, vehicula nisl. Vestibulum efficitur arcu ut diam pharetra, eget euismod urna ullamcorper. Nulla quis facilisis dolor.Vestibulum iaculis metus nunc, vitae convallis justo ultricies sed. Phasellus ullamcorper mi quam, eu laoreet justo blandit sit amet. Proin vitae porta elit. Curabitur sollicitudin lobortis convallis. Interdum et malesuada fames ac ante ipsum primis in faucibus. Donec cursus porttitor risus, quis pretium sapien tristique et. Nullam quis mollis quam. Nullam malesuada quam eu ipsum hendrerit, ut euismod ligula fermentum. Nam sapien urna, ultricies vel metus non, suscipit faucibus nulla. Nunc tincidunt elementum aliquam. Maecenas fermentum, diam at semper sollicitudin, orci neque vehicula dolor, quis rutrum augue lectus nec turpis. Sed nec orci pulvinar, venenatis dolor vitae, auctor diam. Phasellus ac dignissim diam. Praesent eget ultricies velit, sit amet molestie tortor. Maecenas tincidunt sollicitudin placerat. Pellentesque vitae finibus massa, sit amet tristique libero. Integer lectus erat, venenatis quis sodales eget, porttitor sit amet ante.Maecenas consectetur condimentum semper. Quisque facilisis mattis ligula tincidunt convallis. Curabitur non ligula id enim pulvinar hendrerit. Vestibulum iaculis sit amet orci eget volutpat. Curabitur cursus dolor nec dui posuere fermentum. Praesent auctor sagittis ipsum, id dapibus sapien ultrices ut. Donec tortor massa, interdum bibendum tortor vitae, varius consectetur diam. Sed id mi in sem lobortis mattis. Etiam magna metus, pharetra non ultricies sed, semper ut turpis.Phasellus ultrices ex nec nunc ornare mollis. Integer vel tempor lectus, posuere lacinia elit. In ornare ultrices dolor luctus lacinia. Mauris non consequat erat. Aenean malesuada augue non eleifend ornare. Vivamus non mi vel ligula malesuada consequat lobortis eget tellus. Fusce dapibus tellus in risus vestibulum finibus. Vivamus efficitur, mauris non convallis sodales, enim enim maximus ante, malesuada tincidunt nisi lacus et nulla. Nam elementum justo vel felis molestie, vitae interdum libero ullamcorper. Donec vehicula ultrices magna, ut pharetra erat scelerisque ut. Curabitur sollicitudin, nunc at porta condimentum, nibh nulla aliquam nibh, vel dapibus mi purus eu dolor. Aliquam in malesuada libero. Donec at porttitor lacus, non lobortis justo. Etiam ac sapien nec ex gravida rutrum." , rating: 5, date: Date())
        )
    }
}
