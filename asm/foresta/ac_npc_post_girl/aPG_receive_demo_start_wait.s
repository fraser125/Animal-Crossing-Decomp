lbl_8056C9F8:
/* 8056C9F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056C9FC  7C 08 02 A6 */	mflr r0
/* 8056CA00  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 8056CA04  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056CA08  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056CA0C  7C 9F 23 78 */	mr r31, r4
/* 8056CA10  93 C1 00 08 */	stw r30, 8(r1)
/* 8056CA14  7C 7E 1B 78 */	mr r30, r3
/* 8056CA18  38 65 85 38 */	addi r3, r5, common_data@l /* 0x81138538@l */
/* 8056CA1C  3C 63 00 02 */	addis r3, r3, 2
/* 8056CA20  80 63 60 94 */	lwz r3, 0x6094(r3)
/* 8056CA24  88 03 00 0C */	lbz r0, 0xc(r3)
/* 8056CA28  28 00 00 02 */	cmplwi r0, 2
/* 8056CA2C  40 82 00 2C */	bne lbl_8056CA58
/* 8056CA30  38 60 00 04 */	li r3, 4
/* 8056CA34  38 80 00 01 */	li r4, 1
/* 8056CA38  38 A0 00 08 */	li r5, 8
/* 8056CA3C  4B E2 B9 FD */	bl mDemo_Set_OrderValue
/* 8056CA40  81 9E 09 A0 */	lwz r12, 0x9a0(r30)
/* 8056CA44  7F C3 F3 78 */	mr r3, r30
/* 8056CA48  7F E4 FB 78 */	mr r4, r31
/* 8056CA4C  38 A0 00 04 */	li r5, 4
/* 8056CA50  7D 89 03 A6 */	mtctr r12
/* 8056CA54  4E 80 04 21 */	bctrl 
lbl_8056CA58:
/* 8056CA58  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056CA5C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056CA60  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056CA64  7C 08 03 A6 */	mtlr r0
/* 8056CA68  38 21 00 10 */	addi r1, r1, 0x10
/* 8056CA6C  4E 80 00 20 */	blr 
