-- Create waitlist table for ScribeSchedule
CREATE TABLE IF NOT EXISTS public.waitlist (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    name TEXT NOT NULL,
    email TEXT NOT NULL UNIQUE,
    country TEXT NOT NULL,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT NOW(),
    updated_at TIMESTAMP WITH TIME ZONE DEFAULT NOW()
);

-- Create index on email for faster lookups
CREATE INDEX IF NOT EXISTS idx_waitlist_email ON public.waitlist(email);

-- Create index on created_at for sorting
CREATE INDEX IF NOT EXISTS idx_waitlist_created_at ON public.waitlist(created_at);

-- Enable Row Level Security (RLS)
ALTER TABLE public.waitlist ENABLE ROW LEVEL SECURITY;

-- Drop existing policies if they exist
DROP POLICY IF EXISTS "Anyone can insert waitlist entries" ON public.waitlist;
DROP POLICY IF EXISTS "Anyone can read waitlist entries" ON public.waitlist;

-- Create policy to allow anyone to insert (for waitlist signup)
CREATE POLICY "Anyone can insert waitlist entries" ON public.waitlist
    FOR INSERT WITH CHECK (true);

-- Create policy to allow reading waitlist entries (for admin purposes)
CREATE POLICY "Anyone can read waitlist entries" ON public.waitlist
    FOR SELECT USING (true);

-- Grant permissions
GRANT ALL ON public.waitlist TO anon;
GRANT ALL ON public.waitlist TO authenticated;

-- Test insert to verify table works
INSERT INTO public.waitlist (name, email, country) 
VALUES ('Test User', 'test@example.com', 'United States')
ON CONFLICT (email) DO NOTHING;
