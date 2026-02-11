# Scheduled Tasks in Linux (Cron & Crontab)

## Cron

Cron is a standard utility in Linux operating systems used to automatically execute commands at specified time intervals.

Every minute, the cron service checks whether there is a scheduled task for that minute. If a task exists, it executes it.

Cron can be used system-wide, and users (if permitted) can define their own scheduled tasks.

System-wide cron jobs are stored in:

```bash
/etc/crontab
```

To view the contents:

```bash
cat /etc/crontab
```

You may see a format description like this inside the file:

```
# m h dom mon dow user command
```

---

## Cron Time Format Explained

| Abbreviation | Meaning        | Description |
|--------------|---------------|------------|
| m            | Minute        | 0–59 |
| h            | Hour          | 0–23 |
| dom          | Day of Month  | 1–31 |
| mon          | Month         | 1–12 |
| dow          | Day of Week   | 0–7 (0 and 7 = Sunday) |
| user         | User          | System user |
| command      | Command       | Script or command to execute |

---

## Special Characters in Cron

| Symbol | Meaning |
|--------|---------|
| `*`    | Every value |
| `-`    | Range (e.g., 1-5) |
| `,`    | Multiple values (e.g., 1,3,5) |
| `/`    | Step values (e.g., */10) |

---

## Examples

### Run every day at 12:00 PM

```bash
00 12 * * * username /path/to/script.sh
```

### Run every day at 08:00 and 14:00

```bash
00 8,14 * * * username /path/to/script.sh
```

### Run every 10 minutes

```bash
*/10 * * * * username /path/to/script.sh
```

### Run every weekday between 09:00 and 18:00

```bash
00 09-18 * * 1-5 username /path/to/script.sh
```

---

## Predefined Cron Directories

Some systems use predefined directories for scheduled tasks:

- Hourly jobs:
  ```
  /etc/cron.hourly
  ```

- Daily jobs:
  ```
  /etc/cron.daily
  ```

- Weekly jobs:
  ```
  /etc/periodic/weekly
  ```

- Monthly jobs:
  ```
  /etc/periodic/monthly
  ```

---

# Crontab

Instead of editing `/etc/crontab`, users can manage their own scheduled tasks using the `crontab` command.

### List existing cron jobs

```bash
crontab -l
```

### Edit cron jobs

```bash
crontab -e
```

When using `crontab`, you do NOT specify the user.  
The scheduled job runs as the user who created it.

---

## Managing Cron for Other Users (Root Only)

Root can edit another user’s crontab using:

```bash
crontab -e -u username
```

---

# Cron Access Control

Cron access can be restricted using these files:

### `/etc/cron.allow`
Only users listed in this file can create cron jobs.

### `/etc/cron.deny`
Users listed in this file are NOT allowed to create cron jobs.

---

# Summary

- Cron automatically runs commands at scheduled times.
- Time format consists of 5 fields: minute, hour, day, month, weekday.
- `crontab -e` is used to create or edit personal scheduled tasks.
- `*`, `-`, `,`, and `/` are used to define flexible schedules.

