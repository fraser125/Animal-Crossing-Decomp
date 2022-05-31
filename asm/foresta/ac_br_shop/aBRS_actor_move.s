lbl_805A8EE4:
/* 805A8EE4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805A8EE8  7C 08 02 A6 */	mflr r0
/* 805A8EEC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A8EF0  39 61 00 40 */	addi r11, r1, 0x40
/* 805A8EF4  4B AF 1F E1 */	bl func_8009AED4
/* 805A8EF8  7C 9E 23 78 */	mr r30, r4
/* 805A8EFC  7C 7F 1B 78 */	mr r31, r3
/* 805A8F00  7F C3 F3 78 */	mr r3, r30
/* 805A8F04  4B E3 07 3D */	bl get_player_actor_withoutCheck
/* 805A8F08  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 805A8F0C  7C 7D 1B 78 */	mr r29, r3
/* 805A8F10  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805A8F14  38 61 00 14 */	addi r3, r1, 0x14
/* 805A8F18  38 81 00 10 */	addi r4, r1, 0x10
/* 805A8F1C  90 A1 00 24 */	stw r5, 0x24(r1)
/* 805A8F20  38 A1 00 24 */	addi r5, r1, 0x24
/* 805A8F24  90 01 00 28 */	stw r0, 0x28(r1)
/* 805A8F28  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A8F2C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 805A8F30  4B DF C8 31 */	bl mFI_Wpos2BlockNum
/* 805A8F34  80 DD 00 28 */	lwz r6, 0x28(r29)
/* 805A8F38  38 61 00 0C */	addi r3, r1, 0xc
/* 805A8F3C  80 1D 00 2C */	lwz r0, 0x2c(r29)
/* 805A8F40  38 81 00 08 */	addi r4, r1, 8
/* 805A8F44  38 A1 00 18 */	addi r5, r1, 0x18
/* 805A8F48  90 C1 00 18 */	stw r6, 0x18(r1)
/* 805A8F4C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805A8F50  80 1D 00 30 */	lwz r0, 0x30(r29)
/* 805A8F54  90 01 00 20 */	stw r0, 0x20(r1)
/* 805A8F58  4B DF C8 09 */	bl mFI_Wpos2BlockNum
/* 805A8F5C  7F A4 EB 78 */	mr r4, r29
/* 805A8F60  38 60 00 01 */	li r3, 1
/* 805A8F64  4B DF 13 01 */	bl mDemo_Check
/* 805A8F68  2C 03 00 00 */	cmpwi r3, 0
/* 805A8F6C  40 82 00 58 */	bne lbl_805A8FC4
/* 805A8F70  7F A4 EB 78 */	mr r4, r29
/* 805A8F74  38 60 00 05 */	li r3, 5
/* 805A8F78  4B DF 12 ED */	bl mDemo_Check
/* 805A8F7C  2C 03 00 00 */	cmpwi r3, 0
/* 805A8F80  40 82 00 44 */	bne lbl_805A8FC4
/* 805A8F84  7F A4 EB 78 */	mr r4, r29
/* 805A8F88  38 60 00 10 */	li r3, 0x10
/* 805A8F8C  4B DF 12 D9 */	bl mDemo_Check
/* 805A8F90  2C 03 00 00 */	cmpwi r3, 0
/* 805A8F94  40 82 00 30 */	bne lbl_805A8FC4
/* 805A8F98  80 61 00 14 */	lwz r3, 0x14(r1)
/* 805A8F9C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 805A8FA0  7C 03 00 00 */	cmpw r3, r0
/* 805A8FA4  40 82 00 14 */	bne lbl_805A8FB8
/* 805A8FA8  80 61 00 10 */	lwz r3, 0x10(r1)
/* 805A8FAC  80 01 00 08 */	lwz r0, 8(r1)
/* 805A8FB0  7C 03 00 00 */	cmpw r3, r0
/* 805A8FB4  41 82 00 10 */	beq lbl_805A8FC4
lbl_805A8FB8:
/* 805A8FB8  7F E3 FB 78 */	mr r3, r31
/* 805A8FBC  4B DC B4 85 */	bl Actor_delete
/* 805A8FC0  48 00 00 88 */	b lbl_805A9048
lbl_805A8FC4:
/* 805A8FC4  38 7F 01 78 */	addi r3, r31, 0x178
/* 805A8FC8  4B DC 80 4D */	bl cKF_SkeletonInfo_R_play
/* 805A8FCC  90 7F 01 74 */	stw r3, 0x174(r31)
/* 805A8FD0  80 1F 02 B8 */	lwz r0, 0x2b8(r31)
/* 805A8FD4  2C 00 00 00 */	cmpwi r0, 0
/* 805A8FD8  40 82 00 24 */	bne lbl_805A8FFC
/* 805A8FDC  38 7E 1D A8 */	addi r3, r30, 0x1da8
/* 805A8FE0  38 80 00 2D */	li r4, 0x2d
/* 805A8FE4  38 A0 00 04 */	li r5, 4
/* 805A8FE8  4B DC CD 59 */	bl Actor_info_fgName_search
/* 805A8FEC  28 03 00 00 */	cmplwi r3, 0
/* 805A8FF0  41 82 00 0C */	beq lbl_805A8FFC
/* 805A8FF4  38 00 00 01 */	li r0, 1
/* 805A8FF8  90 1F 02 B8 */	stw r0, 0x2b8(r31)
lbl_805A8FFC:
/* 805A8FFC  81 9F 02 A0 */	lwz r12, 0x2a0(r31)
/* 805A9000  7F E3 FB 78 */	mr r3, r31
/* 805A9004  7F C4 F3 78 */	mr r4, r30
/* 805A9008  7D 89 03 A6 */	mtctr r12
/* 805A900C  4E 80 04 21 */	bctrl 
/* 805A9010  7F E3 FB 78 */	mr r3, r31
/* 805A9014  4B FF FE 8D */	bl aBRS_ctrl_light
/* 805A9018  2C 03 00 00 */	cmpwi r3, 0
/* 805A901C  41 82 00 10 */	beq lbl_805A902C
/* 805A9020  3C 60 80 65 */	lis r3, lit_471@ha /* 0x8064A54C@ha */
/* 805A9024  C0 23 A5 4C */	lfs f1, lit_471@l(r3)  /* 0x8064A54C@l */
/* 805A9028  48 00 00 0C */	b lbl_805A9034
lbl_805A902C:
/* 805A902C  3C 60 80 65 */	lis r3, lit_472@ha /* 0x8064A550@ha */
/* 805A9030  C0 23 A5 50 */	lfs f1, lit_472@l(r3)  /* 0x8064A550@l */
lbl_805A9034:
/* 805A9034  3C 60 80 65 */	lis r3, lit_682@ha /* 0x8064A560@ha */
/* 805A9038  38 83 A5 60 */	addi r4, r3, lit_682@l /* 0x8064A560@l */
/* 805A903C  C0 44 00 00 */	lfs f2, 0(r4)
/* 805A9040  38 7F 02 C8 */	addi r3, r31, 0x2c8
/* 805A9044  4B E1 1C 25 */	bl chase_f
lbl_805A9048:
/* 805A9048  39 61 00 40 */	addi r11, r1, 0x40
/* 805A904C  4B AF 1E D5 */	bl func_8009AF20
/* 805A9050  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805A9054  7C 08 03 A6 */	mtlr r0
/* 805A9058  38 21 00 40 */	addi r1, r1, 0x40
/* 805A905C  4E 80 00 20 */	blr 
