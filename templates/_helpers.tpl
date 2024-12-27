{{- define "tenderduty.name" -}}
{{- .Chart.Name | lower -}}
{{- end -}}

{{- define "tenderduty.chart" -}}
{{ .Chart.Name }}-{{ .Chart.Version }}
{{- end -}}

{{- define "tenderduty.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else }}
{{- include "tenderduty.name" . }}-{{ .Release.Name | trunc 63 | trimSuffix "-" }}
{{- end -}}
{{- end -}}
