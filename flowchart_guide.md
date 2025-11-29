# Job Application Analyzer - Flowchart Guide

## Instructions for Creating in Draw.io

Create your flowchart with these components:

### Start/End (Oval/Rounded Rectangle)
- **START**: "Job Application Analyzer System"
- **END**: "Exit System"

### Process Flow:

```
[START]
   ↓
[Initialize System]
   ↓
[Load Resume Data] → Input: Skills, Certs, Experience
   ↓
[Display Main Menu]
   ↓
<Choice: 1-4?> ← (Diamond - Decision)
   ↓
   ├─ 1: [Load Job Description]
   │      ↓
   │   [Calculate Match Score]
   │      ↓
   │   [Find Missing Skills]
   │      ↓
   │   [Generate Recommendations]
   │      ↓
   │   [Display Results]
   │      ↓
   │   <Track Application?> 
   │      ↓
   │   Yes → [Add to Tracker]
   │      ↓
   │   [Return to Menu]
   │
   ├─ 2: [Display All Applications]
   │      ↓
   │   <Any Applications?>
   │      ↓
   │   Yes → [Show Details + Deadlines]
   │      ↓
   │   [Return to Menu]
   │
   ├─ 3: [Update Application Status]
   │      ↓
   │   [Input Company Name]
   │      ↓
   │   <Application Found?>
   │      ↓
   │   Yes → [Update Status]
   │      ↓
   │   <Status = Interview?>
   │      ↓
   │   Yes → [Generate Interview Checklist]
   │      ↓
   │   [Return to Menu]
   │
   └─ 4: [EXIT]
```

### Key Symbols to Use:

1. **Oval**: Start/End
2. **Rectangle**: Process steps
3. **Diamond**: Decision points
4. **Parallelogram**: Input/Output
5. **Arrow**: Flow direction

### Color Coding Suggestion:
- **Green**: Start/Success paths
- **Blue**: Main processes
- **Yellow**: Decision points
- **Orange**: Input/Output
- **Red**: End/Error paths

### Sub-Process Detail: Calculate Match Score

```
[Calculate Match Score]
   ↓
[Initialize: totalPoints = 0]
   ↓
[For each required skill]
   ↓
<Skill in resume?>
   ├─ Yes → [Add points]
   └─ No → [Continue]
   ↓
[Calculate skill score (50%)]
   ↓
[For each certification]
   ↓
<Cert in resume?>
   ├─ Yes → [Add points]
   └─ No → [Continue]
   ↓
[Calculate cert score (30%)]
   ↓
[Check preferred skills (20%)]
   ↓
[Return total score]
```

## Draw.io Steps:

1. Go to draw.io or app.diagrams.net
2. Create New Diagram → Blank
3. Use left panel for shapes (Flowchart section)
4. Add text to each shape
5. Connect with arrows
6. Export as PNG: File → Export As → PNG
7. Save as: `job_analyzer_flowchart.png`

## Alternative: Hand-drawn Flowchart

If drawing by hand:
1. Use ruler for neat boxes
2. Keep spacing uniform
3. Use clear labels
4. Draw arrows with direction
5. Scan at 300 DPI or higher
6. Convert to PNG format

---

**File Name:** `job_analyzer_flowchart.png`  
**Location:** `flowchart/` directory  
**Dimensions:** Minimum 1200x1600 pixels for clarity