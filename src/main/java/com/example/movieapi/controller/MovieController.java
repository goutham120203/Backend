package com.example.movieapi.controller;

import java.util.List; 
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.example.movieapi.entity.Movies;
import com.example.movieapi.service.MovieService;

@RestController
@RequestMapping("/movies")
public class MovieController {

    private final MovieService movieService;

    public MovieController(MovieService movieService) { 
        this.movieService = movieService;
    }
    
    @GetMapping("/popular")
    public List<Movies> getPopularMovies() {
        return movieService.getPopularMovies();
    }

    // Endpoint to get movies by genre name
    @GetMapping("/genre/name/{genreName}")
    public List<Movies> getMoviesWithGenres(@PathVariable String genreName) {
        return movieService.getMoviesWithGenres(genreName);
    }

    // Endpoint to get movies by genre ID
    @GetMapping("/genre/id/{id}")
    public List<Movies> getMoviesWithGenresId(@PathVariable Long id) {
        return movieService.getMoviesWithGenresId(id);
    }

    @GetMapping(" ")
    public List<Movies> getAllMovies(){
        return movieService.getAllMovies();
    }

    @GetMapping("/upcoming")
    public List<Movies> getUpComingMovies(){
        return movieService.getUpComingMovies();
    }
}
