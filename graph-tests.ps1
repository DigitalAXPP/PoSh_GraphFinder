$Punkt1 = [Node]::new("A")
$Punkt2 = [Node]::new("B")
$Punkt3 = [Node]::new("C")
$Punkt4 = [Node]::new("D")
$Punkt5 = [Node]::new("E")
$Punkt6 = [Node]::new("F")

$Punkt1.Add_Edge($Punkt2)
$Punkt2.Add_Edge($Punkt1)
$Punkt3.Add_Edge($Punkt1)
$Punkt1.Add_Edge($Punkt3)
$Punkt5.Add_Edge($Punkt3)
$Punkt3.Add_Edge($Punkt5)
$Punkt3.Add_Edge($Punkt4)
$Punkt4.Add_Edge($Punkt3)
$Punkt6.Add_Edge($Punkt5)
$Punkt5.Add_Edge($Punkt6)



$PunktA = [Node]::new("A")
$PunktB = [Node]::new("B")
$PunktC = [Node]::new("C")
$PunktD = [Node]::new("D")

$PunktA.Add_Edge($PunktB)
$PunktB.Add_Edge($PunktC)
$PunktB.Add_Edge($PunktD)