if ($host.Name -eq 'ConsoleHost') {
  Import-Module PSReadLine
  Import-Module -ErrorAction SilentlyContinue posh-git

  $params = @{
    EditMode = 'Emacs'
    Colors = @{
      Command = "$([char]0x1b)[33m"
      Error = "$([char]0x1b)[31m"
      Member = "$([char]0x1b)[34m"
      Number = "$([char]0x1b)[34m"
      String = "$([char]0x1b)[34m"
      Variable = "$([char]0x1b)[32m"
    }
  }
  Set-PSReadLineOption @params
}

function Prompt {
  '> '
}
