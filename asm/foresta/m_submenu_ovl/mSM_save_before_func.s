lbl_805EEF80:
/* 805EEF80  80 03 00 04 */	lwz r0, 4(r3)
/* 805EEF84  80 A3 00 08 */	lwz r5, 8(r3)
/* 805EEF88  1C 80 00 48 */	mulli r4, r0, 0x48
/* 805EEF8C  80 C3 00 2C */	lwz r6, 0x2c(r3)
/* 805EEF90  38 E4 00 54 */	addi r7, r4, 0x54
/* 805EEF94  7C E6 3A 14 */	add r7, r6, r7
/* 805EEF98  90 A7 00 08 */	stw r5, 8(r7)
/* 805EEF9C  1C 85 00 48 */	mulli r4, r5, 0x48
/* 805EEFA0  80 06 09 0C */	lwz r0, 0x90c(r6)
/* 805EEFA4  38 84 00 54 */	addi r4, r4, 0x54
/* 805EEFA8  90 07 00 0C */	stw r0, 0xc(r7)
/* 805EEFAC  7C 86 22 14 */	add r4, r6, r4
/* 805EEFB0  80 06 09 10 */	lwz r0, 0x910(r6)
/* 805EEFB4  90 07 00 10 */	stw r0, 0x10(r7)
/* 805EEFB8  80 03 00 04 */	lwz r0, 4(r3)
/* 805EEFBC  90 04 00 14 */	stw r0, 0x14(r4)
/* 805EEFC0  4E 80 00 20 */	blr 
