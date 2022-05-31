lbl_80565420:
/* 80565420  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80565424  7C 08 02 A6 */	mflr r0
/* 80565428  90 01 00 34 */	stw r0, 0x34(r1)
/* 8056542C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80565430  7C 9F 23 78 */	mr r31, r4
/* 80565434  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80565438  7C 7E 1B 78 */	mr r30, r3
/* 8056543C  4B FF FB E5 */	bl aNNW_next_target2
/* 80565440  98 7E 09 B6 */	stb r3, 0x9b6(r30)
/* 80565444  3C A0 43 30 */	lis r5, 0x4330
/* 80565448  3C C0 80 6C */	lis r6, target_pos_table_x@ha /* 0x806BE0E0@ha */
/* 8056544C  3C 60 80 6C */	lis r3, target_pos_table_z@ha /* 0x806BE0FC@ha */
/* 80565450  88 1E 09 B6 */	lbz r0, 0x9b6(r30)
/* 80565454  3C 80 80 65 */	lis r4, lit_1675@ha /* 0x806497A4@ha */
/* 80565458  38 E4 97 A4 */	addi r7, r4, lit_1675@l /* 0x806497A4@l */
/* 8056545C  38 C6 E0 E0 */	addi r6, r6, target_pos_table_x@l /* 0x806BE0E0@l */
/* 80565460  54 00 08 3C */	slwi r0, r0, 1
/* 80565464  38 83 E0 FC */	addi r4, r3, target_pos_table_z@l /* 0x806BE0FC@l */
/* 80565468  7C C6 02 AE */	lhax r6, r6, r0
/* 8056546C  38 7E 00 28 */	addi r3, r30, 0x28
/* 80565470  7C 04 02 AE */	lhax r0, r4, r0
/* 80565474  38 81 00 08 */	addi r4, r1, 8
/* 80565478  6C C6 80 00 */	xoris r6, r6, 0x8000
/* 8056547C  90 A1 00 18 */	stw r5, 0x18(r1)
/* 80565480  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80565484  C8 47 00 00 */	lfd f2, 0(r7)
/* 80565488  90 C1 00 1C */	stw r6, 0x1c(r1)
/* 8056548C  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80565490  90 01 00 24 */	stw r0, 0x24(r1)
/* 80565494  EC 20 10 28 */	fsubs f1, f0, f2
/* 80565498  90 A1 00 20 */	stw r5, 0x20(r1)
/* 8056549C  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 805654A0  D0 21 00 08 */	stfs f1, 8(r1)
/* 805654A4  EC 00 10 28 */	fsubs f0, f0, f2
/* 805654A8  C0 3E 00 2C */	lfs f1, 0x2c(r30)
/* 805654AC  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 805654B0  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 805654B4  4B E5 5C 7D */	bl search_position_angleY
/* 805654B8  A8 9E 00 DE */	lha r4, 0xde(r30)
/* 805654BC  7C 60 07 34 */	extsh r0, r3
/* 805654C0  38 A0 40 00 */	li r5, 0x4000
/* 805654C4  7C 04 00 50 */	subf r0, r4, r0
/* 805654C8  7C 06 07 34 */	extsh r6, r0
/* 805654CC  7C A4 32 78 */	xor r4, r5, r6
/* 805654D0  7C 80 0E 70 */	srawi r0, r4, 1
/* 805654D4  7C 83 28 38 */	and r3, r4, r5
/* 805654D8  7C 03 00 50 */	subf r0, r3, r0
/* 805654DC  54 00 0F FF */	rlwinm. r0, r0, 1, 0x1f, 0x1f
/* 805654E0  41 80 00 14 */	blt lbl_805654F4
/* 805654E4  7C 80 0E 70 */	srawi r0, r4, 1
/* 805654E8  7C 03 00 50 */	subf r0, r3, r0
/* 805654EC  54 00 0F FE */	srwi r0, r0, 0x1f
/* 805654F0  48 00 00 14 */	b lbl_80565504
lbl_805654F4:
/* 805654F4  7C 05 30 10 */	subfc r0, r5, r6
/* 805654F8  54 A3 0F FE */	srwi r3, r5, 0x1f
/* 805654FC  54 C0 0F FE */	srwi r0, r6, 0x1f
/* 80565500  7C 00 19 10 */	subfe r0, r0, r3
lbl_80565504:
/* 80565504  2C 00 00 00 */	cmpwi r0, 0
/* 80565508  41 82 00 18 */	beq lbl_80565520
/* 8056550C  7F C3 F3 78 */	mr r3, r30
/* 80565510  7F E4 FB 78 */	mr r4, r31
/* 80565514  38 A0 00 03 */	li r5, 3
/* 80565518  48 00 00 59 */	bl aNNW_my_proc_init
/* 8056551C  48 00 00 3C */	b lbl_80565558
lbl_80565520:
/* 80565520  88 1E 09 B6 */	lbz r0, 0x9b6(r30)
/* 80565524  3C A0 80 6C */	lis r5, target_pos_table_x@ha /* 0x806BE0E0@ha */
/* 80565528  3C 80 80 6C */	lis r4, target_pos_table_z@ha /* 0x806BE0FC@ha */
/* 8056552C  7F C3 F3 78 */	mr r3, r30
/* 80565530  54 00 08 3C */	slwi r0, r0, 1
/* 80565534  38 A5 E0 E0 */	addi r5, r5, target_pos_table_x@l /* 0x806BE0E0@l */
/* 80565538  38 84 E0 FC */	addi r4, r4, target_pos_table_z@l /* 0x806BE0FC@l */
/* 8056553C  7D 05 02 AE */	lhax r8, r5, r0
/* 80565540  7D 24 02 AE */	lhax r9, r4, r0
/* 80565544  38 80 00 04 */	li r4, 4
/* 80565548  38 A0 00 03 */	li r5, 3
/* 8056554C  38 C0 00 03 */	li r6, 3
/* 80565550  38 E0 00 00 */	li r7, 0
/* 80565554  4B FF BA E5 */	bl aNNW_set_request_act
lbl_80565558:
/* 80565558  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8056555C  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80565560  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80565564  7C 08 03 A6 */	mtlr r0
/* 80565568  38 21 00 30 */	addi r1, r1, 0x30
/* 8056556C  4E 80 00 20 */	blr 
