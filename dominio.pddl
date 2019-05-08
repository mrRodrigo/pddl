(define (domain salas)
    (:requirements :strips )
    (:predicates (Agent ?loc ) (Room ?loc) (Door ?obj ?loc) (Windown ?obj ?loc) (Open ?obj) (Connection ?loc1 ?loc2))
    
    (:action move   :parameters (?loc1 ?loc2 ?obj)
                    :precondition (and (Agent ?loc1) (Room ?loc2) (Connection ?loc1 ?loc2) (Open ?obj))
                    :effect (and (Agent ?loc2) (not (Agent ?loc1)) )
    )

    (:action closeWindow  :parameters (?loc1 ?obj)
                    :precondition (and (Agent ?loc1) (Sala ?loc1) (Open ?obj) ((Door ?obj ?loc1) or (Windown ?obj ?loc1)))
                    :effect ( (not (Open ?obj)) )
    )
    
    ;Para fechar a porta o agente deve estar em uma sala diferente e que tenha conexao com a sala da porta 
    (:action closeDoor  :parameters (?loc1 ?loc2 ?obj)
                        :precondition (and (Agent ?loc1) (Sala ?loc2) (Sala ?loc1) (Connection ?loc1 ?loc2) (Open ?obj) (Door ?obj ?loc1))
                        :effect ( (not (Open ?obj)) )
    )
    
    (:action openDoor   :parameters (?loc1 ?loc2 ?obj)
                        :precondition (and ((Agent ?loc1) or (and (Agent ?loc2) (Connection ?loc1 ?loc2))) (Sala ?loc1) (Sala ?loc2) (not (Open ?obj)) (Door ?obj ?loc1)))
                        :effect ( (not (Open ?obj)) )
    )
)
