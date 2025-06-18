# Mobile QA Testing Checklist

## 📱 **Viewport Testing**

### **Mobile Devices (320px - 768px)**
- [ ] iPhone SE (375x667)
- [ ] iPhone 12/13/14 (390x844)
- [ ] Samsung Galaxy S20 (360x800)
- [ ] iPhone 12 Pro Max (428x926)

### **Tablet Devices (768px - 1024px)**
- [ ] iPad (768x1024)
- [ ] iPad Pro (1024x1366)

### **Desktop (1024px+)**
- [ ] Desktop 1920x1080
- [ ] Large Desktop 2560x1440

## ✅ **Mobile Features to Test**

### **Navigation**
- [ ] Hamburger menu opens/closes smoothly
- [ ] Mobile bottom navigation appears only on mobile
- [ ] All navigation items are touch-friendly (44px minimum)
- [ ] Sidebar overlay closes when clicking backdrop

### **Layout & Responsiveness**
- [ ] No horizontal scrolling on any viewport
- [ ] Text scales appropriately on different screen sizes
- [ ] Grid layouts stack properly on mobile
- [ ] Cards and components fit within viewport
- [ ] Demo section maintains aspect ratio

### **Touch Interactions**
- [ ] All buttons are easily tappable
- [ ] Form inputs don't cause zoom on iOS
- [ ] Smooth scrolling works properly
- [ ] Touch feedback is responsive

### **Content**
- [ ] Text remains readable at all sizes
- [ ] Images scale properly
- [ ] No content overflow
- [ ] Proper spacing between elements

### **Performance**
- [ ] Page loads quickly on mobile
- [ ] Animations are smooth
- [ ] No layout shifts during loading

## 🔧 **How to Test**

### **Chrome DevTools**
1. Press `F12` or `Ctrl+Shift+I`
2. Click device toggle icon (📱) or press `Ctrl+Shift+M`
3. Select different device presets
4. Test both portrait and landscape orientations

### **Firefox DevTools**
1. Press `F12`
2. Click responsive design mode icon
3. Test various screen sizes

### **Real Device Testing**
- Test on actual mobile devices when possible
- Check different browsers (Chrome, Safari, Firefox)
- Test on both iOS and Android

## 🐛 **Common Issues to Watch For**

- Horizontal scrolling
- Text too small to read
- Buttons too small to tap
- Content cut off
- Overlapping elements
- Slow loading on mobile networks
- Form inputs causing page zoom
- Navigation not accessible
