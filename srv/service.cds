using { riskmanagement as my } from '../db/schema.cds';

@path : '/service/riskmanagementService'
service riskmanagementService
{
    entity Risks as
        projection on my.Risks;

    entity Mitigations as
        projection on my.Mitigations;
}

annotate riskmanagementService with @requires :
[
    'authenticated-user',
    'RiskViewer'
];
