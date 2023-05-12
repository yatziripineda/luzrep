//
//  ForoView.swift
//  LUZ1
//
//  Created by CEDAM04 on 11/05/23.
//

import SwiftUI
struct AddCommentView: View {
    @Binding var isPresented: Bool
    @State private var newCommentBody = ""
    var post: ForoPost
    var addComment: (_ comment: ForoComment, _ post: ForoPost) -> Void
    
    var body: some View {
        VStack {
            TextField("Comentario", text: $newCommentBody)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            HStack {
                Button(action: { isPresented = false }) {
                    Text("Cancelar")
                }
                Spacer()
                Button(action: addNewComment) {
                    Text("Agregar")
                }
            }
        }
        .padding()
    }
    
    func addNewComment() {
        let newComment = ForoComment(author: "Yo", body: newCommentBody)
        addComment(newComment, post)
        isPresented = false
    }
}

struct ForoView: View {
    @State private var newPostTitle = ""
    @State private var newPostBody = ""
    @State private var posts: [ForoPost] = [
        ForoPost(author: "Juan", title: "Mi primera publicación", body: "¡Hola a todos! Este es mi primer post.", likes: 0, comments: []),
        ForoPost(author: "Ana", title: "Mi opinión", body: "Creo que deberíamos hablar más sobre el tema de la salud mental.", likes: 2, comments: []),
        ForoPost(author: "Pedro", title: "Noticias del día", body: "¡Hoy es un gran día! Acaba de salir la nueva versión de SwiftUI.", likes: 1, comments: []),
    ]
    @State private var selectedPost: ForoPost?
    @State private var isPresentingAddCommentView = false
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    TextField("Título", text: $newPostTitle)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Spacer()
                }
                HStack {
                    TextField("Publicación", text: $newPostBody)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    Spacer()
                }
                Button(action: addPost) {
                    Text("Publicar")
                }
                List(posts) { post in
                    VStack(alignment: .leading) {
                        HStack {
                            Text(post.author)
                                .font(.headline)
                            Spacer()
                            Text("\(post.likes) 👍")
                        }
                        Text(post.title)
                            .font(.title)
                        Text(post.body)
                            .padding(.bottom)
                        Divider()
                        ForEach(post.comments) { comment in
                            VStack(alignment: .leading) {
                                Text(comment.author)
                                    .font(.subheadline)
                                Text(comment.body)
                                    .font(.body)
                            }
                        }
                        HStack {
                            Spacer()
                            Button(action: { likePost(post) }) {
                                Image(systemName: "hand.thumbsup")
                            }
                            Button(action: { selectedPost = post; isPresentingAddCommentView = true }) {
                                Image(systemName: "text.bubble")
                            }
                        }
                    }
                }
            }
            .padding()
            .navigationTitle("Foro")
        }
    }
    
    func addPost() {
        let newPost = ForoPost(author: "Yo", title: newPostTitle, body: newPostBody, likes: 0, comments: [])
        posts.append(newPost)
        newPostTitle = ""
        newPostBody = ""
    }
    
    func addComment(to post: ForoPost) {
        let newComment = ForoComment(author: "Yo", body: "¡Excelente publicación!")
        var updatedPost = post
        updatedPost.comments.append(newComment)
        if let postIndex = posts.firstIndex(where: { $0.id == post.id }) {
            posts[postIndex] = updatedPost
        }
    }
    
    func likePost(_ post: ForoPost) {
        var updatedPost = post
        updatedPost.likes += 1
        if let postIndex = posts.firstIndex(where: { $0.id == post.id }) {
            posts[postIndex] = updatedPost
        }
    }
}






struct ForoPost: Identifiable {
    let id = UUID()
    let author: String
    let title: String
    let body: String
    var likes: Int
    var comments: [ForoComment]
}

struct ForoComment: Identifiable {
    let id = UUID()
    let author: String
    let body: String
}
struct ForoView_Previews: PreviewProvider {
    static var previews: some View {
        ForoView()
    }
}
