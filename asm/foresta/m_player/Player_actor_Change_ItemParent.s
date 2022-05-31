lbl_804D76AC:
/* 804D76AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D76B0  7C 08 02 A6 */	mflr r0
/* 804D76B4  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804D76B8  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D76BC  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804D76C0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804D76C4  3F E4 00 02 */	addis r31, r4, 2
/* 804D76C8  93 C1 00 08 */	stw r30, 8(r1)
/* 804D76CC  7C 7E 1B 78 */	mr r30, r3
/* 804D76D0  80 9F 60 94 */	lwz r4, 0x6094(r31)
/* 804D76D4  81 84 00 04 */	lwz r12, 4(r4)
/* 804D76D8  7D 89 03 A6 */	mtctr r12
/* 804D76DC  4E 80 04 21 */	bctrl 
/* 804D76E0  28 03 00 00 */	cmplwi r3, 0
/* 804D76E4  41 82 00 1C */	beq lbl_804D7700
/* 804D76E8  80 BF 60 94 */	lwz r5, 0x6094(r31)
/* 804D76EC  7F C3 F3 78 */	mr r3, r30
/* 804D76F0  38 80 00 04 */	li r4, 4
/* 804D76F4  81 85 00 08 */	lwz r12, 8(r5)
/* 804D76F8  7D 89 03 A6 */	mtctr r12
/* 804D76FC  4E 80 04 21 */	bctrl 
lbl_804D7700:
/* 804D7700  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D7704  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804D7708  83 C1 00 08 */	lwz r30, 8(r1)
/* 804D770C  7C 08 03 A6 */	mtlr r0
/* 804D7710  38 21 00 10 */	addi r1, r1, 0x10
/* 804D7714  4E 80 00 20 */	blr 
