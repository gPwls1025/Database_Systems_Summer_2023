function generateRandomId() {
    const currentDate = new Date();
    const year = currentDate.getFullYear();
    const month = String(currentDate.getMonth() + 1).padStart(2, '0');
    const day = String(currentDate.getDate()).padStart(2, '0');
  
    const randomNumber1 = Math.floor(Math.random() * 10001);
    const randomNumber2 = Math.floor(Math.random() * 10001);
  
    const combinedId = `${year}${month}${day}-${randomNumber1 + randomNumber2}`;
    return combinedId;
  }
  
  // Example usage
  const id = generateRandomId();
  return id;