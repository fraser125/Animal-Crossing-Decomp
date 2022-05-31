lbl_805B41A4:
/* 805B41A4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805B41A8  7C 08 02 A6 */	mflr r0
/* 805B41AC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805B41B0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805B41B4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805B41B8  7C 7E 1B 78 */	mr r30, r3
/* 805B41BC  7C 83 23 78 */	mr r3, r4
/* 805B41C0  4B E2 54 81 */	bl get_player_actor_withoutCheck
/* 805B41C4  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 805B41C8  7C 7F 1B 78 */	mr r31, r3
/* 805B41CC  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805B41D0  38 61 00 14 */	addi r3, r1, 0x14
/* 805B41D4  38 81 00 10 */	addi r4, r1, 0x10
/* 805B41D8  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805B41DC  38 A1 00 24 */	addi r5, r1, 0x24
/* 805B41E0  90 01 00 28 */	stw r0, 0x28(r1)
/* 805B41E4  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805B41E8  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805B41EC  4B DF 15 75 */	bl mFI_Wpos2BlockNum
/* 805B41F0  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 805B41F4  38 61 00 0C */	addi r3, r1, 0xc
/* 805B41F8  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805B41FC  38 81 00 08 */	addi r4, r1, 8
/* 805B4200  38 A1 00 18 */	addi r5, r1, 0x18
/* 805B4204  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805B4208  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805B420C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805B4210  90 01 00 20 */	stw r0, 0x20(r1)
/* 805B4214  4B DF 15 4D */	bl mFI_Wpos2BlockNum
/* 805B4218  7F E4 FB 78 */	mr r4, r31
/* 805B421C  38 60 00 01 */	li r3, 1
/* 805B4220  4B DE 60 45 */	bl mDemo_Check
/* 805B4224  2C 03 00 00 */	cmpwi r3, 0
/* 805B4228  40 82 00 54 */	bne lbl_805B427C
/* 805B422C  7F E4 FB 78 */	mr r4, r31
/* 805B4230  38 60 00 05 */	li r3, 5
/* 805B4234  4B DE 60 31 */	bl mDemo_Check
/* 805B4238  2C 03 00 00 */	cmpwi r3, 0
/* 805B423C  40 82 00 40 */	bne lbl_805B427C
/* 805B4240  7F E4 FB 78 */	mr r4, r31
/* 805B4244  38 60 00 10 */	li r3, 0x10
/* 805B4248  4B DE 60 1D */	bl mDemo_Check
/* 805B424C  2C 03 00 00 */	cmpwi r3, 0
/* 805B4250  40 82 00 2C */	bne lbl_805B427C
/* 805B4254  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805B4258  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805B425C  7C 03 00 00 */	cmpw r3, r0
/* 805B4260  40 82 00 14 */	bne lbl_805B4274
/* 805B4264  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805B4268  80 01 00 08 */	lwz r0, 8(r1)
/* 805B426C  7C 03 00 00 */	cmpw r3, r0
/* 805B4270  41 82 00 0C */	beq lbl_805B427C
lbl_805B4274:
/* 805B4274  7F C3 F3 78 */	mr r3, r30
/* 805B4278  4B DC 01 C9 */	bl Actor_delete
lbl_805B427C:
/* 805B427C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805B4280  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805B4284  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805B4288  7C 08 03 A6 */	mtlr r0
/* 805B428C  38 21 00 40 */	addi r1, r1, 0x40
/* 805B4290  4E 80 00 20 */	blr 
