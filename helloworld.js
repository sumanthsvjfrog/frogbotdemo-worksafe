var http = require('http');
var url = require('url');
var fs = require('fs');
var { exec } = require('child_process');

// ----------------------------------------------------------------
// ❌ CWE-798 / CWE-321 — Hardcoded secrets in well-known formats
// ----------------------------------------------------------------

// AWS — exact format Xray pattern-matches
var AWS_ACCESS_KEY_ID     = "AKIAIOSFODNN7EXAMPLE";
var AWS_SECRET_ACCESS_KEY = "wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY";

