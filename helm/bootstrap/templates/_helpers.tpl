{{- define "usertool.labExtraUrls" }}
{{- $domain := .Values.agnosticd.domain }}
{{- $consoleUrl := printf "https://console-openshift-console.%s;OpenShift Console" $domain }}
{{- $gitea := printf "https://gitea.%s/%%USERNAME%%;Gitea" $domain }}
{{- $argocdUrl := printf "https://argocd-server-argocd-%%USERNAME%%.%s;ArgoCD" $domain }}
{{- $urls := list $consoleUrl $gitea $argocdUrl }}
{{- join "," $urls }}
{{- end }}

{{- define "usertool.labModuleUrls" }}
{{- $domain := .Values.agnosticd.domain }}
{{- $params := printf "?USERID=%%USERNAME%%&SUBDOMAIN=%s" $domain }}
{{- $module1 := printf "https://guides-guides.%s/vote-app-guides/main/m1/intro.html%s;Module 1: Overview" $domain $params }}
{{- $module2 := printf "https://guides-guides.%s/vote-app-guides/main/m2/intro.html%s;Module 2: Demo" $domain $params }}
{{- $module3 := printf "https://guides-guides.%s/vote-app-guides/main/m3/intro.html%s;Module 3: Conclusion" $domain $params }}
{{- $urls := list $module1 $module2 $module3 }}
{{- join "," $urls }}
{{- end }}
