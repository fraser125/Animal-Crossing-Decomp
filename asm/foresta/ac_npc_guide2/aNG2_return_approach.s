lbl_80555FDC:
/* 80555FDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80555FE0  7C 08 02 A6 */	mflr r0
/* 80555FE4  3C C0 80 65 */	lis r6, lit_786@ha /* 0x80649624@ha */
/* 80555FE8  3C A0 80 65 */	lis r5, lit_666@ha /* 0x8064961C@ha */
/* 80555FEC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80555FF0  38 00 00 00 */	li r0, 0
/* 80555FF4  C0 26 96 24 */	lfs f1, lit_786@l(r6)  /* 0x80649624@l */
/* 80555FF8  C0 05 96 1C */	lfs f0, lit_666@l(r5)  /* 0x8064961C@l */
/* 80555FFC  D0 23 00 28 */	stfs f1, 0x28(r3)
/* 80556000  B0 03 00 36 */	sth r0, 0x36(r3)
/* 80556004  B0 03 00 DE */	sth r0, 0xde(r3)
/* 80556008  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8055600C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80556010  40 81 00 0C */	ble lbl_8055601C
/* 80556014  38 A0 00 18 */	li r5, 0x18
/* 80556018  48 00 05 05 */	bl aNG2_setupAction
lbl_8055601C:
/* 8055601C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80556020  7C 08 03 A6 */	mtlr r0
/* 80556024  38 21 00 10 */	addi r1, r1, 0x10
/* 80556028  4E 80 00 20 */	blr 
