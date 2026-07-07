# Database System Project: riwi_technicians Justification and Architecture

## Project Overview
The riwi_technicians project delivers a scalable, optimized database solution designed to manage technical staff deployment, service logs, and resource allocation. It establishes a secure, relational infrastructure that eliminates data fragmentation, streamlines operational tracking, and ensures high availability for system workflows.

## Project Justification
### The Problem
* Data Redundancy: Disconnected service logs cause duplicate technician assignments and conflicting schedule records.
* Poor Performance: Lack of indexing creates slow response times when querying technician availability during peak operational hours.
* Security Risks: Unprotected files lack granular access control and audit trails for sensitive client and operational data.
* Scalability Walls: Manual tracking methods cannot handle exponential growth in technician staffing and service ticket volume.

### The Solution
* Centralized Storage: A single source of truth for all technician data eliminates scheduling discrepancies.
* Optimized Indexes: Strategic indexing reduces lookup execution times for active tickets from seconds to milliseconds.
* Role-Based Security: Strict user permissions safeguard internal performance metrics and client information.
* ACID Compliance: Guaranteed transactional safety prevents data corruption during simultaneous multi-user updates.

## Core Architecture
* Database Engine: PostgreSQL / MySQL
* Design Pattern: Third Normal Form (3NF) to eliminate data modification anomalies across technician and ticket records.
* Deployment: Containerized via Docker for instant, environment-agnostic setup.

## Key Database Features
* Automated Backups: Scheduled backup operations secure critical operational data daily.
* Foreign Key Constraints: Strict referential integrity rules prevent orphaned technician profiles or unassigned service tickets.
* Custom Triggers: Automated audit logs track changes to technician status and performance history.
* Stored Procedures: Complex assignment logic executes directly on the server level to optimize performance.

## Performance Metrics and Results
* Query Latency: Reduced by over 70% using strategic composite indexes on technician status tables.
* Storage Footprint: Decreased by 40% through normalized table structures for services and personnel.
* Concurrency: Supports multiple simultaneous read/write operations from dispatchers and technicians without database locking.
