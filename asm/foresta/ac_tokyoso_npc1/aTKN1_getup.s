lbl_8058CD14:
/* 8058CD14  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058CD18  7C 08 02 A6 */	mflr r0
/* 8058CD1C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058CD20  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058CD24  7C 7F 1B 78 */	mr r31, r3
/* 8058CD28  38 7F 01 A8 */	addi r3, r31, 0x1a8
/* 8058CD2C  93 C1 00 08 */	stw r30, 8(r1)
/* 8058CD30  7C 9E 23 78 */	mr r30, r4
/* 8058CD34  4B DE 37 ED */	bl cKF_FrameControl_stop_proc
/* 8058CD38  2C 03 00 01 */	cmpwi r3, 1
/* 8058CD3C  40 82 00 50 */	bne lbl_8058CD8C
/* 8058CD40  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058CD44  7F E3 FB 78 */	mr r3, r31
/* 8058CD48  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8058CD4C  3C 84 00 02 */	addis r4, r4, 2
/* 8058CD50  80 84 60 D8 */	lwz r4, 0x60d8(r4)
/* 8058CD54  81 84 00 14 */	lwz r12, 0x14(r4)
/* 8058CD58  7D 89 03 A6 */	mtctr r12
/* 8058CD5C  4E 80 04 21 */	bctrl 
/* 8058CD60  7C 65 1B 78 */	mr r5, r3
/* 8058CD64  7C A0 07 35 */	extsh. r0, r5
/* 8058CD68  40 82 00 18 */	bne lbl_8058CD80
/* 8058CD6C  7F E3 FB 78 */	mr r3, r31
/* 8058CD70  7F C4 F3 78 */	mr r4, r30
/* 8058CD74  38 A0 00 0A */	li r5, 0xa
/* 8058CD78  48 00 07 A5 */	bl aTKN1_setup_think_proc
/* 8058CD7C  48 00 00 10 */	b lbl_8058CD8C
lbl_8058CD80:
/* 8058CD80  7F E3 FB 78 */	mr r3, r31
/* 8058CD84  7F C4 F3 78 */	mr r4, r30
/* 8058CD88  4B FF F8 9D */	bl func_8058C624
lbl_8058CD8C:
/* 8058CD8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058CD90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058CD94  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058CD98  7C 08 03 A6 */	mtlr r0
/* 8058CD9C  38 21 00 10 */	addi r1, r1, 0x10
/* 8058CDA0  4E 80 00 20 */	blr 
