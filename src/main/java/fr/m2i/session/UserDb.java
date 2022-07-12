package fr.m2i.session;

import java.util.ArrayList;
import java.util.List;

public class UserDb {

    private static List<Utilisateur> users = new ArrayList() {
        {
            add(new Utilisateur(Role.ADMIN, "admin@gmail.com", "admin.secret"));
            add(new Utilisateur(Role.USER, "user@gmail.com", "user.secret"));
        }
    };

    public static Utilisateur checkUser(String email, String password) {
        for (Utilisateur user : UserDb.getUsers()) {
            if (user.getEmail().equals(email) && user.getMotPasse().equals(password)) {
                return user;
            }
        }

        return null;
    }

    public static List<Utilisateur> getUsers() {
        return users;
    }
}
