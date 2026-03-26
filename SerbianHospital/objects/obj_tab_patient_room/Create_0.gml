beds = array_create(6);

// each bed holds a patient or noone
for (var i = 0; i < 6; i++) {
    beds[i] = noone;
}

selected_bed = -1;

function Patient(_name, _condition) constructor {
    name = _name;
    condition = _condition;
}

beds[0] = new Patient("Marko Petrovic", "Critical");
beds[2] = new Patient("Ana Jovanovic", "Stable");