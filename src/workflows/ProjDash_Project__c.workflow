<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>ProjDash_Project_updatePhaseToClose</fullName>
        <description>ProjDash - Field Update for Phase field to &apos;Close-Out/Close&apos;</description>
        <field>Phase__c</field>
        <literalValue>Close-Out/Close</literalValue>
        <name>ProjDash-Project-updatePhaseToClose</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>ProjDash_Project_updateStatusToComplete</fullName>
        <description>ProjDash - Field update for Status field to &apos;Complete&apos;</description>
        <field>Status__c</field>
        <literalValue>Complete</literalValue>
        <name>ProjDash-Project-updateStatusToComplete</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
        <reevaluateOnChange>true</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>ProjDash-Project-StatusUpdate</fullName>
        <actions>
            <name>ProjDash_Project_updatePhaseToClose</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>ProjDash_Project__c.Status__c</field>
            <operation>equals</operation>
            <value>Complete</value>
        </criteriaItems>
        <description>ProjDash - When the Status equals &apos;Complete&apos;, the Phase field value will update to &apos;Close-Out/Close&apos;</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
