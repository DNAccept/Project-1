// use client (optional, for Next.js App Directory)
import { useState } from 'react';
import { useRouter } from 'next/router';

const Login = () => {
  const router = useRouter();
  const [email, setEmail] = useState('');
  const [password, setPassword] = useState('');
  const [errorMessage, setErrorMessage] = useState(null);

  const handleLogin = async (e) => {
    e.preventDefault();

    // Replace with your actual login API call
    const response = await fetch('/api/login', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify({ email, password }),
    });

    if (response.ok) {
      // Login successful
      const data = await response.json();
      // Store user data (e.g., token) in local storage or cookies (optional)
      alert(`Logged in! Welcome, ${data.user?.name || email}`);
      router.push('/'); // Redirect to a different page after login (optional)
    } else {
      // Login failed
      const errorData = await response.json();
      setErrorMessage(errorData.message || 'Login failed.');
    }
  };

  return (
    <div>
      <h1>Login</h1>
      <form onSubmit={handleLogin}>
        {errorMessage && <p className="error-message">{errorMessage}</p>}
        <div>
          <label>Email:</label>
          <input
            type="email"
            value={email}
            onChange={(e) => setEmail(e.target.value)}
            required
          />
        </div>
        <div>
          <label>Password:</label>
          <input
            type="password"
            value={password}
            onChange={(e) => setPassword(e.target.value)}
            required
          />
        </div>
        <button type="submit">Login</button>
      </form>
      <p>
        Don't have an account? <button onClick={() => router.push('/signup')}>Sign up</button>
      </p>
    </div>
  );
};

export default Login;
