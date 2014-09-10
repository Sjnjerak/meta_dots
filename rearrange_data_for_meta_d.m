%% The first part of the script creates a variable that keeps track on
% whether the largest number of dots were presented on the right or
% the left side of the screen.

%starting with the left
combineddata.big_left =  zeros(1,200);
for i=1:200
    if combineddata.response(i)==1 && combineddata.correct(i)==1;
        combineddata.big_left(i)= 1;
    elseif combineddata.response(i)==2 && combineddata.correct(i)==0;
        combineddata.big_left(i)= 1;
    end
end
% and continuing with the right
combineddata.big_right =  zeros(1,200);
for i=1:200
    if combineddata.response(i)==2 && combineddata.correct(i)==1;
        combineddata.big_right(i)= 1;
    elseif combineddata.response(i)==1 && combineddata.correct(i)==0;
        combineddata.big_right(i)= 1;
    end
end
% At the end of this section there is a test to make sure that the
% script works by comparing the left and the right sides
% because they can't both be largest at the same time.
% Any other response than 0 on this test is a cause for concern.
for i = 1:200
    Test(i)=(combineddata.big_left(i) == combineddata.big_right (i));
end
sum(Test)
%% Next we are creating the vector for the left side to use as an argument
% for the meta d calculations.
meta_d_left = zeros(1,10);
% First the correct responses with a confidence of 5 or greater
for i=1:200
    if combineddata.big_left(i)== 1 && combineddata.correct(i) == 1 && combineddata.responseConf(i) >= 5
        meta_d_left(1) = meta_d_left(1)+1;
    end
end
% Then the correct responses with a confidence between 4 and 5
for i=1:200
    if combineddata.big_left(i)== 1 && combineddata.correct(i) == 1 && combineddata.responseConf(i) >= 4 && combineddata.responseConf(i) <5
        meta_d_left(2) = meta_d_left(2)+1;
    end
end
% Then the correct responses with a confidence between 3 and 4
for i=1:200
    if combineddata.big_left(i)== 1 && combineddata.correct(i) == 1 && combineddata.responseConf(i) >= 3 && combineddata.responseConf(i) <4
        meta_d_left(3) = meta_d_left(3)+1;
    end
end
% Then the correct responses with a confidence between 2 and 3
for i=1:200
    if combineddata.big_left(i)== 1 && combineddata.correct(i) == 1 && combineddata.responseConf(i) >= 2 && combineddata.responseConf(i) <3
        meta_d_left(4) = meta_d_left(4)+1;
    end
end
    % Then the correct responses with a confidence between 1 and 2
for i=1:200
    if combineddata.big_left(i)== 1 && combineddata.correct(i) == 1 && combineddata.responseConf(i) < 2
        meta_d_left(5) = meta_d_left(5)+1;
    end
end
    % Then the incorrect responses with a confidence between 1 and 2
for i=1:200
    if combineddata.big_left(i)== 1 && combineddata.correct(i) == 0 && combineddata.responseConf(i) < 2
        meta_d_left(6) = meta_d_left(6)+1;
    end
end
% Then the incorrect responses with a confidence between 2 and 3
for i=1:200
    if combineddata.big_left(i)== 1 && combineddata.correct(i) == 0 && combineddata.responseConf(i) >= 2 && combineddata.responseConf(i) <3
        meta_d_left(7) = meta_d_left(7)+1;
    end
end
% Then the incorrect responses with a confidence between 3 and 4
for i=1:200
    if combineddata.big_left(i)== 1 && combineddata.correct(i) == 0 && combineddata.responseConf(i) >= 3 && combineddata.responseConf(i) <4
        meta_d_left(8) = meta_d_left(8)+1;
    end
end
% Then the incorrect responses with a confidence between 4 and 5
for i=1:200
    if combineddata.big_left(i)== 1 && combineddata.correct(i) == 0 && combineddata.responseConf(i) >= 4 && combineddata.responseConf(i) <5
        meta_d_left(9) = meta_d_left(9)+1;
    end
end
% Lastly the incorrect responses with a confidence of 5 or greater
for i=1:200
    if combineddata.big_left(i)== 1 && combineddata.correct(i) == 0 && combineddata.responseConf(i) >= 5
        meta_d_left(10) = meta_d_left(10)+1;
    end
end
%% Now it is time for the right side vector.
meta_d_right = zeros(1,10);
% First the incorrect responses with a confidence of 5 or greater
for i=1:200
    if combineddata.big_right(i)== 1 && combineddata.correct(i) == 0 && combineddata.responseConf(i) >= 5
        meta_d_right(1) = meta_d_right(1)+1;
    end
end
% Then the incorrect responses with a confidence between 4 and 5
for i=1:200
    if combineddata.big_right(i)== 1 && combineddata.correct(i) == 0 && combineddata.responseConf(i) >= 4 && combineddata.responseConf(i) <5
        meta_d_right(2) = meta_d_right(2)+1;
    end
end
% Then the incorrect responses with a confidence between 3 and 4
for i=1:200
    if combineddata.big_right(i)== 1 && combineddata.correct(i) == 0 && combineddata.responseConf(i) >= 3 && combineddata.responseConf(i) <4
        meta_d_right(3) = meta_d_right(3)+1;
    end
end
% Then the incorrect responses with a confidence between 2 and 3
for i=1:200
    if combineddata.big_right(i)== 1 && combineddata.correct(i) == 0 && combineddata.responseConf(i) >= 2 && combineddata.responseConf(i) <3
        meta_d_right(4) = meta_d_right(4)+1;
    end
end
        % Then the incorrect responses with a confidence between 1 and 2
for i=1:200
    if combineddata.big_right(i)== 1 && combineddata.correct(i) == 0 && combineddata.responseConf(i) < 2
        meta_d_right(5) = meta_d_right(5)+1;
    end
end
    % Then the correct responses with a confidence between 1 and 2
for i=1:200
    if combineddata.big_right(i)== 1 && combineddata.correct(i) == 1 && combineddata.responseConf(i) < 2
        meta_d_right(6) = meta_d_right(6)+1;
    end
end
% Then the correct responses with a confidence between 2 and 3
for i=1:200
    if combineddata.big_right(i)== 1 && combineddata.correct(i) == 1 && combineddata.responseConf(i) >= 2 && combineddata.responseConf(i) <3
        meta_d_right(7) = meta_d_right(7)+1;
    end
end
% Then the correct responses with a confidence between 3 and 4
for i=1:200
    if combineddata.big_right(i)== 1 && combineddata.correct(i) == 1 && combineddata.responseConf(i) >= 3 && combineddata.responseConf(i) <4
        meta_d_right(8) = meta_d_right(8)+1;
    end
end
% Then the correct responses with a confidence between 4 and 5
for i=1:200
    if combineddata.big_right(i)== 1 && combineddata.correct(i) == 1 && combineddata.responseConf(i) >= 4 && combineddata.responseConf(i) <5
        meta_d_right(9) = meta_d_right(9)+1;
    end
end
% Lastly the correct responses with a confidence of 5 or greater
for i=1:200
    if combineddata.big_right(i)== 1 && combineddata.correct(i) == 1 && combineddata.responseConf(i) >= 5
        meta_d_right(10) = meta_d_right(10)+1;
    end
end
meta_d_left
meta_d_right
sum(meta_d_left) + sum(meta_d_right)




