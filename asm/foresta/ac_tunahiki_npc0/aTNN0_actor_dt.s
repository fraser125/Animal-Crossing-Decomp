lbl_8058E750:
/* 8058E750  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058E754  7C 08 02 A6 */	mflr r0
/* 8058E758  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058E75C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058E760  7C 9F 23 78 */	mr r31, r4
/* 8058E764  38 80 00 09 */	li r4, 9
/* 8058E768  93 C1 00 08 */	stw r30, 8(r1)
/* 8058E76C  7C 7E 1B 78 */	mr r30, r3
/* 8058E770  38 60 00 0E */	li r3, 0xe
/* 8058E774  4B E0 F6 59 */	bl mEv_get_save_area
/* 8058E778  28 03 00 00 */	cmplwi r3, 0
/* 8058E77C  41 82 00 14 */	beq lbl_8058E790
/* 8058E780  38 80 00 00 */	li r4, 0
/* 8058E784  38 00 00 02 */	li r0, 2
/* 8058E788  B0 83 00 12 */	sth r4, 0x12(r3)
/* 8058E78C  B0 03 00 10 */	sth r0, 0x10(r3)
lbl_8058E790:
/* 8058E790  80 7E 09 9C */	lwz r3, 0x99c(r30)
/* 8058E794  28 03 00 00 */	cmplwi r3, 0
/* 8058E798  41 82 00 08 */	beq lbl_8058E7A0
/* 8058E79C  4B DE 5C A5 */	bl Actor_delete
lbl_8058E7A0:
/* 8058E7A0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8058E7A4  7F C3 F3 78 */	mr r3, r30
/* 8058E7A8  38 A4 85 38 */	addi r5, r4, common_data@l /* 0x81138538@l */
/* 8058E7AC  7F E4 FB 78 */	mr r4, r31
/* 8058E7B0  3C A5 00 02 */	addis r5, r5, 2
/* 8058E7B4  80 A5 60 4C */	lwz r5, 0x604c(r5)
/* 8058E7B8  81 85 00 D4 */	lwz r12, 0xd4(r5)
/* 8058E7BC  7D 89 03 A6 */	mtctr r12
/* 8058E7C0  4E 80 04 21 */	bctrl 
/* 8058E7C4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058E7C8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058E7CC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058E7D0  7C 08 03 A6 */	mtlr r0
/* 8058E7D4  38 21 00 10 */	addi r1, r1, 0x10
/* 8058E7D8  4E 80 00 20 */	blr 
