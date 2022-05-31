Samsung Galaxy A8 (2018) (SM-A530N) Device Tree.

---
Copyright (C) 2022 The LineageOS Project

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0.

---

`roomservice.xml`
```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
  <project name="MacBookPro34-comma-7/android_device_samsung_jackpotlte" path="device/samsung/jackpotlte" remote="github" revision="lineage-17.1" />
  <project name="MacBookPro34-comma-7/android_vendor_samsung_jackpotlte" path="vendor/samsung/jackpotlte" remote="github" revision="lineage-17.1" />
  <project name="MacBookPro34-comma-7/android_kernel_samsung_jackpotlte" path="kernel/samsung/jackpotlte" remote="github" revision="lineage-17.1" />
  <project path="hardware/samsung" remote="github" name="LineageOS/android_hardware_samsung" />
</manifest>
```

`external/tinycompress/Android.mk`
```diff
@@ -18,7 +18,7 @@ cc_library_shared {
         "libutils",
     ],
     header_libs: [
-        "generated_kernel_headers",
+        "device_kernel_headers",
     ],
     product_variables: {
         lineage: {
```
