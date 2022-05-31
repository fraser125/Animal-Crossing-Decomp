lbl_8058A45C:
/* 8058A45C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058A460  7C 08 02 A6 */	mflr r0
/* 8058A464  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058A468  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058A46C  7C 9F 23 78 */	mr r31, r4
/* 8058A470  93 C1 00 08 */	stw r30, 8(r1)
/* 8058A474  7C 7E 1B 78 */	mr r30, r3
/* 8058A478  4B FF FE D5 */	bl aTMN1_tama_process
/* 8058A47C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058A480  7F C3 F3 78 */	mr r3, r30
/* 8058A484  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8058A488  7F E4 FB 78 */	mr r4, r31
/* 8058A48C  3C A5 00 02 */	addis r5, r5, 2
/* 8058A490  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8058A494  81 85 00 E0 */	lwz r12, 0xe0(r5)
/* 8058A498  7D 89 03 A6 */	mtctr r12
/* 8058A49C  4E 80 04 21 */	bctrl 
/* 8058A4A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058A4A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058A4A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058A4AC  7C 08 03 A6 */	mtlr r0
/* 8058A4B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058A4B4  4E 80 00 20 */	blr 
