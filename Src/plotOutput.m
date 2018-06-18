% function plotOutput( master, copy)
%     figure('units','normalized','outerposition',[0 0 1 1])
%     set(gcf, 'Toolbar', 'none', 'Menu', 'none');
%     masterLab = toLAB(master)
%     masterLch = lab2lch(masterLab);
%     masterRgb = lab2rgb(masterLab);
%     copyLab = toLAB(copy')
%     copyLch = lab2lch(copyLab);
%     copyRgb = lab2rgb(copyLab,'ColorSpace','adobe-rgb-1998');
%     
%     rectangle('Position',[0,0,1,1],'FaceColor',masterRgb');
%     rgb = sprintf('  %f', masterRgb );
%     lab = sprintf('  %f', masterLab );
%     lch = sprintf('  %f', masterLch );
%     text( 0.5, 0.5, sprintf('RGB = [%s ]\n\nL*a*b* = [%s ]\n\nL*c*h* = [%s ]',rgb, lab,lch), ...
%                             'HorizontalAlignment', 'center');
%     rectangle('Position',[1,0,1,1],'FaceColor',copyRgb');
%     rgb = sprintf('  %f', copyRgb );
%     lab = sprintf('  %f', copyLab );
%     lch = sprintf('  %f', copyLch );
%     text( 1.5, 0.5, sprintf('RGB = [%s ]\n\nL*a*b* = [%s ]\n\nL*c*h* = [%s ]',rgb, lab,lch), ...
%                             'HorizontalAlignment', 'center');
%     
%     end
%     

