import { defineConfig } from 'vite';
import react from '@vitejs/plugin-react';

// https://vitejs.dev/config/
export default defineConfig({
  server: {
    origin: 'http://localhost:3000',
    port: 3000,
    strictPort: true,
  },
  resolve: {
    alias: {
      '@': '/src',
    }
  },
  plugins: [react()],
});
