package org.example.cicdtest.controller;

import lombok.RequiredArgsConstructor;
import org.example.cicdtest.dto.Response;
import org.example.cicdtest.service.MainService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RequestMapping("/main")
@RestController
@RequiredArgsConstructor
public class MainController {
    private final MainService mainService;

    @GetMapping("/welcome")
    public Response getWelcomeMessage() {
        return mainService.getWelcomeMessage();
    }
}
