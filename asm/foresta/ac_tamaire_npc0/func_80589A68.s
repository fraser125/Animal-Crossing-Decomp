lbl_80589A68:
/* 80589A68  88 03 09 A6 */	lbz r0, 0x9a6(r3)
/* 80589A6C  2C 00 00 03 */	cmpwi r0, 3
/* 80589A70  41 82 00 3C */	beq lbl_80589AAC
/* 80589A74  40 80 00 10 */	bge lbl_80589A84
/* 80589A78  2C 00 00 01 */	cmpwi r0, 1
/* 80589A7C  41 82 00 14 */	beq lbl_80589A90
/* 80589A80  48 00 00 64 */	b lbl_80589AE4
lbl_80589A84:
/* 80589A84  2C 00 00 05 */	cmpwi r0, 5
/* 80589A88  41 82 00 40 */	beq lbl_80589AC8
/* 80589A8C  48 00 00 58 */	b lbl_80589AE4
lbl_80589A90:
/* 80589A90  A8 83 09 9E */	lha r4, 0x99e(r3)
/* 80589A94  38 04 00 50 */	addi r0, r4, 0x50
/* 80589A98  B0 03 09 A2 */	sth r0, 0x9a2(r3)
/* 80589A9C  A8 83 09 A0 */	lha r4, 0x9a0(r3)
/* 80589AA0  38 04 00 A0 */	addi r0, r4, 0xa0
/* 80589AA4  B0 03 09 A4 */	sth r0, 0x9a4(r3)
/* 80589AA8  4E 80 00 20 */	blr 
lbl_80589AAC:
/* 80589AAC  A8 83 09 9E */	lha r4, 0x99e(r3)
/* 80589AB0  38 04 00 C8 */	addi r0, r4, 0xc8
/* 80589AB4  B0 03 09 A2 */	sth r0, 0x9a2(r3)
/* 80589AB8  A8 83 09 A0 */	lha r4, 0x9a0(r3)
/* 80589ABC  38 04 00 28 */	addi r0, r4, 0x28
/* 80589AC0  B0 03 09 A4 */	sth r0, 0x9a4(r3)
/* 80589AC4  4E 80 00 20 */	blr 
lbl_80589AC8:
/* 80589AC8  A8 83 09 9E */	lha r4, 0x99e(r3)
/* 80589ACC  38 04 FF D8 */	addi r0, r4, -40
/* 80589AD0  B0 03 09 A2 */	sth r0, 0x9a2(r3)
/* 80589AD4  A8 83 09 A0 */	lha r4, 0x9a0(r3)
/* 80589AD8  38 04 00 A0 */	addi r0, r4, 0xa0
/* 80589ADC  B0 03 09 A4 */	sth r0, 0x9a4(r3)
/* 80589AE0  4E 80 00 20 */	blr 
lbl_80589AE4:
/* 80589AE4  A8 83 09 9E */	lha r4, 0x99e(r3)
/* 80589AE8  38 04 FF 60 */	addi r0, r4, -160
/* 80589AEC  B0 03 09 A2 */	sth r0, 0x9a2(r3)
/* 80589AF0  A8 83 09 A0 */	lha r4, 0x9a0(r3)
/* 80589AF4  38 04 00 28 */	addi r0, r4, 0x28
/* 80589AF8  B0 03 09 A4 */	sth r0, 0x9a4(r3)
/* 80589AFC  4E 80 00 20 */	blr 
