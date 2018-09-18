\documentclass[runningheads]{llncs}

\usepackage{amsmath}
\usepackage{calc}
\usepackage{csquotes}
\usepackage{color}
\usepackage{comment}
\usepackage{float}
\usepackage{graphicx}
\usepackage{url}
\usepackage{subcaption}
\usepackage{wrapfig}
\usepackage{pbox}

\captionsetup{compatibility=false}

%include polycode.fmt

%%format .*.       = "\mathbin{.\!\!*\!\!.}"
%%format .=.       = "\mathbin{.\!\!=\!\!.}"
%%format .<.       = "\mathbin{.\!\!<\!\!.}"
%%format sp = " "
%%format qq = "''\!"
%%format .$$ = ".\$_m"
%%format parent' = "parent_m"
%%format  <*>       = "\mathbin{\text{\small\ttfamily{<*>}}}"
%%format  <$>       = "\mathbin{\text{\small\ttfamily{<\$>}}}"
%%format t1 = "t_1"
%%format t2 = "t_2"
%%format constructor' = "constructor_m"
%%%%format Leaf = "{\sf Leaf}"
%%%%format Fork = "{\sf Fork}"
%%format Fork3 = "{\sf Fork3}"
%%%%%%format Root = "{\sf Root}"
%%format CRoot = "C_{\mathit{Root}}"
%%%%%%"{\sf C_{Root}}"
%%format CLeaf = "C_{\mathit{Leaf}}"
%%%%%"{\sf C_{Leaf}}"
%%format CFork = "C_{\mathit{Fork}}"
%%%%% "{\sf C_{Fork}}"
%%format lexeme_Leaf = "lexeme_{\sf Leaf}"
%%format MemoRoot = "{\sf Memo_{Root}}"
%%format MemoFork = "\mathit{Fork}_m"
%%%%%%"{\sf Fork}_m"
%%%%%% "{\sf Memo_{Fork}}"
%%format MemoLeaf = "\mathit{Leaf}_m"
%%%%%%"{\sf Leaf}_m"
%%%%%% "{\sf Memo_{Leaf}}"
%%format treeLookup = "lookup_{MT}"
%%%format MemoTable = "{Cache}"
%%format buildMTree = "\mathit{build}_m"
%%%%%%"build_{MT}"
%%format constructor_m = "\mathit{constructor}_m"
%%format tree_m = "\mathit{tree}_m"
%%format left_m = "\mathit{left}_m"
%%format right_m = "\mathit{right}_m"
%%format constructorM_m = "\mathit{constructorM}_m"
%%format treeM_m = "\mathit{treeM}_m"
%%format leftM_m = "\mathit{leftM}_m"
%%format rightM_m = "\mathit{rightM}_m"
%%format up_m = "\mathit{up}_m"
%%format down_m = "\mathit{down}_m"
%%format modify_m = "\mathit{modify}_m"
%%format mkAG_m = "mkAG_m"
%%format Cxt_m = "\mathit{Cxt}_m"
%%format Root_m = "Root_m"
%%format Top_m = "Top_m"
%%format L_m = "L_m"
%%format R_m = "R_m"
%%format MemoTree = "\mathit{Tree}_m"
%%format ZipperMemoTree = "\mathit{Zipper}_m"
%%format MemoAGTree = "\mathit{AGTree}_m"
%%format C_Memo_RootLet    = "C_{\mathit{Memo\_RootLet   }}"
%%format C_Memo_Let        = "C_{\mathit{Memo\_Let       }}"
%%format C_Memo_In         = "C_{\mathit{Memo\_In        }}"
%%format C_Memo_ConsAssign = "C_{\mathit{Memo\_ConsAssign}}"
%%format C_Memo_ConsLet    = "C_{\mathit{Memo\_ConsLet   }}"
%%format C_Memo_EmptyList  = "C_{\mathit{Memo\_EmptyList }}"
%%format C_Memo_Plus       = "C_{\mathit{Memo\_Plus      }}"
%%format C_Memo_Variable   = "C_{\mathit{Memo\_Variable  }}"
%%format C_Memo_Constant   = "C_{\mathit{Memo\_Constant  }}"
%%format lexemeConsAssign  = "lexeme_{\mathit{ConsAssign}}"
%%format lexemmeConsLet    = "lexeme_{\mathit{ConsLet}}"
%%format calculateMemo     = "calculate_{\mathit{Memo}}"
%%format errsAlgolMemo     = "errs_{\mathit{AlgolMemo}}"
%%format errorsMemo             = "errors_{\mathit{Memo}}"
%%format algol68                = "algol_{\mathit{68}}"
%%format ata_algol68            = "ata\_algol_{\mathit{68}}"
%%format LetSem.constructorMemo = "LetSem.constructor_{\mathit{Memo}}"
%%format lexemeString           = "lexeme_{\mathit{String}}"
%%format upGetVarValueMemo      = "up_{\mathit{GetVarValueMemo}}"
%%format lexemeInt              = "lexeme_{\mathit{Int}}"
%%format Child1              = "Child_{\mathit{1}}"
%%format Child2              = "Child_{\mathit{2}}"
%%format Child3              = "Child_{\mathit{3}}"
%%format Childi              = "Child_{\mathit{i}}"
%%format constructorMemo     = "constructor_{\mathit{Memo}}"
%%format at = "@"
%%format Algol68m               = "Algol68_{\mathit{m}}"

% Formatting
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%format TreeZipper         = Zipper
%format _treeZipperHole    = _hole
%format _treeZipperContext = _cxt
%format TreeContext = Context
%format TreeTop     = Top
%format TreeLeft    = Left
%format TreeRights  = Right
%format tzUp    = up
%format tzDown  = down
%format tzLeft  = left
%format tzRight = right
%format tzEnter = enter
%format tzLeave = leave

%format ListZipper = Zipper
%format _listZipperHole = _hole
%format _listZipperContext = _cxt
%format ListContext = Context
%format lzLeft = left
%format lzRight = right


\newcommand{\WithMath}[2]{{\parbox[][][b]{\widthof{#1}}{\centering$#2$}}}

%format . = "."
%format ∘ = "\WithMath{.}{\circ}"
%format == = "\WithMath{==}{\equiv}"
%format >=> = ">=>"
%format ++ = "\WithMath{++}{+\!\!+}"
%format -> = "\WithMath{->}{\rightarrow}"
%format error = "\textit{error}"
%format otherwise = "\textit{otherwise}"
%format ___UNPACK___ = "{-# UNPACK #-}"

% For the circular variant of repmin
%format mx = "\parbox[][3.5pt][t]{\widthof{mx}}{m$_{\text{x}}$}"
%format my = "\parbox[][3.5pt][t]{\widthof{my}}{m$_{\text{y}}$}"

% For the specification of AGs
%format SYN = "SYN"
%format SEM = "SEM"
%format INH = "INH"
%format DATA = "DATA"


% A command for declaring todos
\newcommand{\TODO}[1]{{\color[rgb]{1,0,0}\textbf{TODO:}\textit{#1}}}

\begin{document}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\title{\TODO{What's the title?}}

% TODO(twesterhout): This looks ugly... Someone, reformat it, please :)
\author{Jo{\~a}o Paulo Fernandes\inst{1}%
   \and Pedro Martins\inst{2}%
   \and Alberto Pardo\inst{3}%
   \and Jo{\~a}o Saraiva\inst{4}%
   \and Marcos Viera\inst{3}%
   \and Tom Westerhout\inst{5}%
}
\institute{%
  LISP/Release -- Universidade da Beira Interior, Portugal \email{jpf@@di.ubi.pt} \and
  University of California, Irvine, USA \email{pribeiro@@uci.edu} \and
  Universidad de la  Rep\'{u}blica, Uruguay \email{\{pardo,mviera\}@@fing.edu.uy} \and
  Universidade do Minho, Portugal \email{saraiva@@di.uminho.pt} \and
  Radboud University, The Netherlands \email{twesterhout@@student.ru.nl}%
}

\date{}

\maketitle

\begin{abstract}
  \TODO{What's the abstract?}

\keywords{%
       Embedded Domain Specific Languages
  \and Zipper data structure
  \and Memoization
  \and Attribute Grammars
  \and Higher-Order Attribute Grammars
  \and Functional Programming%
}
\end{abstract}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\section{Introduction}\label{sec:introduction}

%if False
\begin{code}
  -- Rather standard extensions
  {-# LANGUAGE BangPatterns #-}
  {-# LANGUAGE FlexibleInstances #-}
  {-# LANGUAGE MultiParamTypeClasses #-}
  {-# LANGUAGE NoMonomorphismRestriction #-}
  {-# LANGUAGE StandaloneDeriving #-}
  {-# LANGUAGE UnicodeSyntax #-}
  -- Slightly more advanced, but also very well known
  {-# LANGUAGE GADTs #-}
  {-# LANGUAGE RankNTypes #-}
  -- Newer extensions
  {-# LANGUAGE TypeApplications #-} -- GHC8.0
  {-# LANGUAGE TypeOperators #-} -- TODO: When introduced?
  -- and a bit more advanced
  {-# LANGUAGE ConstraintKinds #-} -- GHC7.4.1
  {-# LANGUAGE TypeInType #-} -- GHC8.0.1
  -- Debatable extensions
  {-# LANGUAGE UndecidableInstances #-}

  module Main where

  import           Prelude.Unicode
  import           Control.Exception              ( evaluate )
  import           Control.Monad                  ( (>=>) )
  import           Data.Kind
  import           Test.Hspec                     ( SpecWith
                                                  , shouldBe
                                                  , shouldThrow
                                                  , describe
                                                  , it
                                                  , hspec
                                                  , anyException
                                                  )

  import           Language.AG.Constraint (type (&&&))
  import qualified Language.AG.Zipper as Lib

  main :: IO ()
  main = do
    putStrLn "Hello world!"
    print $ repmin $ Fork @Int (Fork (Leaf 123) (Leaf 0)) (Leaf 5)
    modifyExample
    hspec $ do
      modifyTest
      lzLeftTest
      lzRightTest
      tzUpTest
      tzDownTest

\end{code}
%endif

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\section{Functional Zippers}
  Zipper is a data structure commonly used in functional programming for
  traversal with fast local updates. The zipper data structure was originally
  conceived by Huet\cite{huet1997zipper} in the context of trees. We will,
  however, first consider a simpler problem: a bidirectional list traversal.

  Suppose that we would like to update a list at a specific position:
\begin{code}
  modify :: (a -> [a]) -> Int -> [a] -> [a]
  modify f i xs = helper [] xs 0
   where helper before (x : after) !j
           | j == i    = before ++ f x ++ after
           | otherwise = helper (before ++ [x]) after (j + 1)
         helper _ [] _ = error "Index out of bounds."
\end{code}
  Here @modify@ takes an update action @f@\footnote{@f@ returns a list rather
  than a single element to prevent curious readers from suggesting to use a
  boxed array instead of a list.}, an index @i@, and a list @xs@ and returns a
  new list with the @i@'th element replaced with the result of @f@.%
%if False
\begin{code}
  modifyTest :: SpecWith ()
  modifyTest = describe "Paper.modify" $ do
    it "Modifies the element at given index" $ do
      modify (\x -> [x - 1, x + 1]) 2 [(1 :: Int) .. 5]
        `shouldBe` [(1 :: Int), 2, 2, 4, 4, 5]
    it "Throws when an index is out of bounds" $ do
      evaluate (modify return (-1 :: Int) [(1 :: Int) .. 5])
        `shouldThrow` anyException
      evaluate (modify return (5 :: Int) [(1 :: Int) .. 5])
        `shouldThrow` anyException
\end{code}
%endif
  This function "unpacks" a list, modifies one element, and "packs" the result
  into a list. If we do a lot of updates, we end up unpacking and packing the
  list over and over again -- very time-consuming for long lists. Explicitly
  working with the unpacked representation is bug-prone. A list zipper
  simplifies this.

  A zipper consists of a focus (alternatively called a hole) and surrounding
  context:
\begin{code}
  data ListZipper a = ListZipper { _listZipperHole :: a, _listZipperContext :: !(ListContext a) }
    deriving (Show, Eq)
  data ListContext a = ListContext [a] [a]
    deriving (Show, Eq)
\end{code}
  where the @ListContext@ keeps track of elements to the left and to the right
  of the focus. We can now define movements:
\begin{code}
  lzLeft :: ListZipper a -> Maybe (ListZipper a)
  lzLeft (ListZipper _    (ListContext [] _))        = Nothing
  lzLeft (ListZipper hole (ListContext (l : ls) rs)) = Just $ ListZipper l $ ListContext ls (hole : rs)

  lzRight :: ListZipper a -> Maybe (ListZipper a)
  lzRight (ListZipper _    (ListContext _ []))        = Nothing
  lzRight (ListZipper hole (ListContext ls (r : rs))) = Just $ ListZipper r $ ListContext (hole : ls) rs
\end{code}
  and functions for entering and leaving the zipper:
\begin{code}
  lzEnter :: [a] -> Maybe (ListZipper a)
  lzEnter []       = Nothing
  lzEnter (x : xs) = Just $ ListZipper x (ListContext [] xs)

  lzLeave :: ListZipper a -> [a]
  lzLeave (ListZipper hole (ListContext ls rs)) = reverse ls ++ hole : rs
\end{code}

%if False
\begin{code}
  lzLeftTest :: SpecWith ()
  lzLeftTest = describe "Paper.lzLeft" $ do
    it "Moves the focus to the left" $ do
      lzLeft @Int (ListZipper 3 (ListContext [2, 1] [4, 5, 6])) `shouldBe`
        Just (ListZipper 2 (ListContext [1] [3, 4, 5, 6]))
      (lzLeft >=> lzLeft @Int) (ListZipper 3 (ListContext [2, 1] [4, 5, 6])) `shouldBe`
        Just (ListZipper 1 (ListContext [] [2, 3, 4, 5, 6]))
    it "Returns Nothing when an invalid move is attempted" $ do
      lzLeft @Int (ListZipper 1 (ListContext [] [2, 3])) `shouldBe` Nothing

  lzRightTest :: SpecWith ()
  lzRightTest = describe "Paper.lzRight" $ do
    it "Moves the focus to the right" $ do
      lzRight @Int (ListZipper 3 (ListContext [2, 1] [4, 5, 6])) `shouldBe`
        Just (ListZipper 4 (ListContext [3, 2, 1] [5, 6]))
      (lzRight >=> lzRight @Int) (ListZipper 3 (ListContext [2, 1] [4, 5, 6])) `shouldBe`
        Just (ListZipper 5 (ListContext [4, 3, 2, 1] [6]))
    it "Returns Nothing when an invalid move is attempted" $ do
      lzRight @Int (ListZipper 1 (ListContext [2] [])) `shouldBe` Nothing
\end{code}
%endif

  Finally, we define a local version of our @modify@ function (\TODO{Boy, is
  this function ugly...})
\begin{code}
  lzModify :: (a -> [a]) -> ListZipper a -> Maybe (ListZipper a)
  lzModify f (ListZipper hole (ListContext ls rs)) = case f hole of
    (x : xs) -> Just $ ListZipper x (ListContext ls (xs ++ rs))
    []       -> case rs of
      (r : rs') -> Just $ ListZipper r (ListContext ls rs')
      []        -> case ls of
        (l : ls') -> Just $ ListZipper l (ListContext ls' rs)
        []        -> Nothing
\end{code}

  \newpage
  using which we can perform multiple updates efficiently and with minimal code
  bloat\footnote{%
  Operator @>=>@ comes from @Control.Monad@ module in @base@
  and has the following signature:
\begin{spec}
  (>=>) :: Monad m => (a -> m b) -> (b -> m c) -> a -> m c
\end{spec}
  }:
\begin{code}
  modifyExample :: IO ()
  modifyExample = print $
    lzEnter @Int >=> lzRight
                 >=> lzRight
                 >=> lzModify (const [])
                 >=> lzModify (return ∘ (+1))
                 >=> lzLeft
                 >=> lzModify (return ∘ negate)
                 >=> return ∘ lzLeave $
      [1, 2, 3, 4, 5]
\end{code}

  Consider now a binary tree data structure:
\begin{code}
  data Tree a
    = Fork (Tree a) (Tree a)
    | Leaf !a
    deriving (Show, Eq)
\end{code}
  A binary tree zipper is slightly more insteresting than the list zipper,
  because we can move up and down the tree as well. The zipper again consists of
  a hole (a subtree we are focused on) and its surrounding context (a path from
  the hole to the root of the tree):
\begin{code}
  data TreeZipper a = TreeZipper { _treeZipperHole :: (Tree a), _treeZipperContext :: !(TreeContext a) }
    deriving (Show, Eq)

  data TreeContext a
    = TreeTop
    | TreeLeft !(TreeContext a) (Tree a)
    | TreeRight (Tree a) !(TreeContext a)
    deriving (Show, Eq)
\end{code}
  To move the zipper down, we "unpack" the current hole:
\begin{code}
  tzDown :: TreeZipper a -> Maybe (TreeZipper a)
  tzDown (TreeZipper (Leaf _) _) = Nothing
  tzDown (TreeZipper (Fork l r) cxt) = Just $ TreeZipper r (TreeRight l cxt)
\end{code}
  @TreeContext@ stores everything we need to reconstruct the hole, and @tzUp@ does
  exactly that:
\begin{code}
  tzUp :: TreeZipper a -> Maybe (TreeZipper a)
  tzUp (TreeZipper _ TreeTop) = Nothing
  tzUp (TreeZipper l (TreeLeft cxt r)) = Just $ TreeZipper (Fork l r) cxt
  tzUp (TreeZipper r (TreeRight l cxt)) = Just $ TreeZipper (Fork l r) cxt
\end{code}
  Implementation of @tzLeft@, @tzRight@, and @tzEnter@ is very similar to the
  List zipper case and is left as an exercise for the reader. @tzLeave@ differs
  slightly in that we now move all the way up rather than left:
\begin{code}
  tzLeave :: TreeZipper a -> Tree a
  tzLeave z = case tzUp z of
    Just z' -> tzLeave z'
    Nothing -> _treeZipperHole z
\end{code}

%if False
\begin{code}
  tzUpTest :: SpecWith ()
  tzUpTest = describe "Paper.tzUp" $ do
    it "Moves the focus upwards" $ do
      tzUp @Int
          (TreeZipper (Leaf 123) (TreeLeft (TreeRight (Leaf 5) TreeTop) (Leaf 8)))
        `shouldBe` Just
                     (TreeZipper (Fork (Leaf 123) (Leaf 8))
                                 (TreeRight (Leaf 5) TreeTop)
                     )
      (tzUp >=> tzUp @Int)
          (TreeZipper (Leaf 123) (TreeLeft (TreeRight (Leaf 5) TreeTop) (Leaf 8)))
        `shouldBe` Just
                     (TreeZipper
                       (Fork (Leaf 5) (Fork (Leaf 123) (Leaf 8)))
                       TreeTop
                     )
    it "Returns Nothing when at the top" $ do
      (tzUp >=> tzUp >=> tzUp @Int)
          (TreeZipper (Leaf 123) (TreeLeft (TreeRight (Leaf 5) TreeTop) (Leaf 8)))
        `shouldBe` Nothing

  tzDownTest :: SpecWith ()
  tzDownTest = describe "Paper.tzDown" $ do
    it "Moves the focus down" $ do
      tzDown @Int
          (TreeZipper (Fork (Leaf 123) (Fork (Leaf 1) (Leaf 2)))
                      (TreeLeft (TreeRight (Leaf 5) TreeTop) (Leaf 8))
          )
        `shouldBe` Just
                     (TreeZipper
                       (Fork (Leaf 1) (Leaf 2))
                       (TreeRight
                         (Leaf 123)
                         (TreeLeft (TreeRight (Leaf 5) TreeTop) (Leaf 8))
                       )
                     )
    it "Returns Nothing when at the bottom" $ do
      tzDown @Int
          (TreeZipper (Leaf 123) (TreeLeft (TreeRight (Leaf 5) TreeTop) (Leaf 8)))
        `shouldBe` Nothing
\end{code}
%endif

  The list and binary tree zipper we have considered here are homogeneous
  zippers: the type of focus does not change upon zipper movement. Such zippers
  can be a very useful abstraction. For example, a well-known window manager
  XMonad\cite{xmonad} uses a rose tree zipper to track the window under focus.
  For other tasks, however, one might need to traverse heterogeneous structures.
  A zipper that can accomodate such needs is usually called a generic zipper as
  it relies only on the generic structure of Algebraic Data Types (ADTs). One
  can view an ADT as an Abstract Syntax Tree (AST) where each node is a Haskell
  constructor rather than a syntax construct.

  The generic zipper we will use is very similar to the one presented
  in\cite{adams2010syz}. The most common technique in Haskell for supporting
  heterogeneous types is Existential Quantification. However, not every type can
  act as a hole. To support moving down the tree, we need the hole to be
  \textit{dissectible}, i.e. we would like to be able to dissect the value into
  the constructor and its arguments. Even though @Data.Data.gfold@ allows us to achieve
  this, we define out own typeclass which additionally allows us to propagate
  down arbitrary constraints:
\begin{code}
  class Dissectible (c :: Type -> Constraint) (a :: Type) where
    dissect :: a -> Left c a

  data Left c expects where
    LOne  :: b -> Left c b
    LCons :: (c b, Dissectible c b) => Left c (b -> expects) -> b -> Left c expects
\end{code}
  For example, here is how we can make @Tree@ an instance of @Disssectible@
\begin{code}
  instance c (Tree a) => Dissectible c (Tree a) where
    dissect (Fork l r) = LOne Fork `LCons` l `LCons` r
    dissect x = LOne x
\end{code}
  We can unpack a @Fork@ and the zipper will thus be able to go down. @Leaf@s,
  however, are left untouched and trying to go down from a @Leaf@ will return
  @Nothing@.

  To allow the zipper to move left and right, we need a means to encode
  arguments to the right of the hole. Following Adams et al, we define a GADT
  representing constructor arguments to the right of the hole:
\begin{code}
  data Right c provides r where
    RNil  :: Right c r r
    RCons :: (c b, Dissectible c b) => b -> Right c provides r -> Right c (b -> provides) r
\end{code}
  For example, for a tuple @(Int, Int, Int, Int, Int, Int)@, we can have
\begin{spec}
  lefts = LOne (,,,,,) `LCons` 1 `LCons` 2 `LCons` 3
  hole = 4
  rights = 5 `RCons` 6 `RCons` RNil
\end{spec}
  generalising this a little, we arrive at:
\begin{code}
  data LocalContext c hole rights parent =
    LocalContext !(Left c (hole -> rights)) !(Right c rights parent)

  data Context :: (Type -> Constraint) -> Type -> Type -> Type where
    RootContext :: forall c root. Context c root root
    (:>) :: forall c parent root hole rights. (c parent, Dissectible c parent)
         => !(Context c parent root)
         -> {-# UNPACK #-} !(LocalContext c hole rights parent)
         -> Context c hole root
\end{code}
  And just like before the @Zipper@ is a product of the hole and context:
\begin{code}
  data Zipper (c :: Type -> Constraint) (root :: Type) =
    forall hole. (c hole, Dissectible c hole) =>
      Zipper { _zHole :: !hole
             , _zCxt  :: !(Context c hole root)
             }
\end{code}

  Implementation of movements is quite straightforward and is left out. Please,
  refer to (\TODO{github repo}) for complete code.

  We now consider a rather interesting application of generic zipper: embedding of
  attribute grammars.

\section{Attribute Grammars}
  Attribute grammars (AGs) are an extension of context-free grammars that allow
  to specify context-sensitive syntax as well as the semantics. AGs achieve it
  by associating a set of attributes with each grammar symbol. These attributes
  are defined using evaluation rules assiciated with production rules of the
  context-free grammar.

  Attributes are then usually divided into two disjoint sets: synthesized
  attributes and the inherited attributes. Such distinction is required for the
  construction of a dependency graph. It is then used for specification of the
  evaluation order and detection of circularity. In the zipper-based embedding of
  attribute grammars we make no use of a dependency graph and thus do not divide
  attributes into classes.

  Let us consider the repmin\footnote{%
    The repmin problem:
    \begin{displayquote}
      Given a tree of integers, replace every integer with the
      minimum integer in the tree, in one pass.
    \end{displayquote}
  } problem as an example of a problem that requires multiple traversals. The
  classical solution is the following circular program:
\begin{code}
  repmin :: Tree Int -> Tree Int
  repmin t = t'
    where (t', m') = go t m'
          go (Leaf x    ) m = (Leaf m, x)
          go (Fork xs ys) m = (Fork xs' ys', min mx my)
            where (xs', mx) = go xs m
                  (ys', my) = go ys m
\end{code}

  Although quite elegant, the code lacks modularity and is very difficult to
  reason about. Attribute Grammars provide a more modular approach. Viera et
  al\cite{viera2009agsfly} identified three steps for solving repmin: computing
  the minimal value, passing it down from the root to the leaves, and
  constructing the resulting tree. We can associate each step with an
  attribute\cite{swierstra1998designing}:
  \begin{itemize}
  \item A synthesized attribute |localMin :: Int| represents the minimum value
        of a subtree. Computing the minimal value thus corresponds to evaluation
        of the |localMin| attribute for the root tree.
  \item An inherited attribute |globalMin :: Int| is used to pass down the
        minimal value.
  \item Finally, a synthesized attribute |updated :: Tree Int| is the subtree
        with leaf values replaced by values of their |globalMin| attributes. The
        solution is thus the value of |updated| attribute for the root tree.
  \end{itemize}
  The obtained AG is presented in figure~\ref{fig:repmin-AG}. \TODO{Do we
  actually need to explain the algorithms here? It seems a little bit childish
  to explain how to compute the minimum of a binary tree... If we absolutely
  have to explain stuff, maybe just put it in the caption.}

\begin{figure}
\centering
\fbox{\parbox{\linewidth}{%
\begin{spec}
  SYN Tree Int [localMin : Int]
  SEM Tree Int | Leaf lhs.localMin = @value
               | Fork lhs.localMin = min @left.localMin
                                         @right.localMin

  SYN Tree Int [updated : Tree Int]
  SEM Tree Int | Leaf lhs.updated = Leaf @lhs.globalMin
               | Fork lhs.updated = Fork @left.updated
                                         @right.updated


  INH Tree Int [ globalMin : Int ]
  SEM Tree Int | Fork left.globalMin  = @lhs.globalMin
                      right.globalMin = @lhs.globalMin

  DATA Root | Root tree : Tree Int
  SEM  Root | Root tree.globalMin = @tree.localMin
\end{spec}%
}}
\caption{%
  Attribute grammar for repmin. The syntax is closely mirrors the one used
  in\cite{swierstra1998designing}. |SYN| and |INH| introduce synthesized
  and inherited attributes respectively. |SEM| is used for defining semantic
  rules. A new data type |Root| is introduced as it is common in the AG setting
  to ``connect'' |localMin| with |globalMin|.
}
\label{fig:repmin-AG}
\end{figure}

  We now move on to embed this attribute grammar into Haskell. Semantic rules
  simply become functions, which, given a zipper, return values of the
  attributes. For example,
\begin{code}
  localMin :: Lib.Zipper Cxt Attributes (Tree Int) -> Int
  localMin z@(Lib.Zipper hole) = case whereami hole of
    C_Leaf -> let (Leaf x) = hole in x
    C_Fork -> min (localMin $ Lib.unsafeChild 0 z)
                  (localMin $ Lib.unsafeChild 1 z)
\end{code}

%if False
\begin{code}
  type Attributes = '[]
  type Cxt = WhereAmI Position &&& Show

  -- | Represents the position in our forest of data structures.
  data Position :: Type -> Type where
    C_Leaf :: Position (Tree Int)
    C_Fork :: Position (Tree Int)

  deriving instance Eq (Position a)
  deriving instance Show (Position a)

  class WhereAmI (p :: Type -> Type) (a :: Type) where
    whereami :: a -> p a

  instance WhereAmI Position (Tree Int) where
    whereami (Fork _ _) = C_Fork
    whereami (Leaf _)   = C_Leaf
\end{code}
%endif

  In Haskell, these attributes are simply functions:

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\section{Related Work}\label{sec:related-work}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\section{Conclusion}\label{sec:conclusion}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\section*{Acknowledgements}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% As per the LLNCS guidelines
\bibliographystyle{splncs04}
\bibliography{References}

\end{document}
