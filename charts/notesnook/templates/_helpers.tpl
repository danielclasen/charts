{{- define "helper.urlToHostname" -}}
{{- $url := . }}
{{- if hasPrefix "http" $url }}
{{- regexFind "([^/]+)" (regexReplaceAll "^https?://" $url "") }}
{{- else }}
{{- $url }}
{{- end }}
{{- end }}

