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
        $stack = New-Object -TypeName System.Collections.Stack
    }
    
    process {
        $Graph | ForEach-Object { $stack.Push( $_ ) }        
    }

    end {
        
    }
}