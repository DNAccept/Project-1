import { useState, useEffect } from 'react';

interface Student {
  name: string;
  class: string;
  profilePicture: string;
}

interface ScheduleItem {
  day: string;
  subject: string;
  time: string;
}

interface Assignment {
  title: string;
  dueDate: string;
}

interface Grade {
  subject: string;
  grade: string;
}

interface Announcement {
  title: string;
  date: string;
  message: string;
}

const Dashboard = () => {
  const [student, setStudent] = useState<Student>({});
  const [schedule, setSchedule] = useState<ScheduleItem[]>([]);
  const [assignments, setAssignments] = useState<Assignment[]>([]);
  const [grades, setGrades] = useState<Grade[]>([]);
  const [announcements, setAnnouncements] useState<Announcement[]>([]);

  useEffect(() => {
    // Assuming you have a way to fetch data (replace with your actual logic)
    setStudent({
      name: 'John Doe',
      class: '10th Grade',
      profilePicture: '/profile.jpg'
    });

    setSchedule([
      { day: 'Monday', subject: 'Mathematics', time: '10:00 AM - 11:00 AM' },
      { day: 'Tuesday', subject: 'Science', time: '11:00 AM - 12:00 PM' },
      // Add more schedule data
    ]);

    setAssignments([
      { title: 'Math Homework', dueDate: '2024-06-20' },
      { title: 'Science Project', dueDate: '2024-06-25' },
      // Add more assignments data
    ]);

    setGrades([
      { subject: 'Mathematics', grade: 'A' },
      { subject: 'Science', grade: 'B+' },
      // Addition of more grades data
    ]);

    setAnnouncements([
      { title: 'School Holiday', date: '2024-07-01', message: 'School will be closed on July 1st for a public holiday.' },
      { title: 'Parent-Teacher Meeting', date: '2024-06-30', message: 'Parent-Teacher Meeting will be held on June 30th.' },
      
    ]);
  }, []);

  return (
    <div className="dashboard">
      <header className="dashboard-header">
        <img src={student.profilePicture} alt="Profile" className="profile-picture" />
        <h1>Welcome, {student.name}</h1>
      </header>

      <section className="profile-info">
        <h2>Profile Information</h2>
        <p>Name: {student.name}</p>
        <p>Class: {student.class}</p>
      </section>

      <section className="schedule">
        <h2>Class Schedule</h2>
        <ul>
          {schedule.map((item, index) => (
            <li key={index}>
              <span className="day">{item.day}</span>: {item.subject} ({item.time})
            </li>
          ))}
        </ul>
      </section>

      <section className="assignments">
        <h2>Upcoming Assignments</h2>
        <ul>
          {assignments.map((item, index) => (
            <li key={index} className="assignment">
              <span className="assignment-title">{item.title}</span> - Due: {item.dueDate}
            </li>
          ))}
        </ul>
      </section>

      <section className="grades">
        <h2>Grades Overview</h2>
        <ul>
          {grades.map((item, index) => (
            <li key={index}>
              {item.subject}: {item.grade}
            </li>
          ))}
        </ul>
      </section>

      <section className="announcements">
        <h2>Announcements</h2>
        <ul>
          {announcements.map((item, index) => (
            <li key={index}>
              <strong>{item.title}</strong> ({item.date}): {item.message}
            </li>
          ))}
        </ul>
      </section>
    </div>
  );
};

export default Dashboard;
