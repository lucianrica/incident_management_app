module IncidentsHelper

    def incident_author(incident)
        user_signed_in? && current_user.id == incident.user_id
    end
    
    def reply_author(reply)
        user_signed_in? && current_user.id == reply.user_id
    end

end
