(define (domain salas)
    (:requirements :strips )
    (:predicates (Em ?loc ) (Sala ?loc) (PortaAberta ?loc) (PortaFechada ?loc) (Conexao ?loc1 ?loc2 ) (JanelasFechadas ?loc) (JanelasAbertas ?loc))
    
    (:action Mover  :parameters (?loc1 ?loc2)
                    :precondition (and (Em ?loc1) (Sala ?loc1) (Sala ?loc2) (Conexao ?loc1 ?loc2 ) (PortaAberta ?loc2))
                    :effect (and (Em ?loc2) (not (Em ?loc1)) )
    )
    
    (:action FechaPorta  :parameters (?loc1 ?loc2)
                    :precondition (and (Em ?loc1) (Sala ?loc1) (Sala ?loc2) (Conexao ?loc1 ?loc2 ) (PortaAberta ?loc2) )
                    :effect (and (PortaFechada ?loc2) (not (PortaAberta ?loc2)) )
    )
    
    (:action AbrePorta  :parameters (?loc1 ?loc2)
                    :precondition (and (Em ?loc1) (Sala ?loc1) (Sala ?loc2) (Conexao ?loc1 ?loc2 ) (PortaFechada ?loc2) )
                    :effect (and (PortaAberta ?loc2) (not (PortaFechada ?loc2)) )
    )
    
    (:action FechaJanelas  :parameters (?loc1)
                    :precondition (and (Em ?loc1) (Sala ?loc1) (JanelasAbertas ?loc1)) 
                    :effect (and (JanelasFechadas ?loc1) (not (JanelasAbertas ?loc1)))
    )
    

   
)
