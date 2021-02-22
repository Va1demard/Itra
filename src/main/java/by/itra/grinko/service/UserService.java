package by.itra.grinko.service;

import by.itra.grinko.model.User;
import by.itra.grinko.repository.UserRepository;
import org.springframework.stereotype.Service;

@Service
public class UserService {

    private final UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public User getById(Long id) {
        return userRepository.getById(id);
    }
}
