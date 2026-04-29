#!/bin/bash
# Setup script for CreatorDev AI project

cd /dev/trabalho/creatordev-ai/creator-dev-ai

# Create necessary files

# 1. App page (landing)
cat > app/page.tsx << 'EOF'
import { Navigation } from "@/components/Navigation";
import { ThemeToggle } from "@/components/ThemeToggle";

export default function Home() {
  return (
    <div className="min-h-screen flex flex-col">
      <Navigation />
      <main className="flex-1">
        <section className="relative h-screen flex items-center justify-center overflow-hidden">
          <div className="absolute inset-0 bg-gradient-to-br from-purple-900/20 via-blue-900/20 to-transparent" />
          <div className="relative z-10 text-center px-4 max-w-4xl">
            <h1 className="text-4xl md:text-6xl font-bold text-white mb-6 leading-tight">
              Turn What You Built Today Into Content That Grows Your Audience
            </h1>
            <p className="text-xl md:text-2xl text-gray-300 mb-8 max-w-2xl mx-auto">
              Stop building in silence. BuildLog AI converts your progress into tweets, threads, newsletters and launch content in seconds.
            </p>
            <div className="flex flex-col sm:flex-row gap-4 justify-center">
              <button className="bg-gradient-to-r from-purple-600 to-blue-600 hover:from-purple-700 hover:to-blue-700 text-white px-8 py-3 rounded-lg font-semibold text-lg transition-all duration-300 transform hover:scale-105 shadow-lg shadow-purple-500/30">
                Start Free
              </button>
              <button className="border border-gray-600 text-gray-300 px-8 py-3 rounded-lg font-semibold hover:bg-gray-800/50 transition-all duration-300">
                See Demo
              </button>
            </div>
          </div>
          <div className="absolute bottom-20 left-1/2 transform -translate-x-1/2 animate-bounce">
            <div className="w-8 h-8 border-2 border-purple-500 border-t-transparent rounded-full animate-spin" />
          </div>
        </section>

        <section className="py-20 bg-gray-950/50 backdrop-blur-sm">
          <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
            <div className="grid grid-cols-1 md:grid-cols-3 gap-12">
              <div className="text-center">
                <div className="w-16 h-16 bg-purple-900/30 rounded-2xl flex items-center justify-center mx-auto mb-4">
                  <span className="text-2xl">📝</span>
                </div>
                <h3 className="text-xl font-semibold text-white mb-2">Daily Build Input</h3>
                <p className="text-gray-400">Track your progress and build history in one place</p>
              </div>
              <div className="text-center">
                <div className="w-16 h-16 bg-blue-900/30 rounded-2xl flex items-center justify-center mx-auto mb-4">
                  <span className="text-2xl">🤖</span>
                </div>
                <h3 className="text-xl font-semibold text-white mb-2">AI Content Generator</h3>
                <p className="text-gray-400">Generate multiple content formats instantly</p>
              </div>
              <div className="text-center">
                <div className="w-16 h-16 bg-green-900/30 rounded-2xl flex items-center justify-center mx-auto mb-4">
                  <span className="text-2xl">📊</span>
                </div>
                <h3 className="text-xl font-semibold text-white mb-2">Analytics Dashboard</h3>
                <p className="text-gray-400">Track your engagement and consistency</p>
              </div>
            </div>
          </div>
        </section>
      </main>
    </div>
  );
}
EOF

echo "Created: app/page.tsx"