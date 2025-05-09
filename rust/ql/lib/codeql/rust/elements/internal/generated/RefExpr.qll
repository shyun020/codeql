// generated by codegen, do not edit
/**
 * This module provides the generated definition of `RefExpr`.
 * INTERNAL: Do not import directly.
 */

private import codeql.rust.elements.internal.generated.Synth
private import codeql.rust.elements.internal.generated.Raw
import codeql.rust.elements.Attr
import codeql.rust.elements.Expr
import codeql.rust.elements.internal.ExprImpl::Impl as ExprImpl

/**
 * INTERNAL: This module contains the fully generated definition of `RefExpr` and should not
 * be referenced directly.
 */
module Generated {
  /**
   * A reference expression. For example:
   * ```rust
   *     let ref_const = &foo;
   *     let ref_mut = &mut foo;
   *     let raw_const: &mut i32 = &raw const foo;
   *     let raw_mut: &mut i32 = &raw mut foo;
   * ```
   * INTERNAL: Do not reference the `Generated::RefExpr` class directly.
   * Use the subclass `RefExpr`, where the following predicates are available.
   */
  class RefExpr extends Synth::TRefExpr, ExprImpl::Expr {
    override string getAPrimaryQlClass() { result = "RefExpr" }

    /**
     * Gets the `index`th attr of this reference expression (0-based).
     */
    Attr getAttr(int index) {
      result =
        Synth::convertAttrFromRaw(Synth::convertRefExprToRaw(this).(Raw::RefExpr).getAttr(index))
    }

    /**
     * Gets any of the attrs of this reference expression.
     */
    final Attr getAnAttr() { result = this.getAttr(_) }

    /**
     * Gets the number of attrs of this reference expression.
     */
    final int getNumberOfAttrs() { result = count(int i | exists(this.getAttr(i))) }

    /**
     * Gets the expression of this reference expression, if it exists.
     */
    Expr getExpr() {
      result = Synth::convertExprFromRaw(Synth::convertRefExprToRaw(this).(Raw::RefExpr).getExpr())
    }

    /**
     * Holds if `getExpr()` exists.
     */
    final predicate hasExpr() { exists(this.getExpr()) }

    /**
     * Holds if this reference expression is const.
     */
    predicate isConst() { Synth::convertRefExprToRaw(this).(Raw::RefExpr).isConst() }

    /**
     * Holds if this reference expression is mut.
     */
    predicate isMut() { Synth::convertRefExprToRaw(this).(Raw::RefExpr).isMut() }

    /**
     * Holds if this reference expression is raw.
     */
    predicate isRaw() { Synth::convertRefExprToRaw(this).(Raw::RefExpr).isRaw() }
  }
}
