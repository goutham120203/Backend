package com.example.movieapi.service;

import java.time.LocalDate;
import java.util.List;
import org.springframework.stereotype.Service;

import com.example.movieapi.entity.Movies;
import com.example.movieapi.repository.MovieRepository;

@Service
public class MovieService {

    private final MovieRepository movieRepository;

    public MovieService(MovieRepository movieRepository){
        this.movieRepository = movieRepository;
    }

    public List<Movies> getPopularMovies() {
        return movieRepository.findByIsPopularTrue();
    }

    public List<Movies> getMoviesWithGenres(String genreName) {
        List<Movies> moviesByGenre = movieRepository.findMoviesWithGenres(genreName);

        if (moviesByGenre.isEmpty()) {
            System.out.println("No movies found for the genre: " + genreName);
        }
        return moviesByGenre;
    }

    public List<Movies> getMoviesWithGenresId(Long id) {
        List<Movies> moviesByGenre = movieRepository.findMoviesWithGenresId(id);

        if (moviesByGenre.isEmpty()) {
            System.out.println("No movies found for genre ID: " + id);
        }
        return moviesByGenre;
    }

    public List<Movies> getAllMovies(){
        return movieRepository.findAll();
    }

    public List<Movies> getUpComingMovies() {
        LocalDate today = LocalDate.now();  
        return movieRepository.findByReleaseDateAfter(today);
    }
}
