lbl_803F3F68:
/* 803F3F68  80 A4 00 00 */	lwz r5, 0(r4)
/* 803F3F6C  80 04 00 04 */	lwz r0, 4(r4)
/* 803F3F70  90 A3 00 04 */	stw r5, 4(r3)
/* 803F3F74  90 03 00 08 */	stw r0, 8(r3)
/* 803F3F78  80 A4 00 08 */	lwz r5, 8(r4)
/* 803F3F7C  80 04 00 0C */	lwz r0, 0xc(r4)
/* 803F3F80  90 A3 00 0C */	stw r5, 0xc(r3)
/* 803F3F84  90 03 00 10 */	stw r0, 0x10(r3)
/* 803F3F88  80 03 01 18 */	lwz r0, 0x118(r3)
/* 803F3F8C  60 00 00 02 */	ori r0, r0, 2
/* 803F3F90  90 03 01 18 */	stw r0, 0x118(r3)
/* 803F3F94  4E 80 00 20 */	blr 
