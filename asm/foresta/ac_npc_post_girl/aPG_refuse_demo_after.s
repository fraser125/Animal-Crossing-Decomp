lbl_8056CBF0:
/* 8056CBF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056CBF4  7C 08 02 A6 */	mflr r0
/* 8056CBF8  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056CBFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056CC00  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056CC04  7C 9F 23 78 */	mr r31, r4
/* 8056CC08  93 C1 00 08 */	stw r30, 8(r1)
/* 8056CC0C  7C 7E 1B 78 */	mr r30, r3
/* 8056CC10  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8056CC14  3C 63 00 02 */	addis r3, r3, 2
/* 8056CC18  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8056CC1C  80 03 00 10 */	lwz r0, 0x10(r3)
/* 8056CC20  28 00 00 00 */	cmplwi r0, 0
/* 8056CC24  40 82 00 5C */	bne lbl_8056CC80
/* 8056CC28  88 1E 09 A5 */	lbz r0, 0x9a5(r30)
/* 8056CC2C  2C 00 00 03 */	cmpwi r0, 3
/* 8056CC30  41 82 00 1C */	beq lbl_8056CC4C
/* 8056CC34  40 80 00 20 */	bge lbl_8056CC54
/* 8056CC38  2C 00 00 02 */	cmpwi r0, 2
/* 8056CC3C  40 80 00 08 */	bge lbl_8056CC44
/* 8056CC40  48 00 00 14 */	b lbl_8056CC54
lbl_8056CC44:
/* 8056CC44  38 80 2D DA */	li r4, 0x2dda
/* 8056CC48  48 00 00 10 */	b lbl_8056CC58
lbl_8056CC4C:
/* 8056CC4C  38 80 2D DE */	li r4, 0x2dde
/* 8056CC50  48 00 00 08 */	b lbl_8056CC58
lbl_8056CC54:
/* 8056CC54  38 80 2D DC */	li r4, 0x2ddc
lbl_8056CC58:
/* 8056CC58  7F C3 F3 78 */	mr r3, r30
/* 8056CC5C  4B FF F8 4D */	bl aPG_ChangeMsgData
/* 8056CC60  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8056CC64  7F C3 F3 78 */	mr r3, r30
/* 8056CC68  7F E4 FB 78 */	mr r4, r31
/* 8056CC6C  38 A0 00 0A */	li r5, 0xa
/* 8056CC70  7D 89 03 A6 */	mtctr r12
/* 8056CC74  4E 80 04 21 */	bctrl 
/* 8056CC78  4B E5 2A 31 */	bl func_803BF6A8
/* 8056CC7C  4B E5 40 D1 */	bl mMsg_Unset_LockContinue
lbl_8056CC80:
/* 8056CC80  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056CC84  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056CC88  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056CC8C  7C 08 03 A6 */	mtlr r0
/* 8056CC90  38 21 00 10 */	addi r1, r1, 0x10
/* 8056CC94  4E 80 00 20 */	blr 
