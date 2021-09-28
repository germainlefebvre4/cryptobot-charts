# Cryptobot application Charts

This repository contains all the stuff to seamlessy deploy the whole application into a kubernetes cluster.

It is split in different scopes:
* Infrastructure
  * Cert Manager: Manage Let's Encrypt certificates
  * Ingress Nginx: Manage the ingress traffix through an Ingress Controller
* Application
  * Database: Middleware to store the data
  * Front: Static-side of the website
  * API: API-side of the website
  * Controller: Cluster-aware collector
  * Operator: Manage creation/updation/deletion of cluster objects
