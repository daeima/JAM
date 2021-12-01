import Chart from 'chart.js/auto';

const initChart = () =>{
  const ctx = document.getElementById('myChart').getContext('2d');
  const myChart = new Chart(ctx, {
    type: 'line',
    data: {
        labels: JSON.parse(ctx.canvas.dataset.labels),
        datasets: [{
            label: 'Job applications',
            data: JSON.parse(ctx.canvas.dataset.data),
            lineTension: 0.5,
            backgroundColor: [
                'rgba(118, 231, 208, 1)',
                'rgba(208, 67, 74, 1)',
                'rgba(255, 208, 102, 1)',
                'rgba(253, 115, 122, 1)',
                'rgba(221, 171, 43, 1)',
                'rgba(162, 168, 249, 1)'
            ],
            borderColor: [
                'rgba(255, 99, 132, 1)',
                'rgba(54, 162, 235, 1)',
                'rgba(255, 206, 86, 1)',
                'rgba(75, 192, 192, 1)',
                'rgba(153, 102, 255, 1)',
                'rgba(255, 159, 64, 1)'
            ],
            borderWidth: 1
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

export { initChart }
