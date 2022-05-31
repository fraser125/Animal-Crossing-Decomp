lbl_80560C14:
/* 80560C14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560C18  7C 08 02 A6 */	mflr r0
/* 80560C1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560C20  38 00 00 00 */	li r0, 0
/* 80560C24  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80560C28  7C 7F 1B 78 */	mr r31, r3
/* 80560C2C  B0 03 08 B4 */	sth r0, 0x8b4(r3)
/* 80560C30  B0 03 08 B8 */	sth r0, 0x8b8(r3)
/* 80560C34  4B E5 EA 75 */	bl func_803BF6A8
/* 80560C38  4B E6 01 09 */	bl mMsg_Set_LockContinue
/* 80560C3C  38 00 0E 10 */	li r0, 0xe10
/* 80560C40  90 1F 09 C4 */	stw r0, 0x9c4(r31)
/* 80560C44  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560C48  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80560C4C  7C 08 03 A6 */	mtlr r0
/* 80560C50  38 21 00 10 */	addi r1, r1, 0x10
/* 80560C54  4E 80 00 20 */	blr 
