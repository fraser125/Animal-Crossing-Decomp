lbl_805C1E14:
/* 805C1E14  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805C1E18  7C 08 02 A6 */	mflr r0
/* 805C1E1C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805C1E20  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805C1E24  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805C1E28  7C 7E 1B 78 */	mr r30, r3
/* 805C1E2C  7C 83 23 78 */	mr r3, r4
/* 805C1E30  4B E1 78 11 */	bl get_player_actor_withoutCheck
/* 805C1E34  80 BE 00 28 */	lwz r5, 0x28(r30)
/* 805C1E38  7C 7F 1B 78 */	mr r31, r3
/* 805C1E3C  80 1E 00 2C */	lwz r0, 0x2c(r30)
/* 805C1E40  38 61 00 14 */	addi r3, r1, 0x14
/* 805C1E44  38 81 00 10 */	addi r4, r1, 0x10
/* 805C1E48  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805C1E4C  38 A1 00 24 */	addi r5, r1, 0x24
/* 805C1E50  90 01 00 28 */	stw r0, 0x28(r1)
/* 805C1E54  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 805C1E58  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805C1E5C  4B DE 39 05 */	bl mFI_Wpos2BlockNum
/* 805C1E60  80 DF 00 28 */	lwz r6, 0x28(r31)
/* 805C1E64  38 61 00 0C */	addi r3, r1, 0xc
/* 805C1E68  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805C1E6C  38 81 00 08 */	addi r4, r1, 8
/* 805C1E70  38 A1 00 18 */	addi r5, r1, 0x18
/* 805C1E74  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805C1E78  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805C1E7C  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805C1E80  90 01 00 20 */	stw r0, 0x20(r1)
/* 805C1E84  4B DE 38 DD */	bl mFI_Wpos2BlockNum
/* 805C1E88  7F E4 FB 78 */	mr r4, r31
/* 805C1E8C  38 60 00 01 */	li r3, 1
/* 805C1E90  4B DD 83 D5 */	bl mDemo_Check
/* 805C1E94  2C 03 00 00 */	cmpwi r3, 0
/* 805C1E98  40 82 00 54 */	bne lbl_805C1EEC
/* 805C1E9C  7F E4 FB 78 */	mr r4, r31
/* 805C1EA0  38 60 00 05 */	li r3, 5
/* 805C1EA4  4B DD 83 C1 */	bl mDemo_Check
/* 805C1EA8  2C 03 00 00 */	cmpwi r3, 0
/* 805C1EAC  40 82 00 40 */	bne lbl_805C1EEC
/* 805C1EB0  7F E4 FB 78 */	mr r4, r31
/* 805C1EB4  38 60 00 10 */	li r3, 0x10
/* 805C1EB8  4B DD 83 AD */	bl mDemo_Check
/* 805C1EBC  2C 03 00 00 */	cmpwi r3, 0
/* 805C1EC0  40 82 00 2C */	bne lbl_805C1EEC
/* 805C1EC4  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805C1EC8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805C1ECC  7C 03 00 00 */	cmpw r3, r0
/* 805C1ED0  40 82 00 14 */	bne lbl_805C1EE4
/* 805C1ED4  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805C1ED8  80 01 00 08 */	lwz r0, 8(r1)
/* 805C1EDC  7C 03 00 00 */	cmpw r3, r0
/* 805C1EE0  41 82 00 0C */	beq lbl_805C1EEC
lbl_805C1EE4:
/* 805C1EE4  7F C3 F3 78 */	mr r3, r30
/* 805C1EE8  4B DB 25 59 */	bl Actor_delete
lbl_805C1EEC:
/* 805C1EEC  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805C1EF0  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805C1EF4  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805C1EF8  7C 08 03 A6 */	mtlr r0
/* 805C1EFC  38 21 00 40 */	addi r1, r1, 0x40
/* 805C1F00  4E 80 00 20 */	blr 
