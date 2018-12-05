clear all;
%% set paramters

segments_3d = [0 0 0 0 2 0 0 0 1.2 0 0 0
               0 0 0 0 2 0 0 0 1.2 0 0 0 
               ];
          
transit_pose_3d = [4 8 1.2
                    8 3 1.2
    ];
           
params.t0 = 0;
params.T = 2;   % segment duration
params.kr = 4; % derivative order
params.frame = 100;    % number of frames
params.num_st = 4; % number of constrained states

%% generate trajectory
path = create_3d_qp_trajectory(segments_3d,transit_pose_3d,params);


%% plot
run_trajectory(path);

