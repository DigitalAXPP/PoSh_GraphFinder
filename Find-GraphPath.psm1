function Find-GraphPath {
    [CmdletBinding()]
    param (
        [Parameter(
            Mandatory,
            HelpMessage='Enter the graph you want to traverse.'
        )]
        [array]$Graph
    )
    
    begin {
        
    }
    
    process {
        $obj = $Graph | ConvertTo-Json
        
    }
    
    end {
        
    }
}