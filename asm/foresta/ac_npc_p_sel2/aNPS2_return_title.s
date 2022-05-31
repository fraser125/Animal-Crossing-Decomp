lbl_80569A14:
/* 80569A14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80569A18  7C 08 02 A6 */	mflr r0
/* 80569A1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80569A20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80569A24  7C 9F 23 78 */	mr r31, r4
/* 80569A28  93 C1 00 08 */	stw r30, 8(r1)
/* 80569A2C  7C 7E 1B 78 */	mr r30, r3
/* 80569A30  7F C4 F3 78 */	mr r4, r30
/* 80569A34  38 60 00 08 */	li r3, 8
/* 80569A38  4B E3 08 2D */	bl mDemo_Check
/* 80569A3C  2C 03 00 00 */	cmpwi r3, 0
/* 80569A40  40 82 00 2C */	bne lbl_80569A6C
/* 80569A44  38 00 00 04 */	li r0, 4
/* 80569A48  7F E3 FB 78 */	mr r3, r31
/* 80569A4C  98 1F 20 D0 */	stb r0, 0x20d0(r31)
/* 80569A50  4B E7 07 01 */	bl mPlib_request_main_invade_type1
/* 80569A54  7F E3 FB 78 */	mr r3, r31
/* 80569A58  4B E0 C0 C5 */	bl Actor_info_save_actor
/* 80569A5C  7F C3 F3 78 */	mr r3, r30
/* 80569A60  7F E4 FB 78 */	mr r4, r31
/* 80569A64  38 A0 00 1C */	li r5, 0x1c
/* 80569A68  48 00 03 61 */	bl aNPS2_change_talk_proc
lbl_80569A6C:
/* 80569A6C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80569A70  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80569A74  83 C1 00 08 */	lwz r30, 8(r1)
/* 80569A78  7C 08 03 A6 */	mtlr r0
/* 80569A7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80569A80  4E 80 00 20 */	blr 
