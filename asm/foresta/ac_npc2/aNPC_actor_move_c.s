lbl_8054551C:
/* 8054551C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80545520  7C 08 02 A6 */	mflr r0
/* 80545524  90 01 00 14 */	stw r0, 0x14(r1)
/* 80545528  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054552C  7C 9F 23 78 */	mr r31, r4
/* 80545530  93 C1 00 08 */	stw r30, 8(r1)
/* 80545534  7C 7E 1B 78 */	mr r30, r3
/* 80545538  4B FF 57 21 */	bl func_8053AC58
/* 8054553C  4B E5 59 7D */	bl mEv_CheckTitleDemo
/* 80545540  2C 03 00 00 */	cmpwi r3, 0
/* 80545544  41 81 00 0C */	bgt lbl_80545550
/* 80545548  7F E3 FB 78 */	mr r3, r31
/* 8054554C  4B FF FE 29 */	bl aNPC_greeting_area_check
lbl_80545550:
/* 80545550  4B FF FF 65 */	bl aNPC_set_attention
/* 80545554  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80545558  38 83 85 38 */	addi r4, r3, common_data@l /* 0x81138538@l */
/* 8054555C  3F E4 00 02 */	addis r31, r4, 2
/* 80545560  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 80545564  80 03 00 00 */	lwz r0, 0(r3)
/* 80545568  28 00 00 00 */	cmplwi r0, 0
/* 8054556C  40 82 00 34 */	bne lbl_805455A0
/* 80545570  3C 64 00 03 */	addis r3, r4, 3
/* 80545574  88 03 85 C2 */	lbz r0, -0x7a3e(r3)
/* 80545578  28 00 00 00 */	cmplwi r0, 0
/* 8054557C  41 82 00 24 */	beq lbl_805455A0
/* 80545580  7F C3 F3 78 */	mr r3, r30
/* 80545584  4B FF F2 81 */	bl aNPC_make_unitInfo
/* 80545588  38 00 00 00 */	li r0, 0
/* 8054558C  3C 60 80 54 */	lis r3, aNPC_setupActor_proc@ha /* 0x80544CE4@ha */
/* 80545590  90 1E 0A C0 */	stw r0, 0xac0(r30)
/* 80545594  38 03 4C E4 */	addi r0, r3, aNPC_setupActor_proc@l /* 0x80544CE4@l */
/* 80545598  80 7F 60 4C */	lwz r3, 0x604c(r31)
/* 8054559C  90 03 00 00 */	stw r0, 0(r3)
lbl_805455A0:
/* 805455A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805455A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805455A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805455AC  7C 08 03 A6 */	mtlr r0
/* 805455B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805455B4  4E 80 00 20 */	blr 
