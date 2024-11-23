package com.example.movieapi.repository;

import java.time.LocalDate;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import com.example.movieapi.entity.Movies;

public interface MovieRepository extends JpaRepository<Movies, Long> {

    // Query to find popular movies
    List<Movies> findByIsPopularTrue();

    // JPQL query to find movies by genre name using entity names
    @Query("SELECT DISTINCT m FROM Movies m "
        + "JOIN m.genres g "
        + "WHERE g.genreName = :genreName")
    List<Movies> findMoviesWithGenres(String genreName);

    // JPQL query to find movies by genre id
    @Query("SELECT DISTINCT m FROM Movies m "
        + "JOIN m.genres g "
        + "WHERE g.id = :id")
    List<Movies> findMoviesWithGenresId(Long id);

    List<Movies> findAll();

    List<Movies> findByReleaseDateAfter(LocalDate date);

}
