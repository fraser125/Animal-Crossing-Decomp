lbl_80429C20:
/* 80429C20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80429C24  7C 08 02 A6 */	mflr r0
/* 80429C28  38 80 00 04 */	li r4, 4
/* 80429C2C  38 A0 00 02 */	li r5, 2
/* 80429C30  90 01 00 14 */	stw r0, 0x14(r1)
/* 80429C34  38 C0 00 03 */	li r6, 3
/* 80429C38  38 E0 00 00 */	li r7, 0
/* 80429C3C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80429C40  7C 7F 1B 78 */	mr r31, r3
/* 80429C44  A9 03 09 9E */	lha r8, 0x99e(r3)
/* 80429C48  A9 23 09 A0 */	lha r9, 0x9a0(r3)
/* 80429C4C  4B FF F8 4D */	bl func_80429498
/* 80429C50  38 60 00 14 */	li r3, 0x14
/* 80429C54  38 00 00 FE */	li r0, 0xfe
/* 80429C58  B0 7F 09 9C */	sth r3, 0x99c(r31)
/* 80429C5C  98 1F 00 D6 */	stb r0, 0xd6(r31)
/* 80429C60  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80429C64  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80429C68  7C 08 03 A6 */	mtlr r0
/* 80429C6C  38 21 00 10 */	addi r1, r1, 0x10
/* 80429C70  4E 80 00 20 */	blr 
