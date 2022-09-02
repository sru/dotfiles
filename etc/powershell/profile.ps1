if ($host.Name -eq 'ConsoleHost') {
  Import-Module PSReadLine
  Import-Module -ErrorAction SilentlyContinue posh-git

  $params = @{
    EditMode = 'Emacs'
    Colors = @{
      Command = "$([char]0x1b)[30m"
      Comment = "$([char]0x1b)[32m"
      ContinuationPrompt = "$([char]0x1b)[30m"
      Default = "$([char]0x1b)[30m"
      Emphasis = "$([char]0x1b)[30;103m"
      Error = "$([char]0x1b)[30;101m"
      InlinePrediction = "$([char]0x1b)[90m"
      Keyword = "$([char]0x1b)[30m"
      ListPrediction = "$([char]0x1b)[30m"
      ListPredictionSelected = "$([char]0x1b)[30;100m"
      Member = "$([char]0x1b)[30m"
      Number = "$([char]0x1b)[30m"
      Operator = "$([char]0x1b)[30m"
      Parameter = "$([char]0x1b)[30m"
      Selection = "$([char]0x1b)[30;100m"
      String = "$([char]0x1b)[30m"
      Type = "$([char]0x1b)[30m"
      Variable = "$([char]0x1b)[30m"
    }
  }
  Set-PSReadLineOption @params

  Set-Alias g git

  Remove-Alias cat
  Remove-Alias cd
  Remove-Alias cp
  Remove-Alias curl
  Remove-Alias diff
  Remove-Alias dir
  Remove-Alias echo
  Remove-Alias ls
  Remove-Alias man
  Remove-Alias mv
  Remove-Alias popd
  Remove-Alias ps
  Remove-Alias pushd
  Remove-Alias pwd
  Remove-Alias rm
  Remove-Alias rmdir
  Remove-Alias wget
}

function Prompt {
  '> '
}