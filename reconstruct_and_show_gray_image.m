%**************** Team declaration ****************%
%* Teamwork: [y/n]
%* Members: jo42do, ma71ja, ...
%**************************************************%

function rec_image = reconstruct_and_show_gray_image(image, k)
    %% Your code here:
    [U,S,V] = svd(image);
    
    
    rec_image = U(:,:) * S(:,1:k)*V(:,1:k)'; %% Your reconstructed image
    figure;
    
    g = subplot(121);
    hold on
    imshow(image, []);
    title('Original Image');
    hold off

    h = subplot(122);
    hold on
    imshow(rec_image, []);
    title('Reconstructed Image');
    hold off
end
