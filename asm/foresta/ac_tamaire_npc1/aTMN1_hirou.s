lbl_8058AAC0:
/* 8058AAC0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8058AAC4  7C 08 02 A6 */	mflr r0
/* 8058AAC8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8058AACC  3C 00 43 30 */	lis r0, 0x4330
/* 8058AAD0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8058AAD4  7C 9F 23 78 */	mr r31, r4
/* 8058AAD8  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8058AADC  7C 7E 1B 78 */	mr r30, r3
/* 8058AAE0  3C 60 80 6C */	lis r3, table_634@ha /* 0x806C2128@ha */
/* 8058AAE4  88 DE 09 AF */	lbz r6, 0x9af(r30)
/* 8058AAE8  38 A3 21 28 */	addi r5, r3, table_634@l /* 0x806C2128@l */
/* 8058AAEC  3C 60 80 65 */	lis r3, lit_641@ha /* 0x80649B84@ha */
/* 8058AAF0  90 01 00 08 */	stw r0, 8(r1)
/* 8058AAF4  7C A5 30 AE */	lbzx r5, r5, r6
/* 8058AAF8  C8 23 9B 84 */	lfd f1, lit_641@l(r3)  /* 0x80649B84@l */
/* 8058AAFC  38 7E 01 A8 */	addi r3, r30, 0x1a8
/* 8058AB00  90 A1 00 0C */	stw r5, 0xc(r1)
/* 8058AB04  C8 01 00 08 */	lfd f0, 8(r1)
/* 8058AB08  EC 20 08 28 */	fsubs f1, f0, f1
/* 8058AB0C  4B DE 59 7D */	bl cKF_FrameControl_passCheck_now
/* 8058AB10  2C 03 00 00 */	cmpwi r3, 0
/* 8058AB14  41 82 00 2C */	beq lbl_8058AB40
/* 8058AB18  88 7E 09 AF */	lbz r3, 0x9af(r30)
/* 8058AB1C  38 03 00 01 */	addi r0, r3, 1
/* 8058AB20  98 1E 09 AF */	stb r0, 0x9af(r30)
/* 8058AB24  88 1E 09 AF */	lbz r0, 0x9af(r30)
/* 8058AB28  28 00 00 03 */	cmplwi r0, 3
/* 8058AB2C  40 82 00 14 */	bne lbl_8058AB40
/* 8058AB30  7F C3 F3 78 */	mr r3, r30
/* 8058AB34  7F E4 FB 78 */	mr r4, r31
/* 8058AB38  38 A0 00 08 */	li r5, 8
/* 8058AB3C  48 00 07 11 */	bl aTMN1_setup_think_proc
lbl_8058AB40:
/* 8058AB40  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058AB44  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8058AB48  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8058AB4C  7C 08 03 A6 */	mtlr r0
/* 8058AB50  38 21 00 20 */	addi r1, r1, 0x20
/* 8058AB54  4E 80 00 20 */	blr 
