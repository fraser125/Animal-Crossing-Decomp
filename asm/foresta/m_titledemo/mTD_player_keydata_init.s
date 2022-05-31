lbl_803F1F10:
/* 803F1F10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F1F14  7C 08 02 A6 */	mflr r0
/* 803F1F18  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F1F1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803F1F20  4B FE 77 21 */	bl get_player_actor_withoutCheck
/* 803F1F24  7C 7F 1B 78 */	mr r31, r3
/* 803F1F28  4B FA 8F 91 */	bl mEv_CheckTitleDemo
/* 803F1F2C  2C 03 00 00 */	cmpwi r3, 0
/* 803F1F30  40 81 00 60 */	ble lbl_803F1F90
/* 803F1F34  4B FA 8F 85 */	bl mEv_CheckTitleDemo
/* 803F1F38  38 80 00 04 */	li r4, 4
/* 803F1F3C  38 63 FF FF */	addi r3, r3, -1
/* 803F1F40  4B FF FF 6D */	bl func_803F1EAC
/* 803F1F44  54 60 04 3E */	clrlwi r0, r3, 0x10
/* 803F1F48  28 00 22 01 */	cmplwi r0, 0x2201
/* 803F1F4C  40 82 00 0C */	bne lbl_803F1F58
/* 803F1F50  38 60 22 01 */	li r3, 0x2201
/* 803F1F54  48 00 00 20 */	b lbl_803F1F74
lbl_803F1F58:
/* 803F1F58  28 00 22 03 */	cmplwi r0, 0x2203
/* 803F1F5C  40 82 00 0C */	bne lbl_803F1F68
/* 803F1F60  38 60 22 03 */	li r3, 0x2203
/* 803F1F64  48 00 00 10 */	b lbl_803F1F74
lbl_803F1F68:
/* 803F1F68  28 00 22 04 */	cmplwi r0, 0x2204
/* 803F1F6C  40 82 00 08 */	bne lbl_803F1F74
/* 803F1F70  38 60 22 04 */	li r3, 0x2204
lbl_803F1F74:
/* 803F1F74  4B FE BF 19 */	bl mPlib_SetData2_controller_data_for_title_demo
/* 803F1F78  4B FA 8F 41 */	bl mEv_CheckTitleDemo
/* 803F1F7C  38 80 00 03 */	li r4, 3
/* 803F1F80  38 63 FF FF */	addi r3, r3, -1
/* 803F1F84  4B FF FF 29 */	bl func_803F1EAC
/* 803F1F88  B0 7F 00 DE */	sth r3, 0xde(r31)
/* 803F1F8C  B0 7F 00 36 */	sth r3, 0x36(r31)
lbl_803F1F90:
/* 803F1F90  3C 60 81 17 */	lis r3, data_81171540@ha /* 0x81171540@ha */
/* 803F1F94  38 00 00 00 */	li r0, 0
/* 803F1F98  90 03 15 40 */	stw r0, data_81171540@l(r3)  /* 0x81171540@l */
/* 803F1F9C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F1FA0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803F1FA4  7C 08 03 A6 */	mtlr r0
/* 803F1FA8  38 21 00 10 */	addi r1, r1, 0x10
/* 803F1FAC  4E 80 00 20 */	blr 
