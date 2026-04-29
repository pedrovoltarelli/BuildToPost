// Temporary script to fix files
const fs = require('fs');
const path = require('path');

// Fix generate page
const generatePage = `export default function GeneratePage() {
  return (
    <div className="min-h-screen flex flex-col">
      <h1 className="text-3xl font-bold text-white">Generate Content Page</h1>
    </div>
  );
}`;

fs.writeFileSync('app(dashboard)generate/page.tsx', generatePage);

// Fix history page
const historyPage = `export default function HistoryPage() {
  return (
    <div className="min-h-screen flex flex-col">
      <h1 className="text-3xl font-bold text-white">History Page</h1>
    </div>
  );
}`;

fs.writeFileSync('app(dashboard)history/page.tsx', historyPage);

// Fix settings page
const settingsPage = `export default function SettingsPage() {
  return (
    <div className="min-h-screen flex flex-col">
      <h1 className="text-3xl font-bold text-white">Settings Page</h1>
    </div>
  );
}`;

fs.writeFileSync('app(dashboard)settings/page.tsx', settingsPage);

console.log('Files fixed!');