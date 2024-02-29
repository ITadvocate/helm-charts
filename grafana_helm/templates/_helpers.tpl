########################################################
## Labels for deployment
########################################################
{{- define "deployment.labels" -}}
app: {{ .Values.stage }}-{{ .Values.app_deployment.common_labels.app }}
env: {{ .Values.stage }}
tier: frontned
author: {{ .Values.app_deployment.common_labels.author | default "vikram" }}
owner: {{ .Values.app_deployment.common_labels.owner | default "tracy"}}
project: {{ .Values.app_deployment.common_labels.project | default "demo" }}
release_name: {{ .Release.Name }}
release_namespace: {{ .Release.Namespace }}
svc_name: {{ .Values.stage }}-{{ .Values.app_deployment.full_name }}-svc
cloud: AWS_ROSA
{{- end -}}


########################################################
## Labels for Service Selector
########################################################
{{- define "service.pointer" -}}
app: {{ .Values.stage }}-{{ .Values.app_deployment.common_labels.app }}
release_name: {{ .Release.Name }}
svc_name: {{ .Values.stage }}-{{ .Values.app_deployment.full_name }}-svc
{{- end -}}



########################################################
## Labels for replica configuration
########################################################
{{- define "replica.labels" -}}
app: {{ .Values.stage }}-{{ .Values.app_deployment.common_labels.app }}
env: {{ .Values.stage }}
tier: frontned
project: {{ .Values.app_deployment.common_labels.project }}
team: PBBSA
release_name: {{ .Release.Name }}
release_rev: {{ .Release.Revision }}
release_namespace: {{ .Release.Namespace }}
{{- end -}}


########################################################
## Labels for all pods
########################################################
{{- define "pod.labels" -}}
app: {{ .Values.stage }}-{{ .Values.app_deployment.common_labels.app }}
env: {{ .Values.stage }}
tier: frontned
author: {{ .Values.app_deployment.common_labels.author }}
platform: AWS_ROSA
owner: {{ .Values.app_deployment.common_labels.owner }}
project: {{ .Values.app_deployment.common_labels.project }}
team: PBBSA
release_name: {{ .Release.Name }}
release_rev: {{ .Release.Revision }}
release_namespace: {{ .Release.Namespace }}
{{- end -}}
