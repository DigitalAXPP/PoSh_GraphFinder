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
        $queue = New-Object -TypeName System.Collections.Queue
    }
    
    process {
        $Graph | ForEach-Object { $queue.Enqueue(( $_ ) }        
    }

    end {
        
    }
}