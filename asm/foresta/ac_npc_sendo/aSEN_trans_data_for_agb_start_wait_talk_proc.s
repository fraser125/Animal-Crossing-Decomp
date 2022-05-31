lbl_805751CC:
/* 805751CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805751D0  7C 08 02 A6 */	mflr r0
/* 805751D4  38 80 00 09 */	li r4, 9
/* 805751D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805751DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805751E0  93 C1 00 08 */	stw r30, 8(r1)
/* 805751E4  7C 7E 1B 78 */	mr r30, r3
/* 805751E8  38 60 00 04 */	li r3, 4
/* 805751EC  4B E2 32 91 */	bl mDemo_Get_OrderValue
/* 805751F0  54 60 04 3F */	clrlwi. r0, r3, 0x10
/* 805751F4  41 82 00 60 */	beq lbl_80575254
/* 805751F8  38 60 00 04 */	li r3, 4
/* 805751FC  38 80 00 09 */	li r4, 9
/* 80575200  38 A0 00 00 */	li r5, 0
/* 80575204  4B E2 32 35 */	bl mDemo_Set_OrderValue
/* 80575208  4B E4 A4 A1 */	bl func_803BF6A8
/* 8057520C  4B E4 BB 35 */	bl mMsg_Set_LockContinue
/* 80575210  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80575214  2C 00 00 0B */	cmpwi r0, 0xb
/* 80575218  40 82 00 28 */	bne lbl_80575240
/* 8057521C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80575220  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 80575224  3C 64 00 03 */	addis r3, r4, 3
/* 80575228  3C 84 00 02 */	addis r4, r4, 2
/* 8057522C  38 84 25 40 */	addi r4, r4, 0x2540
/* 80575230  38 63 88 C0 */	addi r3, r3, -30528
/* 80575234  4B FF F8 85 */	bl aSEN_set_island_info_for_agb
/* 80575238  3B E0 00 0C */	li r31, 0xc
/* 8057523C  48 00 00 08 */	b lbl_80575244
lbl_80575240:
/* 80575240  3B E0 00 0E */	li r31, 0xe
lbl_80575244:
/* 80575244  4B AD 45 79 */	bl mGcgba_InitVar
/* 80575248  7F C3 F3 78 */	mr r3, r30
/* 8057524C  7F E4 FB 78 */	mr r4, r31
/* 80575250  48 00 0D 1D */	bl aSEN_change_talk_proc
lbl_80575254:
/* 80575254  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80575258  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057525C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80575260  7C 08 03 A6 */	mtlr r0
/* 80575264  38 21 00 10 */	addi r1, r1, 0x10
/* 80575268  4E 80 00 20 */	blr 
