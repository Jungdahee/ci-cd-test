package org.example.cicdtest.service;

import org.example.cicdtest.dto.Response;
import org.springframework.stereotype.Service;

@Service
public class MainService {
    public Response getWelcomeMessage() {
        return new Response("안녕하세요:)");
    }
}
