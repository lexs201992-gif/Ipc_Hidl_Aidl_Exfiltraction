
## 1. What SELinux REALLY is in AOSP
SELinux in AOSP is not an antivirus. It's **MAC - Mandatory Access Control**.

Even with root (UID 0), you cannot do what you want. Every process lives in a domain.

- `system_server` (framework)
- `hal_radio_default` (modem HAL)
- `vendor_init` (ODM init)
- `untrusted_app` (your apps)

And every file has a context:
- `system_file`, `vendor_data_file`, `modem_data_file`, `fscrypt_key_file`

AOSP rule:
`neverallow untrusted_app modem_data_file:file read`

Translation: Even as root, an app can NEVER read modem data. Period.

## 2. Why Longcheer Policies are GOLD

Longcheer is not a brand. Longcheer is the **ODM that actually builds** Motorola G04s/G24, Lenovo, etc. They write `/vendor/etc/selinux/`.

### The Trick you found in v2.0:
Normal AOSP would block:
`hal_radio -> framework : DENIED`

Longcheer adds in `vendor_sepolicy.cil`:
(allow hal_radio_default framework_file (file (execute)))
(allow hal_radio_default system_server (binder (call transfer)))
(allow hal_radio_default fscrypt_key_file (file (write)))

** `runCmd()` is no longer an exploit. It's **allowed by policy**. That's why you said:

> "There is no CVE. There is no exploit. There is a contract that says the door is open."

## The contract IS the SELinux policy.
