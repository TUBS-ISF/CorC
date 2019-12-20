/*
 * generated by Xtext 2.10.0
 */
package de.tu_bs.cs.isf.cbc.textual.tool.ui.contentassist

import org.eclipse.emf.ecore.EObject
import org.eclipse.xtext.RuleCall
import org.eclipse.xtext.ui.editor.contentassist.ContentAssistContext
import org.eclipse.xtext.ui.editor.contentassist.ICompletionProposalAcceptor

/**
 * See https://www.eclipse.org/Xtext/documentation/304_ide_concepts.html#content-assist
 * on how to customize the content assistant.
 */
class DslProposalProvider extends AbstractDslProposalProvider {
	override void complete_CompositionStatement(EObject model, RuleCall ruleCall, ContentAssistContext context,
		ICompletionProposalAcceptor acceptor) {
		// call implementation of superclass
		super.complete_CompositionStatement(model, ruleCall, context, acceptor)
		// compute the plain proposal
			val String proposal = "{\"<statement>\"} intm: [\"<condition>\"] {\"<statement>\"}";

		acceptor.accept(createCompletionProposal(proposal, context))
    }
    
    override void complete_SmallRepetitionStatement(EObject model, RuleCall ruleCall, ContentAssistContext context,
		ICompletionProposalAcceptor acceptor) {
		// call implementation of superclass
		super.complete_SmallRepetitionStatement(model, ruleCall, context, acceptor)
		// compute the plain proposal
			val String proposal = "while (\"<guard>\") do\n" 
			+ "\t\tinv: [\"<invariant>\"] var: [\"<variant>\"]\n"
			+ "\t\t{\"<statement>\"} od";

		acceptor.accept(createCompletionProposal(proposal, context))
    }
    
    override void complete_SelectionStatement(EObject model, RuleCall ruleCall, ContentAssistContext context,
		ICompletionProposalAcceptor acceptor) {
		// call implementation of superclass
		super.complete_SelectionStatement(model, ruleCall, context, acceptor)
		// compute the plain proposal
			val String proposal = "if (\"<guard>\") then\n" 
			+ "\t\t{\"<statement>\"}\n"
			+ "\t\telseif (\"<guard>\") then\n" 
			+ "\t\t{\"<statement>\"} fi";

		acceptor.accept(createCompletionProposal(proposal, context))
    }
    
     override void complete_CbCFormula(EObject model, RuleCall ruleCall, ContentAssistContext context,
		ICompletionProposalAcceptor acceptor) {
		// call implementation of superclass
		super.complete_CbCFormula(model, ruleCall, context, acceptor)
		// compute the plain proposal
			val String proposal = "Formula \"<formula>\"\n"
			+ "\tpre: {\"<condition>\"}\n" 
			+ "\t{\"<statement>\"}\n"
			+ "\tpost: {\"<condition>\"}";

		acceptor.accept(createCompletionProposal(proposal, context))
    }
    
    override void complete_StrengthWeakStatement(EObject model, RuleCall ruleCall, ContentAssistContext context,
		ICompletionProposalAcceptor acceptor) {
		// call implementation of superclass
		super.complete_StrengthWeakStatement(model, ruleCall, context, acceptor)
		// compute the plain proposal
			val String proposal = "pre: {\"<condition>\"}\n" 
			+ "\t\t{\"<statement>\"}\n"
			+ "\t\tpost: {\"<condition>\"}";

		acceptor.accept(createCompletionProposal(proposal, context))
    }
    
    override void complete_JavaVariables(EObject model, RuleCall ruleCall, ContentAssistContext context,
		ICompletionProposalAcceptor acceptor) {
		// call implementation of superclass
		super.complete_JavaVariables(model, ruleCall, context, acceptor)
		// compute the plain proposal
			val String proposal = "JavaVariables\n"
			+ "\tvariables {\"<variable>\", \"<variable>\"}\n";

		acceptor.accept(createCompletionProposal(proposal, context))
    }
    
    override void complete_GlobalConditions(EObject model, RuleCall ruleCall, ContentAssistContext context,
		ICompletionProposalAcceptor acceptor) {
		// call implementation of superclass
		super.complete_GlobalConditions(model, ruleCall, context, acceptor)
		// compute the plain proposal
			val String proposal = "GlobalConditions\n"
			+ "\tconditions {\"<condition>\", \"<condition>\"}\n";

		acceptor.accept(createCompletionProposal(proposal, context))
    }
    
     override void complete_Renaming(EObject model, RuleCall ruleCall, ContentAssistContext context,
		ICompletionProposalAcceptor acceptor) {
		// call implementation of superclass
		super.complete_Renaming(model, ruleCall, context, acceptor)
		// compute the plain proposal
			val String proposal = "Renaming\n"
			+ "\trenames {\n"
			+ "\t\t{type \"<type>\""
			+ " function \"<functionName>\""
			+ " newName \"<newName>\"}\n"
			+ "\t}";

		acceptor.accept(createCompletionProposal(proposal, context))
    }
    
    override void complete_Rename(EObject model, RuleCall ruleCall, ContentAssistContext context,
		ICompletionProposalAcceptor acceptor) {
		// call implementation of superclass
		super.complete_Rename(model, ruleCall, context, acceptor)
		// compute the plain proposal
			val String proposal = "{type \"<type>\""
			+ " function \"<functionName>\""
			+ " newName \"<newName>\"}";

		acceptor.accept(createCompletionProposal(proposal, context))
    }
}