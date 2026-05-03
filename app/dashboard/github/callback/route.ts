import { NextRequest, NextResponse } from "next/server";
import { getSupabase } from "@/lib/supabase";

export async function GET(request: NextRequest) {
  const requestUrl = new URL(request.url);
  const code = requestUrl.searchParams.get("code");

  if (!code) {
    return NextResponse.redirect(new URL("/login?error=github_auth_failed", request.url));
  }

  const supabase = getSupabase();
  if (!supabase) {
    return NextResponse.redirect(new URL("/login?error=supabase_error", request.url));
  }

  try {
    const { data, error } = await supabase.auth.exchangeCodeForSession(code);

    if (error) {
      console.error("GitHub auth error:", error.message);
      return NextResponse.redirect(new URL("/login?error=github_auth_failed", request.url));
    }

    return NextResponse.redirect(new URL("/dashboard", request.url));
  } catch (err) {
    console.error("Callback error:", err);
    return NextResponse.redirect(new URL("/login?error=server_error", request.url));
  }
}
