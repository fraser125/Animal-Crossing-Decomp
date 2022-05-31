lbl_8057164C:
/* 8057164C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80571650  7C 08 02 A6 */	mflr r0
/* 80571654  90 01 00 14 */	stw r0, 0x14(r1)
/* 80571658  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057165C  7C 9F 23 78 */	mr r31, r4
/* 80571660  93 C1 00 08 */	stw r30, 8(r1)
/* 80571664  7C 7E 1B 78 */	mr r30, r3
/* 80571668  4B FF FC C5 */	bl aNRG2_goods_talk_request
/* 8057166C  2C 03 00 00 */	cmpwi r3, 0
/* 80571670  40 82 00 58 */	bne lbl_805716C8
/* 80571674  4B FF FD A5 */	bl aNRG2_cloth_check
/* 80571678  2C 03 00 01 */	cmpwi r3, 1
/* 8057167C  40 82 00 14 */	bne lbl_80571690
/* 80571680  7F C3 F3 78 */	mr r3, r30
/* 80571684  7F E4 FB 78 */	mr r4, r31
/* 80571688  4B FF FF 01 */	bl aNRG2_force_talk_request
/* 8057168C  48 00 00 3C */	b lbl_805716C8
lbl_80571690:
/* 80571690  4B FF FD ED */	bl aNRG2_check_upstair
/* 80571694  2C 03 00 01 */	cmpwi r3, 1
/* 80571698  40 82 00 14 */	bne lbl_805716AC
/* 8057169C  7F C3 F3 78 */	mr r3, r30
/* 805716A0  7F E4 FB 78 */	mr r4, r31
/* 805716A4  4B FF FE E5 */	bl aNRG2_force_talk_request
/* 805716A8  48 00 00 20 */	b lbl_805716C8
lbl_805716AC:
/* 805716AC  3C 60 80 57 */	lis r3, aNRG2_set_norm_talk_info@ha /* 0x805715CC@ha */
/* 805716B0  7F C4 F3 78 */	mr r4, r30
/* 805716B4  38 A3 15 CC */	addi r5, r3, aNRG2_set_norm_talk_info@l /* 0x805715CC@l */
/* 805716B8  38 60 00 07 */	li r3, 7
/* 805716BC  4B E2 8A A1 */	bl mDemo_Request
/* 805716C0  38 00 00 00 */	li r0, 0
/* 805716C4  90 1E 09 A8 */	stw r0, 0x9a8(r30)
lbl_805716C8:
/* 805716C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805716CC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805716D0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805716D4  7C 08 03 A6 */	mtlr r0
/* 805716D8  38 21 00 10 */	addi r1, r1, 0x10
/* 805716DC  4E 80 00 20 */	blr 
