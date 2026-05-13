Set-Location d:\BlackGoatEgg

# 检查 content/ 下有没有变更
$changes = git status --porcelain content/
if (-not $changes) {
    Write-Host "Nothing to publish."
    exit 0
}

Write-Host "Publishing..."
Write-Host $changes
git add content/
git commit -m "update"
git push

Write-Host "Done. Check Actions: https://github.com/pabloknecht97-lab/blackgoategg/actions"
