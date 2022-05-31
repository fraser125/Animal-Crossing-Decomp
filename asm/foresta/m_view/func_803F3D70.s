lbl_803F3D70:
/* 803F3D70  80 E4 00 08 */	lwz r7, 8(r4)
/* 803F3D74  38 C0 01 FF */	li r6, 0x1ff
/* 803F3D78  80 04 00 0C */	lwz r0, 0xc(r4)
/* 803F3D7C  38 A0 00 00 */	li r5, 0
/* 803F3D80  81 04 00 00 */	lwz r8, 0(r4)
/* 803F3D84  7D 27 00 50 */	subf r9, r7, r0
/* 803F3D88  80 E4 00 04 */	lwz r7, 4(r4)
/* 803F3D8C  55 20 10 3A */	slwi r0, r9, 2
/* 803F3D90  7C E8 38 50 */	subf r7, r8, r7
/* 803F3D94  B0 03 00 00 */	sth r0, 0(r3)
/* 803F3D98  54 E0 10 3A */	slwi r0, r7, 2
/* 803F3D9C  B0 03 00 02 */	sth r0, 2(r3)
/* 803F3DA0  B0 C3 00 04 */	sth r6, 4(r3)
/* 803F3DA4  B0 A3 00 06 */	sth r5, 6(r3)
/* 803F3DA8  80 04 00 08 */	lwz r0, 8(r4)
/* 803F3DAC  7C 09 02 14 */	add r0, r9, r0
/* 803F3DB0  54 00 10 3A */	slwi r0, r0, 2
/* 803F3DB4  B0 03 00 08 */	sth r0, 8(r3)
/* 803F3DB8  80 04 00 00 */	lwz r0, 0(r4)
/* 803F3DBC  7C 07 02 14 */	add r0, r7, r0
/* 803F3DC0  54 00 10 3A */	slwi r0, r0, 2
/* 803F3DC4  B0 03 00 0A */	sth r0, 0xa(r3)
/* 803F3DC8  B0 C3 00 0C */	sth r6, 0xc(r3)
/* 803F3DCC  B0 A3 00 0E */	sth r5, 0xe(r3)
/* 803F3DD0  4E 80 00 20 */	blr 
