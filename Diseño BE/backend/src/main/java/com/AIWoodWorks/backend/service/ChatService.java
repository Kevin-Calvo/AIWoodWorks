package com.AIWoodWorks.backend.service;

import org.springframework.stereotype.Service;
import com.AIWoodWorks.backend.model.Chat;
import com.AIWoodWorks.backend.repository.ChatRepository;

@Service
public class ChatService {

    private final ChatRepository chatRepository;

    public ChatService(ChatRepository chatRepository) {
        this.chatRepository = chatRepository;
    }

    public void createChat(Chat chat) {
        chatRepository.save(chat);
    }

    public Chat getChatById(Long chatId) {
        return chatRepository.findById(chatId);
    }
}
