namespace riskmanagement;

entity Risks
{
    key ID : UUID;
    title : String(100);
    prio : String(5);
    descr : String(100);
    impact : Integer;
    criticality : Integer;
    mitigations : Association to one Mitigations;
    createdAt : Timestamp;
    createdBy : String(255);
    modifiedAt : Timestamp;
    modifiedBy : String(255);
}

entity Mitigations
{
    key ID : UUID;
    description : String(100);
    owner : String(100);
    timeline : String(100);
    risks : Association to many Risks on risks.mitigations = $self;
    createdAt : Timestamp;
    createdBy : String(255);
    modifiedAt : Timestamp;
    modifiedBy : String(255);
}
