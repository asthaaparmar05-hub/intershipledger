# internshipLedger – Internship Validation Platform

## 📄 Project Description
**internshipLedger** is a decentralized blockchain-based platform for verifying internships.  
It allows organizations to validate completed internships, ensuring authenticity and transparency in student experience records.  

Each internship record is stored immutably on-chain, preventing falsification or manipulation of internship credentials.

---

## 🌟 Project Vision
To build a **trusted ecosystem** where universities, employers, and students can interact seamlessly —  
ensuring verified internship experiences and fostering transparency in professional development.

---

## ⚙️ Key Features
- **Add Internship Records:** Students can record their completed internships on the blockchain.
- **Admin Verification:** The platform admin (e.g., university or authority) can verify internships for authenticity.
- **Immutable Ledger:** All internship data is securely stored and cannot be altered once verified.
- **Transparency:** Employers and institutions can easily validate a student’s experience directly from the blockchain.

---

## 🧩 Example Usage
1. **Student** calls `addInternship()` to add a new internship record.  
2. **Admin** reviews and calls `verifyInternship()` to validate authenticity.  
3. Anyone can call `getInternships()` to view verified and pending internships.

---

## 🛠 Deployment Example
```bash
npx hardhat compile
npx hardhat run scripts/deploy.js --network sepolia



<img width="1600" height="890" alt="{7E4173EF-3BF4-48A2-8D22-A098DAF8DB31}" src="https://github.com/user-attachments/assets/6e4d5a79-1db4-4d29-8803-b8d10fb97ec8" />
