#include "native_add.h"

#include <thread>

// A very short-lived native function.
FFI_PLUGIN_EXPORT intptr_t sum(intptr_t a, intptr_t b) {
  return a + b;
}

// A longer-lived native function, which occupies the thread calling it.
FFI_PLUGIN_EXPORT intptr_t sum_long_running(intptr_t a, intptr_t b) {
  // Simulate work.
#if _WIN32
  Sleep(5000);
#else
  std::this_thread::sleep_for(std::chrono::milliseconds(3000));
#endif

  return a + b;
}
