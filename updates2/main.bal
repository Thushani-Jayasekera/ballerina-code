// Copyright (c) 2023, WSO2 LLC. (http://www.wso2.com). All Rights Reserved.
// 
// This software is the property of WSO2 LLC. and its suppliers, if any.
// Dissemination of any information or reproduction of any material contained
// herein in any form is strictly forbidden, unless permitted by WSO2 expressly.
// You may not alter or remove any copyright or other notice from copies of this content.

import ballerina/http;
import ballerina/log;

configurable ScheduledTask[] scheduledTasks = ?;

final readonly & int[] successStatusCodes = [http:STATUS_OK, http:STATUS_CREATED, http:STATUS_ACCEPTED];

# Trigger the scheduled tasks by invoking (POST) the configured endpoints.
# 
# + return - Returns an error if the task execution fails
public function main() returns error? {
    int successfullyTriggeredTasks = 0;


    log:printInfo("Starting the scheduler...");
 

    log:printInfo("Scheduler completed.", success = successfullyTriggeredTasks);
}