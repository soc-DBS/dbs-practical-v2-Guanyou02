document.addEventListener('DOMContentLoaded', () => {
  const form = document.querySelector('form');

  form.addEventListener('submit', async (e) => {
    e.preventDefault();

    const staffNo = document.getElementById('staff_no').value;
    const department = document.getElementById('department').value;
    const token = localStorage.getItem('token');

    if (!token) {
      alert('No token found. Please log in first.');
      return;
    }

    const payload = {
      staff_no: staffNo,
      department: department
    };

    try {
      const response = await fetch('/staff/transferStaff', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json',
          'Authorization': `Bearer ${token}`
        },
        body: JSON.stringify(payload)
      });

      const result = await response.json();

      if (response.ok) {
        alert('Staff transfer successful.');
      } else {
        alert(`Error: ${result.message || 'Something went wrong.'}`);
      }

    } catch (err) {
      console.error(err);
      alert('Network error. Please try again later.');
    }
  });
});


// window.addEventListener('DOMContentLoaded', function () {
//     const form = document.querySelector('form'); // Only have 1 form in this HTML
//     form.onsubmit = function (e) {
//         e.preventDefault(); // prevent using the default submit behavior

//         const staffNumber = document.querySelector('#staffNumber').value;
//         const departmentCode = document.querySelector('#departmentCode').value;
        
//         // Create student object
//         const staff = {
//             staffNumber: staffNumber,
//             departmentCode: departmentCode
//         };

//         const token = localStorage.getItem('token');

//         // Send POST request to "/enrol" endpoint
//         fetch('/staff/transferStaff', {
//             method: 'POST',
//             headers: {
//                 authorization: `Bearer ${token}`,
//                 'Content-Type': 'application/json',
//             },
//             body: JSON.stringify(staff)
//         }).then(function (response) {
//             if (response.ok) {
//                 alert(`Staff with staff number ${staffNumber} transferred!`);
//             } else {
//                 // If fail, show the error message
//                 response.json().then(function (data) {
//                     alert(data.error);
//                 });
//             }
//         })
//         .catch(function (error) {
//             alert(`Error transferring staff`);
//         });       
//     };
// });
