lbl_80589D20:
/* 80589D20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80589D24  7C 08 02 A6 */	mflr r0
/* 80589D28  38 A0 00 00 */	li r5, 0
/* 80589D2C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80589D30  38 00 00 FE */	li r0, 0xfe
/* 80589D34  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80589D38  7C 7F 1B 78 */	mr r31, r3
/* 80589D3C  98 03 00 D6 */	stb r0, 0xd6(r3)
/* 80589D40  38 00 00 00 */	li r0, 0
/* 80589D44  98 03 08 31 */	stb r0, 0x831(r3)
/* 80589D48  48 00 01 91 */	bl aTMN0_setup_think_proc
/* 80589D4C  38 60 00 00 */	li r3, 0
/* 80589D50  38 00 00 17 */	li r0, 0x17
/* 80589D54  90 7F 07 D8 */	stw r3, 0x7d8(r31)
/* 80589D58  90 1F 08 40 */	stw r0, 0x840(r31)
/* 80589D5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80589D60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80589D64  7C 08 03 A6 */	mtlr r0
/* 80589D68  38 21 00 10 */	addi r1, r1, 0x10
/* 80589D6C  4E 80 00 20 */	blr 
