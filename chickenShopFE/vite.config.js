import { defineConfig } from "vite";
import react from "@vitejs/plugin-react";
import tailwindcss from "@tailwindcss/vite";

export default defineConfig({
  plugins: [react()],
  server: {
    proxy: {
      '/api': {
        target: 'http://localhost:8080', // Base URL của backend
        changeOrigin: true,
        rewrite: (path) => path.replace(/^\/api/, '') // Loại bỏ '/api' khỏi đường dẫn
      }
    }
  }
});