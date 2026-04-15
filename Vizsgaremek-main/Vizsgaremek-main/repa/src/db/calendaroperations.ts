import { apiRequest } from '../api/http';

export interface CalendarEvent {
  id?: number;
  title: string;
  description?: string;
  event_date: string; 
  event_time?: string; 
  end_date?: string; 
  end_time?: string; 
  event_type: 'task' | 'appointment' | 'feeding' | 'vet' | 'harvest' | 'other';
  priority: 'low' | 'medium' | 'high' | 'urgent';
  status: 'pending' | 'completed' | 'cancelled';
  location?: string;
  animal_id?: number;
  recurring_type: 'daily' | 'weekly' | 'monthly' | 'yearly' | 'none';
  recurring_interval?: number;
  recurring_end_date?: string;
  reminder_before?: number;
  color?: string;
  created_at?: string;
  updated_at?: string;
}

export interface CalendarEventWithAnimal extends CalendarEvent {
  animal_name?: string;
  animal_species?: string;
}


function normalizeEvent(event: any): CalendarEventWithAnimal {

  const formatTimeField = (timeStr?: string) => {
    if (!timeStr) return undefined;

    return timeStr.substring(0, 5);
  };


  const formatDateField = (dateStr?: string) => {
    if (!dateStr) return undefined;

    if (typeof dateStr === 'string' && dateStr.length === 10) {
      return dateStr;
    }

    if (typeof dateStr === 'string' && dateStr.includes('T')) {
      return dateStr.split('T')[0];
    }

    if (dateStr instanceof Date) {
      const year = dateStr.getFullYear();
      const month = String(dateStr.getMonth() + 1).padStart(2, '0');
      const day = String(dateStr.getDate()).padStart(2, '0');
      return `${year}-${month}-${day}`;
    }
    return dateStr;
  };

  return {
    ...event,
    event_date: formatDateField(event.event_date), 
    event_time: formatTimeField(event.start_time || event.event_time), 
    start_time: formatTimeField(event.start_time), 
    end_time: formatTimeField(event.end_time), 
    recurring_end_date: formatDateField(event.recurring_end_date), 
  };
}

function getToken(): string | null {
  return localStorage.getItem('bbagrar_token');
}

export const getEvents = async (
  startDate: string,
  endDate: string
): Promise<CalendarEventWithAnimal[]> => {
  const token = getToken();
  try {
    const data = await apiRequest<{ items: any[] }>(
      `/api/calendar/events?startDate=${startDate}&endDate=${endDate}`, 
      { token }
    );
    return (data.items || []).map(normalizeEvent);
  } catch (error) {
    console.error('Error fetching events:', error);
    return [];
  }
};

export const getEventsByDate = async (date: string): Promise<CalendarEventWithAnimal[]> => {
  const token = getToken();
  try {
    const data = await apiRequest<{ items: any[] }>(
      `/api/calendar/events?date=${date}`, 
      { token }
    );
    return (data.items || []).map(normalizeEvent);
  } catch (error) {
    console.error('Error fetching events by date:', error);
    return [];
  }
};

export const getEventById = async (id: number): Promise<CalendarEventWithAnimal | undefined> => {
  const token = getToken();
  try {
    const data = await apiRequest<any>(
      `/api/calendar/events/${id}`, 
      { token }
    );
    return normalizeEvent(data);
  } catch (error) {
    console.error('Error fetching event:', error);
    return undefined;
  }
};

export const addEvent = async (event: Omit<CalendarEvent, 'id' | 'created_at' | 'updated_at'>): Promise<number> => {
  const token = getToken();
  try {
    console.log('📅 Adding event:', event);
    
    const dbEvent = {
      title: event.title,
      description: event.description,
      event_date: event.event_date,
      start_time: event.event_time || event.start_time,
      end_time: event.end_time,
      event_type: event.event_type,
      priority: event.priority,
      status: event.status,
      location: event.location,
      animal_id: event.animal_id,
      recurring_type: event.recurring_type,
      recurring_interval: event.recurring_interval,
      recurring_end_date: event.recurring_end_date,
      reminder_before: event.reminder_before,
      color: event.color,
      reminder_days: event.reminder_days
    };
    
    console.log('📤 Sending to API:', dbEvent);
    
    const response = await apiRequest<{ id: number }>('/api/calendar/events', {
      method: 'POST',
      token,
      body: dbEvent
    });
    return response.id;
  } catch (error) {
    console.error('Error adding event:', error);
    throw error;
  }
};

export const updateEvent = async (id: number, event: Partial<CalendarEvent>): Promise<void> => {
  const token = getToken();
  try {
    console.log('✏️ Updating event:', id, event);
    
    const dbEvent: any = {};
    
    if (event.title !== undefined) dbEvent.title = event.title;
    if (event.description !== undefined) dbEvent.description = event.description;
    if (event.event_date !== undefined) dbEvent.event_date = event.event_date;
    if (event.event_time !== undefined) dbEvent.start_time = event.event_time;
    if (event.start_time !== undefined && !event.event_time) dbEvent.start_time = event.start_time;
    if (event.end_time !== undefined) dbEvent.end_time = event.end_time;
    if (event.event_type !== undefined) dbEvent.event_type = event.event_type;
    if (event.priority !== undefined) dbEvent.priority = event.priority;
    if (event.status !== undefined) dbEvent.status = event.status;
    if (event.location !== undefined) dbEvent.location = event.location;
    if (event.animal_id !== undefined) dbEvent.animal_id = event.animal_id;
    if (event.recurring_type !== undefined) dbEvent.recurring_type = event.recurring_type;
    if (event.recurring_interval !== undefined) dbEvent.recurring_interval = event.recurring_interval;
    if (event.recurring_end_date !== undefined) dbEvent.recurring_end_date = event.recurring_end_date;
    if (event.reminder_before !== undefined) dbEvent.reminder_before = event.reminder_before;
    if (event.color !== undefined) dbEvent.color = event.color;
    if (event.reminder_days !== undefined) dbEvent.reminder_days = event.reminder_days;
    
    console.log('📤 Sending update to API:', dbEvent);
    
    await apiRequest(`/api/calendar/events/${id}`, {
      method: 'PUT',
      token,
      body: dbEvent
    });
  } catch (error) {
    console.error('Error updating event:', error);
    throw error;
  }
};

export const deleteEvent = async (id: number): Promise<void> => {
  const token = getToken();
  try {
    await apiRequest(`/api/calendar/events/${id}`, {
      method: 'DELETE',
      token
    });
  } catch (error) {
    console.error('Error deleting event:', error);
    throw error;
  }
};

export const updateEventStatus = async (id: number, status: CalendarEvent['status']): Promise<void> => {
  const token = getToken();
  try {
    await apiRequest(`/api/calendar/events/${id}/status`, {
      method: 'PATCH',
      token,
      body: { status }
    });
  } catch (error) {
    console.error('Error updating event status:', error);
    throw error;
  }
};

export const getUpcomingEvents = async (days: number = 7): Promise<CalendarEventWithAnimal[]> => {
  const token = getToken();
  try {
    const data = await apiRequest<{ items: any[] }>(
      `/api/calendar/events/upcoming?days=${days}`, 
      { token }
    );
    return (data.items || []).map(normalizeEvent);
  } catch (error) {
    console.error('Error fetching upcoming events:', error);
    return [];
  }
};

export const getEventStats = async (year: number, month: number): Promise<any> => {
  const token = getToken();
  try {
    const data = await apiRequest(
      `/api/calendar/events/stats?year=${year}&month=${month}`, 
      { token }
    );
    return data;
  } catch (error) {
    console.error('Error fetching event stats:', error);
    return [];
  }
};