import { serve } from "https://deno.land/std@0.182.0/http/server.ts";
import { createClient } from "https://esm.sh/@supabase/supabase-js@2.14.0";
import { corsHeaders } from "../_shared/cors.ts";

console.log(`Function "user-self-delete" up and running!`);

serve(async (req: Request) => {
  let uid: string | undefined;
  try {
    const { uid: userId } = await req.json();
    uid = userId;
    console.log("uid: ", uid);
  } catch (error) {
    console.log("Error: ", error.message);
    if (error.message.includes("Unexpected end of JSON input")) {
      return new Response(
        JSON.stringify({ error: "Missing uid parameter" }),
        {
          headers: {
            ...corsHeaders,
            "Content-Type": "application/json",
          },
          status: 400,
        },
      );
    }
    return new Response(
      JSON.stringify({ error: "Could not delete user an error occured" }),
      {
        headers: { ...corsHeaders, "Content-Type": "application/json" },
        status: 400,
      },
    );
  }
  if (!uid) {
    console.log("Missing uid parameter");
    const resJson = { error: "Missing uid parameter" };
    console.log("resJson: ", resJson);
    return new Response(JSON.stringify(resJson), {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
      status: 400,
    });
  }
  // This is needed if you're planning to invoke your function from a browser.
  if (req.method === "OPTIONS") {
    return new Response("ok", { headers: corsHeaders });
  }
  try {
    // Create a Supabase client with the Auth context of the logged in user.

    console.log("Supabase client created");
    // Now we can get the session or user object

    const supabaseAdmin = createClient(
      Deno.env.get("SUPABASE_URL") ?? "",
      Deno.env.get("SUPABASE_SERVICE_ROLE_KEY") ?? "",
    );
    console.log("Supabase admin client created");

    const { data: deletion_data, error: deletion_error } = await supabaseAdmin
      .auth.admin.deleteUser(uid);
    if (deletion_error) throw deletion_error;
    console.log("User & files deleted user_id: " + uid);
    // return new Response("User deleted: " + JSON.stringify(deletion_data, null, 2), {
    const resJson = {
      message: "User deleted",
      data: deletion_data,
    };
    return new Response(JSON.stringify(resJson), {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
      status: 200,
    });
  } catch (error) {
    return new Response(JSON.stringify({ error: error.message }), {
      headers: { ...corsHeaders, "Content-Type": "application/json" },
      status: 400,
    });
  }
});
