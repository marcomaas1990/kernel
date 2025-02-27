set architecture riscv:rv64
file /home/mrm/thesis/hermit-rs/target/riscv64gc-unknown-hermit/debug/httpd
add-symbol-file /home/mrm/thesis/hermit-rs/target/riscv64gc-unknown-hermit/debug/httpd 0x82400000
target remote localhost:1234
# b hermit::arch::riscv64::kernel::interrupts::trap_handler
# b hermit::arch::riscv64::kernel::interrupts::external_handler
# b hermit::arch::riscv64::kernel::interrupts::install

# b hermit::arch::riscv64::kernel::interrupts::install_handlers

b hermit::drivers::mmio::get_interrupt_handlers
b hermit::drivers::mmio::get_interrupt_handlers::network_handler
b hermit::drivers::virtio::transport::mmio::IsrStatus::is_queue_interrupt
b hermit::drivers::virtio::transport::mmio::IsrStatus::acknowledge