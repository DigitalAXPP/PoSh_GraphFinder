class Node {
    [string]$NodeName
    [System.Collections.ArrayList]$Edge

    Node([string]$Name) {
        $this.NodeName = $Name
    }

    [Node]Add_Edge($NewEdge){
        return $this.Edge.Add($NewEdge)
    }
}