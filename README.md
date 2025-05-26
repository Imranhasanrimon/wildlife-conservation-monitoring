# 🐾 WILDLIFE CONSERVATION MONITORING

This section contains five fundamental concepts about PostgreSQL that will make our basement strong. All questions are collected from bonus section of assingment 2.

---

## 🔍 প্রশ্ন ও উত্তর

### 1. What is PostgreSQL?

PostgreSQL হলো একটি ওপেন-সোর্স, শক্তিশালী এবং উন্নতমানের Object-Relational Database Management System (ORDBMS)। এটি শুধু টেবিলভিত্তিক ডেটা নয়, JSON বা XML-এর মতো নন-রিলেশনাল ডেটাও সংরক্ষণ করতে পারে। ACID properties অনুসরণ করার কারণে এটি ডেটার নির্ভরযোগ্যতা এবং নিরাপত্তা নিশ্চিত করে। PostgreSQL-এর পারফরম্যান্স, স্কেলেবিলিটি এবং এক্সটেনসিবিলিটির কারণে এটি বিশ্বজুড়ে ব্যবহৃত হয়।

---

### 2. What is the purpose of a database schema in PostgreSQL?

Schema হলো একটি লজিক্যাল কাঠামো বা নেমস্পেস, যার মধ্যে টেবিল, ফাংশন, ভিউ ইত্যাদি ডেটাবেজ অবজেক্ট রাখা হয়। একই ডেটাবেজে বিভিন্ন স্কিমা ব্যবহার করে ডেটাকে আলাদা আলাদা ভাগে সাজানো যায় এবং একই নামে ভিন্ন টেবিল রাখা সম্ভব হয়। ডিফল্টভাবে প্রতিটি PostgreSQL ডেটাবেজে একটি `public` স্কিমা থাকে।

---

### 3. Explain the Primary Key and Foreign Key concepts in PostgreSQL.

- **Primary Key** এমন একটি কলাম বা কলামগুলোর সমন্বয় যা প্রতিটি রেকর্ডকে ইউনিকভাবে শনাক্ত করে। এটি কখনো `NULL` হতে পারে না।
  
- **Foreign Key** এমন একটি কলাম যা অন্য টেবিলের Primary Key-কে রেফার করে। এর মাধ্যমে টেবিলগুলোর মধ্যে সম্পর্ক তৈরি হয়।

🔗 উদাহরণ:  
`sightings` টেবিলের `species_id` একটি **Foreign Key** যা `species` টেবিলের `species_id` (Primary Key) কে রেফার করে।

---

### 4. What is the difference between the VARCHAR and CHAR data types?

- `CHAR(n)` হলো ফিক্সড-লেংথ ক্যারেক্টার টাইপ, অর্থাৎ ইনপুট ছোট হলেও জায়গা ঠিক `n`-টি ক্যারেক্টারই নিবে।  
- `VARCHAR(n)` হলো ভ্যারিয়েবল লেংথ টাইপ, অর্থাৎ যতটুকু ইনপুট দিবে ঠিক ততটুকুই জায়গা নিবে (সর্বোচ্চ `n`)।

📌 সংক্ষেপে: `VARCHAR` বেশি ব্যবহৃত হয় কারণ এটি স্টোরেজ বাঁচায় এবং ফ্লেক্সিবল।

---

### 5. Explain the purpose of the WHERE clause in a SELECT statement.

`WHERE` ক্লজ ব্যবহার করে নির্দিষ্ট শর্ত অনুযায়ী রেকর্ডগুলো ফিল্টার করা যায়। এটি ছাড়া `SELECT` স্টেটমেন্ট সব রেকর্ড দেখায়।

🧪 উদাহরণ:
```sql
SELECT * FROM rangers
WHERE region = 'Coastal Plains';
