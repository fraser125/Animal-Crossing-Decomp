lbl_805714D8:
/* 805714D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805714DC  7C 08 02 A6 */	mflr r0
/* 805714E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805714E4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805714E8  93 C1 00 08 */	stw r30, 8(r1)
/* 805714EC  7C 7E 1B 78 */	mr r30, r3
/* 805714F0  4B E7 26 79 */	bl mQst_GetFirstJobData
/* 805714F4  7C 7F 1B 78 */	mr r31, r3
/* 805714F8  4B FF FF 21 */	bl aNRG2_cloth_check
/* 805714FC  2C 03 00 01 */	cmpwi r3, 1
/* 80571500  40 82 00 1C */	bne lbl_8057151C
/* 80571504  88 1F 00 48 */	lbz r0, 0x48(r31)
/* 80571508  38 60 00 01 */	li r3, 1
/* 8057150C  50 60 07 FE */	rlwimi r0, r3, 0, 0x1f, 0x1f
/* 80571510  38 80 00 03 */	li r4, 3
/* 80571514  98 1F 00 48 */	stb r0, 0x48(r31)
/* 80571518  48 00 00 1C */	b lbl_80571534
lbl_8057151C:
/* 8057151C  4B FF FF 61 */	bl aNRG2_check_upstair
/* 80571520  2C 03 00 01 */	cmpwi r3, 1
/* 80571524  40 82 00 0C */	bne lbl_80571530
/* 80571528  38 80 00 04 */	li r4, 4
/* 8057152C  48 00 00 08 */	b lbl_80571534
lbl_80571530:
/* 80571530  80 9E 09 A4 */	lwz r4, 0x9a4(r30)
lbl_80571534:
/* 80571534  3C 60 80 6C */	lis r3, dt_tbl_847@ha /* 0x806BF134@ha */
/* 80571538  54 84 18 38 */	slwi r4, r4, 3
/* 8057153C  38 03 F1 34 */	addi r0, r3, dt_tbl_847@l /* 0x806BF134@l */
/* 80571540  7F E3 FB 78 */	mr r3, r31
/* 80571544  7F E0 22 14 */	add r31, r0, r4
/* 80571548  4B E7 27 8D */	bl mQst_CheckFirstJobFin
/* 8057154C  2C 03 00 00 */	cmpwi r3, 0
/* 80571550  40 82 00 08 */	bne lbl_80571558
/* 80571554  4B FF EE 21 */	bl aNRG2_set_str_proc
lbl_80571558:
/* 80571558  80 7F 00 00 */	lwz r3, 0(r31)
/* 8057155C  4B E2 6F B9 */	bl mDemo_Set_msg_num
/* 80571560  38 60 00 01 */	li r3, 1
/* 80571564  4B E2 72 E5 */	bl mDemo_Set_talk_turn
/* 80571568  80 1F 00 04 */	lwz r0, 4(r31)
/* 8057156C  90 1E 09 AC */	stw r0, 0x9ac(r30)
/* 80571570  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80571574  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80571578  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057157C  7C 08 03 A6 */	mtlr r0
/* 80571580  38 21 00 10 */	addi r1, r1, 0x10
/* 80571584  4E 80 00 20 */	blr 
