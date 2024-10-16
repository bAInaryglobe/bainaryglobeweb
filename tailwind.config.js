/** @type {import('tailwindcss').Config} */
module.exports = {
    content: ['./{lib,web}/**/*.dart'],
    theme: {
        extend: {


            fontFamily: {
                'space-grotesk': ['"Space Grotesk"', 'sans-serif'],
              },

              
        },
    },
    plugins: [],
}