{{/*
Expand the name of the chart.
*/}}
{{- define "cryptobot-binance.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
We truncate at 63 chars because some Kubernetes name fields are limited to this (by the DNS naming spec).
If release name contains chart name it will be used as a full name.
*/}}
{{- define "cryptobot-binance.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "cryptobot-binance.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "cryptobot-binance.labels" -}}
helm.sh/chart: {{ include "cryptobot-binance.chart" . }}
{{ include "cryptobot-binance.selectorLabels" . }}
{{ include "cryptobot-binance.applicationLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "cryptobot-binance.selectorLabels" -}}
app.kubernetes.io/name: {{ include "cryptobot-binance.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Application labels
*/}}
{{- define "cryptobot-binance.applicationLabels" -}}
cryptobot.fr/name: binance
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "cryptobot-binance.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "cryptobot-binance.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
