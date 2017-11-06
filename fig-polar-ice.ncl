;
; script: fig-polar-ice
; author:
;
begin
  ifile = addfile("sample.nc","r")
  ice  = ifile->icec(0,:,:)

  wks  = gsn_open_wks("pdf","fig")
  gsn_define_colormap(wks,"BlueWhiteOrangeRed")

  ; define resource
  res1                          = True
  res1@gsnLeftString            = "Sea Ice Concentration"
  res1@gsnRightString           = "Aug. 2017"

  ; map region
  res1@gsnPolar                 = "NH"
  res1@mpCenterLonF             = 180
  res1@mpMinLatF                = 65
  res1@mpMaxLatF                = 85

  ; color fill
  res1@cnFillOn                 = True
  res1@cnLevelSelectionMode     = "ExplicitLevels"
  res1@cnLevels                 = (/  0.10, 0.15, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0 /)
  res1@cnFillColors             = (/  30, 40,50,55,60,70,80,90,100,120, 0  /)

  ; contour over ice
  res1@cnLinesOn                = True
  res1@cnLineThicknessF         = 0.5
  res1@cnLineColor              = (/0.8, 0.8, 0.8/)

  ; land / ocean
  res1@mpOceanFillColor         = 30
  res1@mpLandFillColor          = (/0.86, 0.85, 0.65/)

  ; draw
  plot = gsn_csm_contour_map_polar(wks,ice,res1)
end

