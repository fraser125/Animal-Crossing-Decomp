lbl_8039AF4C:
/* 8039AF4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039AF50  7C 08 02 A6 */	mflr r0
/* 8039AF54  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039AF58  38 00 00 03 */	li r0, 3
/* 8039AF5C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039AF60  7C 7F 1B 78 */	mr r31, r3
/* 8039AF64  38 60 00 6D */	li r3, 0x6d
/* 8039AF68  B0 04 00 00 */	sth r0, 0(r4)
/* 8039AF6C  48 00 29 99 */	bl mEv_check_schedule
/* 8039AF70  2C 03 00 00 */	cmpwi r3, 0
/* 8039AF74  41 82 00 10 */	beq lbl_8039AF84
/* 8039AF78  38 00 00 00 */	li r0, 0
/* 8039AF7C  B0 1F 00 00 */	sth r0, 0(r31)
/* 8039AF80  48 00 00 44 */	b lbl_8039AFC4
lbl_8039AF84:
/* 8039AF84  38 60 00 6E */	li r3, 0x6e
/* 8039AF88  48 00 29 7D */	bl mEv_check_schedule
/* 8039AF8C  2C 03 00 00 */	cmpwi r3, 0
/* 8039AF90  41 82 00 10 */	beq lbl_8039AFA0
/* 8039AF94  38 00 00 02 */	li r0, 2
/* 8039AF98  B0 1F 00 00 */	sth r0, 0(r31)
/* 8039AF9C  48 00 00 28 */	b lbl_8039AFC4
lbl_8039AFA0:
/* 8039AFA0  38 60 00 6F */	li r3, 0x6f
/* 8039AFA4  48 00 29 61 */	bl mEv_check_schedule
/* 8039AFA8  2C 03 00 00 */	cmpwi r3, 0
/* 8039AFAC  41 82 00 10 */	beq lbl_8039AFBC
/* 8039AFB0  38 00 00 00 */	li r0, 0
/* 8039AFB4  B0 1F 00 00 */	sth r0, 0(r31)
/* 8039AFB8  48 00 00 0C */	b lbl_8039AFC4
lbl_8039AFBC:
/* 8039AFBC  38 00 FF FF */	li r0, -1
/* 8039AFC0  B0 1F 00 00 */	sth r0, 0(r31)
lbl_8039AFC4:
/* 8039AFC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039AFC8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039AFCC  7C 08 03 A6 */	mtlr r0
/* 8039AFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8039AFD4  4E 80 00 20 */	blr 
