import { useState, useEffect } from 'react';

const Dashboard = () => {
  const [student, setStudent] = useState({});
  const [schedule, setSchedule] = useState([]);
  const [assignments, setAssignments] = useState([]);
  const [grades, setGrades] = useState([]);
  const [announcements, setAnnouncements] = useState([]);

  useEffect(() => {
    // Fetching student data (mock data here for illustration)
    setStudent({
      name: 'John Doe',
      class: '10th Grade',
      profilePicture: '/profile.jpg'
    });

    // Fetching class schedule (mock data here for illustration)
    setSchedule([
      { day: 'Monday', subject: 'Mathematics', time: '10:00 AM - 11:00 AM' },
      { day: 'Tuesday', subject: 'Science', time: '11:00 AM - 12:00 PM' },
      // Add more schedule data
    ]);

    // Fetching assignments (mock data here for illustration)
    setAssignments([
      { title: 'Math Homework', dueDate: '2024-06-20' },
      { title: 'Science Project', dueDate: '2024-06-25' },
      // Add more assignments data
    ]);

    // Fetching grades (mock data here for illustration)
    setGrades([
      { subject: 'Mathematics', grade: 'A' },
      { subject: 'Science', grade: 'B+' },
      // Add more grades data
    ]);

    // Fetching announcements (mock data here for illustration)
    setAnnouncements([
      { title: 'School Holiday', date: '2024-07-01', message: 'School will be closed on July 1st for a public holiday.' },
      { title: 'Parent-Teacher Meeting', date: '2024-06-30', message: 'Parent-Teacher Meeting will be held on June 30th.' },
      // Add more announcements data
    ]);
  }, []);

  return (
    <div>
      <header style={{ display: 'flex', alignItems: 'center', marginBottom: '20px' }}>
        <img src={student.profilePicture} alt="Profile" style={{ width: '50px', height: '50px', borderRadius: '50%', marginRight: '15px' }} />
        <h1>Welcome, {student.name}</h1>
      </header>

      <section>
        <h2>Profile Information</h2>
        <p>Name: {student.name}</p>
        <p>Class: {student.class}</p>
      </section>

      <section>
        <h2>Class Schedule</h2>
        <ul>
          {schedule.map((item, index) => (
            <li key={index}>{item.day}: {item.subject} ({item.time})</li>
          ))}
        </ul>
      </section>

      <section>
        <h2>Upcoming Assignments</h2>
        <ul>
          {assignments.map((item, index) => (
            <li key={index}>{item.title} - Due: {item.dueDate}</li>
          ))}
        </ul>
      </section>

      <section>
        <h2>Grades Overview</h2>
        <ul>
          {grades.map((item, index) => (
            <li key={index}>{item.subject}: {item.grade}</li>
          ))}
        </ul>
      </section>

      <section>
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
