Design Rules — Ninjas App

1. Color Palette
   Role Color Hex Usage
   Primary #6B46C1 Main accent color: buttons, highlights, active states
   Secondary #F6E05E Secondary actions: icons, secondary buttons, badges
   Background #1A202C Default app background
   Surface #2D3748 Cards, modals, bottom sheets
   Text Primary #EDF2F7 Main text color
   Text Secondary #A0AEC0 Subtext, hints, disabled text
   Error #E53E3E Form errors, destructive actions
   Success #48BB78 Success messages, validations

⚡ Tip: Keep a dark theme as the default and optionally provide a light theme later.

2. Typography
   Role Font Family Weight Size (px / sp) Usage
   Heading 1 Inter Bold (700) 32 Screen titles
   Heading 2 Inter Semi-Bold (600) 24 Section headings
   Body Large Inter Regular (400) 16 Chat messages, form text
   Body Small Inter Regular (400) 14 Subtext, hints, timestamps
   Button Inter Medium (500) 16 Primary / secondary buttons

Use GoogleFonts.inter() in Flutter for all text to maintain consistency.

3. Spacing / Layout
   3.1 Grid & Padding

Base unit: 8px

Multiples: 8, 16, 24, 32, 48

Page padding: 20–24px

Card / modal padding: 16px internal

Gap between elements: 8px / 16px depending on context

3.2 Border Radius

Small: 4px → form fields, checkboxes

Medium: 8px → buttons

Large: 16px → cards, modals

Extra Large: 24px → chat bubbles

4. Buttons
   Type Background Text Color Radius Padding Usage
   Primary Primary White 8px 16x12px Main CTA
   Secondary Secondary Dark 8px 16x12px Less important actions
   Disabled #4A5568 #A0AEC0 8px 16x12px Inactive state

Use FButton from Forui and stick to these colors/paddings consistently.

5. Forms

Input fields: FTextField

Height: 48px

Border: 1px solid #4A5568 (inactive), Primary (active)

Spacing between fields: 16px

Validation: red text, below input, left-aligned

Checkbox: 20x20px, primary color when checked

6. Chat Bubble Rules

User messages: background = Primary color, text = White

Other messages: background = Surface color, text = Text Primary

Border radius: 16px, rounded more on message side alignment

Padding: 12px internal

Spacing between messages: 8px

7. Icons

Use FIcons from Forui wherever possible

Icon size: 24px standard

Icon color: Primary / Text Secondary depending on context

Spacing: 8px between icon and text

8. Motion / Animation

Button hover / press: scale 0.95 with 100ms duration

Page transitions: default Flutter MaterialPageRoute slide animation

Snackbar / Toast: fade in/out 200ms

Theme changes: use FAnimatedTheme duration 300ms

9. Responsiveness

Maximum content width: 480px for forms / modals

Chat list & bubbles expand full width on mobile

Maintain at least 16px padding from screen edges

Use Flexible and Expanded widgets to avoid overflow

10. Iconography / Images

Rounded avatars: 40px / 32px in chat list

Chatroom image / banner: optional, 120x120px

Use vector icons for crispness (SVG / Forui icons)

Maintain consistent aspect ratio 1:1 for avatars
