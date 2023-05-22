//
//  Contactos.swift
//  Contactos1
//
//  Created by CEDAM05 on 28/04/23.
//

import Foundation
import CoreData
class Contactos: NSManagedObject,Identifiable{
    @NSManaged public var nombre :String
    @NSManaged public var apellido :String
    @NSManaged public var iniciales :String
    @NSManaged public var telefonon :String
}

extension Contactos{
    static func mostrarContactos() ->NSFetchRequest<Contactos>{
        let request: NSFetchRequest<Contactos> = Contactos.fetchRequest() as! NSFetchRequest<Contactos>
        request.sortDescriptors = [NSSortDescriptor(key: "nombre", ascending: true)]
        return request
    }
}
