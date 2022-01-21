ENTRY(__start)
_SDA_BASE_ = 0x8021FB80;
_SDA2_BASE_ = 0x80220BE0;
PHDRS
{
    text0 PT_LOAD;
    text1 PT_LOAD;
    data0 PT_LOAD;
    data1 PT_LOAD;
    data2 PT_LOAD;
    data3 PT_LOAD;
    data4 PT_LOAD;
    data5 PT_LOAD;
    data6 PT_LOAD;
    data7 PT_LOAD;
    bss PT_LOAD;
}
SECTIONS
{
    .text0 0x80003100 : { *(.text0) } : text0
    .text1 0x800056C0 : { *(.text1) } : text1
    .data0 0x80005620 : { *(.data0) } : data0
    .data1 0x80005660 : { *(.data1) } : data1
    .data2 0x800A9780 : { *(.data2) } : data2
    .data3 0x800A97C0 : { *(.data3) } : data3
    .data4 0x800A97E0 : { *(.data4) } : data4
    .data5 0x800AF860 : { *(.data5) } : data5
    .data6 0x80217B80 : { *(.data6) } : data6
    .data7 0x80218BE0 : { *(.data7) } : data7
    .bss 0x800E2280 (NOLOAD) : { *(.bss) } : bss
}
