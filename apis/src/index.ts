import { eq, gte, and } from "drizzle-orm";
import { coinCreated } from "./db/schema/Listener"; // Adjust the import path as necessary
import {types, db, App} from "@duneanalytics/sim-idx"; // Import schema to ensure it's registered

const filterToken0 = types.Address.from("7fc66500c84a76ad7e9c93437bfc5ac33e2ddae9");

const app = App.create()

// Original endpoint
app.get("/*", async (c) => {
  try {
    const client = db.client(c);

    const result = await client.select().from(coinCreated).where(
      eq(coinCreated.currency, filterToken0)
    ).limit(5);

    return Response.json({
      result: result,
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

// New endpoint with symbol parameter for filtering
app.get("/symbol/:symbol", async (c) => {
  try {
    const symbol = c.req.param("symbol");
    
    if (!symbol || symbol.trim() === "") {
      return Response.json({ error: "Symbol parameter is required." }, { status: 400 });
    }

    const client = db.client(c);

    const result = await client.select().from(coinCreated).where(
      eq(coinCreated.symbol, symbol.toUpperCase())
    ).limit(100);

    return Response.json({
      result: result,
      symbol: symbol.toUpperCase(),
      count: result.length
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

// New endpoint with currency parameter for filtering
app.get("/currency/:currency", async (c) => {
  try {
    const currencyParam = c.req.param("currency");
    let currency;
    
    try {
      currency = types.Address.from(currencyParam);
    } catch (e) {
      return Response.json({ error: "Invalid currency parameter. Must be a valid Ethereum address." }, { status: 400 });
    }

    const client = db.client(c);

    const result = await client.select().from(coinCreated).where(
      eq(coinCreated.currency, currency)
    ).limit(100);

    return Response.json({
      result: result,
      currency: currencyParam,
      count: result.length
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

// New endpoint with multiple filter parameters
app.get("/filter", async (c) => {
  try {
    const url = new URL(c.req.url);
    const currency = url.searchParams.get("currency");
    const symbol = url.searchParams.get("symbol");
    const limit = parseInt(url.searchParams.get("limit") || "50", 10);
    
    if (limit > 1000) {
      return Response.json({ error: "Limit cannot exceed 1000." }, { status: 400 });
    }

    const client = db.client(c);

    // Build query based on provided filters
    if (currency && symbol) {
      try {
        const currencyAddress = types.Address.from(currency);
        const result = await client.select().from(coinCreated)
          .where(and(
            eq(coinCreated.currency, currencyAddress),
            eq(coinCreated.symbol, symbol.toUpperCase())
          ))
          .limit(limit);

        return Response.json({
          result: result,
          filters: { currency, symbol: symbol.toUpperCase(), limit },
          count: result.length
        });
      } catch (e) {
        return Response.json({ error: "Invalid currency parameter. Must be a valid Ethereum address." }, { status: 400 });
      }
    } else if (currency) {
      try {
        const currencyAddress = types.Address.from(currency);
        const result = await client.select().from(coinCreated)
          .where(eq(coinCreated.currency, currencyAddress))
          .limit(limit);

        return Response.json({
          result: result,
          filters: { currency, symbol: null, limit },
          count: result.length
        });
      } catch (e) {
        return Response.json({ error: "Invalid currency parameter. Must be a valid Ethereum address." }, { status: 400 });
      }
    } else if (symbol) {
      const result = await client.select().from(coinCreated)
        .where(eq(coinCreated.symbol, symbol.toUpperCase()))
        .limit(limit);

      return Response.json({
        result: result,
        filters: { currency: null, symbol: symbol.toUpperCase(), limit },
        count: result.length
      });
    } else {
      // No filters provided, return all with limit
      const result = await client.select().from(coinCreated).limit(limit);

      return Response.json({
        result: result,
        filters: { currency: null, symbol: null, limit },
        count: result.length
      });
    }
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

// Endpoint that accepts timestamp parameter (for future use when createdAt field is added)
app.get("/created-after/:timestamp", async (c) => {
  try {
    const timestamp = c.req.param("timestamp");
    const createdAfter = parseInt(timestamp, 10);
    
    if (isNaN(createdAfter)) {
      return Response.json({ error: "Invalid timestamp parameter. Must be a valid number." }, { status: 400 });
    }

    // For now, return a message indicating that createdAt filtering is not yet available
    // This endpoint can be updated when the schema includes a timestamp field
    return Response.json({
      message: "Timestamp filtering is not yet available in the current schema.",
      note: "The coin_created table does not currently include a createdAt/timestamp field.",
      availableFilters: [
        "currency - Filter by currency address",
        "symbol - Filter by coin symbol", 
        "chainId - Filter by blockchain chain ID",
        "caller - Filter by caller address"
      ],
      timestamp: createdAfter,
      suggestion: "Use /filter endpoint with currency or symbol parameters for now."
    });
  } catch (e) {
    console.error("Database operation failed:", e);
    return Response.json({ error: (e as Error).message }, { status: 500 });
  }
});

export default app;
