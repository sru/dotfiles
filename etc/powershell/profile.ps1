if ($host.Name -eq 'ConsoleHost') {
  Import-Module PSReadLine
  Import-Module -ErrorAction SilentlyContinue posh-git

  $params = @{
    EditMode = 'Emacs'
    Colors = @{
      Command = "$([char]0x1b)[39m"
      Comment = "$([char]0x1b)[39;3m"
      ContinuationPrompt = "$([char]0x1b)[39m"
      Default = "$([char]0x1b)[39m"
      Emphasis = "$([char]0x1b)[39;103m"
      Error = "$([char]0x1b)[31m"
      InlinePrediction = "$([char]0x1b)[90m"
      Keyword = "$([char]0x1b)[39m"
      ListPrediction = "$([char]0x1b)[39m"
      ListPredictionSelected = "$([char]0x1b)[39;100m"
      Member = "$([char]0x1b)[39m"
      Number = "$([char]0x1b)[39m"
      Operator = "$([char]0x1b)[39m"
      Parameter = "$([char]0x1b)[39m"
      Selection = "$([char]0x1b)[39;100m"
      String = "$([char]0x1b)[39m"
      Type = "$([char]0x1b)[39m"
      Variable = "$([char]0x1b)[39m"
    }
    PredictionSource = 'None'
  }
  Set-PSReadLineOption @params

  $Host.PrivateData.FormatAccentColor = 'Black'
  $Host.PrivateData.ErrorAccentColor = 'Red'
  $Host.PrivateData.ErrorForegroundColor = 'Red'
  $Host.PrivateData.ErrorBackgroundColor = 'White'
  $Host.PrivateData.WarningForegroundColor = 'Yellow'
  $Host.PrivateData.WarningBackgroundColor = 'White'
  $Host.PrivateData.DebugForegroundColor = 'Gray'
  $Host.PrivateData.DebugBackgroundColor = 'White'
  $Host.PrivateData.VerboseForegroundColor = 'Gray'
  $Host.PrivateData.VerboseBackgroundColor = 'White'
  $Host.PrivateData.ProgressForegroundColor = 'Black'
  $Host.PrivateData.ProgressBackgroundColor = 'White'

  # PromptForChoice hard-codes color based on background color.
  $Host.UI.RawUI.ForegroundColor = 'Black'
  $Host.UI.RawUI.BackgroundColor = 'White'

  # $PSStyle is only available on PowerShell 7.2 or later.
  if (Test-Path variable:PSStyle) {
    $PSStyle.Formatting.FormatAccent = "$([char]0x1b)[1m"
    $PSStyle.Formatting.ErrorAccent = "$([char]0x1b)[31;1m"
    $PSStyle.Formatting.Error = "$([char]0x1b)[31m"
    $PSStyle.Formatting.Warning = "$([char]0x1b)[33m"
    $PSStyle.Formatting.Verbose = "$([char]0x1b)[37m"
    $PSStyle.Formatting.Debug = "$([char]0x1b)[37m"
    $PSStyle.Formatting.TableHeader = "$([char]0x1b)[39m"
    $PSStyle.Formatting.CustomTableHeaderLabel = "$([char]0x1b)[39m"
    $PSStyle.Formatting.FeedbackName = "$([char]0x1b)[39m"
    $PSStyle.Formatting.FeedbackText = "$([char]0x1b)[39m"
    $PSStyle.Formatting.FeedbackAction = "$([char]0x1b)[39m"
    $PSStyle.Progress.Style = "$([char]0x1b)[39m"
    $PSStyle.FileInfo.Directory = "$([char]0x1b)[34m"
    $PSStyle.FileInfo.SymbolicLink = "$([char]0x1b)[36m"
    $PSStyle.FileInfo.Executable = "$([char]0x1b)[32m"
    $PSStyle.FileInfo.Extension.Clear()
  }

  Set-Alias g git

  Remove-Item Alias:cat -ErrorAction SilentlyContinue
  Remove-Item Alias:cd -ErrorAction SilentlyContinue
  Remove-Item Alias:cp -ErrorAction SilentlyContinue
  Remove-Item Alias:curl -ErrorAction SilentlyContinue
  Remove-Item Alias:dir -ErrorAction SilentlyContinue
  Remove-Item Alias:echo -ErrorAction SilentlyContinue
  Remove-Item Alias:ls -ErrorAction SilentlyContinue
  Remove-Item Alias:man -ErrorAction SilentlyContinue
  Remove-Item Alias:mv -ErrorAction SilentlyContinue
  Remove-Item Alias:popd -ErrorAction SilentlyContinue
  Remove-Item Alias:ps -ErrorAction SilentlyContinue
  Remove-Item Alias:pushd -ErrorAction SilentlyContinue
  Remove-Item Alias:pwd -ErrorAction SilentlyContinue
  Remove-Item Alias:rm -ErrorAction SilentlyContinue
  Remove-Item Alias:rmdir -ErrorAction SilentlyContinue
  Remove-Item Alias:wget -ErrorAction SilentlyContinue
}

function Prompt {
  '> '
}
