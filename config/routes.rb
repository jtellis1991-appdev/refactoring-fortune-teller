Rails.application.routes.draw do  
  # PART 1: EACH IN ERB
  # ===================

  get("/", { :controller => "lottery", :action => "lucky"})
  get("/lottery/lucky", { :controller => "lottery", :action => "lucky"})
  get("/lottery/unlucky", { :controller => "lottery", :action => "unlucky"})

  # PART 2: RCAV DEBUGGING
  # ======================

  get("/zodiacs/:astrosign", { :controller => "application", :action => "fortune_me"})

  # PART 3: MORE R→C→A→V PRACTICE
  # ==========================
    
get("/roll/:count/:side", { :controller => "dice", :action => "dice_roll" })
end
