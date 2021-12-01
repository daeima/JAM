import Chart from 'chart.js/auto';

const initChart = () =>{
  const chart = document.getElementById('myChart')
  if (chart) {
    const ctx = document.getElementById('myChart').getContext('2d');
    const myChart = new Chart(ctx, {
      type: 'line',
      data: {
          labels: JSON.parse(ctx.canvas.dataset.labels),
          datasets: [{
              label: 'Job applications',
              data: JSON.parse(ctx.canvas.dataset.data),
              label: "Minecrafty Sales",
              fill: true,
              pointRadius: 3,
              font: 50,
              lineTension: 0.4,
              backgroundColor: [
                  'rgba(54, 162, 235, 0.2)',
                  'rgba(255, 99, 132, 0.2)',
                  'rgba(255, 206, 86, 0.2)',
                  'rgba(75, 192, 192, 0.2)',
                  'rgba(153, 102, 255, 0.2)'
              ],
              borderColor: [
                  'rgba(255, 99, 132, 1)',
                  'rgba(54, 162, 235, 1)',
                  'rgba(255, 206, 86, 1)',
                  'rgba(75, 192, 192, 1)',
                  'rgba(153, 102, 255, 1)',
                  'rgba(255, 159, 64, 1)'
              ],
              borderWidth: 4
          }]
      },
      options: {
          scales: {
              y: {
                  beginAtZero: true
                  
              }
              
          }
      }
    });
  }
}

export { initChart }
