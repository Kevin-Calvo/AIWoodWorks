package com.AIWoodWorks.backend.controller;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import com.AIWoodWorks.backend.service.ChatService;
import com.AIWoodWorks.backend.model.Chat;

@RestController
@RequestMapping("/chats")
public class ChatController {

    private final ChatService chatService;

    public ChatController(ChatService chatService) {
        this.chatService = chatService;
    }

    @PostMapping
    public ResponseEntity<String> createChat(@RequestBody Chat chat) {
        chatService.createChat(chat);
        return new ResponseEntity<>("Chat created successfully", HttpStatus.CREATED);
    }

    @GetMapping("/{chatId}")
    public ResponseEntity<Chat> getChatById(@PathVariable Long chatId) {
        Chat chat = chatService.getChatById(chatId);
        if (chat != null) {
            return new ResponseEntity<>(chat, HttpStatus.OK);
        }
        return new ResponseEntity<>(HttpStatus.NOT_FOUND);
    }
}
