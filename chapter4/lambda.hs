type Name = String

data Expr
  = Var Name
  | App Expr Expr
  | Lam Name Expr

s, k, i :: Expr
s = Lam "x" (Lam "y" (Lam "z" (App (App (Var "x") (Var "z")) (App (Var "y") (Var "z")))))
k = Lam "x" (Lam "y" (Var "x"))
i = Lam "x" (Var "x")
