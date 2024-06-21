import { useState, FormEvent } from 'react';
import { useRouter } from 'next/router';

interface SignupForm {
  email: string;
  password: string;
}

const Signup = () => {
  const router = useRouter();
  const [formData, setFormData] = useState<SignupForm>({ email: '', password: '' });

  const handleSignup = async (event: FormEvent<HTMLFormElement>) => {
    event.preventDefault();

    // Implement your signup logic here (e.g., API call, data validation)
    // Replace with your actual signup functionality
    const response = await fetch('/api/signup', {
      method: 'POST',
      headers: { 'Content-Type': 'application/json' },
      body: JSON.stringify(formData),
    });

    if (response.ok) {
      // Signup successful
      alert('Signed up!');
      router.push('/login');
    } else {
      // Handle signup errors
      const errorData = await response.json();
      alert(errorData.message || 'Signup failed.');
    }
  };

  const handleChange = (event: React.ChangeEvent<HTMLInputElement>) => {
    setFormData({ ...formData, [event.target.name]: event.target.value });
  };

  return (
    <div>
      <h1>Sign Up</h1>
      <form onSubmit={handleSignup}>
        <div>
          <label>Email:</label>
          <input
            type="email"
            name="email"
            value={formData.email}
            onChange={handleChange}
            required
          />
        </div>
        <div>
          <label>Password:</label>
          <input
            type="password"
            name="password"
            value={formData.password}
            onChange={handleChange}
            required
          />
        </div>
        <button type="submit">Sign Up</button>
      </form>
    </div>
  );
};

export default Signup;
