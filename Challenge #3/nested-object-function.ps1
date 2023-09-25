function GetValueFromNestedObject {
    param (
        [Parameter(Mandatory=$true)]
        [System.Object]$inputObject,
        
        [Parameter(Mandatory=$true)]
        [string]$key
    )

    $keys = $key -split '\.'
    $currentObject = $inputObject

    foreach ($k in $keys) {
        if ($currentObject -is [System.Collections.IDictionary]) {
            $currentObject = $currentObject[$k]
        }
        else {
            $currentObject = $currentObject.$k
        }

        if ($currentObject -eq $null) {
            Write-Host "Key '$key' not found in the nested object." -ForegroundColor Red
            return $null
        }
    }

    return $currentObject
}

# Example Usage:
$nestedObject = @{
    'firstLevel' = @{
        'secondLevel' = @{
            'thirdLevel' = 'Hello World'
        }
    }
}

$key = 'firstLevel.secondLevel.thirdLevel'

$value = GetValueFromNestedObject -inputObject $nestedObject -key $key

if ($value -ne $null) {
    Write-Host "Value for key '$key' is '$value'" -ForegroundColor Green
}
