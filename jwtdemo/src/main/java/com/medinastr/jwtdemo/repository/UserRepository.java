package com.medinastr.jwtdemo.repository;

import com.medinastr.jwtdemo.model.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {

    // User to refer to the object
    @Query("SELECT user FROM User WHERE user.username =: username")
    User findByUsername(@Param("username") String username);
}
