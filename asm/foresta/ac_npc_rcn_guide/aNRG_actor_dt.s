lbl_8056EF08:
/* 8056EF08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056EF0C  7C 08 02 A6 */	mflr r0
/* 8056EF10  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056EF14  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8056EF18  7C 9F 23 78 */	mr r31, r4
/* 8056EF1C  93 C1 00 08 */	stw r30, 8(r1)
/* 8056EF20  7C 7E 1B 78 */	mr r30, r3
/* 8056EF24  80 03 09 94 */	lwz r0, 0x994(r3)
/* 8056EF28  2C 00 00 10 */	cmpwi r0, 0x10
/* 8056EF2C  40 82 00 10 */	bne lbl_8056EF3C
/* 8056EF30  38 60 00 30 */	li r3, 0x30
/* 8056EF34  38 80 01 68 */	li r4, 0x168
/* 8056EF38  4B E0 D3 ED */	bl mBGMPsComp_delete_ps_demo
lbl_8056EF3C:
/* 8056EF3C  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8056EF40  7F C3 F3 78 */	mr r3, r30
/* 8056EF44  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8056EF48  7F E4 FB 78 */	mr r4, r31
/* 8056EF4C  3C A5 00 02 */	addis r5, r5, 2
/* 8056EF50  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8056EF54  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8056EF58  7D 89 03 A6 */	mtctr r12
/* 8056EF5C  4E 80 04 21 */	bctrl 
/* 8056EF60  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056EF64  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8056EF68  83 C1 00 08 */	lwz r30, 8(r1)
/* 8056EF6C  7C 08 03 A6 */	mtlr r0
/* 8056EF70  38 21 00 10 */	addi r1, r1, 0x10
/* 8056EF74  4E 80 00 20 */	blr 
