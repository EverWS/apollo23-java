ALTER TABLE activities ADD CONSTRAINT fk_activities_event FOREIGN KEY (event_id) REFERENCES events (id);
ALTER TABLE activities ADD CONSTRAINT fk_activities_speaker FOREIGN KEY (speaker_id) REFERENCES speakers (id);
ALTER TABLE speakers ADD CONSTRAINT fk_speakers_event FOREIGN KEY (event_id) REFERENCES events (id);
ALTER TABLE messages ADD CONSTRAINT fk_messages_event FOREIGN KEY (event_id) REFERENCES events (id);
ALTER TABLE messages ADD CONSTRAINT fk_messages_sender FOREIGN KEY (sender_id) REFERENCES users (id);
ALTER TABLE messages ADD CONSTRAINT fk_messages_recipient FOREIGN KEY (recipient_id) REFERENCES users (id);
ALTER TABLE questions ADD CONSTRAINT fk_questions_event FOREIGN KEY (event_id) REFERENCES events (id);
ALTER TABLE questions ADD CONSTRAINT fk_questions_activity FOREIGN KEY (activity_id) REFERENCES activities (id);
ALTER TABLE questions ADD CONSTRAINT fk_questions_speaker FOREIGN KEY (speaker_id) REFERENCES speakers (id);
ALTER TABLE questions ADD CONSTRAINT fk_questions_user FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE treasures ADD CONSTRAINT fk_treasures_event FOREIGN KEY (event_id) REFERENCES events (id);
ALTER TABLE treasures ADD CONSTRAINT fk_treasures_activity FOREIGN KEY (activity_id) REFERENCES activities (id);
ALTER TABLE users_events ADD CONSTRAINT fk_users_events_event FOREIGN KEY (event_id) REFERENCES events (id);
ALTER TABLE users_events ADD CONSTRAINT fk_users_events_user FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE users_activities ADD CONSTRAINT fk_users_activities_activity FOREIGN KEY (activity_id) REFERENCES activities (id);
ALTER TABLE users_activities ADD CONSTRAINT fk_users_activities_user FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE users_treasures ADD CONSTRAINT fk_my_treasures_user FOREIGN KEY (user_id) REFERENCES users (id);
ALTER TABLE users_treasures ADD CONSTRAINT fk_my_treasures_treasure FOREIGN KEY (treasure_id) REFERENCES treasures (id);