def zero_through_binary_search(f,a,b,xerr=0.00001):
    """
        Sei f stetige Funktion, die in den Endpunkten von [a,b] das Vorzeichen wechselt.
        Man berechnet eine Approximation eines xi mit f(xi)=0 mit der Fehlertoleranz xerr.

        Umsetzung mit dem Gedanken im Hinterkopf, dass ein Auswertung von f sehr teuer sein
        kann (etwa eine Simulation, die man durchlaufen muss, und die mehrere Minuten in
        Anspruch nehmen kann)
    """
    assert(a<b) # a und b sollen ein Segment definieren
    # setup
    left=a
    right=b
    f_left=f(left)
    f_right=f(right)
    # Am anfang sollen wir ein Vorzeichenwechsel haben
    assert( f_left * f_right <= 0 )
    # solange gewuenschte Praezision nicht erreicht ist, weiter halbieren
    while right-left>xerr:
        # Invariante: zwischen left und right liegt eine Nullstelle von f
        middle = 0.5 * (left+ right)
        f_middle = f(middle)
        if f_left*f_middle<=0:
            right=middle
            f_right=f_middle
        else:
            left=middle
            f_left=f_middle

    return left