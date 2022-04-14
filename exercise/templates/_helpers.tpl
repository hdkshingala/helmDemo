{{/*
Expand the name of the chart.
*/}}
{{- define "mychart.name" -}}
{{- printf "%s-%s" .Release.Name "helm-module" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "mychart.labels" -}}
app.kubernetes.io/name: {{ .Chart.Name | quote }}
app.kubernetes.io/instance: {{ .Release.Name | quote }}
{{- end }}
