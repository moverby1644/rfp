class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  def show 
    @schedule = Schedule.find_by_id(params['id'])
  end
  
  def create
    s = Schedule.new
    s.date = params['date']
    s.time = params['time']
    s.location = params['location']
    s.oppo = params['oppo']
    s.result = params['result']
    s.save
    redirect_to "/index_sched"
  end
  
  def edit
    @schedule = Schedule.find_by_id(params['id'])
  end
  
  def update
    s = Schedule.find_by_id(params['id'])
    s.date = params['date']
    s.time = params['time']
    s.location = params['location']
    s.oppo = params['oppo']
    s.result = params['result']
    s.save
    redirect_to "/index_sched"
  end
  
  def destroy
    s = Schedule.find_by_id(params['id'])
    s.destroy
    redirect_to '/index_sched'
  end
  
  def index
    @schedules = Schedule.all
  end
  
  def create_roster
    r = Roster.new
    r.name = params['name']
    r.position = params['position']
    r.number = params['number']
    r.save
    redirect_to "/index_roster"
  end
  
  def edit_roster
    @roster = Roster.find_by_id(params['id'])
  end
  
  def update_roster
    r = Roster.find_by_id(params['id'])
    r.name = params['name']
    r.position = params['position']
    r.number = params['number']
    r.save
    redirect_to "/index_roster"
  end
  
  def destroy_roster
    r = Roster.find_by_id(params['id'])
    r.destroy
    redirect_to '/index_roster'
  end
  
  def index_roster
    @rosters = Roster.all
  end
  
  def show
      @roster = Roster.find_by_id(params['id'])
  end
  
  def index_video
    @vid = Vid.all
  end
  
  def new_video
  end
  
  def create_video
    v = Vid.new
    v.name = params['name']
    v.url = params['url']
    v.note = params['note']
    v.save
    redirect_to "/index_video"
  end
  
  def edit_video
    @vid = Vid.find_by_id(params['id'])
  end
  
  def update_video
    v = Vid.find_by_id(params['id'])
    v.name = params['name']
    v.url = params['url']
    v.note = params['note']
    v.save
    redirect_to "/index_video"
  end
  
  def destroy_video
    v = Vid.find_by_id(params['id'])
    v.destroy
    redirect_to '/index_video'
  end
  
  def index_sched_update
    @schedules = Schedule.all
  end
  
  def index_sched_delete
    @schedules = Schedule.all
  end
  
end
