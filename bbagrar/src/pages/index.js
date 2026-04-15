import React, { useEffect } from 'react';

function Home() {
  useEffect(() => {
    window.location.href = '/docs/projektmunka';
  }, []);

  return (
    <div>
      <p>Átirányítás a dokumentációra...</p>
    </div>
  );
}

export default Home;
