lbl_805E24A8:
/* 805E24A8  2C 05 00 04 */	cmpwi r5, 4
/* 805E24AC  40 80 00 4C */	bge lbl_805E24F8
/* 805E24B0  2C 05 00 01 */	cmpwi r5, 1
/* 805E24B4  40 80 00 08 */	bge lbl_805E24BC
/* 805E24B8  48 00 00 40 */	b lbl_805E24F8
lbl_805E24BC:
/* 805E24BC  81 03 00 00 */	lwz r8, 0(r3)
/* 805E24C0  3C A0 E7 00 */	lis r5, 0xe700
/* 805E24C4  38 80 00 00 */	li r4, 0
/* 805E24C8  3C 60 CE 00 */	lis r3, 0xce00
/* 805E24CC  80 E8 02 D0 */	lwz r7, 0x2d0(r8)
/* 805E24D0  38 00 00 90 */	li r0, 0x90
/* 805E24D4  38 C7 00 08 */	addi r6, r7, 8
/* 805E24D8  90 C8 02 D0 */	stw r6, 0x2d0(r8)
/* 805E24DC  90 A7 00 00 */	stw r5, 0(r7)
/* 805E24E0  90 87 00 04 */	stw r4, 4(r7)
/* 805E24E4  80 A8 02 D0 */	lwz r5, 0x2d0(r8)
/* 805E24E8  38 85 00 08 */	addi r4, r5, 8
/* 805E24EC  90 88 02 D0 */	stw r4, 0x2d0(r8)
/* 805E24F0  90 65 00 00 */	stw r3, 0(r5)
/* 805E24F4  90 05 00 04 */	stw r0, 4(r5)
lbl_805E24F8:
/* 805E24F8  38 60 00 01 */	li r3, 1
/* 805E24FC  4E 80 00 20 */	blr 
