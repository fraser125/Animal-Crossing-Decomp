lbl_80474C50:
/* 80474C50  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80474C54  7C 08 02 A6 */	mflr r0
/* 80474C58  90 01 00 14 */	stw r0, 0x14(r1)
/* 80474C5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80474C60  7C 7F 1B 78 */	mr r31, r3
/* 80474C64  4B F4 AA 45 */	bl func_803BF6A8
/* 80474C68  4B F4 C0 95 */	bl mMsg_Check_MainDisappear
/* 80474C6C  2C 03 00 00 */	cmpwi r3, 0
/* 80474C70  41 82 00 0C */	beq lbl_80474C7C
/* 80474C74  38 00 00 11 */	li r0, 0x11
/* 80474C78  B0 1F 03 EE */	sth r0, 0x3ee(r31)
lbl_80474C7C:
/* 80474C7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80474C80  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80474C84  7C 08 03 A6 */	mtlr r0
/* 80474C88  38 21 00 10 */	addi r1, r1, 0x10
/* 80474C8C  4E 80 00 20 */	blr 
