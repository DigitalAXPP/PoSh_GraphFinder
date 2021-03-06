class Node {
    [string]$NodeName
    [System.Collections.ArrayList]$Edge
    [System.Collections.ArrayList]$Traversed
    [System.Collections.Queue]$Queue
    [System.Collections.ArrayList]$Path

    Node([string]$Name) {
        $this.NodeName = $Name
        $this.Edge = New-Object -TypeName System.Collections.ArrayList        
        $this.Traversed = New-Object -TypeName System.Collections.ArrayList
        $this.Queue = New-Object -TypeName System.Collections.Queue
        $this.Path = New-Object -TypeName System.Collections.ArrayList
    }

    [Node]Add_Edge([Node]$NewEdge) {
        return $this.Edge.Add($NewEdge)
    }

    [Node]TraverseDepthFirst() {
    }

    [Node]Add_Edge([Node]$NewEdge){
        return $this.Edge.Add($NewEdge)
    }

    [Node]Traverse(){
        foreach ($item in $this.Edge) {
            $this.Queue.Enqueue($item)
        }

        while (-not($this.Queue.Count -eq 0)) {
            [Node]$vertex = $this.Queue.Dequeue()
            if ($this.Traversed -notcontains $vertex) {
                $this.Traversed.Add($vertex)
                foreach ($item in $vertex.Edge) {
                    $this.Queue.Enqueue($item)
                }
            }
        }
        return $this
    }

    [Node]TraverseBreadthFirst() {
        foreach ($item in $this.Edge) {
            $this.Queue.Enqueue($item)
        }
        
        $this.Traversed.Add($this)
        while (-not($this.Queue.Count -eq 0)) {
            [Node]$vertex = $this.Queue.Dequeue()
            if ($this.Traversed -notcontains $vertex) {
                $this.Traversed.Add($vertex)
                foreach ($item in $vertex.Edge) {
                    $this.Queue.Enqueue($item)
                }
            }
        }
        return $this
    }

    [Node]ShortestPath() {
        foreach ($item in $this.Edge) {
            $this.Queue.Enqueue($item)
        }

        while (-not($this.Queue.Count -eq 0)) {
            [Node]$vertex = $this.Queue.Dequeue()
            if ($this.Traversed -notcontains $vertex) {
                $this.Traversed.Add($vertex)
                $this.Path.Add($vertex)
                if ($vertex.NodeName -eq "D") {
                    Write-Verbose -Verbose "Shortest path is here."
                    break;
                }
                elseif ($vertex.Edge.Count -eq 0) {
                    $this.Path.Remove($vertex)
                }
                foreach ($item in $vertex.Edge) {
                    $this.Queue.Enqueue($item)
                }
            }
        }
        return $this;
    }
}