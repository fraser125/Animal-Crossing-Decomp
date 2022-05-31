lbl_805C0D58:
/* 805C0D58  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805C0D5C  7C 08 02 A6 */	mflr r0
/* 805C0D60  90 01 00 44 */	stw r0, 0x44(r1)
/* 805C0D64  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805C0D68  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805C0D6C  7C 7E 1B 78 */	mr r30, r3
/* 805C0D70  7C 83 23 78 */	mr r3, r4
/* 805C0D74  4B E1 88 CD */	bl get_player_actor_withoutCheck
/* 805C0D78  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 805C0D7C  7C 7F 1B 78 */	mr r31, r3
/* 805C0D80  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805C0D84  38 61 00 14 */	addi r3, r1, 0x14
/* 805C0D88  38 81 00 10 */	addi r4, r1, 0x10
/* 805C0D8C  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805C0D90  38 A1 00 24 */	addi r5, r1, 0x24
/* 805C0D94  90 01 00 28 */	stw r0, 0x28(r1)
/* 805C0D98  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805C0D9C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805C0DA0  4B DE 49 C1 */	bl mFI_Wpos2BlockNum
/* 805C0DA4  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 805C0DA8  38 61 00 0C */	addi r3, r1, 0xc
/* 805C0DAC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805C0DB0  38 81 00 08 */	addi r4, r1, 8
/* 805C0DB4  38 A1 00 18 */	addi r5, r1, 0x18
/* 805C0DB8  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805C0DBC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805C0DC0  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805C0DC4  90 01 00 20 */	stw r0, 0x20(r1)
/* 805C0DC8  4B DE 49 99 */	bl mFI_Wpos2BlockNum
/* 805C0DCC  7F E4 FB 78 */	mr r4, r31
/* 805C0DD0  38 60 00 01 */	li r3, 1
/* 805C0DD4  4B DD 94 91 */	bl mDemo_Check
/* 805C0DD8  2C 03 00 00 */	cmpwi r3, 0
/* 805C0DDC  40 82 00 58 */	bne lbl_805C0E34
/* 805C0DE0  7F E4 FB 78 */	mr r4, r31
/* 805C0DE4  38 60 00 05 */	li r3, 5
/* 805C0DE8  4B DD 94 7D */	bl mDemo_Check
/* 805C0DEC  2C 03 00 00 */	cmpwi r3, 0
/* 805C0DF0  40 82 00 44 */	bne lbl_805C0E34
/* 805C0DF4  7F E4 FB 78 */	mr r4, r31
/* 805C0DF8  38 60 00 10 */	li r3, 0x10
/* 805C0DFC  4B DD 94 69 */	bl mDemo_Check
/* 805C0E00  2C 03 00 00 */	cmpwi r3, 0
/* 805C0E04  40 82 00 30 */	bne lbl_805C0E34
/* 805C0E08  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805C0E0C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805C0E10  7C 03 00 00 */	cmpw r3, r0
/* 805C0E14  40 82 00 14 */	bne lbl_805C0E28
/* 805C0E18  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805C0E1C  80 01 00 08 */	lwz r0, 8(r1)
/* 805C0E20  7C 03 00 00 */	cmpw r3, r0
/* 805C0E24  41 82 00 10 */	beq lbl_805C0E34
lbl_805C0E28:
/* 805C0E28  7F C3 F3 78 */	mr r3, r30
/* 805C0E2C  4B DB 36 15 */	bl Actor_delete
/* 805C0E30  48 00 00 0C */	b lbl_805C0E3C
lbl_805C0E34:
/* 805C0E34  38 7E 01 78 */	addi r3, r30, 0x178
/* 805C0E38  4B DB 01 DD */	bl cKF_SkeletonInfo_R_play
lbl_805C0E3C:
/* 805C0E3C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805C0E40  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805C0E44  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805C0E48  7C 08 03 A6 */	mtlr r0
/* 805C0E4C  38 21 00 40 */	addi r1, r1, 0x40
/* 805C0E50  4E 80 00 20 */	blr 
