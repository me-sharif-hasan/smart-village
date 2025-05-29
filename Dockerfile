# Use the official Flutter image for web builds
FROM ghcr.io/cirruslabs/flutter:stable AS build

WORKDIR /app

# Copy pubspec files and get dependencies
COPY pubspec.* ./
RUN flutter pub get

# Copy the rest of the application
COPY . .

# Build the Flutter web app (output to build/web)
RUN flutter build web --release

# Use a minimal nginx image to serve the app
FROM nginx:alpine

# Copy the built web app to nginx's html directory
COPY --from=build /app/build/web /usr/share/nginx/html

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
