$Punkt1 = [Node]::new("1")
$Punkt2 = [Node]::new("2")
$Punkt3 = [Node]::new("3")
$Punkt4 = [Node]::new("4")

$Punkt1.Add_Edge($Punkt2)
$Punkt2.Add_Edge($Punkt3)
$Punkt3.Add_Edge($Punkt4)