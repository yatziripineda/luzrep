//
//  Contactos.swift
//  Contactos1
//
//  Created by CEDAM05 on 28/04/23.
//

import Foundation
import CoreData
class Post: NSManagedObject,Identifiable{
    @NSManaged public var publicacion:String
    @NSManaged public var usuario :String
    @NSManaged public var date : Date
    @NSManaged public var iniciales :String
}

extension Post{
    static func mostrarContactos() ->NSFetchRequest<Post>{
        let request: NSFetchRequest<Post> = Post.fetchRequest() as! NSFetchRequest<Post>
        request.sortDescriptors = [NSSortDescriptor(key: "nombre", ascending: true)]
        return request
    }
}
