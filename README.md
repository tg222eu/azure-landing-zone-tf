# Azure Platform Foundation – Progress Tracker

**Project:** Azure Platform Foundation – Secure, Governed & Observable Infrastructure with Terraform  
**Repo Name:** `PlatformLanding`  
**Goal:** Build a production-like Azure platform foundation using Terraform to demonstrate Cloud Ops / Platform Engineer skills (IaC, networking, security, observability, governance, automation).  
**Timeline:** 10–14 days (3–4 hours per day)  
**Your Background Fit:** Leverages your AZ-104 knowledge + new Terraform skills while showing transition from SOC Analyst L1 (analysis, escalation, recommendations) into proactive cloud operations & governance.

---

## 📊 Current Overall Status
- **Phase:** Week 1 – Days 1–2 (Terraform Setup + Remote State)
- **Progress:** 0 / 14 days complete
- **GitHub Repo:** Not yet created
- **Last Updated:** June 19, 2026
- **Next Action:** Start with creating the GitHub repo and initializing the Terraform project

**Blockers / Notes:** (We'll add any issues here as we go)

---

## ✅ Week 1: Build the Foundation (IaC Focus)

### Days 1–2: Terraform setup + remote state (Azure Storage backend)
**Goal:** Have a working Terraform project with remote state stored securely in Azure.

- [ ] Create GitHub repository named `PlatformLandingZoneAZ` (public or private as preferred)
- [ ] Clone the repo locally and set up basic folder structure (`main.tf`, `variables.tf`, `outputs.tf`, `providers.tf`, `README.md`)
- [ ] Log in to Azure (`az login`) and note your subscription ID
- [ ] Create the remote state Storage Account + Container (can be done manually first or via a bootstrap Terraform config)
- [ ] Configure `terraform { backend "azurerm" { ... } }` in the project
- [ ] Run `terraform init` successfully and verify backend connection
- [ ] Create a simple test resource (e.g., Resource Group) and run `terraform plan` + `terraform apply`
- [ ] Add `.gitignore` (ignore `.terraform/`, `*.tfstate`, etc.)
- [ ] Commit and push initial code to GitHub
- [ ] Update this tracker and README with first progress notes

**Status:** Not started  
**Completed on:**  
**Notes / Screenshots:**

---

### Days 3–4: Resource Group + consistent tagging strategy + VNet + 3 subnets + NSGs
**Goal:** Deploy a properly tagged Virtual Network with segmented subnets and baseline security rules.

- [ ] Define a naming convention and tagging strategy (e.g., Environment, Owner, CostCenter, Project)
- [ ] Create Resource Group with tags via Terraform
- [ ] Deploy Virtual Network with 3 subnets (e.g., `app-subnet`, `data-subnet`, `management-subnet`)
- [ ] Create Network Security Groups (NSGs) with secure baseline rules (deny all inbound by default + explicit allows)
- [ ] Associate NSGs to the correct subnets
- [ ] Apply consistent tags to **all** resources using Terraform
- [ ] Run `terraform plan` and review changes carefully
- [ ] Apply and validate everything in the Azure Portal (Resource Graph, VNet topology)
- [ ] Take screenshots of VNet + subnets + NSG rules
- [ ] Commit changes with clear commit message

**Status:** Not started  
**Completed on:**  
**Notes / Screenshots:**

---

### Days 5–6: Key Vault + secrets + Storage Account
**Goal:** Deploy Key Vault and Storage Account with proper security posture and secret management.

- [ ] Deploy Azure Key Vault via Terraform (consider Private Endpoint if time allows, otherwise start simple)
- [ ] Add sample secrets (e.g., demo connection strings or API keys)
- [ ] Deploy the main Storage Account (will be used for Terraform state + diagnostics/logs)
- [ ] Configure Key Vault access policies or RBAC (principle of least privilege)
- [ ] Enable soft delete and purge protection on Key Vault (best practice)
- [ ] Validate secret retrieval (you can use Azure CLI or a quick test script)
- [ ] Ensure Storage Account has appropriate network rules / private access where possible
- [ ] Update outputs.tf with useful resource IDs / names
- [ ] Take screenshots of Key Vault and Storage Account in portal
- [ ] Commit and push

**Status:** Not started  
**Completed on:**  
**Notes / Screenshots:**

---

### Day 7: Basic RBAC examples + initial documentation
**Goal:** Add identity/access controls and start building high-quality documentation.

- [ ] Add basic RBAC role assignments via Terraform (e.g., Key Vault Secrets Officer or Reader roles)
- [ ] Review all resources for proper tagging and naming consistency
- [ ] Start writing the README.md:
  - Project goal & scope
  - Architecture overview (text description for now)
  - Prerequisites (AZ-104 knowledge, Terraform installed, Azure subscription)
- [ ] Add first screenshots to README or a `/screenshots` folder
- [ ] Create a simple `destroy.sh` or document `terraform destroy` process
- [ ] Commit everything and push to GitHub
- [ ] Self-review: Can someone else deploy this from your README?

**Status:** Not started  
**Completed on:**  
**Notes / Screenshots:**

---

## ✅ Week 2: Operations Layer + Polish

### Days 8–9: Log Analytics Workspace + diagnostic settings + Application Insights
**Goal:** Establish centralized observability so you can monitor the platform.

- [ ] Deploy Log Analytics Workspace via Terraform
- [ ] Enable diagnostic settings on Key Vault, Storage Account, Virtual Network, and NSGs
- [ ] (Optional but recommended) Deploy Application Insights (even if just as a placeholder for future workloads)
- [ ] Write 3–5 useful KQL queries (e.g., Key Vault operations, storage account activity, NSG flow logs if enabled)
- [ ] Verify logs are flowing into Log Analytics (use the portal query interface)
- [ ] Add Log Analytics Workspace to your tagging strategy
- [ ] Update README with observability section
- [ ] Take screenshots of Log Analytics workspace and sample queries

**Status:** Not started  
**Completed on:**  
**Notes / Screenshots:**

---

### Days 10–11: Azure Monitor alerts + Action Group
**Goal:** Implement proactive monitoring and alerting — core Cloud Ops skill.

- [ ] Create an Action Group (email, Teams, or webhook)
- [ ] Define and deploy meaningful alerts via Terraform, for example:
  - Key Vault secret access / changes
  - Storage account capacity nearing limit
  - NSG rule changes or unexpected traffic
  - Budget alerts (if Cost Management is enabled)
- [ ] Intentionally trigger at least one alert (e.g., by making a change or simulating load) to test it fires
- [ ] Document what the alert means and recommended response (mini runbook style in README)
- [ ] Add alert screenshots to documentation
- [ ] Commit and push

**Status:** Not started  
**Completed on:**  
**Notes / Screenshots:**

---

### Day 12: GitHub Actions workflow (CI/CD)
**Goal:** Automate Terraform deployments with proper plan/apply workflow.

- [ ] Create `.github/workflows/` folder
- [ ] Write a GitHub Actions workflow file (`terraform.yml`):
  - Trigger on pull request → `terraform plan`
  - Trigger on merge to main (with approval) → `terraform apply`
- [ ] Configure authentication (recommended: OIDC with Azure, or Service Principal as fallback)
- [ ] Add required secrets/variables in GitHub repo settings
- [ ] Test the full workflow: create a PR, review the plan output, merge, and watch apply run
- [ ] Update README with "How to deploy via CI/CD" section
- [ ] Document any authentication setup steps

**Status:** Not started  
**Completed on:**  
**Notes / Screenshots:**

---

### Day 13: Basic Azure Policy + cleanup & destroy script
**Goal:** Add governance guardrails and ensure clean teardown capability.

- [ ] Implement at least one Azure Policy via Terraform (e.g., enforce required tags on resources)
- [ ] Test policy compliance in the Azure Portal (Policy → Compliance)
- [ ] Create or refine a clean destroy process (`terraform destroy` or a script)
- [ ] Test full destroy → re-deploy cycle to prove repeatability
- [ ] Remove any manually created resources that slipped in
- [ ] Update README with "How to cleanly destroy everything" section
- [ ] Commit final code changes

**Status:** Not started  
**Completed on:**  
**Notes / Screenshots:**

---

### Day 14: Architecture diagram, full documentation, final testing & screenshots
**Goal:** Produce a polished, interview-ready GitHub repository.

- [ ] Create a clear architecture diagram (draw.io, Lucidchart, or Mermaid in README)
- [ ] Complete the full README.md with all recommended sections:
  - Project goal
  - Architecture diagram + description
  - Step-by-step deployment guide (from scratch)
  - How to destroy everything
  - Troubleshooting / runbook notes
  - Cost optimization & tagging strategy
  - What you learned + challenges overcome
- [ ] Add high-quality screenshots throughout (Terraform plan/apply, Portal views, Log Analytics, Alerts firing, Policy compliance, GitHub Actions runs)
- [ ] Do a final end-to-end test: someone else (or you on a fresh machine) should be able to follow README and deploy successfully
- [ ] Push everything to GitHub with a great final commit message
- [ ] Celebrate! 🎉 Update LinkedIn / resume with the new bullet points

**Status:** Not started  
**Completed on:**  
**Notes / Screenshots:**

---

## 🏁 Final Milestones & Deliverables
- [ ] GitHub repository is public (or shared) with excellent README
- [ ] All resources deployed via Terraform (no manual portal clicks for core components)
- [ ] Remote state working + CI/CD pipeline functional
- [ ] Observability stack (Log Analytics + alerts) producing useful data
- [ ] Governance in place (tagging + at least one Policy)
- [ ] Clean destroy process documented and tested
- [ ] Architecture diagram present
- [ ] Resume bullet points ready to use:
  - “Designed and deployed a secure Azure Platform Foundation using Terraform, including VNet segmentation, Key Vault integration, centralized observability, and Azure Monitor alerting.”
  - “Implemented remote state management and CI/CD automation with GitHub Actions for repeatable, governed infrastructure deployments.”
  - “Added governance controls through resource tagging and basic Azure Policy enforcement while maintaining cost visibility and operational best practices.”

---

## 📝 Session Log & Learnings
(We'll add entries here after each working session)

**Session 1 – June 19, 2026**  
Status: Tracker created. Ready to begin Days 1–2.  
What I learned / accomplished:  
Next planned session:  

---

**How to use this tracker together:**
- At the start of every session, tell me what you've completed or what you want to work on.
- I will update the checkboxes, status, and add notes here.
- You can also edit this file directly in VS Code / GitHub.
- We can mark tasks as `[x]` when done and add screenshots/links.
- This file + the `project plan.txt` will be our single source of truth for progress.

---

**Ready when you are!**  
Just reply with something like:  
“I’ve created the GitHub repo and want to start Days 1–2” or “Let’s begin with setting up the remote state backend.”

I’ll guide you step-by-step, update this tracker live, and help troubleshoot along the way. Let's build this impressive project! 🚀
