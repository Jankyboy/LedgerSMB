
ALTER TABLE invoice DROP CONSTRAINT IF EXISTS invoice_allocation_constraint;
ALTER TABLE invoice
  ADD CONSTRAINT invoice_allocation_constraint
     CHECK (allocated*-1 BETWEEN least(0,qty) AND greatest(qty,0));
