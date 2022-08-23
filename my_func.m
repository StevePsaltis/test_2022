%% Setup parallel pool
try
    c = parcluster('local');
    % must change the Job data location to a unique directory
    % per job ... tempdir command achieves this
    c.JobStorageLocation = tempdir;
    % a batch job may not use more than 8 workers
    if (ispc())
        p = parpool(c,4);
    else
        p = parpool(c,8);
    end
catch e
    fprintf('Error setting up parallel pool!\n');
end