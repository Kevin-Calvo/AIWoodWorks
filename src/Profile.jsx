import { useState } from 'react';
import './Profile.css';

function UserProfile() {
  const [user, setUser] = useState({
    name: 'John Doe',
    email: 'johndoe@example.com',
    localization: 'New York, USA',
    phone: '+1 234 567 8901',
    furnitureMaker: true,
    description: 'Passionate furniture maker with over 10 years of experience.',
    profilePicture: 'profile_picture.jpg',
  });

  const [reviews] = useState([
    { reviewer: 'Alice', text: 'Great experience! The furniture was top-notch.' },
    { reviewer: 'Bob', text: 'Fast delivery and excellent customer service!' },
  ]);

  const [posts] = useState([
    { title: 'Post Title 1', content: 'Check out my latest furniture design! I used reclaimed wood for a rustic look.' },
    { title: 'Post Title 2', content: 'Just finished this custom table for a client. It turned out beautifully!' },
  ]);

  const handleEditProfile = () => {
    console.log('Edit Profile Clicked');
    // Here you would typically navigate to the edit profile page or show an edit form
  };

  return (
    <>
      <header>
        <div className="logo">AIWoodworks</div>
      </header>

      <div className="container">
        <h2>User Profile</h2>
        <div className="profile-info">
          <label htmlFor="name">Name:</label>
          <p id="name">{user.name}</p>

          <label htmlFor="email">Email:</label>
          <p id="email">{user.email}</p>

          <label htmlFor="localization">Localization:</label>
          <p id="localization">{user.localization}</p>

          <label htmlFor="phone">Phone Number:</label>
          <p id="phone">{user.phone}</p>

          <label htmlFor="furnitureMaker">Furniture Maker:</label>
          <p id="furnitureMaker">{user.furnitureMaker ? 'Yes' : 'No'}</p>

          <label htmlFor="description">Profile Description:</label>
          <p id="description">{user.description}</p>

          <label htmlFor="profilePicture">Profile Picture:</label>
          <img id="profilePicture" src={user.profilePicture} alt="Profile Picture" style={{ width: '100%', maxWidth: '200px', borderRadius: '5px' }} />
        </div>

        <button className="edit-button" onClick={handleEditProfile}>Edit Profile</button>

        <div className="section reviews">
          <h3>User Reviews</h3>
          {reviews.map((review, index) => (
            <div key={index} className="review">
              <strong>Review by {review.reviewer}:</strong>
              <p>{review.text}</p>
            </div>
          ))}
        </div>

        <div className="section posts">
          <h3>Previous Posts</h3>
          {posts.map((post, index) => (
            <div key={index} className="post">
              <strong>{post.title}:</strong>
              <p>{post.content}</p>
            </div>
          ))}
        </div>
      </div>

      <div className="footer-text">
        <a href="#">Logout</a>
      </div>
    </>
  );
}

export default UserProfile;
